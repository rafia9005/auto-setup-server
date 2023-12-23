
echo "                  _                                  _                   "
echo "   __ _   _   _  | |_    ___            ___    ___  | |_   _   _   _ __  "
echo "  / _\` | | | | | | __|  / _ \   _____  / __|  / _ \ | __| | | | | | '_ \ "
echo " | (_| | | |_| | | |_  | (_) | |_____| \__ \ |  __/ | |_  | |_| | | |_) |"
echo "  \__,_|  \__,_|  \__|  \___/          |___/  \___|  \__|  \__,_| | .__/ "
echo "                                                     github.com/rafia9005"
echo " "
read -p "Apakah kamu yakin ingin menggunakan auto setup ini? (y/n): " answer

if [ "$answer" != "${answer#[Yy]}" ]; then
    echo "--- wait auto setup server is running ----"
    yes "" | apt update
    yes "" | apt install neofetch htop
    yes "" | apt install nodejs
    yes "" | apt npm
    yes "" | apt nginx
    yes "" | apt install curl
    
    curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
    npm i -g pm2
    pm2 start "filebrowser -a 0.0.0.0 -p 2222 -r /"
    echo ""
    echo ""
else
    echo "Installation aborted."
fi