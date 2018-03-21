#!/bin/bash
# Add to cvs the test beds file
# usage: ./cvs_add.sh 


dirList=`find * -type d | grep -v CVS | grep -v lnx`
fileList=`find * -type f | grep -v CVS | grep -v lnx`

if [ "${fileList}" = "" ]; then
     echo "No test beds";
else
     cvs add $dirList;
     cvs add $fileList;
fi

