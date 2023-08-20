-- everything in plugin/after is from craftzdog
local Plug = vim.fn['plug#']
vim.g.mapleader = " "

vim.call('plug#begin', '~/.config/nvim/plugged')

	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-fugitive'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'akinsho/toggleterm.nvim'

	Plug 'nvim-lualine/lualine.nvim'
	Plug 'tomasiser/vim-code-dark'

vim.call('plug#end')

vim.wo.number = true
vim.wo.relativenumber = true

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require'toggleterm'.setup{
	open_mapping = [[<c-\>]],
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.opt.termguicolors = true
vim.cmd.colorscheme[[codedark]]

