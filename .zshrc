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

PATH="$HOME/.opt/:$PATH"
EDITOR="nvim"

alias ls="exa -l"
alias hg="history | rg"
alias pn="pnpm"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export DOCKER_HOST=unix:///run/user/1000/podman/podman.sock
export HISTCONTROL=ignorespace

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
