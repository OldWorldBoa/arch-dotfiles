vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup()

vim.api.nvim_create_autocmd({"VimEnter"}, {
	callback = function()
		require("nvim-tree.api").tree.open()
	end})
