echo "FuserMount yapılıyor ..."
fusermount -l ~/ap01
fusermount -l ~/ap02
fusermount -l ~/ap03
fusermount -l ~/ap04
fusermount -l ~/ap05
fusermount -l ~/ap06
fusermount -l ~/ap07
echo "Mount yapılıyor ..."
sleep 3
rclone mount A1: /root/ap01 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A2: /root/ap02 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A3: /root/ap03 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A4: /root/ap04 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A5: /root/ap05 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A6: /root/ap06 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A7: /root/ap07 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
rclone mount A8: /root/ap08 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
echo "Mount Bitti.."
sleep 3
