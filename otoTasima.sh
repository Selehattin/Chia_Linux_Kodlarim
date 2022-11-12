ip=$(curl ifconfig.me)
while :
do
x=($(ls -lR /root/disk1/data/* | wc -l))
y=($(ls -lR /root/disk2/* | wc -l))

if [ $x == 0 ];
then
telegram-send "Plot Klsor boş  .. :) $ip"
sleep 3600
fi

if [ $y == 0 ];
 then
  ls -Q /root/disk1/data | head -4 | xargs -i mv /root/disk1/data/{} disk2/
  telegram-send "Yeni Plotlar Tasindi .. :) $ip"
fi
sleep 5
done
