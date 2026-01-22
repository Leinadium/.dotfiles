# path manipulation
export PATH=$PATH:/home/daniel/.local/bin

# zinit startup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# theme (oh my posh)
eval "$(oh-my-posh init zsh --config ${HOME}/.ohmyposh.toml)"

# plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# completions
autoload -Uz compinit && compinit
zinit cdreplay -q
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# alias
alias zshconfig="vim ~/.zshrc"
alias exti="exit"
alias cl='clear'
alias ls='ls --color'
alias gst='git status'
alias gps='git push'
alias gplr='git pull --rebase'
alias gss='git stash'
alias gssp='git stash pop'
alias gdf='git diff'

export GPG_TTY=$(tty)

# programs
alias ytdlp="~/rasc/yt-dlp-venv/bin/yt-dlp"
