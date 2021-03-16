# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Stardust Kernel for X00T
do.devicecheck=0
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ASUS_X00TD
device.name2=X00TD
device.name3=X00T
device.name4=ASUS_X00T
device.name5=ASUS_X00TDA
supported.versions= 11.0
'; } # end properties

# shell variables
block=/dev/block/platform/soc/c0c4000.sdhci/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel install
dump_boot;

write_boot;
## end install

