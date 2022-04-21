# !/bin/bash

# install brew
echo "::: Install brew :::"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/user/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install via brew
echo "::: Install via brew :::"
brew bundle --file=./Brewfile

# install font
echo "::: Install font :::"
cp -a ./fonts/. ~/Library/Fonts

# configure zsh
echo "::: Configure zsh :::"
chmod 755 ./zsh/install.sh
xattr -d com.apple.quarantine ./zsh/install.sh
./zsh/install.sh

# copy iterm2 configuration
echo "::: Copy iterm2 configuration :::"
chmod 755 ./iterm2/install.sh
xattr -d com.apple.quarantine ./iterm2/install.sh
./iterm2/install.sh

# install python 2.18 For deprecated Alfred workflow
echo "::: Install python 2.18 For deprecated Alfred workflow :::"
export PATH="/opt/homebrew/bin:/usr/local/bin:${PATH}"
eval "$(brew shellenv)"
brew install pyenv
pyenv install 2.7.18
ln -s "${HOME}/.pyenv/versions/2.7.18/bin/python2.7" "${HOMEBREW_PREFIX}/bin/python"
echo "::: Installed python 2.18 Path is ${HOME}/.pyenv/versions/2.7.18/bin/python2.7 ::: \n"

# copy alfred configuration
echo "::: Copy alfred configuration :::"
chmod 755 ./alfred/install.sh
xattr -d com.apple.quarantine ./alfred/install.sh
./alfred/install.sh

# copy hammerspoon configuration
echo "::: Copy hammerspoon configuration :::"
chmod 755 ./hammerspoon/install.sh
xattr -d com.apple.quarantine ./hammerspoon/install.sh
./hammerspoon/install.sh

# install xcode
echo "::: Install xcode :::"
chmod 755 ./xcode/install.sh
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
xattr -d com.apple.quarantine ./xcode/install.sh
./xcode/install.sh

# Change Git Default branch name
echo "::: Change Git Default branch name :::"
git config --global user.name super-wansook
git config --global user.email wansook0316@gmail.com
git config --global core.precomposeunicode true
git config --global core.quotepath false

