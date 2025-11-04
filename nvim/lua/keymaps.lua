-- ~/.config/nvim/lua/keymaps.lua
local opts = { noremap = true, silent = true }

-- Guardar con Ctrl + S en modo normal e inserción
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', opts)

-- Toggle del explorador de ficheros (nvim-tree) con Ctrl + N
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- Puedes agregar más mapeos según tus necesidades

