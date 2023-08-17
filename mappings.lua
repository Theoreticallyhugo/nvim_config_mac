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

return M

