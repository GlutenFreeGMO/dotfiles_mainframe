
#Uses for .zshrc
#Set Variables
#Change ZSH Options
#Create Aliases
#Customize Prompt(s)
#Add Locations to $PATH Variable
#Write Functions
#Use ZSH Plugins
#Other

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#Aliases
alias ls='ls -lAFh'

#Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'
#%L keeps track of shell count

#Write Functions
#Make nested directory
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

