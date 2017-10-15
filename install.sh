## Brew
#

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure Brew has permissions
brew doctor

# Update Brew
brew update

# Install Brew Cask, for terminal app installs
brew tap caskroom/cask



## Java
#
brew cask install java

# Note that at the time of install, this installs Java 9
# which is not compatible with the android-sdk. To get around this
# we have to install java 8 specifically:

# brew tap caskroom/versions
# brew cask install java8



## Jenv
#
# An (optional) tool for managing Java versions
# The commands below assume you're using zsh. For other
# options, visit http://www.jenv.be/

# brew install jenv
# echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(jenv init -)"' >> ~/.zshrc

# exec zsh -l
# jenv add /Library/Java/JavaVirtualMachines/jdk-9.jdk
# jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk
# jenv global 1.8.0.144



## Android Studio
#
brew cask install android-studio



## Android SDKs & Tools
#
brew install ant
brew install maven
brew install gradle

brew cask install android-sdk
brew cask install android-ndk

sdkmanager --update



## Intel HAXM
#
brew cask install intel-haxm



## Node.js & npm
#

# Install Node.js and print the version
brew install node
node --version

# Update npm and print the version
npm update npm -g
npm --version



## Yarn
#

# Install Yarn and print version
brew install yarn
yarn --version



## Watchman
#

# Install Watchman
brew install watchman



## Git
#

# Install Git and print version
brew install git
git --version