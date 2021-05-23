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
echo "                                                        "
echo "    ________                                            "
echo "   |         | |                    | |      | |        "
echo "   |         | |                    | |      | |        "
echo "   \_______  | |__,___    ____   ___| | ____ | |__,___  "
echo "           \ | |_____  \ /   ' \/     |/   ' \ |      \ "
echo "           | | |     \  |   _  |   _  |   _  | |   _  | "  
echo "           | | |     |  |  (_| |  (_| |  (_| | |  (_| | "  
echo "   ___,,,__| | |     |  |\__,__|\__,__|\__,__| |___,__| "
echo -e "${RED}                                                      ~ Tools for Hacking by Mr. SHADAB The Hacker ${NC}"
echo ""
echo -e "${YELLOW} Instagram.com/iam_s_king | Github.com/hackyshadab ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacktronian, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hacktronian"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hacktronian"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hacktronian Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/thehackingsage/hacktronian.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/hacktronian.py" '${1+"$@"}' > hacktronian;
chmod +x hacktronian;
sudo cp hacktronian /usr/bin/;
rm hacktronian;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hacktronian !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi