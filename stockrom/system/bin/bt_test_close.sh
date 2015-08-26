#!/system/bin/sh
# zte-modify by zuojianfang for bt singaling test
# Copyright (c) 2009-2011, The Linux Foundation. All rights reserved.
# quit the bt test progress

busybox killall -9 dut_bdt
sleep 10