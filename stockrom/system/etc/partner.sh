#!/system/bin/sh

export PATH=/system/bin:$PATH

if [ ! -f /data/system/packages.xml ]; then
   if [ -e /system/lib/libvenus.so ]; then
        mkdir -p /data/lib
        ln -s /system/lib/libvenus.so /data/lib/libvenus.so
   fi
fi
