fusermount -l ~/cr05
rclone mount C5: /root/cr05 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/acc/selo01.json
