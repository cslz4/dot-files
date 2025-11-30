vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "nvim-lua/plenary.nvim"

  use ({
      'nvim-telescope/telescope.nvim',
      tag = 'v0.2.0',
      requires = { 'nvim-lua/plenary.nvim' }
  })

  use "vague-theme/vague.nvim"

  use ({
      "nvim-treesitter/nvim-treesitter",
      branch = "master",
      lazy = false,
      run = "TSUpdate"
  })

  use "williamboman/mason.nvim"

  use "3rd/sqlite.nvim"

  use("mbbill/undotree")

  use ({
      "3rd/time-tracker.nvim",
      requires = { "3rd/sqlite.nvim" },
  })

  use({
	  "rachartier/tiny-inline-diagnostic.nvim",
	  event = "BufReadPost",
	  config = function()
		  require("tiny-inline-diagnostic").setup()
		  vim.diagnostic.config({ virtual_text = false })
	  end,
  })

  use {
	  'saghen/blink.nvim',
	  run = 'cargo build --release',
	  requires = {
		  'nvim-tree/nvim-web-devicons',
	  }
  }

  use({
	  'saghen/blink.cmp',
	  requires = { 'rafamadriz/friendly-snippets' },
	  tag = 'v1.8.0',
	  config = function()
		  require('blink.cmp').setup({
			  keymap = { preset = 'enter' },
		  })
	  end
  })

  use ({
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  })

  use {
	  'nmac427/guess-indent.nvim',
	  config = function() require('guess-indent').setup {} end,
  }

  use("github/copilot.vim")

  use "smjonas/inc-rename.nvim"

  use({
    "kdheepak/lazygit.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
end)
