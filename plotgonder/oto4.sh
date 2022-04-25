index=45
index1=0
kdosyayolu="disk1"
baglanti="SP10"
configbag="plotgonder"
while :
do
sayi=($(ls -lR /root/$kdosyayolu/data/*.plot | wc -l))

if [[ $sayi -gt 0 ]]; then  
   index=$(($index + 1))
   index1=$(($index1 + 1))
   if [[ $index -gt 60 ]]; then
      index=46
   fi
   echo "Txt Kop $index1"
   rclone backend set $baglanti: -o service_account_file="/root/$configbag/accounts/$index.json"
   echo "backend degisti"
   rclone move /root/disk1/data/  SP10: --checkers 7 --tpslimit 7 --transfers 4 --fast-list --progress --drive-server-side-across-configs -v --include "/*.plot" -P;   
   echo "bitti"
   sleep 5
fi
sleep 1
done
