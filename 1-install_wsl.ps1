Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
wsl --set-default-version 2
#Ubuntu has the best Windows integration w/WSL2, but other distros should work just fine if the package management is modified
wsl --install -d Ubuntu
wsl -l -v