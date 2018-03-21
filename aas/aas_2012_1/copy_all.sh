#!/bin/bash
# Copy all test beds to new release
# usage: ./copy_all.sh mmavis_2011_2

if [ $# -ne 1 ]
then
  echo "Usage: ./copy_all.sh <release>"
  echo "For example: ./copy_all.sh mmavis_2011_2"
  exit 0
fi

TAG=${1}
BUILDOP_DIR=../${TAG}

# checking BUILDOP_DIR directory exist
if [ -d ${BUILDOP_DIR} ]
then
  echo "${BUILDOP_DIR} exist - copying test beds files."
else
  echo "ERROR: ${BUILDOP_DIR} does not exist."
  exit 0
fi

fileList=`ls | grep -v CVS | grep -v lnx`

if [ "${fileList}" = "" ]; then
     echo "No test beds";
else
     echo $fileList;
     cp -pr $fileList ${BUILDOP_DIR}
fi

for DIR in ${fileList}
  do
     if [ -d ${BUILDOP_DIR}/${DIR} ]
     then
        rm -rf ${BUILDOP_DIR}/${DIR}/CVS
     fi
  done
