read -p "Plot Secenegi       : " plt
echo " 1 --> 32Cpu_128Ram 2 --> 24Cpu_64Ram "

if [ $RamS -eq 1 ]; then
cd ram
rm * 
cd
cd chia-plotter
screen -S spaceplot ./build/chia_plot -n 10000 -r 32 -u 256 -d /root/disk1/data/ -2 /root/ram/ -t  /root/disk1/temp/ -c xch1j87jt0uk2p79g7v8pf5ewyxuh0hrzxkxu6rqqg9zzcn3wamjdrxq5sxtve -f 88fe767ffb45d152457a4f6deeffc75cc885bc041a7215a51906261e56680724c8dc878772c1ea4aa60644e2aec0ac97  
fi

if [ $RamS -eq 2 ]; then
cd /root/disk1/temp/
rm * 
cd
cd chia-plotter
screen -S spaceplot ./build/chia_plot -n 10000 -r 24 -u 256 -d /root/disk1/data/ -t  /root/disk1/temp/ -c xch1j87jt0uk2p79g7v8pf5ewyxuh0hrzxkxu6rqqg9zzcn3wamjdrxq5sxtve -f 88fe767ffb45d152457a4f6deeffc75cc885bc041a7215a51906261e56680724c8dc878772c1ea4aa60644e2aec0ac97  
fi

if [ $RamS -eq 1 ]; then
        
fi

if [ $RamS -eq 1 ]; then
        
fi








