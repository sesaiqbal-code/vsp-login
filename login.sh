#!/system/bin/sh

sleep 3

BATCH=1
TOTAL=20

PREFIX="delhi"
DOMAIN="@asetsaya.com"

# ambil android id
device=$(settings get secure android_id)

# ambil angka dari id
num=$(echo "$device" | tr -cd '0-9')

# kalau kosong pakai random
if [ -z "$num" ]; then
    num=$RANDOM
fi

# tentukan slot device (0-19)
slot=$((num % TOTAL))

# hitung nomor email sesuai batch
email_number=$(( (BATCH - 1) * TOTAL + slot + 1 ))

EMAIL="${PREFIX}${email_number}${DOMAIN}"

echo "Slot: $slot"
echo "Email: $EMAIL"

input text "$EMAIL"
sleep 1
input keyevent 66
