local colorscheme = 'gruvbox'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

vim.o.background = 'dark'
if not ok then
    vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
end

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

vim.o.termguicolors = true
vim.g.transparent_enabled = true
vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, extra_groups)

vim.cmd('highlight DiagnosticError guifg=Red')
vim.cmd('highlight DiagnosticWarn guifg=#ffe533')
vim.cmd('highlight DiagnosticInfo guifg=#2eccfe')
vim.cmd('highlight DiagnosticHint guifg=White')
