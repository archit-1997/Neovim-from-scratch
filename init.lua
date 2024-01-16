--Archit's lua config for neovim

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"

--setting colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
