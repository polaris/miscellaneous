ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias ll="ls -lha"

plugins=(git git-extra git-prompt rebar brew sublime cp node npm themes osx)

source $ZSH/oh-my-zsh.sh

export PATH="/Users/jan/.opam/system/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local icon="%(?,%{$fg[green]%}>%{$reset_color%},%{$fg[red]%}>%{$reset_color%})"

PROMPT='
%~
${icon} %{$reset_color%}'

setopt menucomplete
setopt completealiases

autoload -U compinit
compinit

bindkey "^[[3~" delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

unalias run-help &>/dev/null
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# OPAM configuration
. /Users/jan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
