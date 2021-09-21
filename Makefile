install-brew:
ifeq (,$(wildcard /opt/homebrew))
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
endif


update:
	brew update
	brew upgrade
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'


nvim: nvim-packer
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

nvim-packer:
ifeq (,$(wildcard ~/.local/share/nvim/site/pack/packer/start/packer.nvim))
	git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
endif
