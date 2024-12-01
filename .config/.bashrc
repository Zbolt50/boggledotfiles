#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source ~/.bash_git


PS1='[\u@\h \W]\$ '
./.config/hypr/test_script.sh ~/.config/hypr/script_lines.txt

alias config='/usr/bin/git --git-dir=$HOME/boggledotfiles/ --work-tree=$HOME'
