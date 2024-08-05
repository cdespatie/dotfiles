# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit + create home folder if it doesn't exist
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Enable prompt
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Zsh plugins
zinit light zsh-users/zsh-autosuggestions

# Keybinds

# Aliases & functions
alias vim=nvim
alias ls="ls -l --color"
alias master="git checkout master && git pull origin master"
alias main="git checkout main && git pull origin main"
alias rspec="bundle exec rspec"
alias p=python3
alias python=python3
alias prspec="bundle exec parallel_tests"
alias ssh-reset="ssh-add ~/.ssh/id_rsa; ssh-add ~/.ssh/id_rsa_ws"

function clone { git clone https://github.com/wealthsimple/$1 }
function ssht () {/usr/bin/ssh -t $@ "tmux attach || tmux new";}
function sshtd () {/usr/bin/ssh -t $@ "tmux attach -d || tmux new";}

# ---

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
