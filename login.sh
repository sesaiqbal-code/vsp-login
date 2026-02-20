#!/system/bin/sh

sleep 2

BATCH=0

emails="
delhi1@asetsaya.com
delhi2@asetsaya.com
delhi3@asetsaya.com
delhi4@asetsaya.com
delhi5@asetsaya.com
delhi6@asetsaya.com
delhi7@asetsaya.com
delhi8@asetsaya.com
delhi9@asetsaya.com
delhi10@asetsaya.com
delhi11@asetsaya.com
delhi12@asetsaya.com
delhi13@asetsaya.com
delhi14@asetsaya.com
delhi15@asetsaya.com
delhi16@asetsaya.com
delhi17@asetsaya.com
delhi18@asetsaya.com
delhi19@asetsaya.com
delhi20@asetsaya.com
delhi21@asetsaya.com
delhi22@asetsaya.com
delhi23@asetsaya.com
delhi24@asetsaya.com
delhi25@asetsaya.com
delhi26@asetsaya.com
delhi27@asetsaya.com
delhi28@asetsaya.com
delhi29@asetsaya.com
delhi30@asetsaya.com
"

device=$(settings get secure android_id)

num=$(echo $device | tr -cd '0-9')
slot=$(echo $num | tail -c 2)
slot=$((slot % 20))

index=$((BATCH * 20 + slot + 1))

email=$(echo "$emails" | sed -n "${index}p")

echo "Email dipakai: $email"

# kirim teks tanpa ubah @
input text "${email//@/%s}"
input keyevent 62
input text "com"
sleep 1
input keyevent 66
