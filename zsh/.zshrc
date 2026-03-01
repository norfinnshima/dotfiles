### 変更を有効化: source ~/.zshrc ###

export PATH="/opt/homebrew/bin:$PATH"

### プロンプトの表示 ###
# %n@%m %1~ %# 
# PROMPT='%F{cyan}%n@%m%f %B%1~%b %# '
# PROMPT='🐱 %B%F{cyan}%~ %# %f%b'

git_info() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  local user branch
  user=$(git config user.name 2>/dev/null)
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  [[ -n "$user" && -n "$branch" ]] && echo " %B%F{yellow}(${user}:${branch})%f%b"
}
setopt PROMPT_SUBST
PROMPT='🐱 %F{yellow}%~%f$(git_info) %# '

### alias ###
alias ll='ls -lF'
alias lla='ls -lAF'
alias la='ls -A'
alias l='ls -CF'
