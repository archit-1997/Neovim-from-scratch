local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system { "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  --************************
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  --Colorschemes
  use { "ellisonleao/gruvbox.nvim" }

  --Telescope 
  use "nvim-telescope/telescope.nvim"

  --Tresitter 
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    commit = "842507a578704157e6c8f8f26befcb3b3a880efb",
  }

  --rainbow parenthesis
  use "HiPhish/rainbow-delimiters.nvim"

  --auto pairs
  use "windwp/nvim-autopairs"

  -- comment
  use "numToStr/Comment.nvim"
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- git
  use "lewis6991/gitsigns.nvim"

  --nvim tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  --toggle term
  use "akinsho/toggleterm.nvim"

  --cscope 
  use "dhananjaylatkar/cscope_maps.nvim"

  --indent
  use "lukas-reineke/indent-blankline.nvim"

  --bufferline
  use{
    "akinsho/bufferline.nvim",
    tag = "*"
  }

  --lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  --linter
  use 'mfussenegger/nvim-lint'

  --************************

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
