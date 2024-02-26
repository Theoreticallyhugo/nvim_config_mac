-- vim.opt.colorcolumn = "80"

-- this means that tabs are actual \t and not spaces
-- vim.cmd("set noexpandtab")

-- unset keymapping for the terminal, is helpful if the nvim terminal (<leader> + h) is used. however it interferes
-- with lazygit. hence its commented out.
-- vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{noremap=true})

vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

