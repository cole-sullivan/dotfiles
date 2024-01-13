# zsh prompt and shell configuration

# Runs on shell launch

# Enable colors and change prompt
autoload colors && colors	# Load colors
PS1='%B%F{red}[%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%~%F{red}]%F{white}$ %b%f'
setopt autocd	# Automatically cd into typed directory
stty stop undef	# Disable ctrl+s to freeze terminal
setopt interactive_comments

# History in cache directory
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Load aliases and shortcuts if they exist
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Basic tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include hidden files
