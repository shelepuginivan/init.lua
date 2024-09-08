local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('c', {
    s({
        trig = 'define',
        name = '#define directive',
    }, {
        t('#define '),
        i(1, 'MACRO_NAME'),
        t(' '),
        i(2, 'value'),
    }),
    s({
        trig = 'include',
        name = '#include directive',
    }, {
        t('#include <'),
        i(1, 'stdio.h'),
        t('>'),
    }),
    s({
        trig = 'main',
        name = 'main function',
    }, {
        t('int main('),
        i(1, 'int argc, char *argv[]'),
        t({
            ')',
            '{',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
})
