## my zsh-config.
## this is a modular approach so the .zshrc file will mainly call other .zsh configs.

# Path to your ZSH config directory (dotfiles,zcache,cdr-cache,history,zcompdump
# themes,plugins,lib)
export ZSH_CONFIG=$HOME/.dotfiles/zsh
export ZSH_THEMES=$ZSH_CONFIG/themes
export ZSH_PLUGINS=$ZSH_CONFIG/plugins
export ZSH_LIB=$ZSH_CONFIG/lib
export ZSH_CACHE=$HOME/.zcache
export ZSH_3PC=$ZSH_CONFIG/3pc

#Check config directory path.
if [ ! -d $ZSH_CACHE ];then mkdir $ZSH_CACHE;fi


# Load and call compaudit and compinit
autoload -U compaudit compinit

compinit -u -C -d $ZSH_CACHE/zcompdump

# Source lib starts here
dirs=(completion directories history misc termsupport key-bindings aliases)

for dir in ${dirs[@]}
do
source $ZSH_LIB/$dir.zsh
done

# Source Plugins starts here
source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/history-search-multi-word/history-search-multi-word.plugin.zsh

# Source Themes starts here
source $ZSH_THEMES/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 3cp (Third Party) programs sourced here.
source $ZSH_3PC/.fzf.zsh

