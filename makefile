#
# Makefile for G718C by sharlion
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_g718c.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider TeleService TelephonyProvider \

local-miui-modified-apps := miuisystem Mms MiuiGallery SecurityCenter Settings DeskClock Music \

local-phone-apps := Bluetooth HTMLViewer KeyChain LatinIME PacProcessor BlackGesture NfcNci\
        UserDictionaryProvider WAPPushManager TimeService \

local-phone-priv-apps := CameraZTE BackupRestoreConfirmation DefaultContainerService FusedLocation \
        ExternalStorageProvider InputDevices OneTimeInitializer ProxyHandler SharedStorageBackup \
        Shell VpnDialogs MediaProvider \

local-density := XHDPI

PORT_PRODUCT := g718c_sharlion

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
		#copy files
		cp other/boot.img $(ZIP_DIR)/boot.img
		cp -a -rf other/system/* $(ZIP_DIR)/system/
		#density
		sed -i 's/ro.sf.lcd_density/persist.midensity/g' $(ZIP_DIR)/system/lib/libsurfaceflinger.so
		echo "persist.midensity=320" >> $(ZIP_DIR)/system/build.prop
		#bye bye miui bin , use stockrom
		cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
		rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
		cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
		rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
		cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
