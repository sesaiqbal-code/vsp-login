#!/system/bin/sh

sleep 2

BATCH=1
TOTAL=20

device=$(settings get secure android_id)

num=$(echo $device | tr -cd '0-9')
slot=$(echo $num | tail -c 3)
slot=$((slot % TOTAL))

start=$(( (BATCH - 1) * TOTAL + 1 ))
email_number=$(( start + slot ))

echo "Device: $device"
echo "Slot: $slot"
echo "Email dipakai: delhi$email_number@asetsaya.com"

input text "delhi$email_number"
input text "@asetsaya"
input text ".com"

sleep 1
input keyevent 66
