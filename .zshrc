#show colors
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[green]%}%n%{$fg[red]%}@%{$fg[green]%}%M %{$fg[green]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
. $HOME/.local/share/lscolors.sh

#Keyboard controls
bindkey "^[Oc" forward-word
bindkey "^[Od" backward-word

#add directories to path
export PATH=$HOME/.scripts:$PATH

#load alias file
. $HOME/.zsh_alias

#Plugins

	#THIS PLUGIN MUST BE AT THE BOTTOM
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
