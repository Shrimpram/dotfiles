local map = vim.api.nvim_set_keymap
local let = vim.api.nvim_set_var

map( 'n', [[<leader>nt]], [[<CMD>NvimTreeToggle<CR>]], {noremap = true, silent = true} )
map( 'n', [[<leader>nr]], [[<CMD>NvimTreeRefresh<CR>]], {noremap = true, silent = true} )
map( 'n', [[<leader>nf]], [[<CMD>NvimTreeFindFile<CR>]], {noremap = true, silent = true} )

let( 'nvim_tree_ignore', { '.git', '.cache' } ) -- empty by default

let( 'nvim_tree_auto_close', 1 ) -- 0 by default, closes the tree when it's the last window
let( 'nvim_tree_indent_markers', 1 ) -- 0 by default, this option shows indent markers when folders are open
let( 'nvim_tree_add_trailing', 1 ) -- 0 by default, append a trailing slash to folder names
let( 'nvim_tree_quit_on_open', 1 ) -- 0 by default, closes the tree when you open a file
let( 'nvim_tree_special_files', { 'README.md', 'Makefile', 'MAKEFILE', 'LICENSE' } ) -- List of filenames that gets highlighted with NvimTreeSpecialFile
