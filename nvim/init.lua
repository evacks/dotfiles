-- everything in plugin/after is from craftzdog
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-fugitive'
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

vim.cmd.colorscheme[[codedark]]

