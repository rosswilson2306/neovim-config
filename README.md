# Neovim configuration

Built on top of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

## Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.


## Installation

* Running without overriding your existing config
  * You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-al='NVIM_APPNAME="nvim-alt" nvim'
    ```
    When you run Neovim using `nvim-alt` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-alt`. You can apply this approach to any Neovim
    distribution that you would like to try out.

