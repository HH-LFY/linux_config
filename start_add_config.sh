#!/bin/bash

add_profile_config() {
    echo "开始配置 $1"
    echo $2 >> ~/.profile
    source ~/.profile
    echo "$1 配置完成"
}

add_bashrc_config() {
    echo "开始配置 $1"
    echo -e $2 >> ~/.bashrc
    source ~/.bashrc
    echo "$1 配置完成"
}

config_ps='PS1="[\[\e[32m\]#\##\[\e[31m\]\u@\[\e[36m\]\h \[\e[35m\]\w \[\e[33m\]\t]\$\[\e[m\] "'
add_profile_config "命令行颜色" "$config_ps"

config_bashrc='alias ll="ls -al"\nalias gp="grep --color"\n'
add_bashrc_config "alias" "$config_bashrc"