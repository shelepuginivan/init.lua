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

local function highlight(name, val)
    vim.api.nvim_set_hl(0, name, val)
end

-- Global
vim.cmd.colorscheme(colorscheme)
vim.o.termguicolors = true
vim.g.transparent_enabled = true
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = colors.gray, fg = colors.beige })

-- nvim-cmp
highlight('CmpItemAbbrDeprecated', { fg = '#808080', strikethrough = true })
highlight('CmpItemAbbrMatch', { fg = colors.red })
highlight('CmpItemAbbrMatchFuzzy', { fg = colors.orange })
highlight('CmpItemKind', { fg = colors.yellow })

-- Telescope
highlight('TelescopeSelection', { bg = colors.gray, fg = colors.red })
highlight('TelescopeMatching', { fg = colors.yellow })
highlight('TelescopeNormal', { bg = colors.gray })
highlight('TelescopeResultsBorder', { bg = colors.gray, fg = colors.gray })
highlight('TelescopeResultsTitle', { bg = colors.red, fg = colors.beige })
highlight('TelescopePromptNormal', { bg = colors.gray_lighter })
highlight('TelescopePromptBorder', { bg = colors.gray_lighter, fg = colors.gray_lighter })
highlight('TelescopePromptTitle', { bg = colors.orange, fg = colors.beige })
highlight('TelescopePreviewNormal', { bg = colors.gray_darker })
highlight('TelescopePreviewBorder', { bg = colors.gray_darker, fg = colors.gray_darker })
highlight('TelescopePreviewTitle', { bg = colors.green, fg = colors.beige })

-- LSP Diagnostic messages
highlight('DiagnosticError', { fg = colors.red })
highlight('DiagnosticWarn', { fg = colors.yellow })
highlight('DiagnosticInfo', { fg = colors.blue })
highlight('DiagnosticHine', { fg = colors.beige_lighter })
