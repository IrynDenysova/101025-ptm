#!/bin/bash
DIR="/opt/101025-ptm/IDenysova/TestCron"
mkdir -p $DIR
for i in {1..10};
  do
    touch /$DIR/File_$i\_$(date +"%Y-%m-%d").txt
   sleep 2
  done	    
