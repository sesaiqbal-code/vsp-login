#!/system/bin/sh

sleep 3

BATCH=1
TOTAL=20

PREFIX="delhi"
DOMAIN="@asetsaya.com"

# ambil android id
ID=$(settings get secure android_id)

# ambil angka dari id
NUM=$(echo "$ID" | tr -cd '0-9')

# kalau tidak ada angka
if [ -z "$NUM" ]; then
NUM=$(date +%s)
fi

# hitung slot 0-19
SLOT=$((NUM % TOTAL))

# hitung nomor email
EMAIL_NUMBER=$(( (BATCH - 1) * TOTAL + SLOT + 1 ))

EMAIL="${PREFIX}${EMAIL_NUMBER}${DOMAIN}"

echo "Device: $ID"
echo "Slot: $SLOT"
echo "Email: $EMAIL"

input text "$EMAIL"
sleep 1
input keyevent 66
