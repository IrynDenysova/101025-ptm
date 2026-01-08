#!/bin/bash
set -e
DIR_PATH="/opt/101025-ptm/IDenysova/DIR/Test"
mkdir -p "$DIR_PATH"
for FILE in {1..10}
	do
	  date '*+%T' > "$DIR_PATH/$RANDOM.$FILEtxt"
          sleep 2
	done	  
