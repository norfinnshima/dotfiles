### note: 変更を有効化: source ~/.zshrc ###

### Prompt ###
# %n@%m %1~ %# 
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

### Path ###
export PATH="/opt/homebrew/bin:$PATH"
