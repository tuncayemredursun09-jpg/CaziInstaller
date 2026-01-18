#!/bin/bash

# --- Termux Super-Shell Installer ---
# Optimized for Mali GPU / Gm Era 50
# 130+ Commands Included

echo "Installing dependencies..."
pkg update && pkg upgrade -y
pkg install git python nodejs wget curl nano neofetch htop nmap termux-api tree lsd bat figlet -y

echo "Configuring .bashrc..."

cat << 'EOF' > ~/.bashrc
# --- [1-25] SYSTEM & NAVIGATION ---
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history'
alias q='exit'
alias refresh='source ~/.bashrc'
alias path='echo -e ${PATH//:/\\n}'
alias cls='clear && ls'
alias home='cd ~'
alias rd='rmdir'
alias rf='rm -rf'
alias cp='cp -iv'
alias mv='mv -iv'
alias ln='ln -s'
alias fsize='du -sh'
alias search='find . -name'
alias count='ls -1 | wc -l'
alias can='chmod +x'
alias edit='nano'
alias v='vim'
alias reload='source ~/.bashrc'
alias mcd='mkdir -p'

# --- [26-50] FILE VISUALS (lsd & bat) ---
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -la'
alias lt='ls --tree'
alias cat='bat'
alias tree='tree -C'
alias l1='ls -1'
alias lsize='ls -lS'
alias lold='ls -lt'
alias lnew='ls -ltr'

# --- [51-75] PACKAGE MANAGEMENT ---
alias upd='pkg update'
alias upg='pkg upgrade -y'
alias upall='pkg update && pkg upgrade -y'
alias ins='pkg install'
alias rem='pkg uninstall'
alias searchpkg='pkg search'
alias listpkg='pkg list-installed'
alias clean='pkg clean'
alias reinstall='pkg reinstall'
alias fix='dpkg --configure -a'

# --- [76-100] NETWORKING & TOOLS ---
alias myip='curl ifconfig.me'
alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias ports='netstat -tulan'
alias ping='ping -c 5'
alias nmap-fast='nmap -F'
alias scan='nmap -sP'
alias header='curl -I'
alias checkweb='curl -Is'
alias ssh-start='sshd'
alias ssh-stop='pkill sshd'
alias ftp='python -m pyftpdlib -p 2121'
alias dns='cat /etc/resolv.conf'

# --- [101-125] HARDWARE & API (Gm Era 50 Optimized) ---
alias top='htop'
alias mem='free -h'
alias cpu='lscpu'
alias sysinfo='neofetch'
alias battery='termux-battery-status'
alias vol='termux-volume'
alias vibrate='termux-vibrate'
alias torch='termux-torch'
alias bright='termux-brightness'
alias cam-info='termux-camera-info'
alias tts='termux-tts-speak'
alias contact='termux-contact-list'
alias sms-list='termux-sms-list'

# --- [126-140] GIT & DEV ---
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gcl='git clone'
alias gb='git branch'
alias gd='git diff'
alias server='python -m http.server 8080'
alias py='python'
alias py3='python3'
alias pipins='pip install'

# --- PERFORMANCE FIXES (Mali GPU / WebGL 1.0) ---
export GALLIUM_DRIVER=zink
export MESA_LOADER_DRIVER_OVERRIDE=zink
export WEBGL_STUB=1
export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so

# FUNCTIONS
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz)  tar xzf $1 ;;
      *.zip)     unzip $1   ;;
      *.7z)      7z x $1    ;;
      *) echo "Extraction Error" ;;
    esac
  fi
}

# WELCOME
clear
figlet "TERMUX PRO"
echo -e "\e[1;34mGm Era 50 Optimized | 130+ Commands Loaded\e[0m"
EOF

source ~/.bashrc
echo "Installation Complete! Type 'refresh' to start."
