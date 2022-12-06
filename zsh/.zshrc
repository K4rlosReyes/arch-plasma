export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export TMPDIR='/var/tmp'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

source ~/.antigen/antigen.zsh

antigen theme spaceship-prompt/spaceship-prompt

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

antigen apply
