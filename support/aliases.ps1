Function Start-WslDocker {
    wsl docker $args
}

Function Start-WslDockerCompose {
    wsl docker $args
}

Set-Alias -Name docker -Value Start-WslDocker
