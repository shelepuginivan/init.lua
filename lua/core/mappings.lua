local map = vim.api.nvim_set_keymap
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
map('v' ,'(', 'di()<left><esc>p', opts)
map('v', '[', 'di[]<left><esc>p', opts)
map('v', "'", "di''<left><esc>p", opts)
map('v', '"', 'di""<left><esc>p', opts)
map('v', '`', 'di``<left><esc>p', opts)

-- LSP mappings
-- See :help vim.lsp.buf.*
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
map('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
