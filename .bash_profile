#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -n "$SSH_CONNECTION"]; then
	echo "SSH Connected."
else
	if uwsm check may-start; then
		exec uwsm start hyprland.desktop
	fi
	. "$HOME/.cargo/env"
fi;
