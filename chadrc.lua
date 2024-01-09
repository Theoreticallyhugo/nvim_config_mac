---@type ChadrcConfig 
local M = {}
M.mappings = require 'custom.mappings'
M.plugins = 'custom.plugins'
--
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- get automatic folds
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=99")

-- require "configs.catppuccin"

M.ui = {
  theme = "catppuccin",
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
    header = {
    "┬ ┬┌─┐┬ ┬  ┌─┐┌─┐┌┐┌┌┬┐  ┌─┐┌─┐┌┬┐┌─┐┬ ┬  ┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐  ",
    "└┬┘│ ││ │  │  ├─┤│││ │   ├┤ ├┤  │ │  ├─┤  │  │ │├┤ ├┤ ├┤ ├┤   ",
    " ┴ └─┘└─┘  └─┘┴ ┴┘└┘ ┴   └  └─┘ ┴ └─┘┴ ┴  └─┘└─┘└  └  └─┘└─┘  ",
    "┬┌─┐  ┬ ┬┌─┐┬ ┬┬─┐┌─┐  ┌┬┐┌─┐┌─┐┌┬┐                           ",
    "│├┤   └┬┘│ ││ │├┬┘├┤    ││├┤ ├─┤ ││                           ",
    "┴└     ┴ └─┘└─┘┴└─└─┘  ─┴┘└─┘┴ ┴─┴┘o                          ",
    }
  }
}

return M
