git clone https://github.com/dunhil/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
. ./activate
chia init -c /root/ca/
chia configure --set-farmer-peer 5.161.46.169:8447
chia plots add -d /root/br01
chia configure --set-log-level INFO
chia start harvester
--set-farmer-peer yazan yere
kendi farmerının ipsini yaz
