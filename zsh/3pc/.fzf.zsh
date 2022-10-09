# My fzf Setup

# Linux Path
if [ `uname` = Linux ]; then 
	if [ -x /usr/local/bin/fzf/bin/fzf ]; then
                if [[ ! "$PATH" == */usr/local/bin/fzf/bin* ]]; then
                        export PATH="${PATH:+${PATH}:}/usr/local/bin/fzf/bin"
		fi
	fi
fi

# Linux Auto-completion
if [ `uname` = Linux ]; then
	if [[ $- == *i* ]]; then
		source "/usr/local/bin/fzf/shell/completion.zsh" 2> /dev/null
	fi
fi


# ----------------------------------------------------------------------------- #

# Macos Path
#if [ `uname` = Darwin ]; then 
#	if [ -x /usr/local/bin/fzf/bin/fzf ]; then
#                if [[ ! "$PATH" == */usr/local/bin/fzf/bin* ]]; then
#                        export PATH="${PATH:+${PATH}:}/usr/local/bin/fzf/bin"
#		fi
#	fi
#fi

# Macos Auto-completion
#fzf_ver=$(fzf --version)

if [ `uname` = Darwin ]; then
	if [ -x /usr/local/bin/fzf ]; then
		if [[ $- == *i* ]]; then
		fzf_ver=$(fzf --version)
		source "/usr/local/Cellar/fzf/${fzf_ver% \(brew\)}/shell/completion.zsh" 2> /dev/null
	        fi
	fi
fi
