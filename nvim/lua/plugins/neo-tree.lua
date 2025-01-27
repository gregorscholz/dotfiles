vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{
			"<C-n>",
			"<cmd>Neotree reveal<cr>",
			desc = "Explorer NeoTree (cwd)",
		},
		{
			"<space>ge",
			function()
				require("neo-tree.command").execute({ source = "git_status", toggle = true })
			end,
			desc = "Git Explorer",
		},
	},
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
			},
		},
		default_component_configs = {
			git_status = {
				symbols = {
					added = "A",
					deleted = "D",
					modified = "M",
					renamed = "R",
					untracked = "U",
					conflict = "C",
					unstaged = "",
				},
			},
		},
		window = {
			mappings = {
				["<tab>"] = "toggle_node",
			},
		},
	},
}
