-- ~/.config/nvim/lua/lsp.lua
local nvim_lsp = require('lspconfig')

-- Función on_attach que se ejecuta al conectar el LSP a un buffer
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  local buf_set_keymap = vim.api.nvim_buf_set_keymap
  -- Mapeos básicos de LSP
  buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap(bufnr, 'n', '<leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- Agrega más mapeos si es necesario
end

-- Configuración de servidores LSP:
-- Python: Pyright
nvim_lsp.pyright.setup{
  on_attach = on_attach,
}

-- JavaScript/TypeScript: tsserver
nvim_lsp.ts_ls.setup{
  on_attach = on_attach,
}


-- Bash: bashls
nvim_lsp.bashls.setup{
  on_attach = on_attach,
}

-- Puedes incluir más servidores según el lenguaje que utilices

