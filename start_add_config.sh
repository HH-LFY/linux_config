#!/bin/bash

add_profile_config() {
    echo "开始配置 $1"
    echo $2 >> ~/.profile
    source ~/.profile
    echo "$1 配置完成"
}

add_bashrc_config() {
    echo "开始配置 $1"
    echo $2 >> ~/.bashrc
    source ~/.bashrc
    echo "$1 配置完成"
}

add_inputrc_config() {
    echo "开始配置 $1"
    echo $2 >> ~/.inputrc
    source ~/.inputrc
    echo "$1 配置完成"
}

config_ps='PS1="[\[\e[32m\]#\##\[\e[31m\]\u@\[\e[36m\]\h \[\e[35m\]\w \[\e[33m\]\t]\$\[\e[m\] "'
add_profile_config "命令行颜色" "$config_ps"

config_bashrc_ll='alias ll="ls -al"'
add_bashrc_config "ll" "$config_bashrc_ll"

config_bashrc_grep='alias grep="grep --color"'
add_bashrc_config "grep" "$config_bashrc_grep"

config_bashrc_gp='alias gp="ps -ef | grep --color "'
add_bashrc_config "gp" "$config_bashrc_gp"

config_input_1='set completion-ignore-case on'
add_inputrc_config "input1" "$config_input_1"

config_input_2='set show-all-if-ambiguous on'
add_inputrc_config "input2" "$config_input_2"

cp vimrc ~/.vimrc
echo "替换vimrc完成"
