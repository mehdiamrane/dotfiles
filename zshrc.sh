# always source zprofile regardless of whether this is/isn't a login shell
source ~/.zprofile

# load shared shell configuration
source ~/.shrc

# History file
export HISTFILE=~/.zsh_history

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# Don't hang up background jobs
setopt no_hup

# autocorrect command and parameter spelling
# setopt correct
# setopt correctall
setopt nocorrect 
setopt nocorrectall # don't autocorrect all commands

# fix backspace on Debian
[ -n "$LINUX" ] && bindkey "^?" backward-delete-char

# fix delete key on macOS
[ -n "$MACOS" ] && bindkey '\e[3~' delete-char

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# to avoid non-zero exit code
true

