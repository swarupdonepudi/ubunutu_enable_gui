USER=$1
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install ubuntu-desktop vnc4server gnome-panel
vncserver
vncserver -kill :1
mkdir ~/.vnc
sudo cp ./xstartup ~/.vnc/xstartup
chmod -R 777 ~/.vnc
sudo cp ./xstartup /root/.vnc/xstartup
sudo cp ./vncserver_service.sh /etc/init.d/vncserver
export_user_find_string='export USER=\"user\"'
export_user_replace_string='export USER=\"'$USER'\"'
sudo sed  -i 's/'"$export_user_find_string"'/'"$export_user_replace_string"'/' /etc/init.d/vncserver
sudo chmod +x /etc/init.d/vncserver
sudo service vncserver start
sudo update-rc.d vncserver defaults
