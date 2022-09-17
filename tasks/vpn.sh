sudo apt-get install -y wireguard

sudo mkdir -p /etc/wireguard/

sudo cp $DOTFILES/etc/wireguard/wg0.conf /etc/wireguard/wg0.conf

ln -s $SCRIPTS/system/vpn_control $HOME/.local/bin/vpn_control
ln -s $SCRIPTS/polybar/polybar_vpn $HOME/.local/bin/polybar_vpn

# FIXME probably generate wg0.conf
