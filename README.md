# IOTA hardware accelerator
FPGA based hardware accelerator for IOTA Curl and POW operations written in Verilog/System Verilog

This project created for Innovate FPGA Contest:
[Design video](https://www.youtube.com/watch?v=JJRlwTJHBCg), 
[Design paper](http://www.innovatefpga.com/cgi-bin/innovate/teams.pl?Id=EM080)

Performance & Resources:
- Parameterized design. Parameter CL_NUM specifies the number of POW clusters. Parameter CU_NUM defines the number of POW computing units per cluster
- Hardware resources: 1 200 ALMs, 2 400 flip-flops per POW computing unit
- Hashrate: 1 204 819 hash/sec per POW comput. unit at 100 MHz
- Fmax: 130-140 MHz for Cyclone V depending on number of POW comput. units

Proof-of-Concept launched on DE10-nano board (Cyclone V 5CSEBA6U23I7 FPGA device) which costs 110-130$ 

PoC parameters:
- 28 POW computing units (CL_NUM = 7, CU_NUM = 4)
- Operation frequency: 100 MHz 
- Hashrate: 33 734 940 hash/sec
- Resources: 33 239 ALMs, 68 019 flip-flops (79% of 5CSEBA6U23I7 FPGA)
- POW acceleration: x2000 (for MWM=15 software POW on DE10-nano: 10-50 min, hardware accel. POW: 0.01-1.5 sec, 0.4 sec in average)

[Download](https://github.com/LampaLab/iota_fpga/releases/tag/v0.1) Linux sd-card image for IOTA hardware accelerator on DE10-nano board and [latest](https://github.com/LampaLab/iota_fpga/releases/tag/v0.3) rbf file

## Arrow SoCKit board
Build instructions mentioned RBF file for Arrow SoCKit board. For the sake of consistency, we host FPGA related repository under DLTcollab umbrella.

### Generate the RBF file
* Install Intel Quartus Prime Lite Edition 17.1 and run synthesizing
* Transform SOF file to RBF file
```
 ~/intelFPGA_lite/17.1/quartus/bin/quartus_cpf -c curl_fpga.sof soc_system.rbf
```

### Quickly start from scratch
* [Download](https://github.com/LampaLab/iota_fpga/releases/tag/v0.1) Linux sd-card image for Cyclone V
* The RBF file for Arrow SocKit board
* Creating an SD Card using a Linux Host
```
$ sudo dd if=DE10_iota_fpga_Linux.img of=/dev/sdb bs=2048
$ sudo sync
```
* Overwrite the RBF file in the SD card
```
$ sudo mkdir sdcard
$ sudo mount /dev/sdb1 sdcard/
$ sudo cp soc_system.rbf sdcard/
$ sudo umount sdcard
```

* Connect to remote shell (account/password: root/123456)
```
$ ssh root@192.168.1.102
```

If you like this work, please donate some MIOTA to support it further development: 

[U9XOVBWJUBCE99ZIKIUGXZFSSGLUAPHUG9XZTVOVHZ99HVTQXET9CD9V9FMDNLSLPQDYXOHKBA9MVHI9ZOVCVHVJXA](https://thetangle.org/address/U9XOVBWJUBCE99ZIKIUGXZFSSGLUAPHUG9XZTVOVHZ99HVTQXET9CD9V9FMDNLSLPQDYXOHKBA9MVHI9Z)

Thank you for interest to project!
