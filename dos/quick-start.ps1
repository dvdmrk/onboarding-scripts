Clear-Host
Write-Host 'ONBOARDING AUTOMATION INITIATING'
wsl --install
Write-Host 'Installing Chocolatey package manager for Windows...'
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Clear-Host
Write-Host 'Installing .NENT SDK...'
choco install dotnet-5.0-sdk -y --force

Clear-Host
Write-Host 'Installing VS Code...'
choco install visualstudiocode -y --force 

Clear-Host
Write-Host 'Installing Docker...'
choco install docker-desktop -y --force

Clear-Host
Write-Host 'Installing VS Extensions...'
code --install-extension ms-dotnettools.csharp
code --install-extension ms-azuretools.vscode-docker

Clear-Host
Write-Host 'DOS Onboarding Complete'
Write-Host 'Navigate to your desired source directory, clone a repo, and start debugging .NET apps running in docker.'