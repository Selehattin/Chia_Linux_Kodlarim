
python multifactory.py --quick-setup -1

python masshare.py -d 0AGCWHUcmHkCJUk9PVA

for /l %%x in (100, 1,150) do (
 rclone copy "aktif:/YEDEK_01/" "pasif:/YEDEK_03/" --ignore-existing --transfers 6 --drive-service-account-file=C:\Rclone\accounts\duz\%%x.json -P -v -c   --drive-stop-on-upload-limit  --max-transfer 608G
)
pause
