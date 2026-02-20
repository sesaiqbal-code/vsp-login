#!/system/bin/sh

sleep 5

# Ambil ID device (lebih stabil di VSP)
device_id=$(getprop ro.boot.serialno)

if [ -z "$device_id" ]; then
device_id=$(settings get secure android_id)
fi

echo "Device: $device_id"

# Ambil angka dari ID
num=$(echo $device_id | tr -cd '0-9')

# Ambil 2 digit terakhir
index=$(echo $num | tail -c 2)

# Bikin index 0-19
index=$((index % 20))

emails=(
gmail1%40gmail.com
gmail2%40gmail.com
gmail3%40gmail.com
gmail4%40gmail.com
gmail5%40gmail.com
gmail6%40gmail.com
gmail7%40gmail.com
gmail8%40gmail.com
gmail9%40gmail.com
gmail10%40gmail.com
gmail11%40gmail.com
gmail12%40gmail.com
gmail13%40gmail.com
gmail14%40gmail.com
gmail15%40gmail.com
gmail16%40gmail.com
gmail17%40gmail.com
gmail18%40gmail.com
gmail19%40gmail.com
gmail20%40gmail.com
)

email=${emails[$index]}

echo "Email dipakai: $email"

# Klik kolom Gmail
input tap 360 420
sleep 1

# Isi email
input text $email
sleep 1

# Klik Next
input tap 360 650
