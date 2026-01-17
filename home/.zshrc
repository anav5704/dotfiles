export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"

bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward
bindkey "^ " autosuggest-accept

ZSH_THEME="robbyrussell"
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_ignore_dups

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7
zstyle ':completion:*' menu no

plugins=(
  sudo
  git
  fzf-tab
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias q="exit"
alias src="source $HOME/.zshrc"
alias zrc="hx ~/.zshrc"
alias brc="hx ~/.bashrc"
alias lg="lazygit"
alias ff="fastfetch"
alias cp="copilot"
alias p="pnpm"
alias g="git"

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
