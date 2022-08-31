local opts = { noremap=true, silent=true }
local bind = vim.api.nvim_set_keymap

bind('i','kj','<esc>',opts)
bind('n','<leader>mw','<C-w>k',opts)
bind('n','<leader>ma','<C-w>h',opts)
bind('n','<leader>md','<C-w>l',opts)
bind('n','<leader>ms','<C-w>j',opts)
