lspconfig = require "lspconfig"
util = require "lspconfig/util"

vim.cmd([[ au FileType go set noexpandtab ]])
vim.cmd([[ au FileType go set shiftwidth=4 ]])
vim.cmd([[ au FileType go set softtabstop=4 ]])
vim.cmd([[ au FileType go set tabstop=4 ]])
vim.cmd([[ let g:go_highlight_build_constraints = 1 ]])
vim.cmd([[ let g:go_highlight_extra_types = 1 ]])
vim.cmd([[ let g:go_highlight_fields = 1 ]])
vim.cmd([[ let g:go_highlight_functions = 1 ]])
vim.cmd([[ let g:go_highlight_methods = 1 ]])
vim.cmd([[ let g:go_highlight_operators = 1 ]])
vim.cmd([[ let g:go_highlight_structs = 1 ]])
vim.cmd([[ let g:go_highlight_types = 1 ]])
vim.cmd([[ let g:go_auto_sameids = 1 ]])
vim.cmd([[ let g:go_fmt_command = "goimports" ]])
vim.cmd([[ let g:go_auto_type_info = 1 ]])

lspconfig.gopls.setup {
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}
  -- …
function OrgImports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end

require('go').config.update_tool('quicktype', function(tool)
   tool.pkg_mgr = 'npm'
end)

require('go').setup({
  lint_prompt_style = 'vt',
})

vim.cmd([[ autocmd BufWritePre *.go lua OrgImports(1000) ]])
