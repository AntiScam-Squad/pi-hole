#!/bin/sh

echo "########################################################################"
echo "    ██████  ███████ ████████   ███████  ██████  █████  ███    ███       "
echo "   ██       ██         ██      ██      ██      ██   ██ ████  ████       "
echo "   ██   ███ █████      ██      ███████ ██      ███████ ██ ████ ██       "
echo "   ██    ██ ██         ██           ██ ██      ██   ██ ██  ██  ██       "
echo "    ██████  ███████    ██      ███████  ██████ ██   ██ ██      ██  v0.1 "
echo "########################################################################"
# https://textkool.com/en/test-ascii-art-generator?text=getSCAM

# 1. 
# 2. 
host=$(hostname)
TODAY=$(date +'%d-%m-%Y')
TIME=$(date +'%H:%M:%S')

#[ -e "/home/ccris/pi-hole/scam_old.txt" ] && rm /home/ccris/pi-hole/scam_old.txt  # 
#[ -e "/home/ccris/pi-hole/scam.txt" ] && mv /home/ccris/pi-hole/scam_old.txt  # 

echo "==============================================================================="
echo "Running getSCAM.py to download latest polkadot-js/phishing/raw/master/all.json "
echo "==============================================================================="
cd /home/ccris/pi-hole/ && python3 getSCAM.py >> /home/ccris/pi-hole/getSCAM.log 2>&1


echo "==============================================================================="
echo "    Updating GitHub AntiScam Repo with the results from the script             "
echo "==============================================================================="
#cd /home/ccris/pi-hole/
#git pull
#git add scam.txt
#git commit -m "Adding latest scam.txt from $host"
#git push -u origin HEAD

# Adding Slack notification
#curl -X POST --data-urlencode "payload={\"channel\": \"#phisher\", \"username\": \"webhookbot\", \"text\": \"Pi-hole repo downloaded successfully.\", \"icon_emoji\": \":cool-doge:\"}" https://hooks.slack.com/services/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
echo "==============================================================================="
echo "###############################################################################"
echo "               ██████ ██  ██  █████  █████ ██████ ██████ ██████                "
echo "               ██     ██  ██ ██     ██     ██     ██     ██                    "
echo "               ██████ ██  ██ ██     ██     █████  ██████ ██████                "
echo "                   ██ ██  ██ ██     ██     ██         ██     ██                "
echo "               ██████  ████   █████  █████ ██████ ██████ ██████                "
echo "###############################################################################"