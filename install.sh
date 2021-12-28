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
echo -e "${RED}    "
echo"   _   _            _     ____  _             "
echo"  | | | | __ _  ___| | __/ ___|| |__   __ _   "
echo"  | |_| |/ _` |/ __| |/ /\___ \| '_ \ / _` |  " 
echo"  |  _  | (_| | (__|   <  ___) | | | | (_| |  "
echo"  |_| |_|\__,_|\___|_|\_\|____/|_| |_|\__,_|  "

echo -e "${RED}                                                      ~ Tools for Hacking by Mr. SHADAB The Hacker ${NC}"
echo ""
echo -e "${YELLOW} Instagram.com/iam_s_king | Github.com/hackyshadab ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacksha, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hacksha"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hacksha"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hacksha Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone git clone https://github.com/hackyshadab/Hacksha.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/HackSha.py" '${1+"$@"}' > HackSha;
chmod +x HackSha;
sudo cp HackSha /usr/bin/;
rm HackSha;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hacksha !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
