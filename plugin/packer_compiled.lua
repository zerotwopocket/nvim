-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/staff/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/staff/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/staff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/staff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/staff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n‡\1\0\0\a\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0\22<cmd>HopChar1<cr>\15<leader>hc\21<cmd>HopWord<cr>\15<leader>hw\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n°\1\0\0\a\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Lspsaga code_action<cr>\15<leader>ca\6n\bset\vkeymap\bvim\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogit = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19null-ls config\nprint\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÓ\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\27Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\18Ä-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1B\1\1\1X\1\tÄ-\1\2\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible|\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\3¿\tname\vsource\1\0\6\fluasnip\5\tpath\5\vbuffer\5\nemoji\5\rnvim_lua\5\rnvim_lsp\5\tmenu\tkindÌ\t\1\0\15\0>\0q6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0013\2\5\0005\3\6\0009\4\a\0005\6\v\0005\a\t\0003\b\b\0=\b\n\a=\a\f\0064\a\0\0=\a\r\0069\a\14\0009\a\15\a9\a\16\a5\t\18\0009\n\14\0009\n\17\nB\n\1\2=\n\19\t9\n\14\0009\n\20\nB\n\1\2=\n\21\t9\n\14\0009\f\14\0009\f\22\f)\14ˇˇB\f\2\0025\r\23\0B\n\3\2=\n\24\t9\n\14\0009\f\14\0009\f\22\f)\14\1\0B\f\2\0025\r\25\0B\n\3\2=\n\26\t9\n\14\0009\f\14\0009\f\27\fB\f\1\0025\r\28\0B\n\3\2=\n\29\t9\n\14\0005\f\31\0009\r\14\0009\r\30\rB\r\1\2=\r \f9\r\14\0009\r!\rB\r\1\2=\r\"\fB\n\2\2=\n#\t9\n\14\0009\n$\n5\f%\0B\n\2\2=\n&\t9\n\14\0003\f'\0005\r(\0B\n\3\2=\n)\t9\n\14\0003\f*\0005\r+\0B\n\3\2=\n,\tB\a\2\2=\a\14\0065\a/\0009\b-\0009\b.\b=\b0\a=\a1\0065\a3\0005\b2\0=\b4\a3\b5\0=\b6\a=\a7\0069\a8\0009\a9\a4\t\4\0005\n:\0>\n\1\t5\n;\0>\n\2\t5\n<\0>\n\3\t4\n\3\0005\v=\0>\v\1\nB\a\3\2=\a9\6B\4\2\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fsources\vconfig\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bÔúò\14Reference\bÔíÅ\nColor\bÔ£ó\vFolder\bÔùä\fSnippet\bÔóè\15EnumMember\bÔÖù\fKeyword\bÔùß\nEvent\bÔÉß\tEnum\t‚í∫ \rOperator\bÔöî\nValue\bÔ¢ü\18TypeParameter\bÔûÉ\tUnit\bÓàü\rProperty\bÔÇ≠\vModule\bÔô®\14Interface\t‚íæ \nClass\t‚ìí \rVariable\bÓúñ\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔö¶\rFunction\t‚ìï \vMethod\t‚ìï \tText\bÔùæ\0\14lazy_load luasnip/loaders/from_vscode\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÑ\a\1\2\t\0$\0ã\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÀ\3\1\0\a\0\25\0>5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0006\5\1\0009\5\6\0059\5\a\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0006\5\1\0009\5\6\0059\5\t\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0006\5\1\0009\5\6\0059\5\v\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0006\5\1\0009\5\6\0059\5\r\5\18\6\0\0B\1\5\0013\1\14\0005\2\15\0006\3\16\0'\5\17\0B\3\2\0029\3\18\0039\3\19\0035\5\20\0=\1\21\5=\2\22\5B\3\2\0016\3\16\0'\5\17\0B\3\2\0029\3\23\0039\3\19\0035\5\24\0=\1\21\5=\2\22\5B\3\2\1K\0\1\0\1\0\0\ncssls\nflags\14on_attach\1\0\0\nsetup\rtsserver\14lspconfig\frequire\1\0\1\26debounce_text_changes\3ñ\1\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n~\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÅ\6\0\0\t\0\21\00026\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2\18\3\2\0'\5\6\0'\6\a\0'\a\b\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\t\0'\a\n\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\v\0'\a\f\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\r\0'\a\14\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\15\0'\a\16\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\17\0'\a\18\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\19\0'\a\20\0\18\b\1\0B\3\5\1K\0\1\0X<cmd>lua require'user.config.telescope-custom'.find_in_java_test_resource_dir()<cr>\16<leader>fjwV<cmd>lua require'user.config.telescope-custom'.find_in_java_test_source_dir()<cr>\16<leader>fjtS<cmd>lua require'user.config.telescope-custom'.find_in_java_resource_dir()<cr>\16<leader>fjrQ<cmd>lua require'user.config.telescope-custom'.find_in_java_source_dir()<cr>\16<leader>fjs!<cmd>Telescope live_grep<cr>\16<leader>flg\31<cmd>Telescope buffers<cr>\15<leader>fb\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/Users/staff/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n°\1\0\0\a\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Lspsaga code_action<cr>\15<leader>ca\6n\bset\vkeymap\bvim\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÓ\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\27Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\18Ä-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1B\1\1\1X\1\tÄ-\1\2\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible|\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\3¿\tname\vsource\1\0\6\fluasnip\5\tpath\5\vbuffer\5\nemoji\5\rnvim_lua\5\rnvim_lsp\5\tmenu\tkindÌ\t\1\0\15\0>\0q6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\2B\2\1\0013\2\5\0005\3\6\0009\4\a\0005\6\v\0005\a\t\0003\b\b\0=\b\n\a=\a\f\0064\a\0\0=\a\r\0069\a\14\0009\a\15\a9\a\16\a5\t\18\0009\n\14\0009\n\17\nB\n\1\2=\n\19\t9\n\14\0009\n\20\nB\n\1\2=\n\21\t9\n\14\0009\f\14\0009\f\22\f)\14ˇˇB\f\2\0025\r\23\0B\n\3\2=\n\24\t9\n\14\0009\f\14\0009\f\22\f)\14\1\0B\f\2\0025\r\25\0B\n\3\2=\n\26\t9\n\14\0009\f\14\0009\f\27\fB\f\1\0025\r\28\0B\n\3\2=\n\29\t9\n\14\0005\f\31\0009\r\14\0009\r\30\rB\r\1\2=\r \f9\r\14\0009\r!\rB\r\1\2=\r\"\fB\n\2\2=\n#\t9\n\14\0009\n$\n5\f%\0B\n\2\2=\n&\t9\n\14\0003\f'\0005\r(\0B\n\3\2=\n)\t9\n\14\0003\f*\0005\r+\0B\n\3\2=\n,\tB\a\2\2=\a\14\0065\a/\0009\b-\0009\b.\b=\b0\a=\a1\0065\a3\0005\b2\0=\b4\a3\b5\0=\b6\a=\a7\0069\a8\0009\a9\a4\t\4\0005\n:\0>\n\1\t5\n;\0>\n\2\t5\n<\0>\n\3\t4\n\3\0005\v=\0>\v\1\nB\a\3\2=\a9\6B\4\2\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fsources\vconfig\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bÔúò\14Reference\bÔíÅ\nColor\bÔ£ó\vFolder\bÔùä\fSnippet\bÔóè\15EnumMember\bÔÖù\fKeyword\bÔùß\nEvent\bÔÉß\tEnum\t‚í∫ \rOperator\bÔöî\nValue\bÔ¢ü\18TypeParameter\bÔûÉ\tUnit\bÓàü\rProperty\bÔÇ≠\vModule\bÔô®\14Interface\t‚íæ \nClass\t‚ìí \rVariable\bÓúñ\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔö¶\rFunction\t‚ìï \vMethod\t‚ìï \tText\bÔùæ\0\14lazy_load luasnip/loaders/from_vscode\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÅ\6\0\0\t\0\21\00026\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2\18\3\2\0'\5\6\0'\6\a\0'\a\b\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\t\0'\a\n\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\v\0'\a\f\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\r\0'\a\14\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\15\0'\a\16\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\17\0'\a\18\0\18\b\1\0B\3\5\1\18\3\2\0'\5\6\0'\6\19\0'\a\20\0\18\b\1\0B\3\5\1K\0\1\0X<cmd>lua require'user.config.telescope-custom'.find_in_java_test_resource_dir()<cr>\16<leader>fjwV<cmd>lua require'user.config.telescope-custom'.find_in_java_test_source_dir()<cr>\16<leader>fjtS<cmd>lua require'user.config.telescope-custom'.find_in_java_resource_dir()<cr>\16<leader>fjrQ<cmd>lua require'user.config.telescope-custom'.find_in_java_source_dir()<cr>\16<leader>fjs!<cmd>Telescope live_grep<cr>\16<leader>flg\31<cmd>Telescope buffers<cr>\15<leader>fb\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n‡\1\0\0\a\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0\22<cmd>HopChar1<cr>\15<leader>hc\21<cmd>HopWord<cr>\15<leader>hw\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19null-ls config\nprint\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÑ\a\1\2\t\0$\0ã\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÀ\3\1\0\a\0\25\0>5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0006\5\1\0009\5\6\0059\5\a\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0006\5\1\0009\5\6\0059\5\t\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0006\5\1\0009\5\6\0059\5\v\5\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0006\5\1\0009\5\6\0059\5\r\5\18\6\0\0B\1\5\0013\1\14\0005\2\15\0006\3\16\0'\5\17\0B\3\2\0029\3\18\0039\3\19\0035\5\20\0=\1\21\5=\2\22\5B\3\2\0016\3\16\0'\5\17\0B\3\2\0029\3\23\0039\3\19\0035\5\24\0=\1\21\5=\2\22\5B\3\2\1K\0\1\0\1\0\0\ncssls\nflags\14on_attach\1\0\0\nsetup\rtsserver\14lspconfig\frequire\1\0\1\26debounce_text_changes\3ñ\1\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n~\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
