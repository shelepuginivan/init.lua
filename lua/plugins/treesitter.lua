require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
    },
})

-- Register Treesitter languages.
local ts_languages = {
    mdx = 'markdown',
}

for filetype, lang in pairs(ts_languages) do
    vim.treesitter.language.register(lang, filetype)
end
