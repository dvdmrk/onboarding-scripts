#! /bin/bash
clear
echo 'ONBOARDING AUTOMATION INITIATING'
echo 'Installing Brew package manager for Mac...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

clear
echo 'Installing .NENT SDK...'
brew install --cask dotnet-sdk

clear
echo 'Installing Powershell...'
brew install --cask powershell

clear
echo 'Installing VS Code...'
brew install --cask visual-studio-code

clear
echo 'Installing Docker...'
brew install --cask docker

clear
echo 'Installing VS Extensions...'
pwsh ./vs-code-extensions.ps

clear
echo 'Bash Onboarding Complete'
echo 'Navigate to your desired source directory, clone a repo, and start debugging .NET apps running in docker.'