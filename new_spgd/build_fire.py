#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# -----------------------------------------------------------------------
#
# Copyright (c) Bright Photonics B.V. 2016-2021
#
# -----------------------------------------------------------------------
# This PDK file is CONFIDENTIAL
#
# This file is part of a Nazca Design PDK for use with Nazca Design only.
# This file can only be used with a properly executed and valid
# Non-Disclosure Agreement (NDA) in place with the foundry or
# authorized broker. In addition an active subscription
# to the PDK from Bright Photonics B.V. shall be in place.
#
# If you have received this file in error, by mistake, or from a
# non-authorized source then delete this file and all copies immediately
# and notify the sender.
#
# This file can not be distributed or copied by the receiving party
# outside the scope of the NDA.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# For more information please visit:
# https://www.brightphotonics.eu
# https://www.nazca-design.org
#
# For questions and/or comments:
# Email: nazca@brightphotonics.eu
#-----------------------------------------------------------------------

# load the main Nacza-Design module and initialize logging.
import nazca as nd
nd.logfile(name=__file__, stdout=False)

# load PDK for the Smart Photonics MPW process and switch on logging
import smart_gen2 as sp

# load packaging templates
from nazca.demopackager.packages import Package1

# switch on pin2pin DRC
nd.pin2pin_drc_on()

#==============================================================================
# Customize an MPW cell template which serves as the MPW project template.
# The cell can combine foundry, packaging, testing and other templates.
#==============================================================================
with nd.Cell('CELL') as CELL:
	#A1. Create this CELL to serve as the MPW reference cell.
	#    It will be filled below with the foundry MPW info (the die)
	#    and packaging info.

	#B1. Create a DIE (chip) object and customize its settings:
	DIE = sp.DesignArea(name='FIRE')
	DIE.coating('NO', 'NO')

	#B2. The DIE object can generate a cell: DIE.cell.
	#    Put it in this MPW cell. It returns a 'die' instance:
	die = DIE.cell().put(0)

	#B3. Make all DIE pins available in this CELL by 'raising' the pins:
	die.raise_pins()

	#C1. Create a PACKAGE object and customize its settings:
	PACKAGE = Package1(name='Package-A1', die_length=DIE.length, die_height=DIE.height)
	PACKAGE.RFcount = 0
	PACKAGE.DCedge = 100

	#C2. Put the PACKAGE cell in this MPW cell.
	package = PACKAGE.cell().put(0)

	#C3. Make all 'package' pins available in this CELL by 'raising' the pins:
	package.raise_pins()

# =============================================================================
# Define your building blocks
# =============================================================================
#with nd.Cell('TwoChannelSPGD') as gd1:
#	sp.sp_mmi1x2_sh().put()
	
#==============================================================================
# Create the topcell of your design:
#==============================================================================
with nd.Cell('Design1') as Design1:
	# =========================================================================
	# put MPW template and the io building-blocks you need
	# NOTE: in Smart the optical-io positions provided are mandatory.
	#       the electrical-io are free to choose.
	# =========================================================================
	# Place a MPW template which includes the pins to place io-blocks:
	MPWcell = CELL.put(0)
	sp.nazca_logo().put(500, 3500, scale=1.5)
	# Place a pad on all DC electrical IOs
	# and store them in a dictionary:
	DC = {name:sp.sp_pad_dc_box().put('rc', pin)
	for name, pin in MPWcell.pin.items() if 'dc' in name}
	
	# Place a pad on all RF electrical IOs
	# and store them in a dictionary:
	RF = {name:sp.sp_pad_gsg().put(pin)
        for name, pin in MPWcell.pin.items() if 'rf' in name}
	
	# Place optical IO-blocks on some IO template positions
	# and store them in a dictionary:
	ioWest = ['ioW050']
	ioEast = []
	IO = {name:sp.io(MPWcell.pin[name], bendgrid=True).put() for name in ioWest+ioEast}

	# print to stdout which io-blocks have been created:
	print("Available io-blocks:")
	print("DC:", list(DC.keys()))
	print("RF:", list(RF.keys()))
	print("IO:", list(IO.keys()))

	# =========================================================================
	# connect design structures to the io-building blocks.
	# =========================================================================
	sp.shallow.strt(length=400,width=110).put(2354,2933)
	sp.shallow.strt(length=1000,width=2).put(1000,2000)
	sp.shallow.strt(length=400,width=50).put(500,500)
	sp.sp_soa_ncontact(length=1500).put(1000,1000)

	#mycell = gd1.put(2000,23000)
#==============================================================================
# Export the mask layout
#==============================================================================
nd.export_gds(topcells=Design1, filename='InP_FIRE.gds')

