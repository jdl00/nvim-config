require("telescope").load_extension("file_browser")

require("telescope").setup({
	extensions = {
		file_browser = {
			theme = "catppuccin-mocha",
		},
	},
})

vim.api.nvim_set_keymap("n", "<C-F>", ":Telescope file_browser<CR>", { noremap = true, silent = true })
