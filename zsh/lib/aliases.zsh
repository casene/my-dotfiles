if [ $(uname) = Darwin ];then
alias lac="ls -laG"
else
alias lac="ls -la --color=auto"
fi

