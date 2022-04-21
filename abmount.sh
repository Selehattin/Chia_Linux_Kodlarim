#!/bin/bash
index=0
while :
do
index=$(($index + 1))
PLOT_FOLDER="/root/chiv0$index/"
PLOT_COUNT=$(find "$PLOT_FOLDER"  | wc -l)
MIN_PLOT_COUNT=1
if [ $PLOT_COUNT -gt $MIN_PLOT_COUNT ] 
then
        echo "Devam Ediyor $index . "
sleep 2
else
echo "Devam ......................"
bash kur.sh
bash amount.sh
bash bmount.sh
fi

if [[ $index -gt 3 ]]; then
      index=0
fi
done
