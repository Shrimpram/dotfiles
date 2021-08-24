local map = vim.api.nvim_set_keymap
-- Automatically compiles packer after writing to the plugins.lua file
vim.cmd [[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      {'nvim-treesitter/playground', opt = true}
    },
    config = [[require('config.treesitter')]],
    run = ':TSUpdate',
    branch = '0.5-compat'
  }

  -- Git
  use {
    { 'rhysd/committia.vim' },
    {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('config.gitsigns')]]
    },
    {
      'TimUntersberger/neogit',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('neogit').setup{}]],
      setup = map( 'n', '<leader>ng', [[<CMD>Neogit<CR>]], {noremap = true, silent = true} ),
      cmd = 'Neogit'
    },
    {
      'kdheepak/lazygit.nvim',
      cmd = { 'LazyGit', 'LazyGitConfig', 'LazyGitFilter' }
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    event = 'VimEnter',
    config = [[require('config.telescope')]]
  }


  -- Text formatting

  --- Align
  use {
    {
      'junegunn/vim-easy-align',
      config = function()
        vim.api.nvim_set_keymap( 'n', 'gl', [[<Plug>(EasyAlign)]], {} )
        vim.api.nvim_set_keymap( 'x', 'gl', [[<Plug>(EasyAlign)]], {} )
      end,
      keys = { 'gl' }
    },
    {
      'dhruvasagar/vim-table-mode',
      keys = { '<leader>tm', '<leader>tt' }
    }
  }

  --- Commenting
  use 'tpope/vim-commentary'


  -- File Management

  --- Undo History
  use {
    'mbbill/undotree',
    config = function()
      vim.api.nvim_set_keymap( 'n', '<leader>ut', [[<CMD>UndotreeToggle<CR>]], {noremap = true, silent = true} )
      vim.g.undotree_SetFocusWhenToggle = '1'
    end,
    keys = '<leader>ut',
    cmd = 'UndotreeToggle'
  }

  --- Diff swap files
  -- use 'chrisbra/Recover.vim'

  --- File Tree (lua NERDTree)
  use {
    'kyazdani42/nvim-tree.lua',
    config = [[require('config.nvim-tree')]],
    requires = { 'kyazdani42/nvim-web-devicons' },
    keys = { '<leader>nt', '<leader>nf',  },
  }


  -- Text editing

  --- More text objects for matching parens
  use 'wellle/targets.vim'

  --- Add/del/replace parens
  use {
    'machakann/vim-sandwich',
    keys = { 'sa', 'sd', 'sr' }
  }

  --- Better spellcheck & thesaurus (use with dwyl dictionary and moby thesaurus)
  use 'preservim/vim-lexical'

  --- Snippets
  -- use {
  --   'SirVer/ultisnips',
  --   config = [[
  --   vim.g.UltiSnipsExpandTrigger = "<Tab>"
  --   vim.g.UltiSnipsJumpForwardTrigger = "<C-l>"
  --   vim.g.UltiSnipsJumpBackwardTrigger = "<C-j>"
  --   ]],
  --   ft = 'tex'
  -- }

  use {
    'hrsh7th/vim-vsnip',
    ft = 'tex',
    config = [[require('config.vsnip')]],
  }

  --- Completion
  use {
    'hrsh7th/nvim-compe',
    config = [[require('config.compe')]],
  }


  -- Utilities

  --- Org Mode
  use {
    'kristijanhusak/orgmode.nvim',
    requires = { 'nvim-lua/plenary.nvim', opt = true },
    config = function()
      require('orgmode').setup{
        org_agenda_files = '~/Dropbox/org/*',
        org_default_notes_file = '~/Sync/org/inbox.org',
        org_deadline_warning_days = 2,
        org_use_tag_inheritance = true,
        org_agenda_span = 'day',
      }
    end
  }

  --- Search
  use {
    'romainl/vim-cool',
    config = vim.cmd([[set hlsearch]]),
    keys = { '/', '?', ':', '*', '#', 'g*', 'g#' }
  }

  use {
    'PeterRincker/vim-searchlight',
    event = 'VimEnter'
  }

  --- Better movement

  use {
    'phaazon/hop.nvim',
    config = function()
      vim.api.nvim_set_keymap( 'n', 's', "<CMD>HopChar2<CR>", {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'v', 's', "<CMD>HopChar2<CR>", {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'x', 's', "<CMD>HopChar2<CR>", {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'o', 's', "<CMD>HopChar2<CR>", {noremap = true, silent = true} )
      require('hop').setup {
        keys = 'arstneiowfuy'
      }
    end
  }

  --- Smooth scroll
  use {
    'karb94/neoscroll.nvim',
    config = [[require('neoscroll').setup{}]],
  }

  --- Statusline
  use {
    'ojroques/nvim-hardline',
    config = [[require('hardline').setup { theme = 'stella' }]]
  }

  --- Async building
  use {
    'neomake/neomake',
    setup = function()
      vim.g.neomake_verbose = 1
      vim.g.neomake_open_list = 2
      vim.api.nvim_set_keymap( 'n', ']c', [[<CMD>cnext<CR>]], {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'n', '[c', [[<CMD>cprev<CR>]], {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'n', ']l', [[<CMD>lnext<CR>]], {noremap = true, silent = true} )
      vim.api.nvim_set_keymap( 'n', '[l', [[<CMD>lprev<CR>]], {noremap = true, silent = true} )
    end,
    config = [[vim.cmd("call neomake#configure#automake('w')")]],
    event = 'BufWrite'
  }

  --- Startuptime Profiler
  use {
    'tweekmonster/startuptime.vim',
    cmd = 'StartupTime'
  }

  --- Discord Rich Presence
  use {
    'andweeb/presence.nvim',
    event = 'VimEnter'
  }


  -- Aesthetics

  --- Display colors
  use {
    'rrethy/vim-hexokinase',
    run = 'make hexokinase',
    cmd = { 'HexokinaseToggle', 'HexokinaseTurnOn', 'HexokinaseTurnOff' },
    config = [[vim.g.Hexokinase_highlighters = { 'virtual' }]]
  }

  --- Focus window
  use {
    'junegunn/goyo.vim',
    cmd = { 'Goyo' },
    config = [[
    vim.cmd('Gitsigns toggle_signs')
    vim.cmd('set linebreak')
    ]],
  }


  -- Latex
  use { 'lervag/vimtex', ft = 'tex' }


  -- Colorschemes

  use {
    '$HOME/Documents/stella/vim-stella'
  }

  use {
    -- 'romainl/Apprentice',
    -- 'ayu-theme/ayu-vim',
    -- 'sjl/badwolf',
    -- 'chriskempson/base16-vim',
    -- 'reedes/vim-colors-pencil',
    -- 'nightsense/cosmic_latte',
    -- 'romainl/vim-dichromatic',
    -- 'wadackel/vim-dogrun',
    'romgrk/doom-one.vim',
    -- 'sainnhe/everforest',
    'fcpg/vim-fahrenheit',
    'jaredgorski/fogbell.vim',
    -- 'sainnhe/gruvbox-material',
    -- 'lifepillar/vim-gruvbox8',
    -- 'savq/melange',
    -- 'arcticicestudio/nord-vim',
    -- 'mhartington/oceanic-next',
    -- 'joshdick/onedark.vim',
    -- 'fcpg/vim-orbital',
    -- 'drewtempelmeyer/palenight.vim',
    -- 'tyrannicaltoucan/vim-quantum',
    'lifepillar/vim-solarized8',
    -- 'srcery-colors/srcery-vim',
    -- 'nightsense/stellarized'

    cmd = { 'Colorscheme', 'colorscheme' },
  }

-- use { 'christoomey/vim-tmux-navigator' }
-- use { 'RyanMillerC/better-vim-tmux-resizer' }

end)
