-- treesitter.lua

-- Required to enable the parser for supported languages
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
