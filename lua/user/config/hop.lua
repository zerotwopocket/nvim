return function()
    require'hop'.setup{}
    local opts = { noremap=true, silent = true }
    vim.api.nvim_set_keymap('n','<leader>hw','<cmd>HopWord<cr>',opts)
    vim.api.nvim_set_keymap('n','<leader>hc','<cmd>HopChar1<cr>',opts)
end
