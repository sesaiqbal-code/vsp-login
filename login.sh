#!/system/bin/sh

sleep 2

BATCH=1

device=$(settings get secure android_id)
num=$(echo $device | tr -cd '0-9')
slot=$(echo $num | tail -c 2)
slot=$((slot % 20))

start=$(( (BATCH - 1) * 20 + 1 ))
email_number=$(( start + slot ))

echo "Email dipakai: delhi$email_number@asetsaya.com"

input text "delhi$email_number"
input text "@asetsaya"
input text ".com"

sleep 1
input keyevent 66
