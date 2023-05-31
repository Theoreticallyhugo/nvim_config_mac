local M = {

}

M.custom = {
  i = {
    ["jk"] = { "<ESC>", "Escape insert mode"},
  },
  n = {
    ["QQ"] = { ":qa <CR>", "quit all if there are no unsaved changes"}
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open LazyGit" },
  },
}

return M

