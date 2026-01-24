export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"

# keybings
bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward
bindkey "^ " autosuggest-accept

ZSH_THEME="robbyrussell"
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

# zsh options
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
  # git
  # pip
  # python
  # ansible
  # terraform
  fzf-tab
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# general aliases
alias c="clear"
alias q="exit"
alias src="source $HOME/.zshrc"
alias zrc="hx ~/.zshrc"
alias brc="hx ~/.bashrc"
alias lg="lazygit"
alias ff="fastfetch"
alias chat="copilot"
alias tf="terraform"
alias ap="ansible-playbook"
alias av="ansible-vault"
alias ag="ansible-galaxy"
alias py="python"
alias pfr="pip freeze > requirements.txt"
alias pir="pip install -r requirements.txt"
alias pi="pip install"
alias p="pnpm"
alias g="git"
alias d="docker"

# obsidian pull
ol() {
  (cd $HOME/Obsidian && gl)
}

# obsidian push
op() {
  (cd $HOME/Obsidian && ga . && gcmsg "sync vault" && gp)
}

# obsidian status
ost() {
  (cd $HOME/Obsidian && gst)
}

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
