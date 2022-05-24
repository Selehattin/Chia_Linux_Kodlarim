index=0
config="SP26"
DosyaYolu="plotgonder"
PlotYolu="/root/disk1/data"
while :
do
sayi=($(ls -lR /root/disk1/data/*.plot | wc -l))

if [[ $sayi -gt 0 ]]; then  
   index=$(($index + 1))
   if [[ $index -gt 245 ]]; then
      index=31
   fi
   rclone backend set $baglanti: -o service_account_file="/root/$DosyaYolu/accounts/$index.json"
   echo "backend degisti"
   rclone move $PlotYolu  $config: --ignore-existing --buffer-size 64M --drive-chunk-size 64M --checkers 4 --tpslimit 4 --transfers 3 --fast-list --progress --include "/*.plot" -P;
   echo "bitti"
   sleep 2
fi
sleep 1
done
