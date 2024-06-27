local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('typescript', {
    s({
        trig = 'use',
        name = 'Composable',
        desc = 'Insert Vue 3 composable',
    }, {
        t('export const use'),
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
})

ls.add_snippets('vue', {
    s({
        trig = 'sfc',
        name = 'Single file component',
        desc = 'Insert Vue SFC (Single file component)',
    }, {
        t({
            '<script setup lang="ts">',
            '\t',
            '</script>',
            '',
            '',
        }),
        t({
            '<template>',
            '\t',
        }),
        i(1),
        t({
            '',
            '</template>',
            '',
            '',
        }),
        t({
            '<style scoped>',
            '\t',
            '</style>',
        }),
    }),
})
