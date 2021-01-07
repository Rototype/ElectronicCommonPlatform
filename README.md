# ElectronicCommonPlatform

This project is an open hardware for small automations (controlling motors, solenoids and photosensors) adaptable to many more projects.

The project includes two boards:
- LB (Logic Board): one is a logic board including NXP iMX8 processor a Xilinx Zynq FPGA and a Spartan 7 FPGA. This is probably the most powerful SOM (System On Module) with reasonable cost 
- PB (Power Board): the second board contains drivers for 20 stepper motors, 10 solenoids, 5 DC motors and 50 photosensors plus digital and analog I/Os.

Schematics and PCB layouts are offered for free without restrictions (nor warranties, see license information).
An initial software and firmware offers the following as a platform:
- self tuning of photosensors
- automatic stepper motor ramps
- Control of the board via WebSocket protocol over Ethernet
- firmware update via WebSocket

The project is usable for robotics and small automations as is and can be modified (by designing a new PB) to serve very different purposes. The idea is to provide all the standard and common functions so that each project can focus on its specialties. Since this electronic/firmware platform allows to control robotics and automations via network, it can be considered a contribution to Industry 4.0.

The bill of material of both boards is under 500 Euro.
