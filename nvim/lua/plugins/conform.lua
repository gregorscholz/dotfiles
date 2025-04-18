return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			kotlin = { "ktfmt" },
			xml = { "xmllint" },
			["*.sdf"] = { "xmllint" },
			python = { "isort", "black" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_after_save = {
			lsp_format = "fallback",
		},
		formatters = {
			ktfmt = {
				prepend_args = { "--kotlinlang-style" },
			},
		},
	},
}
