-- cursor.lua

-- Script to change cursor for insert mode
if vim.fn.exists('$TMUX') then
  vim.o.t_SI = "\27Ptmux;\27\27]50;CursorShape=1\7\27\\"
  vim.o.t_EI = "\27Ptmux;\27\27]50;CursorShape=0\7\27\\"
else
  vim.o.t_SI = "\27]50;CursorShape=1\7"
  vim.o.t_EI = "\27]50;CursorShape=0\7"
end

-- Autocommands for cursor shape and line highlighting
vim.cmd('autocmd InsertEnter * set cul')
vim.cmd('autocmd InsertLeave * set nocul')


-- Clear LineNr highlighting
vim.cmd('highlight clear LineNr')

