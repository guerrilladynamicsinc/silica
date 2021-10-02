#!/system/bin/sh
# init.d support

echo "install.sh" >> /data/install.log
mountrw
chmod -R 777 /system/etc/init.d
chmod 777 /system/bin/sysinit
chmod 6755 /system/xbin/su
/system/bin/sysinit
mountro
sleep 50
pm disable com.google.glass.setup
