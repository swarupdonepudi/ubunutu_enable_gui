#uninstall old version of R
sudo apt-get remove r-base-core
#you might have to run this command as root user
cp /etc/apt/sources.list sources.list
if grep -Fxq "cran" sources.list
then
  sed 's/.*cran.*/deb http:\/\/cran.rstudio.com\/bin\/linux\/ubuntu trusty\/' sources.list
else
  echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> sources.list
fi
sudo cp sources.list /etc/apt/sources.list
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install r-base-core=3.2.2-1trusty0
