#!/bin/sh

# TODO hosts += https://smarthosts.googlecode.com/svn/trunk/hosts

sudo apt-get install vim
sudo apt-get install curl

# Install chrome
# ubuntu 13.04 Fix
# wget http://launchpadlibrarian.net/119461136/libudev0_175-0ubuntu13_amd64.deb
# sudo dpkg -i libudev0_175-0ubuntu13_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb
sudo dpkg -i google-*.deb
sudo apt-get install -f
# Flash 11.2
sudo apt-get install flashplugin-installer

# Goagent Local
sudo apt-get install python3-dev
sudo apt-get install python3-openssl
sudo apt-get install python-appindicator python-vte
sudo mv goagent /opt
python /opt/goagent/local/goagent-gtk.py &
python /opt/goagent/local/addto-startup.py

# Virtualbox
sudo apt-get install virtualbox
# sudo apt-get install dkms
# sudo /etc/init.d/vboxdrv setup

# Git
sudo apt-get install git
git config --global user.name "ryan"
git config --global user.email ryan.ouzhenkun@gmail.com
git config --global push.default simple

# Server
sudo apt-get install openjdk-7-jdk tomcat7 maven2 ant mysql-server lighttpd

wget http://apt.typesafe.com/repo-deb-build-0002.deb
sudo dpkg -i repo-deb-build-0002.deb
rm repo-deb-build-0002.deb -fr
sudo apt-get update
sudo apt-get install typesafe-stack -y
sudo wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.3/sbt.deb
sudo dpkg -i sbt.deb
rm -f sbt.deb

sudo apt-get install python-software-properties -y

# RabbitMQ, Worker
cat >> /etc/apt/sources.list <<EOF
sudo deb http://www.rabbitmq.com/debian/ testing main
EOF
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc
rm rabbitmq-signing-key-public.asc
sudo apt-get update
sudo apt-get install rabbitmq-server -y
sudo rabbitmqctl add_user worker dreams
sudo rabbitmqctl delete_user guest
sudo rabbitmqctl add_vhost datahost
sudo rabbitmqctl add_vhost mediahost
sudo rabbitmqctl set_permissions -p datahost worker ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p mediahost worker ".*" ".*" ".*"
read -a PASS -p "Enter root password: "
sudo rabbitmqctl add_user root $PASS
sudo rabbitmqctl set_user_tags root administrator
sudo mkdir -p /var/log/schoolshape-worker
sudo chmod -rf 777 /var/log/schoolshape-worker

# JS+
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs -y
sudo apt-get install npm
sudo npm install -g brunch karma
sudo npm install jshint swank-js csslint coffee-script -g
sudo npm install jasmine-node -g

# Xmonad
sudo apt-get install xmonad
sudo apt-get install gnome-panel
sudo apt-get install synapse

# Others
sudo apt-get install sysv-rc-conf
sudo apt-get install unity-mail
sudo apt-get install lm-sensors
sudo apt-get install android-tools-adb
sudo apt-get install ssh

