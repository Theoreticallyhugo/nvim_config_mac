local M = {

}

M.custom = {
  i = {
    ["jk"] = { "<ESC>", "Escape insert mode"},
  },
  n = {
    ["QQ"] = { ":qa <CR>", "quit all if there are no unsaved changes"},
		["W!"] = { ":w !sudo tee % <CR>", "save file as sudo when write protected"},
  },
}

M.nvimtree = {
  -- use g? to show all default mappings, custom ones excluded
  -- refer to https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
  -- point 2.2 QUICKSTART: HELP at line 149 for the commands
  n = {
    ["_"] = {
      -- use dash "-" to go "up", meaning to the parent dir
      -- use underscore "_", meaning shift+dash to cd
      function ()
        require("nvim-tree.api").tree.change_root_to_node() -- replacing <C-]>
      end,
      "CD: change directory"
    },
  }
}

M.telescope = {
  n = {
    ["<leader>fs"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      "Find document symbols"
    },
    ["<leader>fS"] = {
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      "Find workspace symbols"
    },
    ["<leader>fi"] = {
      function()
        require("telescope.builtin").lsp_implementations()
      end,
      "List implementations"
    },
    ["<leader>fd"] = {
      function()
        require("telescope.builtin").lsp_definitions()
      end,
      "List definition"
    },
    ["<leader>fq"] = {
      function()
        require("telescope.builtin").quickfix()
      end,
      "List quickfixes"
    },
    ["<leader>fz"] = { "", "" },  -- remap from fz to fj
    ["<leader>fj"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
  }
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open LazyGit" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Breakpoint at current line" },
    ["<leader>dr"] = { "<cmd> DapContinue <CR>", "Start / continue debugger" },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require("dap-python").set_method()
      end,
      "Run Python tests"
    }
  }
}

M.todo_comments = {
  n = {
    ["<leader>tn"] = {
      function()
        require("todo-comments").jump_next()
      end,
      "Next todo-type comment"
    },
    ["<leader>tp"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      "Previous todo-type comment"
    },
    -- You can also specify a list of valid jump keywords
    ["<leader>te"] = {
      function()
        require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
      end,
      "Next error/warning comment"
    },
    ["<leader>tf"] = {
      function()
        require("todo-comments").jump_next({keywords = { "FIXME" }})
      end,
      "Next fixme comment"
    },
    ["<leader>tt"] = {
      function()
        require("todo-comments").jump_next({keywords = { "TODO" }})
      end,
      "Next todo comment"
    },
    ["<leader>tj"] = {
      "<cmd> TodoTelescope <CR>",
      "Next todo comment"
    },
  }
}

return M

