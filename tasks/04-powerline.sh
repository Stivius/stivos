sudo apt install -y powerline
pip3 install powerline-status

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mv PowerlineSymbols.otf $HOME/.local/share/fonts/

wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

fc-cache -vf
