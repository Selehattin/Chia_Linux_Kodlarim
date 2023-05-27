USER=sf00
mkdir /root/${USER}
fusermount -uz /root/${USER}
1- ) rclone mount SIFRELI:SF01  /root/${USER} --cache-dir /cache1 --dir-cache-time 960h --vfs-cache-max-age 960h --vfs-cache-max-size 2G --vfs-cache-mode full --vfs-read-chunk-size 128k --poll-interval 24h --checkers 2 --no-check-certificate --vfs-read-chunk-size-limit 0 --max-read-ahead 0 --vfs-read-wait 0 --buffer-size off --no-checksum --no-modtime --read-only --daemon
2- ) rclone mount SIFRELI:SF01  /root/${USER}  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
3- ) rclone mount SIFRELI:SF01 /mnt/ce4 --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --fast-list --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --daemon;


rclone mount SIFRELI: SF00  /root/sf00  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI1:SF01  /root/sf01  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI2:SF02  /root/sf02  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI3:SF03  /root/sf03  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI4:SF04  /root/sf04  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI5:SF05  /root/sf05  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;

--------------- 
mkdir /root/sf07
mkdir /root/sf08
mkdir /root/sf09
mkdir /root/sf10
mkdir /root/sf11
mkdir /root/sf12

fusermount -uz /root/sf07
fusermount -uz /root/sf08
fusermount -uz /root/sf09
fusermount -uz /root/sf10
fusermount -uz /root/sf11
fusermount -uz /root/sf12

rclone mount SIFRELI7:SF07    /root/sf07  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI8:SF08    /root/sf08  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI9:SF09    /root/sf09  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI10:SF10   /root/sf10  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI11:SF11   /root/sf11  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SIFRELI12:SF12   /root/sf12  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;

----------------------
mkdir /root/sp00
mkdir /root/sp01
mkdir /root/sp02
mkdir /root/sp03
mkdir /root/sp04
mkdir /root/sp05

fusermount -uz /root/sp00
fusermount -uz /root/sp01
fusermount -uz /root/sp02
fusermount -uz /root/sp03
fusermount -uz /root/sp04
fusermount -uz /root/sp05


rclone mount SP01:SS00  /root/sp00  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SP01:SS01  /root/sp01  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SP01:SS02  /root/sp02  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SP01:SS03  /root/sp03  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SP01:SS04  /root/sp04  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
rclone mount SP01:SS05  /root/sp05  -o ThreadCount=8 --cache-workers=8 --vfs-read-chunk-size=64K --poll-interval=5m  --dir-cache-time=5m --buffer-size=0 --cache-dir=/tmp/rctmp/ --vfs-cache-mode=full --no-checksum --no-modtime --read-only --vfs-read-wait=0 --max-read-ahead=0 --use-mmap --fast-list --checkers=2 --multi-thread-cutoff=0 --multi-thread-streams=32 --vfs-cache-max-age=1h -q --use-cookies --daemon;
