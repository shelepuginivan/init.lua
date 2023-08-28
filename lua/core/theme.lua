local colorscheme = 'gruvbox'

local colors = {
    gray = '#32302f',
    gray_darker = '#282828',
    gray_lighter = '#3c3836',
    beige = '#ebdbb2',
    beige_lighter = '#f9f5d7',
    red = '#fb4934',
    orange = '#d65d0e',
    yellow = '#fabd2f',
    green = '#98971a',
    blue = '#458588',
}

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

-- Global
vim.cmd.colorscheme(colorscheme)
vim.o.termguicolors = true
vim.g.transparent_enabled = true
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)

-- Telescope
vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = colors.gray, fg = colors.red })
vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = colors.gray })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = colors.gray, fg = colors.gray })
vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = colors.red, fg = colors.beige })
vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = colors.gray_lighter })
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = colors.gray_lighter, fg = colors.gray_lighter })
vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = colors.orange, fg = colors.beige })
vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = colors.gray_darker })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = colors.gray_darker, fg = colors.gray_darker })
vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = colors.green, fg = colors.beige })

-- LSP Diagnostic messages
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'DiagnosticHine', { fg = colors.beige_lighter })
