local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<C-a>', '<cmd>Neotree toggle<CR>', opts)
map('n', 'ff', '<cmd>Telescope find_files<CR>', opts)
map('n', 'fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', 'fb', '<cmd>Telescope buffers<CR>', opts)
map('n', 'fh', '<cmd>Telescope help_tags<CR>', opts)

map('i', 'jk', '<esc>', opts)
map('i', '<C-z>', '<C-o>u', opts)
map('v', '<C-z>', '<C-o>u', opts)
map('n', '<C-z>', 'u', opts)

map('v', '{', 'di{}<left><esc>p', opts)
map('v', '(', 'di()<left><esc>p', opts)
map('v', '[', 'di[]<left><esc>p', opts)
map('v', "'", "di''<left><esc>p", opts)
map('v', '"', 'di""<left><esc>p', opts)
map('v', '`', 'di``<left><esc>p', opts)

-- Set LSP mappings when language server is attached
-- See `:help vim.lsp.*` for documentation on any of the below functions
local on_attach = function(event)
    local opts = { buffer = event.buf }

    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', 'K', vim.lsp.buf.hover, opts)
    map('n', 'gi', vim.lsp.buf.implementation, opts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    map('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    map('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    map('n', '<leader>rn', vim.lsp.buf.rename, opts)
    map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    map('n', 'gr', vim.lsp.buf.references, opts)
    map('n', '<leader>e', vim.diagnostic.open_float, opts)
    map('n', '[d', vim.diagnostic.goto_prev, opts)
    map('n', ']d', vim.diagnostic.goto_next, opts)
    map('n', '<leader>q', vim.diagnostic.setloclist, opts)
    map('n', '<leader>f', function()
        vim.lsp.buf.format({ async = true })
    end, opts)
end

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = on_attach,
})
