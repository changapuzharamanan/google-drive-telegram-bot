#!/bin/bash
cd /
git clone https://github.com/viperadnan-git/google-drive-telegram-bot
cd google-drive-telegram-bot
pip3 install -r requirements.txt
python3 -m bot
