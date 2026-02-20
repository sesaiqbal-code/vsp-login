#!/system/bin/sh

sleep 3

BATCH=1
TOTAL=20

PREFIX="delhi"
DOMAIN="@asetsaya.com"

# ambil android id
ID=$(settings get secure android_id)

# ambil angka saja (hapus semua karakter lain termasuk -)
NUM=$(echo "$ID" | tr -cd '0-9')

# kalau tidak ada angka sama sekali
if [ -z "$NUM" ]; then
    NUM=$(date +%s)
fi

# ambil 6 digit terakhir biar stabil
NUM=$(echo "$NUM" | tail -c 6)

# hitung slot device
SLOT=$((NUM % TOTAL))

# hitung nomor email
EMAIL_NUMBER=$(( (BATCH - 1) * TOTAL + SLOT + 1 ))

EMAIL="${PREFIX}${EMAIL_NUMBER}${DOMAIN}"

echo "Email: $EMAIL"

input text "$EMAIL"
sleep 1
input keyevent 66
