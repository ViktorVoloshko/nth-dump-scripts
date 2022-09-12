#!/bin/sh
for i in {1..10}
do
    echo "Dumping $i server..."
    ./nth-dump.linux-386 -format text -noqr >> nth-dump.txt
done
echo "Finished!"
