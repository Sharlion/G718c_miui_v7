#!/system/bin/sh
# zte-modify by zuojianfang for bt singaling test
# Copyright (c) 2009-2011, The Linux Foundation. All rights reserved
# Enable bt and start ftm mode
#echo 0 > /sys/module/hci_smd/parameters/hcismd_set
#sleep 1
#hci_qcomm_init -vvv -e 
#sleep 2
system/bin/dut_bdt

