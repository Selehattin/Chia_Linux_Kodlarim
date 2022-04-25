#!/bin/bash
mkdir disk1
cd disk1
mkdir temp
mkdir data
chmod 775 temp
chmod 775 data
cd
cd
echo "==============================================="
echo "Update Yapılıyor . . ."
echo "==============================================="
apt-get update -y;
echo "==============================================="
echo "CMake Kuruluyor . . ."
echo "==============================================="
apt-get update && apt-get install -y cmake;
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
echo "MadMax Kuruluyor . . ."
echo "==============================================="
git clone https://github.com/madMAx43v3r/chia-plotter.git;
cd chia-plotter;
git submodule update --init;
./make_devel.sh;
cd ..
cd chia-plotter;
screen -S spaceplot ./build/chia_plot -n 10000 -r 12 -u 256 -d /root/disk1/data/ -t /root/disk1/temp/ -c xch1j87jt0uk2p79g7v8pf5ewyxuh0hrzxkxu6rqqg9zzcn3wamjdrxq5sxtve -f 88fe767ffb45d152457a4f6deeffc75cc885bc041a7215a51906261e56680724c8dc878772c1ea4aa60644e2aec0ac97
