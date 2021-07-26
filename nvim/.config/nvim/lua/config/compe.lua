local map = vim.api.nvim_set_keymap

vim.o.completeopt = 'menuone,noselect'

vim.opt.shortmess:append({ c = true })

map("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })

require('compe').setup{
  enabled = true,
  preselect = 'enable',
  autocomplete = true,
  source = {
    orgmode = true,
    vsnip = true,
  }
}
