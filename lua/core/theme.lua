local colorscheme = 'gruvbox'

local extra_groups = {
    'NeoTreeNormal',
    'NeoTreeNormalNC',
    'NeoTreeFileIcon',
    'NeoTreeFileName',
    'NeoTreeDirectoryIcon',
    'NeoTreeDirectoryName',
    'NeoTreeGitAdded',
    'NeoTreeGitConflict',
    'NeoTreeGitDeleted',
    'NeoTreeGitIgnored',
    'NeoTreeGitModified',
    'NeoTreeGitRenamed',
    'NeoTreeGitStaged',
    'NeoTreeGitUnstaged',
    'NeoTreeGitUntracked',
}

vim.cmd.colorscheme(colorscheme)
vim.o.termguicolors = true
vim.g.transparent_enabled = true
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)

-- Telescope
vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = '#32302f', fg = '#fb4934' })
vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = '#fabd2f' })
vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = '#32302f' })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = '#32302f', fg = '#32302f' })
vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = '#cc241d', fg = '#ebdbb2' })
vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = '#3c3836' })
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = '#3c3836', fg = '#3c3836' })
vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = '#d65d0e', fg = '#ebdbb2' })
vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = '#282828' })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = '#282828', fg = '#282828' })
vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = '#98971a', fg = '#ebdbb2' })

-- LSP Diagnostic messages
vim.cmd('highlight DiagnosticError guifg=Red')
vim.cmd('highlight DiagnosticWarn guifg=#ffe533')
vim.cmd('highlight DiagnosticInfo guifg=#2eccfe')
vim.cmd('highlight DiagnosticHint guifg=White')
