local lsp = require('lspconfig')
local util = require('lspconfig/util')
local coq = require('coq')

-- TypeScript
local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end

lsp.tsserver.setup(coq.lsp_ensure_capabilities({
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
        local ts_utils = require('nvim-lsp-ts-utils')
        ts_utils.setup({})
        ts_utils.setup_client(client)
        buf_map(bufnr, 'n', 'gs', ':TSLspOrganize<CR>')
        buf_map(bufnr, 'n', 'gi', ':TSLspRenameFile<CR>')
        buf_map(bufnr, 'n', 'go', ':TSLspImportAll<CR>')
    end,
}))

local default_options = {
    flags = {
        debounce_text_changes = 150,
    },
}

-- Python
lsp.pyright.setup(coq.lsp_ensure_capabilities(default_options))

-- Rust
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities(default_options))

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
