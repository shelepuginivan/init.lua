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

local quote = { 'Will there ever be a place for the broken in the light?' }

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
            { ' Find File', 'Telescope find_files', '<leader>ff' },
            { ' Open tree', 'Neotree show position=current', 'tt' },
            { ' Settings', 'e ~/.config/nvim/init.lua', 'cc' },
            { ' Quit nvim', 'qa', 'qq' },
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
        content = quote,
        highlight = 'Number',
        default_color = '',
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 2, 2, 1, 2 },
    },
    mappings = {
        execute_command = '<CR>',
    },
    parts = { 'header', 'body', 'footer' },
})
