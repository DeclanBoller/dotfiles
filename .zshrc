# Source local env
if [[ -s "${HOME}/.dev.env" ]]; then
  source "${HOME}/.dev.env"
fi

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


newtab()
{
    osascript -e 'activate application "iTerm"' -e 'tell application "System Events" to keystroke "d" using command down'
}

export PR_TEMPLATE="$(cat ${HOME}/dotfiles/_github/PULL_REQUEST_TEMPLATE)"

alias zshrc="open -a TextEdit ~/.zshrc"
alias gmd="git merge develop"
alias gmm="git merge main"
alias gcd="git checkout develop"
alias gcom="git checkout main"
alias gco="git checkout"
alias ghprc="${HOME}/dotfiles/_github/prepare-github-template"
alias ghprv="gh pr view --web"
alias grhh="git reset head --hard"
alias gstat="git status"
alias grs="git restore --staged ."
alias rs="bundle exec rails s"
alias rsp="bundle exec rspec"
alias pusho="git push -u origin"
alias push="git push"
alias lastbr="git checkout -"
alias bk="basename ${PWD} | tr '_' '-' | xargs -I{} open 'https://buildkite.com/blake-education/{}'"
alias jira="git branch | grep '^*'| cut -d ' ' -f2- | cut -d '-' -f 1,2 | xargs -I{} open 'https://blakeelearning.atlassian.net/browse/{}'"
alias nr="npm run"
alias ni="npm install"

alias gclean="git branch --merged | grep -v '*|master|develop|main' | xargs -p -n 1 git branch -d"

alias es="ember s"
alias juan="bx jupiter -n"
alias checklinked="ls -la node_modules/@blakeelearning"
alias brs="be rails s"
alias brc="be rails c"
alias bi="bundle install"
alias mps="mix phoenix.server"
alias imps="iex -S mix phoenix.server"
alias ism="iex -S mix"
alias mpr="mix phoenix.routes"

# apps
alias frack="cd ~/blake/frontend/packages"
alias mscli="cd ~/blake/mathseeds-client"
alias mathseeds="cd ~/blake/mathseeds"
alias rexstudent="cd ~/blake/rex-student"
alias restudent="cd ~/blake/re-student"
alias papi="cd ~/blake/fast_phonics_api/"
alias mspapi="cd ~/blake/mathseeds_prime_api"
alias fpcli="cd ~/blake/fast-phonics-client"
alias mspc="cd ~/blake/mathseeds-prime-client"
alias newt="cd ~/blake/gravity"
alias home="cd ~/"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pnpm
export PNPM_HOME="/Users/dboller/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.fly/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.yarn/dist/bin:$PATH"
export PATH="$HOME/.geckodriver:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export EDITOR='vim'
export XDG_CONFIG_HOME="$HOME/.config"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH=/Users/Shared/DBngin/mysql/8.0.33/bin:$PATH

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source <(fzf --zsh)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER="dboller"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down