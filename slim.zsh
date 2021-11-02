slim_path=`dirname $0`
fpath=( $slim_path $fpath )

autoload -U promptinit && promptinit
prompt pure

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1

# source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/stack.zsh
source $slim_path/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $slim_path/plugins/git/git.plugin.zsh
source $slim_path/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/plugins/ssh-agent/ssh-agent.plugin.zsh
source $slim_path/plugins/colored-man-pages/colored-man-pages.plugin.zsh

if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi
