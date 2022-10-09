## zsh directories config. based on oh my zsh /lib/directories.
## called from .zshrc

# changing directories.
setopt auto_pushd # make cd work the same way as pushd
setopt pushd_ignore_dups # don’t push multiple directory copies onto the directory stack.
setopt pushd_minus # swap '+' and '-' when used with number to call dir in stack.
setopt pushd_silent # Do not print the directory stack after push
setopt pushd_to_home # 'pushd' with no args takes you to ~.

setopt auto_cd # cd through dirs without using 'cd' command.


# set cdr options
if [ ! -f $ZSH_CACHE/recent-dirs ];then touch $ZSH_CACHE/recent-dirs;fi
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-file "$ZSH_CACHE/recent-dirs"
zstyle ':chpwd:*' recent-dirs-max 1000
# fall through to cd
# zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':completion:*:*:cdr:*:*' menu selection
