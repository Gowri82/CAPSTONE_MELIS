#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@https://github.com/Gowri82/CAPSTONE_MELIS.git
cd /home/ubuntu/CAPSTONE_MELIS
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/<YOUR GITHUB REPO NAME>/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
