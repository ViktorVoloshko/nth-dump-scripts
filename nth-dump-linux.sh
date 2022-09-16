#!/bin/sh
SERVERS_QUANTITY=1
echo "Enter number of servers:"
read SERVERS_QUANTITY
for i in `seq 1 $SERVERS_QUANTITY`
do
	echo "Dumping $i server..."
	./nth-dump.linux-386 -format text -noqr >> nth-dump-tmp.txt
done
echo "ss:// links extraction..."
grep -Eo "ss:.+$" ./nth-dump-tmp.txt > ./nth-dump-ss.txt
mv ./nth-dump-ss.txt ./storage/downloads/nth-dump-ss.txt
echo "Removing temporary files..."
rm ./nth-dump-tmp.txt
echo "Finished!"
