#BUILD CURECAST
#!/bin/bash

#echo "PLACING IN ../silica-rel/"
#mkdir ../silica-rel/ 2>/dev/null
echo "BUILDING LIVE FILESYSTEM"
cd system/tools/
./liverepack.sh curecast
cd ~/kali-p4/silica
p4 reconcile
p4 submit -d "LIVESYNC $1"
