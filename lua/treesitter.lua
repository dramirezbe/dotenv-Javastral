-- ~/.config/nvim/lua/treesitter.lua
require('nvim-treesitter.configs').setup {
  -- Lista de lenguajes a instalar (ajusta según tus gustos)
  ensure_installed = { "bash", "c", "cpp", "lua", "python", "javascript", "typescript", "html", "css", "java", "ruby", "go", "rust" },
  highlight = {
    enable = true,              -- Habilita el resaltado Treesitter
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true               -- Habilita la indentación inteligente basada en Treesitter
  }
}

