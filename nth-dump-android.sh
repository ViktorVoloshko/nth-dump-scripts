#!/bin/sh
SERVERS_QUANTITY=1
echo "Enter number of servers to dump:"
read SERVERS_QUANTITY
for i in `seq 1 $SERVERS_QUANTITY`
do
    echo "Dumping $i server..."
    ./nth-dump.android-arm -format text -noqr >> nth-dump.txt
done
echo "Done dumping. Now moving to Downloads folder."
mv ./nth-dump.txt ./storage/downloads/nth-dump.txt
echo "Finished!"
