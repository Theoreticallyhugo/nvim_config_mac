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
    }
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
      "Next todo comment"
    },
    ["<leader>tp"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      "Previous todo comment"
    }
  }
}

return M

