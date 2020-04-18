# ora
ORACLE_HOME=/usr/lib/oracle/12.2/client64
PATH=$ORACLE_HOME/bin:$PATH
LD_LIBRARY_PATH=$ORACLE_HOME/lib

export ORACLE_HOME
export LD_LIBRARY_PATH
export PATH

# set current directory as window title
DISABLE_AUTO_TITLE="true"

function set_win_title(){
    echo -ne "\033]0; ``$PWD \007"
}

precmd_functions+=(set_win_title)

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -AFoqv --color --group-directories-first'
alias cpv='rsync -ah --info=progress2'
alias zshrc='code ~/.zshrc'
alias gitcfg='code ~/.gitconfig'
alias starshipcfg='code ~/.config/starship.toml'
alias zshreload='source ~/.zshrc'
alias grep='grep --color=auto'
alias cal='gcal --starting-day=1'
alias weather='curl wttr.in/buenos+aires'
alias gpustatus='cat /proc/acpi/bbswitch'

# enable starship
eval "$(starship init zsh)"
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# enable 'history' plugin
source $HOME/.zsh/history.zsh

# enable 'key-bindings' plugin
source $HOME/.zsh/key-bindings.zsh

# Load completion config
source $HOME/.zsh/completion.zsh

# enable 'zsh-autosuggestions' plugin
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist