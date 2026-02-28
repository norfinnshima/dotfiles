### 変更を有効化: source ~/.zshrc ###

export PATH="/opt/homebrew/bin:$PATH"

# プロンプトの表示
# %n@%m %1~ %# 
autoload -Uz colors
colors
PS1='%F{cyan}%n@%m%f %1~ %# '

# alias
alias ll='ls -lF'
alias lla='ls -lAF'
alias la='ls -A'
alias l='ls -CF'
