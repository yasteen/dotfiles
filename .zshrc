# --- START: DON'T CHANGE --- #
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yasteen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# --- END: DON'T CHANGE --- #

# doesn't work?
#autoload -U +X bashcompinit
#bashcompinit
##source /usr/share/bash-completion/bash_completion

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# a little flaky?
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# --- PROMPT ---
# git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}' # PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'
# main prompt
#PROMPT='%F{yellow}%~ %F{#FFAACC}%n %(?.%F{green}.%F{red})%#%f '
PROMPT='%F{magenta}%n %f* %F{yellow}%1d %(?.%F{green}.%F{red})%#%f '


# Aliases
source ~/.aliases


# --- Displaying things ---
neofetch

