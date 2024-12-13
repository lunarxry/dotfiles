
HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=100

setopt autocd extendedglob nomatch interactivecomments
bindkey -v

PROMPT="%F{magenta}%n%f@%F{r}%m %F{blue}%~%f> "

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

if [[ -f ~/.zsh_aliases ]]; then
  source ~/.zsh_aliases
fi

if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export EDITOR="nvim"
export VISUAL="nvim"
