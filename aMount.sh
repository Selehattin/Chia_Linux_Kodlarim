echo "FuserMount yapılıyor ..."
sleep 3
fusermount -u ~/hr05
echo "Mount yapılıyor ..."
rclone mount H5: /root/hr05 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
sleep 3
