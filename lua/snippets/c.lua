local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('c', {
    s({
        trig = 'include',
        name = 'Include directive',
    }, {
        t('#include <'),
        i(1, 'stdio.h'),
        t('>'),
    }),
})
