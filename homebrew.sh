#!/usr/bin/env bash

###############################################################################
# Homebrew                                                                    #
###############################################################################

# Install
if test ! $(which brew); then
  echo "Installing Homebrew..."
  # See https://brew.sh for more info
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest stuff
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install my used packages

## 1337 stuff
brew install hashcat
brew install hexedit
brew install john
brew install nmap
brew install radare2

brew install --cask burp-suite
brew install --cask cutter
brew install --cask ghidra
brew install --cask utm # Virtual machine w/ Linux & Windows
brew install --cask wireshark

## Programming stuff
brew install angular-cli
brew install go # The only and real programming language, change my mind.
brew install hexo
brew install kotlin
brew install lua
brew install mysql
brew install node
brew install openjdk
brew install python

brew install --cask docker
brew install --cask figma
brew install --cask flutter
brew install --cask github
brew install --cask temurin

## Documenting things
brew install mkdocs
brew install pandoc

## Code editors
brew install --cask jetbrains-toolbox # Installing JetBrains IDEs via that
brew install --cask visual-studio-code

## Communication
brew install --cask discord
brew install --cask microsoft-teams # Yes, people still use that these days..
brew install --cask threema
brew install --cask whatsapp

## Random stuff
brew install neofetch
brew install starship
brew install tree
brew install wget

brew install --cask android-file-transfer
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask gimp
brew install --cask minecraft
brew install --cask obs
brew install --cask spotify
brew install --cask steam
brew install --cask the-unarchiver
brew install --cask vlc