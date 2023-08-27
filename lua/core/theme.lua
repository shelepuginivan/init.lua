local colorscheme = 'gruvbox'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

vim.o.background = 'dark'
    if not ok then
        vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
    return
end

vim.o.termguicolors = true
vim.g.transparent_enabled = true
