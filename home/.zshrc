export ZSH="$HOME/.oh-my-zsh"
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zrc="hx ~/.zshrc"
alias brc="hx ~/.bashrc"
alias lg="lazygit"
alias ff="fastfetch"
alias q="exit"

eval "$(starship init zsh)"
