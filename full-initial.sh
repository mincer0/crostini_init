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

sleep 0.5s
austat='/usr/bin/fcitx-autostart'
sudo echo $austat >>~/.sommelierrc
sleep 1s

#docker

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

#nautilus
sudo apt-get install nautilus -y
sleep 0.5s

#pip3

sudo apt-get install python3-pip -y
sleep 0.5s

#vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

sleep 0.5s

code --install-extension yzhang.markdown-all-in-one
code --install-extension bierner.markdown-preview-github-styles
code --install-extension ms-python.python
code --install-extension formulahendry.code-runner
code --install-extension ms-azuretools.vscode-docker

sleep 0.5s


sudo apt upgrade -y
