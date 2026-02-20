#!/system/bin/sh

sleep 2

emails="
delhi1
delhi2
delhi3
delhi4
delhi5
delhi6
delhi7
delhi8
delhi9
delhi10
delhi11
delhi12
delhi13
delhi14
delhi15
delhi16
delhi17
delhi18
delhi19
delhi20
delhi21
delhi22
delhi23
delhi24
delhi25
delhi26
delhi27
delhi28
delhi29
delhi30
"

device=$(settings get secure android_id)

num=$(echo $device | tr -cd '0-9')
slot=$(echo $num | tail -c 2)
slot=$((slot % 20))

index=$((slot + 1))

user=$(echo "$emails" | sed -n "${index}p")

echo "User dipakai: $user"

# ketik email
input text "$user"
input text "@asetsaya"
input text ".com"

sleep 1
input keyevent 66
