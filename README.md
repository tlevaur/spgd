# SPGD-Coherent-Beam-Combination
Research Project on Coherent Beam Combination of Fiber Amplifiers using the Stochastic Parallel Gradient Descent Algorithm

## Usage
### Install Vivado
To instal Vivado see the [Xilinx instillation and licensing page](https://www.xilinx.com/support/documentation-navigation/design-hubs/2020-1/dh0013-vivado-installation-and-licensing-hub.html). Vivado 2020.1 is the tested version.

### Setup Enviroment
#### bash
In your `.bashrc` add `source /opt/Xilinx/Vivado/2020.1/settings64.sh` if using Vivado 2020.1.

#### zsh
In your `.zshrc` add `source /opt/Xilinx/Vivado/2020.1/settings64.sh` if using Vivado 2020.1.

### Compile Project
In `fpga_projects` folder, multiple projects can be found these projects can be compiled using the `make_project.tcl` respective file.

```zsh
$ vivado -source make_project.tcl
```
Alternatively,

```zsh
$ vivado -source make_project_clean.tcl
```

can be run to remove any Vivado backup files.

### Generate Bitstream in Vivado
After Vivado is launched with the proper make project file, any changes or alterations can be made. Once finished, a Bitstream can be generated to use on the fpga.