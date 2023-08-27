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
    'pocco81/auto-save.nvim',

    'morhetz/gruvbox',
    'xiyaowong/transparent.nvim',

    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    },

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        init = function() vim.g.coq_settings = { auto_start = 'shut-up' } end,
        dependencies = {
            { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
            { 'neovim/nvim-lspconfig' },
            { 'L3MON4D3/LuaSnip' }
        },
        lazy = false
    },
    'jose-elias-alvarez/nvim-lsp-ts-utils'
})
