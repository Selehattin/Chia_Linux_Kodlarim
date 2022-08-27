sudo docker run -d -i --name traff traffmonetizer/cli start accept --token Bwbf/eySP/hAd4GcB776Zl4Cdea6KRNoUcHr3TNmeWw=;
sudo docker stop watchtower; sudo docker rm watchtower;
sudo docker rmi containrrr/watchtower;
sudo docker run -d --restart=always -e CID=431I --name hasiian packetstream/psclient:latest;
sudo docker run -d --restart=always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --cleanup --include-stopped --revive-stopped --interval 60 hasiian
