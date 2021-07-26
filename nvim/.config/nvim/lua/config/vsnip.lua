local map = vim.api.nvim_set_keymap
local let = vim.api.nvim_set_var

-- Expand or jump
map( 'i', '<C-l>', [[vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']], {silent = true, expr = true} )
map( 's', '<C-l>', [[vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']], {silent = true, expr = true} )

-- Jump backward
map( 'i', '<C-h>', [[vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>']], {silent = true, expr = true} )
map( 's', '<C-h>', [[vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>']], {silent = true, expr = true} )

-- Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- See https://github.com/hrsh7th/vim-vsnip/pull/50
map( 'n', '<leader>y', [[<Plug>(vsnip-select-text)]], {} )
map( 'x', '<leader>y', [[<Plug>(vsnip-select-text)]], {} )
map( 'n', '<leader>c', [[<Plug>(vsnip-cut-text)]], {} )
map( 'x', '<leader>c', [[<Plug>(vsnip-cut-text)]], {} )

let( 'vsnip_snippet_dir', '$HOME/.config/nvim/snips' )
