-- plugins.lua

-- Specify your plugins here using packer.nvim
return require("packer").startup(function()
	-- LSP syntax highlighting
	use("nvim-treesitter/nvim-treesitter")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Norder warm
	use("shaunsingh/nord.nvim")

	-- Smooth scrolling
	use("karb94/neoscroll.nvim")

	-- auto paid
	use("windwp/nvim-autopairs")

	-- indent lines
	use("lukas-reineke/indent-blankline.nvim")

	-- File tree plugin
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

	-- Auto completion
	use({ "ms-jpq/coq_nvim", branch = "coq" })
	use({ "ms-jpq/coq.artifacts", branch = "artifacts" })

	-- Used to manage LSP's
	use("williamboman/mason.nvim")

	-- Neovim language server
	use("neovim/nvim-lspconfig")

	-- Linting
	use("mfussenegger/nvim-lint")

	-- formatting
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})

	-- Green theme
	use({
		"olivercederborg/poimandres.nvim",
	})
end)
