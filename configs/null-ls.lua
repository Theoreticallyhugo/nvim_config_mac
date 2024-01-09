local M = {}

local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

M.sources = {
  -- null_ls.builtins.formatting.rustfm,
  -- Python
  null_ls.builtins.diagnostics.mypy,
  null_ls.builtins.diagnostics.ruff,
  null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.black.with({
    extra_args = { "--line-length=79" }
  }),

}

M.on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({
      group = augroup,
      buffer = bufnr,
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

return M
