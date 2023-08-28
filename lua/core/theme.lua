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

vim.cmd('highlight DiagnosticError guifg=Red')
vim.cmd('highlight DiagnosticWarn guifg=#ffe533')
vim.cmd('highlight DiagnosticInfo guifg=#2eccfe')
vim.cmd('highlight DiagnosticHint guifg=White')
