-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		"rose-pine/neovim",
		as = 'rose-pine',
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	use ('theprimeagen/harpoon')
	
	use ('mbbill/undotree')
	
	use ('tpope/vim-fugitive')

    use({
        "vinicius507/header42.nvim",
        config = function()
            require("header42").setup({
                login = "glacroix",
                email = "PGCL"
            })
        end,
    })

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
end)
