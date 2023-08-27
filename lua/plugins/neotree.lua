require('neo-tree').setup({
    close_if_last_window = true,
    default_component_configs = {
        git_status = {
            symbols = {
                untracked = '?',
                ignored = '',
                unstaged = '󰄱',
                staged = '',
                conflict = '!',
            },
        },
        icon = {
            folder_closed = '',
            folder_open = '',
            folder_empty = '󰜌',
            default = '*',
            highlight = 'NeoTreeFileIcon',
        },
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
        },
    },
    window = {
        width = 30,
    },
})
