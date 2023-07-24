local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require 'custom.configs.treesitter'
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  },
	{
		url = "git@github.com:MaggieLostKeys/nvim-ccutil.git",
		event = "BufEnter",
		opts = {
			default_width = "100", -- default: 80
			type_overrides = {
				python = "80",
				markdown = "200",
				gitignore = "",
				text = "", -- no column in text files
			},
		}
	},
}

return plugins
