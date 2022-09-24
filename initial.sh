#!/usr/bin/env bash
sudo apt update

sleep 0.5s

#输入法
sudo apt-get install fcitx fcitx-lib* -y

sleep 1s

im-config

sudo apt-get install fcitx-googlepinyin -y

sleep 1s

word1='Environment="GTK_IM_MODULE=fcitx"'
word2='Environment="QT_IM_MODULE=fcitx"'
word3='Environment="XMODIFIERS=@im=fcitx"'

sudo chmod 777 /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf

echo $word1 >>/etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo $word2 >>/etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo $word3 >>/etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf

sleep 0.5s

fcitx

sleep 0.5s

fcitx-configtool

sleep0.5s
austat='/usr/bin/fcitx-autostart'
sudo echo $austat >>~/.sommelierrc

sleep 1s



#nautilus
sudo apt-get install nautilus -y
sleep 0.5s

#pip3

sudo apt-get install python3-pip -y
sleep 0.5s

sudo apt upgrade -y
