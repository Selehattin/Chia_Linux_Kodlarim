read -p "islemci Cekirdek Sayisi       : " Cpu
echo " 1 --> Ram Disk Olsun 0 --> Ram Disk Olmasın "
read -p "Ram Disk Olacak mi ?  : " RamS
echo "-KLASORLER  EKLENİYOR-"
cd
mkdir disk1
mkdir disk2
cd disk1 
mkdir temp
mkdir data
echo "= KLASORLER  BİTTİ ==========="
echo "= KLASORLER  RAM BASLADI =========="
cd
if [ $RamS -eq 1 ]; then
        echo "= KLASORLER  RAM BİTTİ KURULUM BAŞLIYOR================"
                mkdir ram
        sudo mount -t tmpfs -o size=110G tmpfs /root/ram/
        echo "= KLASORLER  RAM BİTTİ KURULUM Bitti================"
                sleep 2
fi
#!/bin/bash
echo "==============================================="
echo "Update Yapılıyor . . ."
echo "==============================================="
apt-get update -y;
echo "==============================================="
echo "CMake Kuruluyor . . ."
echo "==============================================="
apt-get update && apt-get install -y cmake;
apt-get install unzip
apt-get install screen 
echo "==============================================="
echo "Make Kuruluyor . . ."
echo "==============================================="
apt-get update && apt-get install -y make;
echo "==============================================="
echo "C++ Lib Kuruluyor . . ."
echo "==============================================="
apt-get install -y build-essential;
echo "==============================================="
echo "G++ Lib Kuruluyor . . ."
echo "==============================================="
sudo apt install -y libsodium-dev cmake g++ git;
echo "==============================================="
echo "Upgrade Ediliyor . . ."
echo "==============================================="
apt-get upgrade -y;
echo "==============================================="
echo "AWS Kuruluyor . . ."
echo "==============================================="
apt-get install -y awscli;
echo "==============================================="
echo "Rclone Kuruluyor . . ."
echo "===============================================" 
curl https://rclone.org/install.sh | sudo bash;
echo "==============================================="
apt-get install unzip
apt-get install screen
echo "MadMax Kuruluyor . . ."
echo "==============================================="
git clone https://github.com/madMAx43v3r/chia-plotter.git;
cd chia-plotter;
git submodule update --init;
./make_devel.sh;
cd
cd chia-plotter
if [ $RamS -eq 1 ]; then
 screen -S spaceplot ./build/chia_plot -n 10000 -r $Cpu -u 256 -d /root/disk1/data/ -2 /root/ram/ -t  /root/disk1/temp/ -c xch1j87jt0uk2p79g7v8pf5ewyxuh0hrzxkxu6rqqg9zzcn3wamjdrxq5sxtve -f 88fe767ffb45d152457a4f6deeffc75cc885bc041a7215a51906261e56680724c8dc878772c1ea4aa60644e2aec0ac97  
fi

if [ $RamS -eq 0 ]; then
 screen -S spaceplot ./build/chia_plot -n 10000 -r $Cpu -u 256 -d /root/disk1/data/ -t  /root/disk1/temp/ -c xch1j87jt0uk2p79g7v8pf5ewyxuh0hrzxkxu6rqqg9zzcn3wamjdrxq5sxtve -f 88fe767ffb45d152457a4f6deeffc75cc885bc041a7215a51906261e56680724c8dc878772c1ea4aa60644e2aec0ac97  
fi
