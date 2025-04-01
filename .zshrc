# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git docker z sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags 
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"




### ---- .bashrc -----


# Change to home directory on shell startup
cd ~

# Enable colors for `ls` and other utilities
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Prompt colors (zsh uses %F{color} instead)
# toload -Uz colors && colors
# setopt PROMPT_SUBST

# PROMPT='%F{green}%n%f@%F{cyan}%m%f:%F{blue}%~%f$ '

# PATH
export PATH="$HOME/neovim/bin:$PATH"

# Color support
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LS_COLORS="di=34:fi=0:ln=36:pi=33:so=35:bd=33;1:cd=33;1:or=31;1:mi=31;1:ex=32;1"


# History settings
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
HISTSIZE=1000
SAVEHIST=2000
HISTFILE=~/.zsh_history

# Aliases
alias lh='ls -lah'
alias cls='clear'
alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias bashrc='vi ~/.bashrc'
alias sbashrc='source ~/.bashrc'
alias vimrc='vi ~/.vimrc'
alias svimrc='source ~/.vimrc'
alias ctmux='vi ~/.tmux.conf'
alias ktmux='tmux kill-session'
alias dtmux='tmux detach-client'
alias stmux='tmux source-file ~/.tmux.conf'
alias tmuxconf='vi ~/.tmux.conf'
alias mcd='mkdir -p "$1" && cd "$1"'
alias d2u='dos2unix'
alias pyhon='python3'
alias py='python3'
alias py2='python2'
alias py3='python3'
alias p='python3'
alias p2='python2'
alias p3='python3'
alias zshrc='vi ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias binbash='/bin/bash'
alias vi='nvim'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gundo='git reset --soft HEAD~1 && git push --force'

alias h='history | tail -10'
alias t='tmux'

# WSL Shortcuts
alias x='explorer.exe .'
alias teams='cd ~/shortcuts && explorer.exe msteams.lnk'
alias outlook='olk.exe'
alias spotify='cd ~/shortcuts && explorer.exe spotify.lnk'
alias edge='cd ~/shortcuts && explorer.exe edge.lnk'
alias chrome='cd ~/shortcuts && explorer.exe chrome.lnk'
alias wireshark='cd ~/shortcuts && explorer.exe wireshark.lnk'
alias psh='powershell.exe -File '
alias rdp='mstsc.exe '

# WSL-open
export PATH="$HOME/.wsl-open:$PATH"
alias open='wsl-open'
alias wo='wsl-open'


# Alert for long commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"' 

# Load bash-style aliases if desired
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases >/dev/null 2>&1

# Set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Tmux auto-start
if command -v tmux &>/dev/null && [[ -z "$TMUX" ]]; then
  if tmux has-session &>/dev/null; then
    tmux attach-session
  else
    tmux new-session -s default
  fi
fi







# Created by `pipx` on 2025-03-26 02:12:48
export PATH="$PATH:/home/myles/.local/bin"

# fnm
FNM_PATH="/home/myles/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/myles/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Golang
export PATH="$PATH:$HOME/go/bin"
