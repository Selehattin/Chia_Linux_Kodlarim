echo "FuserMount yapılıyor ..."
fusermount -l ~/gr01
fusermount -l ~/gr02
fusermount -l ~/gr03
fusermount -l ~/gr04
fusermount -l ~/gr05
fusermount -l ~/gr06
fusermount -l ~/gr07
fusermount -l ~/gr08
echo "Mount yapılıyor ..."
sleep 3
rclone mount G1: /root/gr01 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G2: /root/gr02 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G3: /root/gr03 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G4: /root/gr04 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G5: /root/gr05 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G6: /root/gr06 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G7: /root/gr07 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount G8: /root/gr08 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
echo "Mount Bitti.."
sleep 3
