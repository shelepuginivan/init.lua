; HTML
((html_block) @injection.content 
  (#set! injection.language "html")
)

; Frontmatter
([(minus_metadata) (plus_metadata)] @injection.content 
  (#set! injection.language "yaml")
)

; MDX imports and exports.
((inline) @injection.content 
  (#lua-match? @injection.content "^import")
  (#set! injection.language "javascript")
)

((inline) @injection.content
  (#lua-match? @injection.content "^export")
  (#set! injection.language "javascript")
)
