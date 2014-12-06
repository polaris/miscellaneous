autoload -Uz compinit
compinit

autoload -U colors
colors

setopt prompt_subst appendhistory autocd extendedglob nomatch beep notify menucomplete completealiases

bindkey -e
zstyle :compinstall filename '/home/jan/.zshrc'

HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=$HISTSIZE

# bindkey "^[[3~" delete-char
# bindkey "^[[H" beginning-of-line
# bindkey "^[[F" end-of-line

local icon="%(?,%{$fg[green]%}>%{$reset_color%},%{$fg[red]%}>%{$reset_color%})"

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %~
${icon} %{$reset_color%}'

alias ll="ls -lha"

