#! /bin/bash
clear
echo 'Bash Onboarding Initiating'

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
echo 'Switching to Powershell'
pwsh
echo 'Installing VS Extensions...'
code --install-extension ms-dotnettools.csharp
code --install-extension ms-azuretools.vscode-docker

bash
clear
echo 'Bash Onboarding Complete'
echo 'Navigate to your desired source directory, clone a repo, and start debugging .NET apps running in docker.'