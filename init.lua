-- init.lua

-- Install packer.nvim if not installed
local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
	vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", packer_path })
end

-- Initialize packer
local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
	vim.cmd("packadd packer.nvim")
end

-- Add the current directory to the lua path
package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/?.lua"

-- Your main configuration file
require("settings")
require("plugins")
require("highlighting")
require("cursor")
require("treesitter")
require("linesettings")
require("colors")
require("smoothscroll")
require("pairs")
require("indentline")
require("lisps")
require("lspmason")
require("coqsettings")
require("nvimlinter")
require("tele")
require("format")
