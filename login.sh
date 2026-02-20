#!/system/bin/sh

sleep 2

FILE=/sdcard/email_index.txt

if [ ! -f $FILE ]; then
  echo 1 > $FILE
fi

index=$(cat $FILE)
next=$((index + 1))
echo $next > $FILE

email="delhi${index}@asetsaya.com"

echo "Email dipakai: $email"

user=$(echo $email | cut -d@ -f1)
domain=$(echo $email | cut -d@ -f2)

input text "$user"
input text "@$domain"

sleep 1
input keyevent 66
