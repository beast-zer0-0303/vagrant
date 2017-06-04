#!/bin/bash

# Exit if already bootstrapped
test -f /etc/bootstrapped && exit

# x64環境でx86バイナリを動かすパッケージ
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get install gcc-multilib g++-multilib

# ELF解析用
sudo apt-get install binutils

# Python，perl
sudo apt-get install python2.7 perl

# ROPガジェット探索用
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x86
chmod +x rp-lin-x86; mv rp-lin-x86 /usr/local/bin

# その他
sudo apt-get install binutils socat git build-essential gdb gdbserver nasm

# gdb-peda導入
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

date > /etc/bootstrapped
