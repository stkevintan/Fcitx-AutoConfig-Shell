#!/bin/bash
echo -n "Do you want to install fcitx-sogoupinyin[Y/n]?"
read ans
case "$ans" in  n*|N*)
    echo "Installation aborted.Exiting..."
    exit 0;
esac     
echo ""
echo "Setting up repository..."
sudo add-apt-repository ppa:fcitx-team/nightly -y
sudo apt-get update

echo ""
echo "Installing fcitx..."
sudo apt-get install fcitx fcitx-sogoupinyin fcitx-config-gtk fcitx-frontend-all fcitx-module-cloudpinyin fcitx-ui-classic -y

echo ""
echo "Installing sogou-skin..."
sudo chmod -R 755 sogou/ 
sudo cp -r sogou/ /usr/share/fcitx/skin/
sed -i "s/.*SkinType.*/SkinType=sogou/g" ~/.config/fcitx/conf/fcitx-classic-ui.config

echo ""
echo "Uninstalling ibus..."
sudo apt-get purge ibus -y

echo ""
echo "How many candidate words do you want?"
echo -n "Please enter a integer range between [1~9]:"
read num
sed -i "s/.*CandidateWordNumber.*/CandidateWordNumber=$num/g"  ~/.config/fcitx/config








