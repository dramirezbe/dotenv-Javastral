-- ~/.config/nvim/lua/nvimtree.lua
-- Opciones globales
vim.g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1

require('nvim-tree').setup {
  
  update_cwd = true,
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      }
    }
  },
  filters = {
    dotfiles = false,
  },
}

