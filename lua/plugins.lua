-- ~/.config/nvim/lua/plugins.lua
-- Función para asegurarse de que Packer esté instalado
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth', '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Permite que Packer se administre a sí mismo
  use 'wbthomason/packer.nvim'

  -- Tema One Dark Pro
  use 'olimorris/onedarkpro.nvim'

  -- Treesitter para resaltado sintáctico avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  
  -- Explorador de ficheros: nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Configuración del LSP
  use 'neovim/nvim-lspconfig'

  -- Autocompletado con nvim-cmp y fuentes
  use 'hrsh7th/nvim-cmp'          -- Núcleo del autocompletado
  use 'hrsh7th/cmp-nvim-lsp'      -- Fuente LSP
  use 'hrsh7th/cmp-buffer'        -- Fuente del contenido del buffer
  use 'hrsh7th/cmp-path'          -- Fuente de paths (rutas de archivos)
  use 'L3MON4D3/LuaSnip'          -- Motor de snippets
  use 'saadparwaiz1/cmp_luasnip'   -- Fuente para LuaSnip

  if packer_bootstrap then
    require('packer').sync()
  end
end)

