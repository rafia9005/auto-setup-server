echo "                  _                                  _                   "
echo "   __ _   _   _  | |_    ___            ___    ___  | |_   _   _   _ __  "
echo "  / _\` | | | | | | __|  / _ \   _____  / __|  / _ \ | __| | | | | | '_ \ "
echo " | (_| | | |_| | | |_  | (_) | |_____| \__ \ |  __/ | |_  | |_| | | |_) |"
echo "  \__,_|  \__,_|  \__|  \___/          |___/  \___|  \__|  \__,_| | .__/ "
echo "                                                     github.com/rafia9005"
echo " "

    echo "--- wait auto setup server is running ----"
    yes "" | apt update
    yes "" | apt install neofetch htop
    yes "" | apt install nodejs
    yes "" | apt install npm
    yes "" | apt install nginx
    yes "" | apt install curl
    sudo rm -r /etc/nginx/sites-available/
    curl https://raw.githubusercontent.com/rafia9005/auto-setup-server/main/default -o default
    mv default /etc/nginx/sites-available/
    service nginx restart
    curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
    npm i -g pm2
    pm2 start "filebrowser -a 0.0.0.0 -p 2222 -r /"
    echo "---------------------------------------"
    echo "| Filebrowser run in : 127.0.0.0:2222 |"
    echo "---------------------------------------"
    echo ""
    echo "---------------------------------------"
    echo "| Nginx run in : 127.0.0.0:8080       |"
    echo "---------------------------------------"
    echo ""
    echo "command untuk menjalankan filebrowser jika mati : [ filebrowser -a 0.0.0.0 -p 2222 -r / ]"
