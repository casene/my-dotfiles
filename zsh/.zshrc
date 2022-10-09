## my zsh-config.
## based on oh my zsh configs.
## this is a modular approach so the .zshrc file will mainly call other .zsh configs.


# Path to your ZSH config directory (dotfiles,zcache,cdr-cache,history,zcompdump
# themes,plugins,lib)
export ZSH_CONFIG=$HOME/.zsh
export ZSH_THEMES=$ZSH_CONFIG/themes
export ZSH_PLUGINS=$ZSH_CONFIG/plugins
export ZSH_LIB=$ZSH_CONFIG/lib
export ZSH_CACHE=$HOME/.zcache
export ZSH_THEMES=$ZSH_CONFIG/themes
export ZSH_3PC=$ZSH_CONFIG/3pc

 #Check config directory paths.
if [ ! -d $ZSH_CONFIG ];then mkdir ~/.zsh;fi
if [ ! -d $ZSH_THEMES ];then mkdir ~/.zsh/themes;fi
if [ ! -d $ZSH_PLUGINS ];then mkdir ~/.zsh/plugins;fi
if [ ! -d $ZSH_LIB ];then mkdir ~/.zsh/lib;fi
if [ ! -d $ZSH_CACHE ];then mkdir ~/.zcache;fi

# add functions paths
# may have to add individual plugins refer to omzsh.sh file for inspiration.
# allplugins must be added to fpath before running compinit
## fpath=($ZSH_PLUGINS $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

compinit -u -C -d $ZSH_CACHE/.zcompdump

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

