
echo "==============================================="
echo "==============================================="
echo "==============================================="
echo "==============================================="
echo "Rar . . ."
apt-get install unzip;
echo "==============================================="
 sudo killall apt apt-get
 sudo rm /var/lib/apt/lists/lock
 sudo rm /var/cache/apt/archives/lock
 sudo rm /var/lib/dpkg/lock*
 sudo dpkg --configure -a
 sudo apt-get update -y;
 sudo apt-get install -y ca-certificates;
 sudo apt-get install -y curl;
 sudo apt-get install -y gnupg;
 sudo apt-get install -y lsb-release;
 sudo mkdir -p /etc/apt/keyrings;
 sudo rm /etc/apt/keyrings/*;
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg;
 echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
 sudo apt-get install -y docker-ce;
 sudo apt-get install -y docker-ce-cli;
 sudo apt-get install -y containerd.io;
 sudo apt-get install -y docker-compose-plugin
