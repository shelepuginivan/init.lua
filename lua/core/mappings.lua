local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Neotree
map('n', '<C-q>', '<cmd>Neotree toggle<CR>', opts)
map('n', '<C-w>', '<cmd>Neotree focus<CR>', opts)

-- Telescope
map('n', 'ff', '<cmd>Telescope find_files<CR>', opts)
map('n', 'fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', 'fb', '<cmd>Telescope buffers<CR>', opts)
map('n', 'fh', '<cmd>Telescope help_tags<CR>', opts)

-- Misc
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

-- LSP
-- Set LSP mappings when language server is attached
-- See `:help vim.lsp.*` for documentation on any of the below functions
local on_attach = function(event)
    local options = { buffer = event.buf }

    map('n', 'gD', vim.lsp.buf.declaration, options)
    map('n', 'gd', vim.lsp.buf.definition, options)
    map('n', 'K', vim.lsp.buf.hover, options)
    map('n', 'gi', vim.lsp.buf.implementation, options)
    map('n', '<C-k>', vim.lsp.buf.signature_help, options)
    map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, options)
    map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, options)
    map('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, options)
    map('n', '<leader>D', vim.lsp.buf.type_definition, options)
    map('n', '<leader>rn', vim.lsp.buf.rename, options)
    map('n', '<leader>ca', vim.lsp.buf.code_action, options)
    map('n', 'gr', vim.lsp.buf.references, options)
    map('n', '<leader>e', vim.diagnostic.open_float, options)
    map('n', '[d', vim.diagnostic.goto_prev, options)
    map('n', ']d', vim.diagnostic.goto_next, options)
    map('n', '<leader>q', vim.diagnostic.setloclist, options)
    map('n', '<leader>f', function()
        vim.lsp.buf.format({ async = true })
    end, options)
end

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = on_attach,
})
