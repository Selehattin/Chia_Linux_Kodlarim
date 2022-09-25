echo  "Traff kuruluyor"
sudo docker run -d -i --name traff traffmonetizer/cli start accept --token Bwbf/eySP/hAd4GcB776Zl4Cdea6KRNoUcHr3TNmeWw=;
echo  "Traff kuruluyor"
echo  "--------------------------------"
echo  "Packet kuruluyor"
sleep 2
sudo docker stop watchtower; sudo docker rm watchtower;
sudo docker rmi containrrr/watchtower;
sudo docker run -d --restart=always -e CID=431I --name hasiian packetstream/psclient:latest;
sudo docker run -d --restart=always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --cleanup --include-stopped --revive-stopped --interval 60 hasiian
echo  "Packet Bitti"
echo  "--------------------------------"
echo  "Earn Kuruluyor .."
sleep 2 
wget -qO- https://brightdata.com/static/earnapp/install.sh > /tmp/earnapp.sh && sudo bash /tmp/earnapp.sh
echo  "Earn Bitti .."
