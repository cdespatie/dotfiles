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
alias ls="exa -l"
alias wolfman="~/gitrepos/wolfman/bin/wolfman"
alias master="git checkout master && git pull origin master"
alias main="git checkout main && git pull origin main"
alias rspec="bundle exec rspec"
alias p=python3
alias python=python3
alias prspec="bundle exec parallel_tests"
alias ssh-reset="ssh-add ~/.ssh/id_rsa; ssh-add ~/.ssh/id_rsa_ws"

function rc { wolfman rcon -a $1 -e $2 }
function clone { git clone https://github.com/wealthsimple/$1 }
function ssht () {/usr/bin/ssh -t $@ "tmux attach || tmux new";}
function sshtd () {/usr/bin/ssh -t $@ "tmux attach -d || tmux new";}

# ---

eval $(/opt/homebrew/bin/brew shellenv)

export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
source /Users/cdespatie/.config/wealthsimple/rbenv/config.zsh
export ROLLBAR_KEY=e8368cf109a74b3f8f35b2217c53efb9
export NEXUS_HOSTNAME="nexus.iad.w10external.com"
export NEXUS_USERNAME="dev-read"
export NEXUS_PASSWORD="QhQrEfkeVtCqCFgQNpHgaDwxkh6Wmp"
export BUNDLE_NEXUS__IAD__W10EXTERNAL__COM="${NEXUS_USERNAME}:${NEXUS_PASSWORD}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
