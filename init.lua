-- init.lua

-- Install packer.nvim if not installed
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', packer_path})
end

-- Initialize packer
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
  vim.cmd('packadd packer.nvim')
end

require('packer').startup(function()
  -- Packer configuration here
end)

-- Set the working directory to the location of your init.lua file
vim.cmd('cd ' .. vim.fn.expand('~/.config/nvim'))

-- Your main configuration file
require('settings')
require('highlighting')
require('cursor')
require('keymappings')
require('plugins')
require('treesitter')
require('linesettings')
require('colors')
require('smoothscroll')
require('pairs')
require('indentline')
require('filetree')
require('keymappings')

