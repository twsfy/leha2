#!/bin/bash
cat config > sleeptime
while true
do
curl  -s  'http://pogoda.tut.by/city/minsk' > pogoda
grep -m 1 '<span class="temp-i">' pogoda > temp
echo  $(sed 's/[^\-\+0-9]//g' temp)
rm -r temp pogoda
sleep sleeptime
done