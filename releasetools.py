import common
import edify_generator
import os
import re
import time
import copy

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
          edify.script[i] = '''ui_print("****************************");
ui_print("*         ZTE G718C        *");
ui_print("*         MIUI   V6        *");
ui_print("*        ''' + time.strftime('%Y-%m-%d',time.localtime(time.time())) + '''        *");
ui_print("*   Powered by sharlion    *");
ui_print("****************************");'''
  return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "getprop" in edify.script[i]:
      edify.script[i] = ''
      return

def AddExtraImg(info):
    common.ZipWriteStr(info.output_zip, "emmc_appsboot.mbn", info.input_zip.read("RADIO/emmc_appsboot.mbn"))
    common.ZipWriteStr(info.output_zip, "NON-HLOS.bin", info.input_zip.read("RADIO/NON-HLOS.bin"))
    common.ZipWriteStr(info.output_zip, "rpm.mbn", info.input_zip.read("RADIO/rpm.mbn"))
    common.ZipWriteStr(info.output_zip, "sbl1.mbn", info.input_zip.read("RADIO/sbl1.mbn"))
    common.ZipWriteStr(info.output_zip, "tz.mbn", info.input_zip.read("RADIO/tz.mbn"))
    common.ZipWriteStr(info.output_zip, "sdi.mbn", info.input_zip.read("RADIO/sdi.mbn"))
    common.ZipWriteStr(info.output_zip, "splash.img", info.input_zip.read("RADIO/splash.img"))
    common.ZipWriteStr(info.output_zip, "factory.img", info.input_zip.read("RADIO/factory.img"))

	
def AddExtraAction(info):
    info.script.AppendExtra('ui_print(" write new bootloader image ...");');
    info.script.AppendExtra('package_extract_file("emmc_appsboot.mbn", "/dev/block/platform/msm_sdcc.1/by-name/aboot");');
    info.script.AppendExtra('package_extract_file("emmc_appsboot.mbn", "/dev/block/platform/msm_sdcc.1/by-name/abootbak");');
    info.script.AppendExtra('ui_print(" write new radio image ...");');
    info.script.AppendExtra('package_extract_file("NON-HLOS.bin", "/dev/block/platform/msm_sdcc.1/by-name/modem");');
    info.script.AppendExtra('ui_print(" write new rpm image ...");');
    info.script.AppendExtra('package_extract_file("rpm.mbn", "/dev/block/platform/msm_sdcc.1/by-name/rpm");');
    info.script.AppendExtra('package_extract_file("rpm.mbn", "/dev/block/platform/msm_sdcc.1/by-name/rpmbak");');
    info.script.AppendExtra('ui_print(" write new tz image ...");');
    info.script.AppendExtra('package_extract_file("tz.mbn", "/dev/block/platform/msm_sdcc.1/by-name/tz");');
    info.script.AppendExtra('package_extract_file("tz.mbn", "/dev/block/platform/msm_sdcc.1/by-name/tzbak");');
    info.script.AppendExtra('ui_print(" write new sbl1 image ...");');
    info.script.AppendExtra('package_extract_file("sbl1.mbn", "/dev/block/platform/msm_sdcc.1/by-name/sbl1");');
    info.script.AppendExtra('package_extract_file("sbl1.mbn", "/dev/block/platform/msm_sdcc.1/by-name/sbl1bak");');
    info.script.AppendExtra('ui_print(" write new sdi image ...");');
    info.script.AppendExtra('package_extract_file("sdi.mbn", "/dev/block/platform/msm_sdcc.1/by-name/sdi");');
    info.script.AppendExtra('ui_print(" write new factory image ...");');
    info.script.AppendExtra('package_extract_file("factory.img", "/dev/block/platform/msm_sdcc.1/by-name/factory");');
    info.script.AppendExtra('ui_print(" write new splash image ...");');
    info.script.AppendExtra('package_extract_file("splash.img", "/dev/block/platform/msm_sdcc.1/by-name/splash");');

def FullOTA_InstallEnd(info):
    AddExtraImg(info)
    AddExtraAction(info)
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
