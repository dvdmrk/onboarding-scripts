#! /bin/bash
clear
echo 'Bash Onboarding Initiating'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask dotnet-sdk
brew install --cask powershell
brew install --cask visual-studio-code
brew install --cask docker

pwsh code --install-extension ms-dotnettools.csharp
pwsh code --install-extension ms-azuretools.vscode-docker

echo 'Bash Onboarding Complete'
echo 'Navigate to your desired source directory, clone a repo, and start debugging .NET apps running in docker.'