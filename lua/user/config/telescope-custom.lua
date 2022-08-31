
local mappings = {
}


mappings.find_in_java_source_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/main/java'
    }
    require'telescope.builtin'.find_files(opts)
end
mappings.find_in_java_resource_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/main/resources'
    }
    require'telescope.builtin'.find_files(opts)
end
mappings.find_in_java_test_source_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/test/java'
    }
    require'telescope.builtin'.find_files(opts)
end
mappings.find_in_java_test_resource_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/test/resources'
    }
    require'telescope.builtin'.find_files(opts)
end
mappings.find_in_java_it_source_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/it/java'
    }
    require'telescope.builtin'.find_files(opts)
end
mappings.find_in_java_it_resource_dir = function()
    local opts = require'telescope.themes'.get_ivy()
    opts.search_dirs = {
        'src/it/resources'
    }
    require'telescope.builtin'.find_files(opts)
end
print('telescope-custom')

return mappings
