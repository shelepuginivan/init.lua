local lsp = require('lspconfig')
local util = require('lspconfig.util')
local coq = require('coq')

-- TypeScript
lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))

-- Python
lsp.pyright.setup(coq.lsp_ensure_capabilities({}))

-- Lua
lsp.lua_ls.setup(coq.lsp_ensure_capabilities({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            runtime = {
                version = 'LuaJIT',
            },
            telemetry = {
                enable = false,
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
        },
    },
}))

-- Go
require('go').setup()

lsp.gopls.setup(coq.lsp_ensure_capabilities({
    cmd = { 'gopls', 'serve' },
    filetypes = { 'go', 'gomod' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}))

-- Run gofmt + goimport on save

local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})
