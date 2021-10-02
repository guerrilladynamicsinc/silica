SILICA VERSION 1.5
GOOGLE GLASS SYSTEM IMAGE DEVELOPMENT TOOL
SILICA is capable of extracting/generating system.img boot.img and userspace.img

silica/boot - tools for kernel repackaging
silica/boot/builds - raw builds folder for boot.img extraction
silica/boot/tools - proprietary boot.img scripts and tools

silica/system - system rebuild folder
silica/system/builds/$buildname - base image extracted here
silica/system/builds/packages - overlay packages "lenses" - lenses are your additional software add-ons to the filesystem
silica/system/builds/packages/lenscraft.sh - lenscrafter tool that repackes your custom build onto the oem filesystem at silica/system/builds/$buildname
silica/system/builds/packages/curecast - proprietary curecast lens with special apks and tools

silica/system/tools - proprietary system image repackaging and unpackaging - repack and unpack
