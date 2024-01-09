local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
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
		url = "https://github.com/MaggieLostKeys/nvim-ccutil.git",
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
{
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = require("custom.configs.nvim-dap-ui").config,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft= "python",
    dependencies = {
      "mfussenegger/nvim-dap"
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end
  },
	{
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
}

return plugins
