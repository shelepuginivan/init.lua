local lsp = require('lspconfig')
local util = require('lspconfig.util')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- TypeScript
lsp.tsserver.setup({
    capabilities = capabilities,
})

require('lspconfig').volar.setup({
    capabilities = capabilities,
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
})

-- Rust
lsp.rust_analyzer.setup({
    capabilities = capabilities,
})

-- Typst
lsp.typst_lsp.setup({
    settings = {
        exportPdf = 'onSave',
    },
})

-- Python
lsp.pyright.setup({
    capabilities = capabilities,
})

-- Lua
lsp.lua_ls.setup({
    capabilities = capabilities,
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
})

-- Go
require('go').setup()

lsp.gopls.setup({
    capabilities = capabilities,
    cmd = { 'gopls', 'serve' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})

-- Run gofmt + goimport on save
local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})
