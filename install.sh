#!/bin/bash  
#====================================================
#
#          FILE: install.sh
# 
#         USAGE: ./install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/18/2018 16:14
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{
	sudo apt-get install python python-all-dev python-setuptools python-wheel python-pip && sudo pip install telepot
	echo "Please enter API token:"
	read TOKEN
	echo "Please enter id to send notifications to:"
	read ID


	echo "#!/usr/bin/python2.7" > Telegram-Send-Message.py
	echo "import time, datetime" >> Telegram-Send-Message.py
	echo "import sys" >> Telegram-Send-Message.py
	echo "import telepot" >> Telegram-Send-Message.py
	echo " " >> Telegram-Send-Message.py
	echo "chat_id=-297084271" >> Telegram-Send-Message.py
	echo "now = datetime.datetime.now()" >> Telegram-Send-Message.py
	echo "message = (sys.argv[1])" >> Telegram-Send-Message.py
	echo "telegram_bot = telepot.Bot('659374951:AAHCRSltEfJSzOIOdZW1-V96KwE_YrcO-Jw')" >> Telegram-Send-Message.py
	echo " " >> Telegram-Send-Message.py
	echo 'telegram_bot.sendMessage(chat_id, str(now.hour)+str(":")+str(now.minute)+str(" ")+str(" ")+message)' >> Telegram-Send-Message.py
	
	sudo chmod +x Telegram-Send-Message.py
}	# end Main

Main

#===EXIT===
exit 0

