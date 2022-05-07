local kana = require('kanagawa')

kana.setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "italic",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "bold",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = true,        -- do not set background color
    dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    colors = {},
    overrides = {},
})
