local cmd = vim.cmd

local function set(scope, key, value)
	local scopes = { o = vim.o, b = vim.bo, w = vim.wo }
	scopes['o'][key] = value
	scopes[scope][key] = value
end

cmd('filetype plugin on')

vim.g.mapleader=' '

set('o', 'errorbells', false)
set('o', 'smartcase', true)
set('o', 'incsearch', true)
--set('o', 'undofile', true)
--set('o', 'undodir', '/home/sadboy/.vim/undodir')
set('o', 'hidden', true)
set('o', 'updatetime', 300)
set('o', 'backup', false)
set('o', 'writebackup', false)
set('o','completeopt','menuone,noinsert')
set('o', 'termguicolors', true)

local indent = 4
set('b', 'swapfile', false)
set('b', 'smartindent', true)
set('b', 'expandtab', true)
set('b', 'shiftwidth', indent)
set('b', 'autoindent', true)
set('b', 'softtabstop', indent)

set('w', 'wrap', false)
set('w', 'signcolumn', 'yes')

set('w', 'relativenumber', true)
set('w', 'wrap', false)

vim.o.shortmess = vim.o.shortmess .. 'c'
