# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export

export ZSH="$HOME/.zplugin/plugins"
export LANG=pt_BR.UTF-8

# theme

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_COLORIZE_TOOL="chroma"
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# plugins

plugins=(git zsh-cargo-completion enhancd autoswitch_virtualenv gem extract docker-compose z kubectx fzf colored-man-pages thefuck node npm zsh-history-substring-search virtualenv pip F-Sy-H python docker you-should-use colorize zsh-syntax-highlighting fzf  zsh-autosuggestions web-search rails git textmate ruby lighthouse sudo)

# source
source $ZSH/oh-my-zsh.sh
source /home/bitter/antigen.zsh
# alias

alias vscode="code-insiders"
alias code="code-insiders"
alias code-insiders="code-insiders"
alias ohmyzsh="code ~/.oh-my-zsh"

# update

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 5

# nala
apt() {
  command nala "$@"
}
sudo() {
  if [ "$1" = "apt" ]; then
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh