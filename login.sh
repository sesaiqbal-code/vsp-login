#!/system/bin/sh

sleep 2

BATCH=0

emails=(
delhi1@asetsaya.com
delhi2@asetsaya.com
delhi3@asetsaya.com
delhi4@asetsaya.com
delhi5@asetsaya.com
delhi6@asetsaya.com
delhi7@asetsaya.com
delhi8@asetsaya.com
delhi9@asetsaya.com
delhi10@asetsaya.com
delhi11@asetsaya.com
delhi12@asetsaya.com
delhi13@asetsaya.com
delhi14@asetsaya.com
delhi15@asetsaya.com
delhi16@asetsaya.com
delhi17@asetsaya.com
delhi18@asetsaya.com
delhi19@asetsaya.com
delhi20@asetsaya.com
delhi21@asetsaya.com
delhi22@asetsaya.com
delhi23@asetsaya.com
delhi24@asetsaya.com
delhi25@asetsaya.com
delhi26@asetsaya.com
delhi27@asetsaya.com
delhi28@asetsaya.com
delhi29@asetsaya.com
delhi30@asetsaya.com
delhi31@asetsaya.com
delhi32@asetsaya.com
delhi33@asetsaya.com
delhi34@asetsaya.com
delhi35@asetsaya.com
delhi36@asetsaya.com
delhi37@asetsaya.com
delhi38@asetsaya.com
delhi39@asetsaya.com
delhi40@asetsaya.com
delhi41@asetsaya.com
delhi42@asetsaya.com
delhi43@asetsaya.com
delhi44@asetsaya.com
delhi45@asetsaya.com
delhi46@asetsaya.com
delhi47@asetsaya.com
delhi48@asetsaya.com
delhi49@asetsaya.com
delhi50@asetsaya.com
delhi51@asetsaya.com
delhi52@asetsaya.com
delhi53@asetsaya.com
delhi54@asetsaya.com
delhi55@asetsaya.com
delhi56@asetsaya.com
delhi57@asetsaya.com
delhi58@asetsaya.com
delhi59@asetsaya.com
delhi60@asetsaya.com
delhi61@asetsaya.com
delhi62@asetsaya.com
delhi63@asetsaya.com
delhi64@asetsaya.com
delhi65@asetsaya.com
delhi66@asetsaya.com
delhi67@asetsaya.com
delhi68@asetsaya.com
delhi69@asetsaya.com
delhi70@asetsaya.com
delhi71@asetsaya.com
delhi72@asetsaya.com
delhi73@asetsaya.com
delhi74@asetsaya.com
delhi75@asetsaya.com
delhi76@asetsaya.com
delhi77@asetsaya.com
delhi78@asetsaya.com
delhi79@asetsaya.com
delhi80@asetsaya.com
delhi81@asetsaya.com
delhi82@asetsaya.com
delhi83@asetsaya.com
delhi84@asetsaya.com
delhi85@asetsaya.com
delhi86@asetsaya.com
delhi87@asetsaya.com
delhi88@asetsaya.com
delhi89@asetsaya.com
delhi90@asetsaya.com
delhi91@asetsaya.com
delhi92@asetsaya.com
delhi93@asetsaya.com
delhi94@asetsaya.com
delhi95@asetsaya.com
delhi96@asetsaya.com
delhi97@asetsaya.com
delhi98@asetsaya.com
delhi99@asetsaya.com
delhi100@asetsaya.com
delhi101@asetsaya.com
delhi102@asetsaya.com
delhi103@asetsaya.com
delhi104@asetsaya.com
delhi105@asetsaya.com
delhi106@asetsaya.com
delhi107@asetsaya.com
delhi108@asetsaya.com
delhi109@asetsaya.com
delhi110@asetsaya.com
delhi111@asetsaya.com
delhi112@asetsaya.com
delhi113@asetsaya.com
delhi114@asetsaya.com
delhi115@asetsaya.com
delhi116@asetsaya.com
delhi117@asetsaya.com
delhi118@asetsaya.com
delhi119@asetsaya.com
delhi120@asetsaya.com
)

device=$(settings get secure android_id)

num=$(echo $device | tr -cd '0-9')
slot=$(echo $num | tail -c 2)
slot=$((slot % 20))

real_index=$((BATCH * 20 + slot))

email=${emails[$real_index]}

echo "Slot: $slot"
echo "Email: $email"

input text "$email"
sleep 1
input keyevent 66
