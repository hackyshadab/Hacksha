#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED} '##::::'##::::'###:::::'######::'##:::'##::'######::'##::::'##::::'###::::"
echo " ##:::: ##:::'## ##:::'##... ##: ##::'##::'##... ##: ##:::: ##:::'## ##::: "
echo " ##:::: ##::'##:. ##:: ##:::..:: ##:'##::: ##:::..:: ##:::: ##::'##:. ##:: "
echo " #########:'##:::. ##: ##::::::: #####::::. ######:: #########:'##:::. ##: "
echo " ##.... ##: #########: ##::::::: ##. ##::::..... ##: ##.... ##: #########: "
echo " ##:::: ##: ##.... ##: ##::: ##: ##:. ##::'##::: ##: ##:::: ##: ##.... ##: "
echo " ##:::: ##: ##:::: ##:. ######:: ##::. ##:. ######:: ##:::: ##: ##:::: ##: "
echo "..:::::..::..:::::..:::......:::..::::..:::......:::..:::::..::..:::::..:: "
echo -e "${RED}                                            THE ULTIMATE SOURCE OF HACKING FOR ANDROID "
echo -e "${RED}                                                      -----POWERED BY SHADAB THE HACKER........ ${NC}"
echo ""                                                   

echo -e "${YELLOW} Instagram.com/iam__s__king | Github.com/hackyshadab ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacksha, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/Hacksha"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/Hacksha"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory Hacksha Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read shadab
    if [ "$shadab" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/hackyshadab/Hacksha.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/Hacksha.py" '${1+"$@"}' > Hacksha;
chmod +x Hacksha;
sudo cp Hacksha /usr/bin/;
rm Hacksha;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing Hacksha !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
