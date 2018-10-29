DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

XKEYBOARD="00-keyboard.conf"
KEYBOARD="vconsole.conf"

BASHPROFILE=".bash_profile"
BASHRC='.bashrc'
PROFILE='.profile'
XPROFILE='.xprofile'
XINITRC='.xinitrc'
XRESOURCES='.Xresources'


FILES=( "$BASHPROFILE" "$BASHRC" "$PROFILE" "$XPROFILE" "$XINITRC" "$XRESOURCES" )

for f in "${FILES[@]}"
do
	ln -sf ${DIR}/${f} ~/${f}
done

ln -sf ${DIR}/i3 ~/.config/i3

sudo ln -sf ${DIR}/${XKEYBOARD} /etc/X11/xorg.conf.d/${XKEYBOARD}
sudo ln -sf ${DIR}/${KEYBOARD} /etc/${KEYBOARD}
