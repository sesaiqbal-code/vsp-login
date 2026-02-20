#!/system/bin/sh

sleep 3

PREFIX="delhi"
DOMAIN="@asetsaya.com"

# ambil android id
ID=$(settings get secure android_id)

# waktu realtime
TIME=$(date +%s%N)

# random
RAND=$RANDOM

# gabungkan
MIX="${ID}${TIME}${RAND}"

# ambil angka saja lalu potong 7 digit terakhir
NUM=$(echo "$MIX" | tr -cd '0-9' | tail -c 7)

EMAIL="${PREFIX}${NUM}${DOMAIN}"

echo "Generated: $EMAIL"

input text "$EMAIL"
sleep 1
input keyevent 66
