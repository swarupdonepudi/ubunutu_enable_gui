sudo apt-get --assume-yes update
sudo apt-get --assume-yes install ubuntu-desktop vnc4server gnome-panel
vncserver
vncserver -kill :1
sudo cp ./xstartup /root/.vnc/xstartup
sudo update-rc.d vncserver defaults
vncserver
