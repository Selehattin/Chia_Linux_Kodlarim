plot=0
while :
do
count=$(find /disk1/data/ -maxdepth 1 -name 'plot-*.plot' | wc -l)
if [ $count -gt 1 ] ; then
python3 /root/AutoRclone/autorclone.py
plot=$(($plot + 2))
echo "$plot"
fi
sleep 30
done
