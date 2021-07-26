local ts_configs = require('nvim-treesitter.configs')
ts_configs.setup {
    ensure_installed = {
        'bash', 'bibtex', 'c', 'c_sharp', 'comment', 'cpp', 'css', 'go',
        'html', 'java', 'javascript', 'json', 'jsonc', 'latex', 'lua',
        'nix', 'python', 'regex', 'rust', 'toml', 'yaml'
    },
    highlight = {
        enable = true,
        disable = { "html" },
        use_languagetree = true,
    }
}
