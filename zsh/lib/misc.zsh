## zsh misc config. taken from various different sources.
## all settings that do not fit any of the other zsh config
## files can be placed here.
## called from .zshrc

# these options are set by zsh vanilla.
setopt nobeep extendedglob nomatch notify 

# taken from omz lib/misc.zsh.
# print job notifications in the long format by default.
setopt long_list_jobs

# taken from omz lib/misc.zsh
# allow comments even in interactive shells. 
setopt interactivecomments

# taken from omz /lib/theme-and-appearance.zsh
# Disable implicit tees or cats when multiple redirections are attempted.
setopt nomultios
