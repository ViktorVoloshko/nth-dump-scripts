#!/bin/sh
for i in 1 2 3 4 5 6 7 8 9 10
do
    echo "Dumping $i server..."
    ./nth-dump.android-arm -format text -noqr >> nth-dump.txt
done
echo "Done dumping. Now moving to Downloads folder."
mv ./nth-dump.txt ./storage/downloads/nth-dump.txt
echo "Finished!"
