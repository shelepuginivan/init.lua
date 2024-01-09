local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Apply JavaScript snippets to TypeScript files
ls.filetype_extend('typescript', { 'javascript' })

-- JavaScript snippets
ls.add_snippets('javascript', {
    s({
        trig = 'cla',
        name = 'class',
        desc = 'Insert class declaration',
    }, {
        t('class '),
        i(1),
        t({
            ' {',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'clax',
        name = 'typescript class',
        desc = 'Insert class declaration with extends statement',
    }, {
        t('class '),
        i(1),
        t('extends'),
        i(2),
        t({
            ' {',
            '\t',
        }),
        i(3),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'err',
        name = 'try catch',
        desc = 'Insert try/catch statement',
    }, {
        t({
            'try {',
            '\t',
        }),
        i(1),
        t({
            '',
            '} catch (error) {',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'arfn',
        name = 'arrow function',
        desc = 'Insert arrow function',
    }, {
        t('const '),
        i(1),
        t(' = ('),
        i(2),
        t({
            ') => {',
            '\t',
        }),
        i(3),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'iife',
        name = 'iife',
        desc = 'Insert IIFE (Immediately Invoked Function Expression)',
    }, {
        t({
            '(() => {',
            '\t',
        }),
        i(1),
        t({
            '',
            '})()',
        }),
    }),
})

-- TypeScript snippets
ls.add_snippets('typescript', {
    s({
        trig = 'int',
        name = 'typescript interface',
        desc = 'Insert TypeScript interface',
    }, {
        t('interface '),
        i(1),
        t({
            ' {',
            '\t',
        }),
        i(2),
        t({
            '',
            '}',
        }),
    }),
    s({
        trig = 'intx',
        name = 'typescript interface extends',
        desc = 'Insert TypeScript interface with extends statement',
    }, {
        t('interface '),
        i(1),
        t(' extends'),
        i(2),
        t({
            ' {',
            '\t',
        }),
        i(3),
        t({
            '',
            '}',
        }),
    }),
})
