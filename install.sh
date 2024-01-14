#!/bin/bash
typessh() {
    text="$1"
    delay="$2"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo
}
function isRoot() {
	if [ "$EUID" -ne 0 ]; then
		return 1
	fi
}
if ! isRoot; then
	echo "Sorry, you need to run this as root"
	exit 1
fi

clear
echo ""
typessh "SSH Telegram Bot Installation :) By Sami4387" 0.2
echo ""
echo ""
typessh "Please Wait . . ." 0.3
echo ""
echo ""

sudo apt install python3
sudo apt install python3-pip
sudo apt install pip
sudo apt install git
pip install --upgrade pip
pip install pyrogram
pip install random2
pip install qrcode
pip install cryptocompare
pip install tgcrypto
pip install selectolax
pip install bs4
pip install requests
pip install termcolor
pip install Unidecode
pip install jdatetime
pip install ipaddress
pip install paramiko
pip install psutil
pip install pyopenssl --upgrade

mkdir /root/botCh

pkill -9 -f "backup-ssh.py"
pkill -9 -f "bot.py"
pkill -9 -f "session-updater.py"

mv /root/bot/Pannels.txt /root/botCh
mv /root/bot/backup /root/botCh
mv /root/bot/ssh /root/botCh
mv /root/bot/cache /root/botCh
mv /root/bot/protocol-cache.txt /root/botCh
mv /root/bot/All.txt /root/botCh
mv /root/bot/ssh.db /root/botCh
mv /root/bot/backup.db /root/botCh
mv /root/bot/data.json /root/

rm -r /root/bot

git clone "https://github.com/Sami4387/sshp.git" /root/bot/

mv /root/botCh/Pannels.txt /root/bot
mv /root/botCh/backup /root/bot
mv /root/botCh/ssh /root/bot
mv /root/botCh/cache /root/bot
mv /root/botCh/protocol-cache.txt /root/bot
mv /root/botCh/All.txt /root/bot
mv /root/botCh/ssh.db /root/bot
mv /root/botCh/backup.db /root/bot
mv /root/data.json /root/bot/

rm -r /root/botCh

cd /root/bot

clear

chmod 664 /root/bot/
chmod 664 /usr/local/lib/

echo 'import sys ; print(sys.path)' | python3

python3 run.py

echo -ne '\n\n'
