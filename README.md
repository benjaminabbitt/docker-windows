# Docker on Windows *without* Desktop
As a software architect who does work, frequently, on Windows at large clients, there's a desire to be able to build and run images without dealing with the hoops of getting Docker licensing. (https://www.paulsblog.dev/how-to-install-docker-without-docker-desktop-on-windows/) of how to do that.

It is reproduced in Git repository form to make things easier for me and my teams.

##Process

### Install WSL

Run `install_wsl.ps1`

This will install Windows Subsystem for Linux, which will itself run the docker daemon (in the next step).

### Set up Docker in WSL

Run `wsl -e sh 2-install_docker.sh`

This installs the docker daemon and associates your user to the docker group, so you can run `docker` from inside of WSL.

### Set up aliases

Run `setup_aliases.ps1`

This binds the powershell command `docker` to the command `wsl docker` so that anytime the user runs the docker binary, it's actually running the binary *inside* of WSL, talking to the linux wsl environment.