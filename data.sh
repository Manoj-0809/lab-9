#!/bin/bash
sudo yum install git -y
sudo yum install python3 -y
sudo yum install python3-pip -y
cd /home
sudo git clone https://github.com/Manoj-0809/fish.git
cd /home/fish/
pip3 install -r requirements.txt
screen -m -d python3 app.py
