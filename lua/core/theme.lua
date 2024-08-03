local colorscheme = 'gruvbox'

local colors = {
    gray = '#32302f',
    gray_darker = '#282828',
    gray_lighter = '#3c3836',
    gray_lightest = '#928374',
    beige = '#ebdbb2',
    beige_lighter = '#f9f5d7',
    red = '#fb4934',
    orange = '#d65d0e',
    yellow = '#fabd2f',
    green = '#98971a',
    blue = '#458588',
    purple = '#b16286',
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

local function hl(name, val)
    vim.api.nvim_set_hl(0, name, val)
end

-- Global
vim.cmd.colorscheme(colorscheme)
vim.o.termguicolors = true
vim.g.transparent_enabled = true
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)

hl('@comment', { fg = colors.gray_lightest, italic = true })
hl('NormalFloat', { bg = colors.gray, fg = colors.beige })

-- Go
hl('goPackageComment', { fg = colors.gray_lightest, bold = true })

-- nvim-cmp
hl('CmpItemAbbrDeprecated', { fg = '#808080', strikethrough = true })
hl('CmpItemAbbrMatch', { fg = colors.red })
hl('CmpItemAbbrMatchFuzzy', { fg = colors.orange })
hl('CmpItemKind', { fg = colors.yellow })

-- Telescope
hl('TelescopeSelection', { bg = colors.gray, fg = colors.red })
hl('TelescopeMatching', { fg = colors.yellow })
hl('TelescopeNormal', { bg = colors.gray })
hl('TelescopeResultsBorder', { bg = colors.gray, fg = colors.gray })
hl('TelescopeResultsTitle', { bg = colors.red, fg = colors.beige })
hl('TelescopePromptNormal', { bg = colors.gray_lighter })
hl('TelescopePromptBorder', { bg = colors.gray_lighter, fg = colors.gray_lighter })
hl('TelescopePromptTitle', { bg = colors.orange, fg = colors.beige })
hl('TelescopePreviewNormal', { bg = colors.gray_darker })
hl('TelescopePreviewBorder', { bg = colors.gray_darker, fg = colors.gray_darker })
hl('TelescopePreviewTitle', { bg = colors.green, fg = colors.beige })

-- LSP Diagnostic messages
hl('DiagnosticError', { fg = colors.red })
hl('DiagnosticWarn', { fg = colors.yellow })
hl('DiagnosticInfo', { fg = colors.blue })
hl('DiagnosticHine', { fg = colors.beige_lighter })
