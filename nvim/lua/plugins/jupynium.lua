return {
	"kiyoon/jupynium.nvim",
	build = "pip3 install --user .",
	dependencies = {
		"rcarriga/nvim-notify",
		"stevearc/dressing.nvim",
	},
	opts = {
		jupynium_file_pattern = { "*.ju.*", "*.pynb" },
	},
}
