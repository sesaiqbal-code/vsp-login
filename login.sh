#!/system/bin/sh

sleep 2

BATCH=0

emails=(
delhi1%40asetsaya.com
delhi2%40asetsaya.com
delhi3%40asetsaya.com
delhi4%40asetsaya.com
delhi5%40asetsaya.com
delhi6%40asetsaya.com
delhi7%40asetsaya.com
delhi8%40asetsaya.com
delhi9%40asetsaya.com
delhi10%40asetsaya.com
delhi11%40asetsaya.com
delhi12%40asetsaya.com
delhi13%40asetsaya.com
delhi14%40asetsaya.com
delhi15%40asetsaya.com
delhi16%40asetsaya.com
delhi17%40asetsaya.com
delhi18%40asetsaya.com
delhi19%40asetsaya.com
delhi20%40asetsaya.com
delhi21%40asetsaya.com
delhi22%40asetsaya.com
delhi23%40asetsaya.com
delhi24%40asetsaya.com
delhi25%40asetsaya.com
delhi26%40asetsaya.com
delhi27%40asetsaya.com
delhi28%40asetsaya.com
delhi29%40asetsaya.com
delhi30%40asetsaya.com
delhi31%40asetsaya.com
delhi32%40asetsaya.com
delhi33%40asetsaya.com
delhi34%40asetsaya.com
delhi35%40asetsaya.com
delhi36%40asetsaya.com
delhi37%40asetsaya.com
delhi38%40asetsaya.com
delhi39%40asetsaya.com
delhi40%40asetsaya.com
)

device_id=$(getprop ro.boot.serialno)
if [ -z "$device_id" ]; then
device_id=$(settings get secure android_id)
fi

num=$(echo $device_id | tr -cd '0-9')
index=$(echo $num | tail -c 2)
index=$((index % 20))

real_index=$((BATCH * 20 + index))

email=${emails[$real_index]}

echo "Email dipakai: $email"

input text $email
sleep 1
input keyevent 66
