-- highlighting.lua

-- Turn on syntax highlighting
vim.cmd('syntax on')

-- Set the background to dark
vim.o.background = 'dark'

-- Enable termguicolors if supported
if vim.fn.has('termguicolors') then
  vim.o.termguicolors = true
end
