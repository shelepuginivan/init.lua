local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

local kind_icons = {
    Text = '󰦨',
    Method = '󰆧',
    Function = '󰊕',
    Constructor = '',
    Field = '',
    Variable = '󰨾',
    Class = '󰠱',
    Interface = '',
    Module = '',
    Property = '󰜢',
    Unit = '',
    Value = '󰎠',
    Enum = '',
    Keyword = '󰌋',
    Snippet = '',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    EnumMember = '',
    Constant = '󰏿',
    Struct = '',
    Event = '',
    Operator = '󰆕',
    TypeParameter = '󰅲',
}

cmp.setup({
    formatting = {
        format = function(_, vim_item)
            vim_item.kind = kind_icons[vim_item.kind] .. ' ' .. vim_item.kind
            return vim_item
        end,
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
        { name = 'path' },
    }),
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
