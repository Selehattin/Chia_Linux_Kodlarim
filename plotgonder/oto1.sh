index=0
index1=20
kdosyayolu="disk1"
baglanti="w1"
configbag="plotgonder"
while :
do
sayi=($(ls -lR /root/$kdosyayolu/data/*.plot | wc -l))

if [[ $sayi -gt 0 ]]; then  
   index=$(($index + 1))
   index1=$(($index1 + 1))
   if [[ $index -gt 100 ]]; then
      index=21
   fi
   echo "Txt Kop $index1"
   rclone backend set $baglanti: -o service_account_file="/root/$configbag/accounts/$index.json"
   echo "backend degisti"
   rclone move /root/disk1/data/  w1: --drive-stop-on-upload-limit --checkers 7 --tpslimit 7 --transfers 4 --fast-list --progress --drive-server-side-across-configs -v --include "/*.plot" -P;   
   echo "bitti"
   sleep 5
fi
sleep 1
done

