require('lualine').setup({
    sections = {
        lualine_b = {
            {'branch', icon = ''},
            'diff',
            'diagnostics'
        }
    }
})
