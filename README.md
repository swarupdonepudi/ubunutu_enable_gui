Run instructions:

Install git :

```shell
sudo apt-get --assume-yes install git
```

Clone this repo :

```shell
git clone https://github.com/swarup-donepudi/ubunutu_enable_gui.git

cd ubunutu_enable_gui/

chmod +x enable_gui.sh

./enable_gui.sh "ubuntu" | tee -a enable_gui_execution.log
```
> Note: The shell script will prompt password for VNC server couple of times
