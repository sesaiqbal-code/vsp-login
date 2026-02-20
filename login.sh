#!/system/bin/sh

ID=$(settings get secure android_id)

EMAIL_LIST="
gmail1@gmail.com
gmail2@gmail.com
gmail3@gmail.com
gmail4@gmail.com
gmail5@gmail.com
gmail6@gmail.com
gmail7@gmail.com
gmail8@gmail.com
gmail9@gmail.com
gmail10@gmail.com
gmail11@gmail.com
gmail12@gmail.com
gmail13@gmail.com
gmail14@gmail.com
gmail15@gmail.com
gmail16@gmail.com
gmail17@gmail.com
gmail18@gmail.com
gmail19@gmail.com
gmail20@gmail.com
"

INDEX=$(echo $ID | tail -c 2)
NUM=$((0x$INDEX % 20 + 1))

EMAIL=$(echo "$EMAIL_LIST" | sed -n "${NUM}p")

input text $EMAIL
sleep 1
input keyevent 66
