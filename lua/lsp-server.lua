local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.pylsp.setup {
	cmd = {"pylsp", "--ws"},
	filetypes = {"py"},
	root_dir = util.root_pattern(".git")
}

lspconfig.lua_ls.setup {}
