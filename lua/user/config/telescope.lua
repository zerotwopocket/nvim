return function()
    local builtin = require'telescope.builtin' 
    local opts = { noremap=true, silent=true }
    local bind = vim.api.nvim_set_keymap

    bind('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
    bind('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
    bind('n', '<leader>flg', '<cmd>Telescope live_grep<cr>', opts)


    bind("n", "<leader>fjs","<cmd>lua require'user.config.telescope-custom'.find_in_java_source_dir()<cr>", opts)
    bind("n", "<leader>fjr","<cmd>lua require'user.config.telescope-custom'.find_in_java_resource_dir()<cr>", opts)
    bind("n", "<leader>fjt","<cmd>lua require'user.config.telescope-custom'.find_in_java_test_source_dir()<cr>", opts)
    bind("n", "<leader>fjw","<cmd>lua require'user.config.telescope-custom'.find_in_java_test_resource_dir()<cr>", opts)

end
