require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "autopep8" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
		typescript = { "ts-standard" },
		typescriptreact = { "ts-standard" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
