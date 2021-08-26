local map = vim.api.nvim_set_keymap
local home = os.getenv("HOME")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.directory = home .. "/.local/share/nvim/swap"
vim.o.undodir = home .."/.local/share/nvim/undo"

vim.o.autoindent     = true
vim.o.backup         = false
vim.o.errorbells     = false
vim.o.expandtab      = true
vim.o.expandtab      = true
vim.o.hidden         = true
vim.o.hlsearch       = false
vim.o.ignorecase     = true
vim.o.incsearch      = true
vim.o.modeline       = false
vim.o.number         = true
vim.o.relativenumber = true
vim.o.ruler          = true
vim.o.showmode       = false
vim.o.smartcase      = true
vim.o.termguicolors  = true
vim.o.title          = true
vim.o.undofile       = true
vim.o.wrap           = true

vim.o.cmdheight    = 1
vim.o.conceallevel = 0
vim.o.foldmethod   = 'marker'
vim.o.foldlevel    = 0
vim.o.inccommand   = 'nosplit'
-- vim.o.iskeyword    = vim.o.iskeyword .. { '-' }
vim.o.scrolloff    = 3
vim.o.tabstop      = 8
vim.o.shiftwidth   = 2
vim.o.timeoutlen   = 250
vim.o.clipboard    = 'unnamedplus'


require('plugins')
require('utils')

vim.cmd([[
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType tex call lexical#init({ 'spell': 0 })
  autocmd FileType text call lexical#init()
augroup END

let g:lexical#thesaurus = ['~/.config/nvim/spell/moby-thesaurus.txt']
let g:lexical#dictionary = ['~/.config/nvim/spell/dwyl-dict.txt']
let g:lexical#spellfile = ['~/.config/nvim/spell/en.utf-8.add']
]])

vim.o.background = 'dark'
vim.cmd([[colorscheme stella]])

---local map = vim.api.nvim_set_keymap

map( 'n', '<leader>w', '<CMD>w<CR>', {noremap=true, silent=true})
map( 'n', '<leader>wq', '<CMD>wq<CR>', {noremap=true, silent=true})

map( 'v', '<', '<gv', {noremap=true, silent=true})
map( 'v', '>', '>gv', {noremap=true, silent=true})

map( 'n', 'j', [[v:count ? 'j' : 'gj']], {noremap=true, silent=true, expr=true})
map( 'n', 'k', [[v:count ? 'k' : 'gk']], {noremap=true, silent=true, expr=true})
map( 'v', 'j', [[v:count ? 'j' : 'gj']], {noremap=true, silent=true, expr=true})
map( 'v', 'k', [[v:count ? 'k' : 'gk']], {noremap=true, silent=true, expr=true})


map('n', '<M-j>', [[<cmd>lua require('utils').resize(false, 2)<CR>]], {silent=true, noremap=true})
map('n', '<M-k>', [[<cmd>lua require('utils').resize(false, -2)<CR>]], {silent=true, noremap=true})
map('n', '<M-h>', [[<cmd>lua require('utils').resize(true, -2)<CR>]], {silent=true, noremap=true})
map('n', '<M-l>', [[<cmd>lua require('utils').resize(true, 2)<CR>]], {silent=true, noremap=true})

map( 'n', '<C-h>', '<C-w>h', {noremap=true, silent=true})
map( 'n', '<C-j>', '<C-w>j', {noremap=true, silent=true})
map( 'n', '<C-k>', '<C-w>k', {noremap=true, silent=true})
map( 'n', '<C-l>', '<C-w>l', {noremap=true, silent=true})


vim.cmd([[
augroup texclean
  autocmd!
  autocmd VimLeave *.tex silent !latexmk -c
augroup END
]])

vim.cmd([[
command! Light set background=light
command! Dark set background=dark
]])


vim.cmd([[
function! SynStack()
  if !exists('*synstack')
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
]])

map( 'n', '<F9>', '<CMD>call SynStack()<CR>', {noremap=true, silent=true})
