" {{{
" Compiling Markdown via pandoc
" See https://vi.stackexchange.com/questions/17549/using-pandoc-with-vim-keybindings
"augroup my_markdown
"	autocmd!
"	autocmd FileType markdown nnoremap <buffer><nowait> <leader>cm :<c-u> call jobstart('pandoc '.expand('%:p').' -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')<cr>
"augroup END
"
"
"command! Compile
"        \ autocmd BufWritePost *.md silent! call jobstart('pandoc '.expand('%:p').' -s -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('xelatex '.expand('%:p:r').')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('biber '.expand('%:p:r').')
" 
"nmap <nowait><silent> <F8> :Compile <CR>

" autocmd BufWritePost *.md silent! call jobstart('pandoc '.expand('%:p').' -s -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')
 
" autocmd BufWritePost *.tex silent! call jobstart('xelatex '.expand('%:p:r').')
" autocmd BufWritePost *.tex silent! call jobstart('biber '.expand('%:p:r').')
"}}}

"{{{
"augroup vim_prose
"    autocmd Filetype markdown noremap <F4> <buffer>  ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"    autocmd Filetype tex noremap <F4> <buffer> ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"augroup END
"}}}

"{{{
" WRITEMODE
" Writemode for writing prose
" Followed this reddit thread
" https://www.reddit.com/r/vim/comments/ckyspu/heres_how_to_create_custom_workspaces_to_switch/
":command Writemode set spell | Goyo 70 | set showmode | set guifont=JetBrains_Mono:h12
"
":command Codemode set nospell | Goyo! | set noshowmode | set guifont=JetBrains_Mono:h12
"}}}

"{{{UNUSED PLUGINS--------------------------------
" Plug 'hoob3rt/lualine.nvim'
" Plug 'mhinz/vim-startify'				" Vim start screen
" Plug 'SirVer/ultisnips'				" Engine for using snippets
" Plug 'unblevable/quick-scope'
" Plug 'terryma/vim-multiple-cursors'
"Plug 'kdav5758/TrueZen.nvim'
"Plug 'lukas-reineke/indent-blankline.nvim',
"            \{ 'branch' : 'lua' }
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim',
"            \{ 'on' : ['Telescope', 'Telescope git_files',
"            \'Telescope buffers', 'Telescope git_commits',
"            \'Telescope live_grep', 'Telescope current_buffer_fuzzy_find'] }
"Plug 'voldikss/vim-floaterm',
"            \{ 'on' : ['FloatermFirst', 'FloatermHide', 
"            \'FloatermKill', 'FloatermLast', 'FloatermNew',
"            \'FloatermNext', 'FloatermPrev', 'FloatermSend',
"            \'FloatermShow', 'FloatermToggle', 'FloatermUpdate'] }
" Plug 'AlessandroYorba/Despacio'
" Plug 'romainl/flattened'
" Plug 'junegunn/seoul256.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'Iron-E/nvim-soluarized'
" Plug 'tpope/vim-vividchalk'
"----------------------------------------------}}}

"{{{OLD VIM-PLUG CONFIG---------------------------
"call plug#begin('~/.config/nvim/.plugged')
"
"" Git
"Plug 'rhysd/committia.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"
"" Junegunn
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'junegunn/goyo.vim',   { 'on' : 'Goyo' }
"Plug 'junegunn/limelight.vim', { 'on' : 'Limelight' }
"
"" Text
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'b3nj5m1n/kommentary'
"Plug 'tommcdo/vim-lion'
"Plug 'wellle/targets.vim'
"Plug 'justinmk/vim-sneak'
"Plug 'machakann/vim-sandwich'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'mg979/vim-visual-multi'
"
"" Utilities
"Plug 'karb94/neoscroll.nvim'
"Plug 'kyazdani42/nvim-tree.lua' | Plug 'kyazdani42/nvim-web-devicons'
"Plug 'tversteeg/registers.nvim'
"Plug 'ourigen/skyline.vim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' }
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'folke/zen-mode.nvim'
"
"" Misc
"Plug 'ryanoasis/vim-devicons'
"Plug 'dstein64/vim-startuptime'
"
"" Filetype
"Plug 'lervag/vimtex', { 'for': 'tex' }
"Plug 'preservim/vim-lexical'
"
""{{{COLORSCHEMES----------------------------------
"Plug 'romainl/Apprentice'
"Plug 'ayu-theme/ayu-vim'
"Plug 'sjl/badwolf'
"Plug 'chriskempson/base16-vim'
"Plug 'archseer/colibri.vim'
"Plug 'reedes/vim-colors-pencil'
"Plug 'nightsense/cosmic_latte'
"Plug 'romainl/vim-dichromatic'
"Plug 'wadackel/vim-dogrun'
"Plug 'romgrk/doom-one.vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'sainnhe/everforest'
"Plug 'fcpg/vim-fahrenheit'
"Plug 'jaredgorski/fogbell.vim'
"Plug 'sainnhe/gruvbox-material'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'savq/melange'
"Plug 'KeitaNakamura/neodark.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'mhartington/oceanic-next'
"Plug 'joshdick/onedark.vim'
"Plug 'fcpg/vim-orbital'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'tyrannicaltoucan/vim-quantum'
"Plug 'lifepillar/vim-solarized8'
"Plug 'srcery-colors/srcery-vim'
"Plug 'shrimpram/vim-stella'
"Plug 'nightsense/stellarized'
""----------------------------------------------}}}
"
"call plug#end()
"----------------------------------------------}}}
