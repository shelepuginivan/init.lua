local colorscheme = 'gruvbox'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

vim.o.background = 'dark'
    if not ok then
        vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
    return
end

vim.o.termguicolors = true
vim.g.transparent_enabled = true

vim.cmd('highlight DiagnosticError guifg=Red')
vim.cmd('highlight DiagnosticWarn guifg=#ffe533')
vim.cmd('highlight DiagnosticInfo guifg=#2eccfe')
vim.cmd('highlight DiagnosticHint guifg=White')
