if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto      # update automatically without asking

DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
  git
  docker
  docker-compose
  rust
  colorize
  sudo
  alias-finder
  zsh-autosuggestions
  zsh-syntax-highlighting
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

EDITOR="nvim"

alias ls="eza -l"
alias hg="history | rg"
alias pn="pnpm"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias homework='/var/home/michadaniel/.local/bin/homework.sh'
alias hf-download='HF_HUB_ENABLE_HF_TRANSFER=1 /var/home/michadaniel/.local/bin/huggingface-cli download'

export HISTCONTROL=ignorespace

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
