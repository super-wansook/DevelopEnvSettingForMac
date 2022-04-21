# !/bin/bash

# xcode install
#mas install 497799835

# license accept code
#sudo xcodebuild -license accept

# xcode open
#open /Applications/Xcode.app

# copy xcode themes
createDIR=~/Library/Developer/Xcode/FontAndColorThemes
if [ ! -d $createDIR ]; then
   mkdir $createDIR
fi
cp ./xcode/DRLColors.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#cp ./xcode/One\ Dark.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#cp ./xcode/WWDC\ 2016.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#cp ./xcode/San\ Jose.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes
