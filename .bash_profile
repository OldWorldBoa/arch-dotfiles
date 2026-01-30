#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$SSH_CONNECTION"]; then
	if uwsm check may-start; then
		exec uwsm start hyprland.desktop
	fi
	. "$HOME/.cargo/env"
else
	echo "SSH Connected: $SSH_CONNECTION"
fi;
