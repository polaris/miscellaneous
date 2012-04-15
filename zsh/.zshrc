# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%~
${smiley}  %{$reset_color%}'

setopt menucomplete
setopt completealiases

autoload -U compinit
compinit

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ll="ls -lha"

bindkey "^[[3~" delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
