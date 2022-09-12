#!/bin/sh
SERVERS_QUANTITY=0
echo "Enter number of servers: "
read SERVERS_QUANTITY
for i in `seq 1 $SERVERS_QUANTITY`
do
    echo "Dumping $i server..."
    ./nth-dump.linux-386 -format text -noqr >> nth-dump.txt
done
echo "Finished!"
