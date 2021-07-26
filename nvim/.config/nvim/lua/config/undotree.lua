local map = vim.api.nvim_set_keymap
local let = vim.api.nvim_set_var

map( 'n', '<leader>ut', [[<CMD>UndotreeToggle<CR>]], {noremap = true, silent = true} )

let( 'undotree_SetFocusWhenToggle', 1 )
