#BUILD CURECAST
#!/bin/bash

echo "PLACING IN ../silica-rel/"
mkdir ../silica-rel/ 2>/dev/null
sleep 2
cd system/tools/
./repack.sh curecast
