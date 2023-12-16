## Install Neovim, Tmux and Lazygit

Ensure Neovim and Tmux are installed on your system.

```
sudo apt-get install tmux
sudo apt-get install neovim


sudo add-apt-repository ppa:neovim-ppa/unstable (Or stable)

//Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```


### Copilot Integration
After installing the plugins, run the following command within Neovim: 
```
:Copilot setup
```


## WSL Home: `~/.bashrc`
#### Show git branch in terminal:
Add the following lines to your ~/.bashrc file for a customized terminal prompt displaying the Git branch:
```
# Display Git branch in terminal prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
```

Alternatively, to hide the username in the prompt (e.g., user@User:~/ becomes ~), use the following:
```
# Display Git branch in terminal prompt with hidden username
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
```
![image](https://github.com/dfox97/nvim-setup/assets/61083107/f3b3e06f-6295-4590-a777-e81d8dd59214)
