#!/usr/bin/env zsh

fpath=($DOTFILES/zsh/plugins $fpath)

# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD              # Go to folder path without using cd.

setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

setopt CORRECT              # Spelling correction
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +---------+
# | ALIASES |
# +---------+

#alias v="/opt/homebrew/bin/nvim"
alias c='clear'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'
alias zrc="nvim ~/.config/zsh/.zshrc"
alias python='python3'
alias pip='python -m pip'
alias lt='ls -lrth'
alias dl='cd ~/Downloads'
alias pvenv='python -m venv venv && source venv/bin/activate'
alias ae='source venv/bin/activate'
alias v='nvim'
alias vim='nvim'
alias cat=bat

# Eza
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

# cd 
alias sb="cd \$SECONDBRAIN"
alias in="cd \$SECONDBRAIN/+/" 
alias dotfiles="cd $DOTFILES"
alias scripts="cd $SCRIPTS"

if command -v bat > /dev/null; then
    alias cat="bat"
elif command -v batcat > /dev/null; then
    alias cat=""
fi

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

############
# Keybinds #
############

# bind -x '"\C-l":clear'

#########################
# Environment Variables #
# #######################

# directories
export REPOS="$HOME/Repos"
export GITUSER="donovanwatts"
export GHREPOS="$REPOS/github.com/$GITUSER"
#export DOTFILES="$GHREPOS/dotfiles"
export DOTFILES="$HOME/dotfiles"
export LAB="$GHREPOS/lab"
export SCRIPTS="$DOTFILES/scripts"
export SECONDBRAIN="$HOME/secondbrain"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export LANG=en_US.UTF-8

export EDITOR=/opt/homebrew/bin/nvim

export PATH="$HOME/bin:/usr/local/bin:$PATH"

export PATH="/Users/dw/Library/Python/3.12/bin:$PATH"

export PIP_REQUIRE_VIRTUALENV=true

export PATH="$SCRIPTS:$PATH"

autoload -U bashcompinit
bashcompinit

CUSTOM_SCRIPTS_DIR="$HOME/bin"

# Sourcing the z.sh script
#if [ -f "$CUSTOM_SCRIPTS_DIR/z.sh" ]; then
#    . "$CUSTOM_SCRIPTS_DIR/z.sh"
#fi

# +---------------------+
# | SYNTAX HIGHLIGHTING |
# +---------------------+

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/dw/.config/op/plugins.sh

# Created by `pipx` on 2024-02-21 16:09:36
export PATH="$PATH:/Users/dw/.local/bin"

eval "$(zoxide init --cmd cd zsh)"
