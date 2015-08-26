#/bin/bash

echo "Copy Radio Files by Heavenke 20150706"
rm -r out/target_files/RADIO/*
cp other/RADIO/emmc_appsboot.mbn out/target_files/RADIO/emmc_appsboot.mbn
cp other/RADIO/NON-HLOS.bin out/target_files/RADIO/NON-HLOS.bin
cp other/RADIO/rpm.mbn out/target_files/RADIO/rpm.mbn
cp other/RADIO/sbl1.mbn out/target_files/RADIO/sbl1.mbn
cp other/RADIO/sdi.mbn out/target_files/RADIO/sdi.mbn
cp other/RADIO/tz.mbn out/target_files/RADIO/tz.mbn
cp other/RADIO/factory.img out/target_files/RADIO/factory.img
cp other/RADIO/splash.img out/target_files/RADIO/splash.img

