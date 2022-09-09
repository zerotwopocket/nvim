return function()
    require'hop'.setup{}
    local opts = { noremap=true, silent = true }
    vim.api.nvim_set_keymap('n','<M-w>','<cmd>HopWord<cr>',opts)
    vim.api.nvim_set_keymap('n','<M-c>','<cmd>HopChar1<cr>',opts)
end
