return {
	{
		"folke/tokyonight.nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = function()
			vim.cmd.colorscheme("tokyonight-storm")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"catppuccin/nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"rose-pine/neovim",
		enabled = false,
		lazy = false,
		priority = 1000,
		name = "rosa-pine",
		config = function()
			vim.cmd.colorscheme("rose-pine-moon")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		enabled = true,
		priority = 1000,
		name = "kanagawa",
		opts = function()
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},

	{
		"morhetz/gruvbox",
		enabled = false,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
