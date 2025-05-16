require('plugins')
require('mason-config')
require('lsp-server')
require('code-completion')
require('file-explorer')
require('custom-keys')
require('debugger')
require('styler')
require('dap-python').setup("~/.virtualenvs/debugpy/bin/python")
require('lualine').setup()
require('lspsaga').setup()
require('linter')
require('nvim-autopairs').setup()

vim.wo.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
