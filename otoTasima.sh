ip=$(curl ifconfig.me)
while :
do
x=($(ls -lR /root/disk2/* | wc -l))
y=($(ls -lR /root/disk2/* | wc -l))

if [ $((y%0)) == 0 ];
then
telegram-send "Plot Klsor boş  .. :) $ip"
sleep 3600
fi

if [ $((x%4)) == 0 ];
 then
  ls -Q disk1 | head -4 | xargs -i mv disk1/{} disk2/
  telegram-send "Yeni Plotlar Tasindi .. :) $ip"
fi
sleep 5
done