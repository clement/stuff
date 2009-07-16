alias ll='ls -lA'
alias la='ls -FA'
alias l='ls -CF'

alias gitk-lost="gitk \`git fsck --lost-found | grep commit | cut -d ' ' -f 3 | paste -s -d ' '\`"
