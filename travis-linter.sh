1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19





#!/bin/bash
set -e

exitstatus=0

for file in *.Rmd
do
Rscript -e "lintr::lint(\"$file\")"
outputbytes=`Rscript -e "lintr::lint(\"$file\")" | grep ^ | wc -c`
if [ $outputbytes -gt 0 ]
then
exitstatus=1
fi
done

exit $exitstatus

