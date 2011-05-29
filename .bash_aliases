alias ll='ls -la'
alias la='ls -FA'
alias l='ls -l'
alias x='extract'
alias xf='extract'

alias gitk-lost="gitk \`git fsck --lost-found | grep commit | cut -d ' ' -f 3 | paste -s -d ' '\`"
