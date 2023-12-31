# shelepuginivan's Neovim config

### Requirements:

- Neovim 0.9.0 or higher

#### Optional requirements

- [ripgrep](https://github.com/BurntSushi/ripgrep) - telescope live grep (`<leader>fg`)

### Installation

#### Via installation script

```shell
curl -fsSL https://raw.githubusercontent.com/shelepuginivan/init.lua/main/install.sh | bash
```

#### Manual installation

Backup previous installation and shared folder:

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

Clone the repository:

```shell
git clone --depth 1 https://github.com/shelepuginivan/init.lua ~/.config/nvim
```

