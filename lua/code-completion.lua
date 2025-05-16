vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}

vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require 'cmp'
cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon ={
				nvim_lsp = 'λ',
				vsnip = '⋗',
				buffer = 'b',
				path = 'p'
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	snippet = {
    		expand = function(args)
        		vim.fn["vsnip#anonymous"](args.body)
    		end,
    	},
	mapping = {
		-- Shift+TAB to go to the Previous Suggested item
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		-- Tab to go to the next suggestion
		['<Tab>'] = cmp.mapping.select_next_item(),
		-- CTRL+F to scroll forwards in the description
		['<C-f>'] = cmp.mapping.scroll_docs(4),
    	-- CTRL+SPACE to bring up completion at current Cursor location
    	['<C-Space>'] = cmp.mapping.complete(),
    	-- CTRL+e to exit suggestion and close it
    	['<C-e>'] = cmp.mapping.close(),
    	-- CR (enter or return) to CONFIRM the currently selection suggestion
    	-- We set the ConfirmBehavior to insert the Selected suggestion
    	['<CR>'] = cmp.mapping.confirm({
      		behavior = cmp.ConfirmBehavior.Insert,
      		select = true,
    	})
	},
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 3 },
		{ name = 'nvim_lsp_signature_help' }, 
		{ name = 'nvim_lua', keyword_length = 2 },
		{ name = 'buffer', keyword_length = 2 },
		{ name = 'vsnip', keyword_length = 2 },
	}
})
