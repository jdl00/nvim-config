vim.diagnostic.config({
    virtual_text = true,  -- Enable/disable virtual text
    signs = false,        -- Disable signs in the sign column
    underline = true,     -- Enable/disable underline
    update_in_insert = false,
    severity_sort = true,
})

require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
