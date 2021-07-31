# My Dotfiles

## Installation
### Setup
1. git clone this repo to `~/<somedir>`, e.g. `~/dotfiles`
2. cd to the dotfiles directory
3. Make sure you have [GNU Stow](https://www.gnu.org/software/stow/) installed
4. Use `stow` to stow the modules you need. E.g. `stow nvim` will setup the nvim dotfiles

### Homebrew & Apps/CLI Utilities
1. Install [Homebrew](https://brew.sh)
2. stow the brew directory using `stow brew`
3. `brew bundle --global`

### Nvim
1. Run `bootvim.sh`
