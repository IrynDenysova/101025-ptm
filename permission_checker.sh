#!/bin/bash
#
TEST_DIR="/opt/101025-ptm"
ls -la $TEST_DIR/*.sh
for FILE in $TEST_DIR/*
do
if [[ "$FILE" == *.sh ]];
then
  chmod +x $FILE
fi
done   
ls -la $TEST_DIR/*.sh
