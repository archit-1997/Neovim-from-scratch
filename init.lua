--Archit's lua config for neovim

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.toggleterm"
require "user.cscope"
require "user.indent"

--setting colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--enable nvim-tree 
require'nvim-tree'.setup()
