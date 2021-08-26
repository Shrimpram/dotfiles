local map = vim.api.nvim_set_keymap

map( 'n', '<leader>ff', [[<CMD>Telescope find_files<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fg', [[<CMD>Telescope git_files<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fl', [[<CMD>Telescope live_grep<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fc', [[<CMD> Telescope current_buffer_fuzzy_find<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>ft', [[<CMD>Telescope file_browser<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fq', [[<CMD>Telescope quickfix<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fb', [[<CMD>Telescope buffers show_all_buffers=true sort_lastused=true<CR>]], {noremap = true, silent = true} )

vim.cmd([[command! Colorscheme Telescope colorscheme]])
