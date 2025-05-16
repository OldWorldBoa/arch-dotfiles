return require('packer').startup(function(use)
	-- Configurations will go here soon
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		}
	}
	use 'mfussenegger/nvim-dap-python'
	use {
		'rcarriga/nvim-dap-ui',
		requires = {
			'mfussenegger/nvim-dap',
			'nvim-neotest/nvim-nio'
		}
	}
	use 'Mofiqul/dracula.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-tree/nvim-web-devicons'
	use 'BurntSushi/ripgrep'
	use 'nvim-telescope/telescope-fzf-native.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}
	use 'windwp/nvim-autopairs'
	use 'nvimdev/lspsaga.nvim'
	use 'mfussenegger/nvim-lint'
end)
