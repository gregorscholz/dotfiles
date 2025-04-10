return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"lua",
			"markdown",
			"markdown_inline",
			"kotlin",
			"latex",
			"python",
		},
	},
}
