export ZSH="$HOME/.oh-my-zsh"

plugins=(
  zsh-autosuggestions
  copypath
  z
)

source $ZSH/oh-my-zsh.sh

# Enviroment Variables
export LANG=en_US.UTF-8
export EDITOR="nvim"

# Define Aliases
alias zshconfig="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias starshipconfig="nvim ~/.config/starship.toml"
alias nvimconfig="nvim ~/.config/nvim/"
alias neofetchconfig="nvim ~/.config/neofetch/config.conf"
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"
alias bat="batcat"
alias l="exa --icons"
alias ls="exa -l --icons"
alias la="exa -a -l --icons"

cx() { cd "$@" && ls }

take() {
  mkdir -p $1
  cd $1
}

# Vi Mode Configuration
bindkey -v
export KEYTIMEOUT=10
bindkey -M viins 'jk' vi-cmd-mode

# Nala Completion
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Add Homebrew to PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Add ~/.local/bin directory to PATH
export PATH=~/.local/bin:$PATH

eval "$(starship init zsh)"
