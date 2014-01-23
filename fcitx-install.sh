#!/bin/bash
#echo "Do you want to Install fcitx with sogoupinyin thesaurus[Y/n]?"
#read ans
#case "&ans" in  n*|N*)
#    echo "Installation aborted.Exiting..."
#    exit 0;
#esac     
#echo "Setting up repository"
#sudo add-apt-repository ppa:fcitx-team/nightly -y
#sudo apt-get update

#echo "Installing fcitx..."
#sudo apt-get install fcitx fcitx-sogoupinyin fcitx-config-gtk fcitx-frontend-all fcitx-module-cloudpinyin fcitx-ui-classic -y

echo "Installing sogoupinyin-skin..."
sudo chmod -R 755 sogou/ 
sudo cp -r sogou/ /usr/share/fcitx/skin/
echo "Uninstalling ibus..."
sudo apt-get purge ibus -y






