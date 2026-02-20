#!/system/bin/sh

# Tunggu halaman login siap
sleep 5

# Ambil ID device
device_id=$(getprop ro.serialno)

# Ambil angka terakhir dari ID
num=$(echo $device_id | tr -cd '0-9' | tail -c 2)

index=$((num % 20))

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

echo "Device: $device_id"
echo "Email dipakai: $email"

# Klik kolom Gmail (720x1280)
input tap 360 420
sleep 1

# Isi email
input text $email
sleep 1

# Klik Next
input tap 360 650
