local dap = require('dap')
local dapui = require ('dapui')
local nvimtree = require('nvim-tree.api')

dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
	print('continued')
	nvimtree.tree.close()
	dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	nvimtree.tree.open()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	nvimtree.tree.open()
  dapui.close()
end
