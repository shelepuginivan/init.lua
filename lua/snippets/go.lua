local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Go snippets
ls.add_snippets('go', {
    s({
        trig = 'ife',
        name = 'error check',
        desc = 'Insert a basic if err not nil statement',
    }, {
        t({
            'if err != nil {',
            '\t',
        }),
        i(1),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'ifel',
        name = 'error check log fatal',
        desc = 'Insert a basic if err not nil statement with log.Fatal',
    }, {
        t({
            'if err != nil {',
            '\tlog.Fatal(err)',
            '}',
        }),
    }),
    s({
        trig = 'ifep',
        name = 'error check panic',
        desc = 'Insert a basic err not nil statement with panic',
    }, {
        t({
            'if err != nil {',
            '\tpanic(err)',
            '}',
        }),
    }),
    s({
        trig = 'ifer',
        name = 'error check return err',
        desc = 'Insert a basic if err not nil statement with return err',
    }, {
        t({
            'if err != nil {',
            '\treturn err',
            '}',
        }),
    }),
    s({
        trig = 'mp',
        name = 'main package',
        desc = 'Insert Go main package base structure',
    }, {
        t({
            'package main',
            '',
            'func main() {',
            '\t',
        }),
        i(1),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'fn',
        name = 'function',
        desc = 'Insert Go function declaration',
    }, {
        t('func '),
        i(1),
        t({
            '() {',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'tst',
        name = 'test function',
        desc = 'Insert Go test function declaration',
    }, {
        t('func Test'),
        i(1),
        t({
            '(t *testing.T) {',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
})
