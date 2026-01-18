#!/bin/bash
# --- CAZI SHELL PRO (V3) ---
# Optimized for Gm Era 50 | 150+ Commands | VNC & T-Logo

echo "Updating System & Installing VNC/X11 Tools..."
pkg update && pkg upgrade -y
pkg install git python nodejs wget curl nano neofetch htop nmap termux-api \
tree lsd bat figlet cmatrix tigervnc x11-repo tur-repo -y

cat << 'EOF' > ~/.bashrc
# --- [T-LOGO BANNER] ---
clear
echo -e "\e[1;36m"
echo "  TTTTTTTTTTTTT  "
echo "  T           T  "
echo "  TTTTT   TTTTT  "
echo "      T   T      "
echo "      T   T      "
echo "      T   T      "
echo "      T_T        "
echo -e "\e[1;37m    CAZI SHELL V3 \e[0m"
echo -e "\e[1;34m  Gm Era 50 | 150+ Commands | VNC Active\e[0m"

# --- LIGHTER/CLEAN PROMPT ---
export PS1="\[\e[1;36m\]┌──(\[\e[1;37m\]Cazi-Shell\[\e[1;36m\])─[\[\e[1;32m\]\w\[\e[1;36m\]]\n└──\[\e[1;37m\]$ \[\e[0m\]"

# --- NAVIGATION & SYSTEM ---
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
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
alias md='mkdir -p'
alias can='chmod +x'
alias edit='nano'
alias v='vim'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias ll='ls -la'
alias lt='ls --tree'
alias cat='bat'

# --- VNC & REMOTE DESKTOP ---
alias vnc-start='vncserver :1'
alias vnc-stop='vncserver -kill :1'
alias vnc-list='vncserver -list'
alias display='export DISPLAY=:1'
alias novnc='pkg install novnc && novnc_server --vnc localhost:5901'

# --- NETWORKING & SECURITY ---
alias myip='curl ifconfig.me'
alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias ports='netstat -tulan'
alias scan='nmap -sP'
alias nmap-fast='nmap -F'
alias ping='ping -c 5'
alias header='curl -I'
alias ssh-on='sshd'
alias ssh-off='pkill sshd'
alias passgen='openssl rand -base64 12'
alias encrypt='gpg -c'
alias decrypt='gpg -d'

# --- SYSTEM & PERFORMANCE (GM ERA 50) ---
alias top='htop'
alias mem='free -h'
alias cpu='lscpu'
alias sysinfo='neofetch'
alias battery='termux-battery-status'
alias torch='termux-torch'
alias vibrate='termux-vibrate'
alias vol='termux-volume'
alias clock='watch -t -n 1 "date +%T | figlet"'
alias disk='df -h'
alias weather='curl wttr.in'
alias moon='curl wttr.in/Moon'
alias calc='python -q'
alias cpu-watch='watch -n 1 "lscpu | grep MHz"'

# PERFORMANCE EXPORTS (Mali GPU / WebGL 1.0)
export GALLIUM_DRIVER=zink
export MESA_LOADER_DRIVER_OVERRIDE=zink
export WEBGL_STUB=1
export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so

# --- PKG & GIT ---
alias upd='pkg update'
alias upg='pkg upgrade -y'
alias upall='pkg update && pkg upgrade -y'
alias ins='pkg install'
alias rem='pkg uninstall'
alias clean='pkg clean'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gcl='git clone'

# AUTO-EXTRACT
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz)  tar xzf $1 ;;
      *.zip)     unzip $1   ;;
      *.7z)      7z x $1    ;;
      *) echo "Error: Extractor failed" ;;
    esac
  fi
}
EOF

source ~/.bashrc
echo "Cazi Shell V3 Installed! Use 'vnc-start' for Desktop."
