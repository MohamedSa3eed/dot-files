# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#prompt
source /usr/share/zsh/manjaro-zsh-prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}<%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}>%{$reset_color%}$%b "

#History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory


#auto completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files.

#vim mode
bindkey -v
export KEYTIMEOUT=1

#alias 
alias ls='lsd -alh'
alias cat='bat'
alias pc='cd ~/mypc/pc'
alias mypc='thunar ~/mypc/pc &'
alias iti="cd ~/mypc/pc/iti"
alias proteus="~/mypc/Program\ Files\ \(x86\)/Labcenter\ Electronics/Proteus\ 8\ Professional/BIN/PDS.EXE &"
alias cls='clear'
alias nv='nvim'

# Load zsh plugins
 source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
 source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 
 source /usr/share/zsh/plugins/emoji-cli/emoji-cli.zsh
 jp2a ~/Pictures/stikers/omnitrix.png --size=30x15 --color -i

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
