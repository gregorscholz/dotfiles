return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<c-p>", builtin.find_files, {})
		vim.keymap.set("n", "<Space><Space>o", builtin.oldfiles, {})
		vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
	end,
}
