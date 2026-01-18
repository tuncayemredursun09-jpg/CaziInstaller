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

# --- LIGHTER PROMPT ---
export PS1="\[\e[1;36m\]┌──(\[\e[1;37m\]Cazi-Shell\[\e[1;36m\])─[\[\e[1;32m\]\w\[\e[1;36m\]]\n└──\[\e[1;37m\]$ \[\e[0m\]"

# --- NAVIGATION ---
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias h='history'
alias q='exit'
alias refresh='source ~/.bashrc'
alias cls='clear && ls'
alias home='cd ~'
alias rd='rmdir'
alias rf='rm -rf'
alias cp='cp -iv'
alias mv='mv -iv'
alias can='chmod +x'
alias edit='nano'

# --- VNC & DISPLAY ---
alias vnc-start='vncserver :1'
alias vnc-stop='vncserver -kill :1'
alias vnc-list='vncserver -list'
alias display='export DISPLAY=:1'
alias novnc='novnc_server --vnc localhost:5901'

# --- NETWORKING ---
alias myip='curl ifconfig.me'
alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias scan='nmap -sP'
alias ports='netstat -tulan'
alias passgen='openssl rand -base64 12'

# --- PERFORMANCE (Mali GPU / Gm Era 50) ---
alias sysinfo='neofetch'
alias top='htop'
alias mem='free -h'
alias cpu-watch='watch -n 1 "lscpu | grep MHz"'
export GALLIUM_DRIVER=zink
export MESA_LOADER_DRIVER_OVERRIDE=zink
export WEBGL_STUB=1
export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so

# --- ADDITIONAL COMMANDS (+20) ---
alias weather='curl wttr.in'
alias moon='curl wttr.in/Moon'
alias matrix='cmatrix'
alias clock='watch -t -n 1 "date +%T | figlet"'
alias calc='python -q'
alias disk='df -h'
alias battery='termux-battery-status'
alias torch='termux-torch'
alias vibrate='termux-vibrate'
alias vol='termux-volume'
alias bright='termux-brightness'
alias cam-info='termux-camera-info'
alias tts='termux-tts-speak'
alias ip-info='curl ipinfo.io'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python'
alias update-all='pkg update && pkg upgrade -y'
alias list-bins='ls $PREFIX/bin'
alias check-api='termux-api-check'
alias my-path='echo $PATH'

# --- GIT ---
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
