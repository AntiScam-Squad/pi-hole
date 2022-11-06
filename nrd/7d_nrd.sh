#!/bin/sh

for a in `seq 6 -1 0`;
do
    dt=`date "+%F" --date=" -"$a" days"`;
    f=$dt".txt";
    cat $f >> "7day_NRD.txt";
done;

