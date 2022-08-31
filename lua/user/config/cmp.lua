return function()

local cmp = require'cmp'

local luasnip = require'luasnip'

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local kind_icons = {
	Text = "",
	--Method = "",
	Method = "ⓕ ",
	--Function = "",
	Function = "ⓕ ",
	Constructor = "",
	Field = "",
	Variable = "",
	--Class = "",
	--Class = "ﭰ",
        Class = "ⓒ ",
	--Interface = "",
	--Interface = "",
        Interface = "Ⓘ ",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	--Enum = "",
	Enum = "Ⓔ ",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
            ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
            ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
            ["<C-e>"] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
            }),
            -- Accept currently selected item. If none selected, `select` first item.
            -- Set `select` to `false` to only confirm explicitly selected items.
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                            cmp.select_next_item()
                    elseif luasnip.expandable() then
                            luasnip.expand()
                    elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                    elseif check_backspace() then
                            fallback()
                    else
                            fallback()
                    end
            end, {
                    "i",
                    "s",
            }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                            cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                    else
                            fallback()
                    end
            end, {
                    "i",
                    "s",
            }),
    }),
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                    vim_item.kind = kind_icons[vim_item.kind]
                    vim_item.menu = ({
                            nvim_lsp = "",
                            nvim_lua = "",
                            luasnip = "",
                            buffer = "",
                            path = "",
                            emoji = "",
                    })[entry.source.name]
                    return vim_item
            end,
    },
    sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          --{ name = 'vsnip' }, -- For vsnip users.
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
      }, 
      {
          { name = 'buffer' },
      }),
})
end
