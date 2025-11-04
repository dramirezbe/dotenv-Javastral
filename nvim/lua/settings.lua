-- ~/.config/nvim/lua/settings.lua
-- Opciones básicas para Neovim
vim.opt.number = true                    -- Muestra número de línea
vim.opt.relativenumber = true            -- Números relativos
vim.opt.tabstop = 4                      -- Ancho de tabulación en 4 espacios
vim.opt.shiftwidth = 4                   -- Espacios para autoindentación
vim.opt.expandtab = true                 -- Usa espacios en lugar de tabs
vim.opt.cursorline = true                -- Resalta la línea actual
vim.opt.termguicolors = true             -- Habilita colores de 24 bits
vim.opt.encoding = "utf-8"               -- Usa UTF-8
vim.opt.smartindent = true               -- Indentación inteligente

-- Activar el tema One Dark Pro
vim.cmd("colorscheme onedark")

