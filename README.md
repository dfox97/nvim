# Neovim - VS Code Inspired Setup

If you're a Neovim beginner familiar with VS Code, this setup is designed to ease your transition by mimicking the VS Code environment. The repository contains only essential plugins for a minimal Neovim setup in a VS Code style.
### Example nvim setup:
<img src="https://github.com/dfox97/nvim/assets/61083107/8131b337-bd0b-4a25-88b1-4733d63e0f5a" alt="nvim-example" height="400px" width="400px">

### File info
- **remap.lua:** Configure keybindings here.
- **settings.lua:** Adjust editor settings like tab spacing.
- **packer.lua:** Manage your plugins; run `:PackerSync` to install them.
- **after/plugin/:** Configuration files for installed plugins.

## Instructions

*Note: Developed and tested on Neovim V0.10.0-dev on Ubuntu WSL2.*

1. After Neovim installation, ensure Packer is installed (follow the Packer installation guide).
2. Clone this repo into `~/.config/nvim`:
   ```bash
   cd ~/.config/
   git clone <repo-url> nvim
   ```

You will encounter errors initially; source (`:so`) the `init.lua` file and run `:PackerSync` inside `packer.lua` to resolve them.

*Note: If issues persist, source remap.lua and packer.lua files inside the danny folder, when I cloned this repo for the first time on my second machine i found i needed to source the remap file and packer.lua files inside my danny folder.


### Install Neovim, Tmux and Lazygit(optional)
Ensure Neovim and Tmux are installed on your system. On Windows 11 terminal, consider installing nerd-icons using FiraCode Nerd Font: https://www.nerdfonts.com/

tmux and neovim:
```
sudo apt-get install tmux
sudo add-apt-repository ppa:neovim-ppa/unstable #Or stable
sudo apt-get install neovim
```

lazygit https://github.com/jesseduffield/lazygit:
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Packer installation
Follow: https://github.com/wbthomason/packer.nvim

Linux example:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Copilot Integration
After installing the plugins, run the following command within Neovim: 
```
:Copilot setup
```

### Show git branch in windows terminal (Optional additon):
WSL Home: `~/.bashrc` 
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

# Examples
### git blamer showcase:
<img src="https://github.com/dfox97/nvim/assets/61083107/9a0f85ed-9c8d-47b9-8a05-bd6c9936d064" alt="git-blamer" height="200px" width="800px">
