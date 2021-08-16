install: install-brew install-stow install-fzf-tab
	stow -v kitty neofetch nix nvim zsh
	stow -v --dotfiles brew git vim
	brew bundle --global

install-brew:
ifeq (,$(wildcard /opt/homebrew))
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
endif

install-stow:
ifeq (,$(wildcard /opt/homebrew/bin/stow))
	brew install stow
endif

install-fzf-tab:
ifeq (,$(wildcard ~/.config/zsh/plugins/fzf-tab))
	git clone https://github.com/Aloxaf/fzf-tab.git ~/.config/zsh/plugins/fzf-tab
endif





update:
	brew update
	brew upgrade
	cd ~/.config/zsh/plugins/fzf-tab && \
		git fetch && \
		git merge --no-ff




nvim: nvim-packer nvim-dwyl-dict nvim-moby-thesaurus
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

nvim-packer:
ifeq (,$(wildcard ~/.local/share/nvim/site/pack/packer/start/packer.nvim))
	git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
endif

nvim-dwyl-dict:
ifeq (,$(wildcard ~/.config/nvim/spell/dwyl-dict.txt))
	curl -s -o ~/.config/nvim/spell/dwyl-dict.txt https://raw.githubusercontent.com/dwyl/english-words/master/words.txt
endif

nvim-moby-thesaurus:
ifeq (,$(wildcard ~/.config/nvim/spell/moby-thesaurus.txt))
	curl -s -o ~/.config/nvim/spell/moby-thesaurus.txt https://raw.githubusercontent.com/words/moby/master/words.txt
endif
