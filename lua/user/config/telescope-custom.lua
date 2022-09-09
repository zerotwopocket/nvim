
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

local pickers = require'telescope.pickers'
local finders = require'telescope.finders'
local conf = require'telescope.config'.values

local actions = require'telescope.actions'
local action_state = require'telescope.actions.state'


local colors = function(opts)
    opts = opts or {}
    pickers.new(opts,{
        prompt_tile = 'colors',
        finder = finders.new_table{
            results = {
                { "red", "#ff0000"},
                { "green", "#00ff00" },
                { "blue", "#0000ff" }
            },
            entry_maker = function(entry)
                return {
                    value = entry,
                    display = entry[1],
                    ordinal = entry[1]
                }
            end
        },
        sorter = conf.generic_sorter(opts),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function ()
               local selection = action_state.get_selected_entry()
               print(vim.inspect(selection))
               vim.api.nvim_put({ selection[1] },"",false,true)
            end)
            return true
        end
    }):find()
end

mappings.pick_colors = colors

return mappings
