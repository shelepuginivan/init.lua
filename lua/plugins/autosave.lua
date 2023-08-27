require('auto-save').setup({
    enabled = true,
    execution_message = {
        message = function() -- message to print on save
            return ('󱣫 AutoSave: saved at ' .. vim.fn.strftime('%H:%M:%S'))
        end,
        dim = 0.2, -- dim the color of `message`
        cleaning_interval = 1000, -- (ms) automatically clean MsgArea after displaying `message`
    },
    events = { 'InsertLeave', 'TextChanged' },
    conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true,
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135,
})
