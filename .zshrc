# prompt
autoload -U colors && colors
PS1='%B%F{yellow}%n%F{blue} %b@%B%F{magenta} %m %F{blue}%b|%B %F{green}%d
->%f%b '

# autostart hyprland on tty1
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	# setting WM as hyprland
	export XDG_CURRENT_DESKTOP="Hyprland"
	export XDG_RUNTIME_DIR="/run/user/1000"
	ln -s $XDG_RUNTIME_DIR/hypr /tmp/hypr

	# starting the WM
	exec dbus-launch --exit-with-session Hyprland
fi

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# aliases
alias sudo="doas"
alias vim="nvim"
alias ls="ls --color=always"
alias lockscreen="swaylock -c 181825"
