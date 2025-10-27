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
HISTSIZE=10000
SAVEHIST=10000
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
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/brave
export TERMINAL=kitty

#variables
export QT_QPA_PLATFORMTHEME=qt6ct

#alias 
alias ls='lsd'
alias ll='lsd -alh'
alias cat='bat'
alias pc='cd ~/mypc/pc'
alias mypc='thunar ~/mypc/pc &'
#alias iti="cd ~/mypc/pc/iti"
#alias proteus="~/mypc/Program\ Files\ \(x86\)/Labcenter\ Electronics/Proteus\ 8\ Professional/BIN/PDS.EXE &"
alias cls='clear'
alias v='nvim'
alias sv='sudo -E nvim'
alias w='curl wttr.in'
alias w2='curl v2.wttr.in'
## mkdir and cd
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Load zsh plugins
 source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
 source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 
 source /usr/share/zsh/plugins/emoji-cli/emoji-cli.zsh
 #jp2a ~/Pictures/stikers/omnitrix.png --size=30x15 --color -i

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/mohamed/.dart-cli-completion/zsh-config.zsh ]] && . /home/mohamed/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
