local map = vim.api.nvim_set_keymap

vim.g.neomake_verbose = 1
vim.g.neomake_open_list = 2

map( 'n', ']c', [[<CMD>cnext<CR>]], {noremap = true, silent = true} )
map( 'n', '[c', [[<CMD>cprev<CR>]], {noremap = true, silent = true} )

map( 'n', ']l', [[<CMD>lnext<CR>]], {noremap = true, silent = true} )
map( 'n', '[l', [[<CMD>lprev<CR>]], {noremap = true, silent = true} )
