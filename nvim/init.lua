require("options")
require("keymaps")
require("config.lazy")

vim.keymap.set("n", "<space><space>x", ":source %<CR>")

vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
		-- Esc to exit terminal mode
		vim.api.nvim_buf_set_keymap(0, "t", "<Esc>", "<C-\\><C-n>", { noremap = true })
		-- q to close terminal in normal mode
		vim.api.nvim_buf_set_keymap(0, "n", "q", "<Esc>:q<CR>", { noremap = true })
		-- ctrl-q to close terminal in terminal mode
		vim.api.nvim_buf_set_keymap(0, "t", "<C-q>", "<C-\\><C-n>:q<CR>", { noremap = true })
	end,
})

vim.keymap.set("n", "<space>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 10)
end)
