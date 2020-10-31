# Xcode tools
xcode-select —-install

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# iTerm 2
brew cask install iterm2

# Brew version of ZSH
brew install zsh

# Github install and config
brew install git

git config --global user.name "Jqnxyz"
git config --global user.email "me@jqnxy.xyz"
git config --global color.ui true
git config --global color.ui true
git config --global core.editor nano
git config --global commit.gpgsign true
git config --global user.signingkey C1B09A8B

brew install gh
gh auth login -w

# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
zsh --version
chmod g-w,o-w /usr/local/share/zsh
chmod g-w,o-w /usr/local/share/zsh/site-functions
omz update

# Powerline fonts
cd ~/Downloads
git clone "https://github.com/powerline/fonts/"
cd fonts
./install.sh
cd ..
sudo rm -r fonts

# Powerlevel10k
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Nerd fonts
brew tap homebrew/cask-fonts
brew cask install font-agave-nerd-font

# Do your things
open -a "Sublime Text" ~/.zshrc


#### Add Below to .zshrc #####
# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
# Aliases
alias st='open -a Sublime\ Text'
alias ls='ls --color=tty'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
