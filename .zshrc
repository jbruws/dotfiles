# setting WM as sway
export XDG_CURRENT_DESKTOP="sway"

# prompt
autoload -U colors && colors
PS1='%B%F{yellow}%n%F{blue} %b@%B%F{magenta} %m %F{blue}%b|%B %F{green}%d
->%f%b '

# autostart sway on tty1
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# aliases
alias sudo="doas"
alias vim="nvim"
alias ls="ls --color=always"
alias lockscreen="swaylock -c 282828"
alias cat="bat"
