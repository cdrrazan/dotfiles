sudo apt update && sudo apt upgrade && sudo apt-get dist-upgrade
sudo apt install tmux
sudo apt install i3 i3-wm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp -r .tmux.conf .tmux.conf.local .zshrc ~/.
cp -r i3lock ~/.config/i3/
cp -r i3.py touchpad.sh sw.py config ~/.config/i3/
git clone git://github.com/vivien/i3blocks && cd i3blocks && make clean debug && make install
cp -r i3blocks.conf ~/.config/i3/
sudo cp -r i3blocks /usr/share/
rm -rf i3blocks
