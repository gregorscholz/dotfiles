return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			"lua_ls",
			"kotlin_language_server",
			"bashls",
			"marksman",
			"ltex",
			"pyright",
		},
	},
}
