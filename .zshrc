# Source local env
if [[ -s "${HOME}/.dev.env" ]]; then
  source "${HOME}/.dev.env"
fi

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

newtab()
{
    osascript -e 'activate application "iTerm"' -e 'tell application "System Events" to keystroke "d" using command down'
}

export PR_TEMPLATE="$(cat ${HOME}/.my_config/dotfiles/_github/PULL_REQUEST_TEMPLATE)"

alias zshrc="open -a TextEdit ~/.zshrc"
alias gmd="git merge develop"
alias gmm="git merge main"
alias gcd="git checkout develop"
alias gcom="git checkout main"
alias gco="git checkout"
alias ghprc="${HOME}/.my_config/dotfiles/_github/prepare-github-template"
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

alias gclean="git branch --merged | grep -v '*|master|develop|main' | xargs -n 1 git branch -d"

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
