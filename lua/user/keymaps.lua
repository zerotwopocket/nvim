local opts = { noremap=true, silent=true }
local bind = vim.api.nvim_set_keymap

--escape from insert mode
bind('i','kj','<esc>',opts)
bind('i','jk','<esc>',opts)

--window navigation
bind('n','<leader>mw','<C-w>k',opts)
bind('n','<leader>ma','<C-w>h',opts)
bind('n','<leader>md','<C-w>l',opts)
bind('n','<leader>ms','<C-w>j',opts)

-- move text up/down
bind("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
bind("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

bind("v", "<A-k>", ":m .-2<CR>==", opts)
bind("v", "<A-j>", ":m .+1<CR>==", opts)
bind("v", "p", '"_dP', opts)
