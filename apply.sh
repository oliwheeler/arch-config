DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"


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
