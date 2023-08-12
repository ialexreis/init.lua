vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ({
		"rebelot/kanagawa.nvim",
		as = 'kanagawa',
		config = function() 
			vim.cmd("colorscheme kanagawa")
		end
	})

	use {
  		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
  		},
	}

	use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
	use 'freddiehaddad/feline.nvim'
	
	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
		config = function()
			require"startup".setup({theme = 'evil'})
  		end
	}

end)
