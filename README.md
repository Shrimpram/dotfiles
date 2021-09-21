# My Dotfiles

## Installation
### Main Setup
1. git clone this repo to `~/<somedir>`, e.g. `~/dotfiles`
2. cd to the dotfiles directory
3. Run `make install-brew` to install homebrew
4. Set up [Homebrew and Programs](https://github.com/shrimpram/dotfiles#homebrew-and-programs)
5. Use `stow` to stow the modules you need. E.g. `stow nvim` will setup the neovim config

### Homebrew and Programs
1. Install [Homebrew](https://brew.sh) using `make install-brew`
2. Load the global brewfile using `stow --dotfiles brew`
3. Run `make update`

### Nvim
1. After installing Homebrew and running `make update`
2. Run `make nvim`
