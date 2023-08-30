local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'morhetz/gruvbox',
    {
        'xiyaowong/transparent.nvim',
        lazy = false,
    },

    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'startup-nvim/startup.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    },
    'pocco81/auto-save.nvim',
    'norcalli/nvim-colorizer.lua',

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        init = function()
            vim.g.coq_settings = { auto_start = 'shut-up' }
        end,
        dependencies = {
            { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
            { 'neovim/nvim-lspconfig' },
        },
        lazy = false,
    },
    {
        'ray-x/go.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('go').setup()
        end,
        event = { 'CmdlineEnter' },
        ft = { 'go', 'gomod' },
    },
    'windwp/nvim-autopairs',
})
