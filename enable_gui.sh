sudo apt-get --assume-yes update
sudo apt-get --assume-yes install ubuntu-desktop vnc4server gnome-panel
vncserver
vncserver -kill :1
cp ./xstartup /root/.vnc/xstartup
vncserver
