local neovim = {
    '╔══════════════════════════════════════════════════════╗',
    '                                                        ',
    '   ▀█▄   ▀█▀                           ██               ',
    '    █▀█   █    ▄▄▄▄    ▄▄▄   ▄▄▄▄ ▄▄▄ ▄▄▄  ▄▄ ▄▄ ▄▄     ',
    '    █ ▀█▄ █  ▄█▄▄▄██ ▄█  ▀█▄  ▀█▄  █   ██   ██ ██ ██    ',
    '    █   ███  ██      ██   ██   ▀█▄█    ██   ██ ██ ██    ',
    '   ▄█▄   ▀█   ▀█▄▄▄▀  ▀█▄▄█▀    ▀█    ▄██▄ ▄██ ██ ██▄   ',
    '                                                        ',
    '╚══════════════════════════════════════════════════════╝',
}

-- One of these quotes will be chosen randomly. Can be multi-line.
local quotes = {
    { 'Hello Hello Hello Hello Hello Hello!' },
    {
        "I don't have to do too much to prove myself, I'm good enough",
        'And if I do, I love the rush as much as I love showing up',
    },
    { 'Look! Sanae-san is right behind you!!' },
    { 'Umm actually... this is a pseudorandom quote.' },
    { 'Utopia, Utopia, Utopia, forever' },
    { 'Will there ever be a place for the broken in the light?' },
    { 'Stay hydrated' },
}

require('startup').setup({
    header = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Header',
        margin = 5,
        content = neovim,
        highlight = 'Text',
        default_color = '',
        oldfiles_amount = 0,
    },
    body = {
        type = 'mapping',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Basic Commands',
        margin = 5,
        content = {
            { ' Find file', 'Telescope find_files', 'f' },
            { ' Open tree', 'Neotree show position=current', 't' },
            { ' Settings', 'cd ~/.config/nvim | Neotree show position=current', 'c' },
            { ' Quit nvim', 'qa', 'q' },
        },
        highlight = 'String',
        default_color = '',
        oldfiles_amount = 0,
    },
    footer = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Footer',
        margin = 5,
        content = quotes[math.random(#quotes)],
        highlight = 'Number',
        default_color = '',
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 4, 2, 1, 2 },
    },
    mappings = {
        execute_command = '<CR>',
    },
    parts = { 'header', 'body', 'footer' },
})
