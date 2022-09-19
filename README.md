# crostini_init
it's a shell script to initialize the development enviroment of crostini.<br>full_initial.sh is mainly to reach the needs of my own development enviroment.<br>initial.sh is a simple script to set up pinyin input with fcitx and install some common software.

## 设定输入法主要参考网站
http://120.79.199.53/?p=146<br>
https://faq.fydeos.com/recipes/chinese-ime-in-linux-beta/

## docker的脚本主要参考网站
https://kandi.openweaver.com/shell/abiosoft/crostini-docker

## 一键脚本
initial.sh
```
wget -N --no-check-certificate https://raw.githubusercontent.com/mincer0/crostini_init/master/initial.sh && chmod +x initial.sh && ./initial.sh
```
full_initial.sh
```
wget -N --no-check-certificate https://raw.githubusercontent.com/mincer0/crostini_init/master/full-initial.sh && chmod +x full-initial.sh && ./full_initial.sh
```
