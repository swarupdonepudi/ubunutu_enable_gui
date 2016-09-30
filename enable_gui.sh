USER=$2
sudo apt-get -y update
sudo apt-get -y install xfce4 xfce4-goodies tightvncserver
vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
echo "#!/bin/bash\nxrdb $HOME/.Xresources\nstartxfce4 &" > ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo cp ./vncserver_service.sh /etc/init.d/vncserver
export_user_find_string='export USER=\"user\"'
export_user_replace_string='export USER=\"'$USER'\"'
sudo sed  -i 's/'"$export_user_find_string"'/'"$export_user_replace_string"'/' /etc/init.d/vncserver
sudo chmod +x /etc/init.d/vncserver
sudo service vncserver start
sudo update-rc.d vncserver defaults
