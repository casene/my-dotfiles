## my zsh-config.
## based on oh my zsh configs.
## this is a modular approach so the .zshrc file will mainly call other .zsh configs.
## updated 2022 - paths addedd/deleted

# Path to your ZSH config directory (dotfiles,zcache,cdr-cache,history,zcompdump
# themes,plugins,lib)
export ZSH_CONFIG=$HOME/.dotfiles/zsh
export ZSH_THEMES=$ZSH_CONFIG/themes
export ZSH_PLUGINS=$ZSH_CONFIG/plugins
export ZSH_LIB=$ZSH_CONFIG/lib
export ZSH_CACHE=$HOME/.dotfiles/zsh/zcache
export ZSH_THEMES=$ZSH_CONFIG/themes
export ZSH_3PC=$ZSH_CONFIG/3pc

 #Check config directory paths.
if [ ! -d $ZSH_CONFIG ];then mkdir $ZSH_CONFIG;fi
if [ ! -d $ZSH_THEMES ];then mkdir $ZSH_THEMES;fi
if [ ! -d $ZSH_PLUGINS ];then mkdir $ZSH_PLUGINS;fi
if [ ! -d $ZSH_LIB ];then mkdir $ZSH_LIB;fi
if [ ! -d $ZSH_CACHE ];then mkdir $ZSH_CACHE;fi

## add functions paths
# may have to add individual plugins refer to omzsh.sh file for inspiration.
# allplugins must be added to fpath before running compinit
## fpath=($ZSH_PLUGINS $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

compinit -u -C -d $ZSH_CACHE/zcompdump

# Source lib starts here
source $ZSH_LIB/completion.zsh
source $ZSH_LIB/directories.zsh
source $ZSH_LIB/history.zsh
source $ZSH_LIB/misc.zsh
source $ZSH_LIB/termsupport.zsh
source $ZSH_LIB/key-bindings.zsh
source $ZSH_LIB/aliases.zsh

# Source Plugins starts here
source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/history-search-multi-word/history-search-multi-word.plugin.zsh

# Source Themes starts here
source $ZSH_THEMES/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 3cp (Third Party) programs sourced here.
source $ZSH_3PC/.fzf.zsh

