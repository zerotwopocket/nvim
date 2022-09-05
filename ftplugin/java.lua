local vim = vim
local home = os.getenv"HOME"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(),':p:h:t')
local workspace_dir = home..'/workspace/'..project_name


local null_ls = require'null-ls';


null_ls.setup{
    sources = {
        null_ls.builtins.formatting.google_java_format
    }
}


local cmp_nvim_lsp = require('cmp_nvim_lsp')

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

local bundles = {
    vim.fn.glob( home .. '/OSProjects/Neovim/microsoft/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar')
}

vim.list_extend(bundles, vim.split(vim.fn.glob( home .. "/OSProjects/Neovim/microsoft/vscode-java-test/server/*.jar"), "\n"))

local on_attach = function(client, bufnr)
    require'jdtls.setup'.add_commands()
    require'jdtls'.setup_dap({ hotcodereplace = 'auto' })
    vim.lsp.codelens.refresh()

    local opts = { noremap = true, silent = true }

    vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<C-b>', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<C-M-b>', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

    --local bind = vim.api.nvim_buf_set_keymap
    vim.api.nvim_set_keymap('n', '<leader>jo','<cmd>lua require"jdtls".organize_imports()<cr>',opts)
    vim.api.nvim_set_keymap("n", "<leader>jt", "<Cmd>lua require'jdtls'.test_class()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>jn", "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", opts)
    vim.api.nvim_set_keymap("v", "<leader>je", "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
    vim.api.nvim_set_keymap("n", "<leader>je", "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
    vim.api.nvim_set_keymap("v", "<leader>jm", "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", opts)


    --custom telescope mappings for java
    --vim.api.nvim_set_keymap("n", "<leader>fjs","<cmd>lua require'user.config.telescope-custom'.find_in_java_source_dir()<cr>", opts)
    --vim.api.nvim_set_keymap("n", "<leader>fjr","<cmd>lua require'user.config.telescope-custom'.find_in_java_resource_dir()<cr>", opts)
    --vim.api.nvim_set_keymap("n", "<leader>fjt","<cmd>lua require'user.config.telescope-custom'.find_in_java_test_source_dir()<cr>", opts)
    --vim.api.nvim_set_keymap("n", "<leader>fjw","<cmd>lua require'user.config.telescope-custom'.find_in_java_test_resource_dir()<cr>", opts)
    --TODO: DAP
    --

   -- vim.api.nvim_exec([[
   --     hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
   --     hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
   --     hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
   --     augroup lsp_document_hightlight
   --         autocmd!
   --         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
   --         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
   --     augroup END
   -- ]]
   -- ,false)
end

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    -- 💀
    home..'/.sdkman/candidates/java/18.0.2.1-open/bin/java', -- or '/path/to/java17_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-javaagent:'..home..'/OSProjects/Binaries/lombok.jar',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',

    -- 💀
    '-jar', vim.fn.glob(home..'/OSProjects/Neovim/eclipse/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_*.jar'),
         -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         -- Must point to the                                                     Change this to
         -- eclipse.jdt.ls installation                                           the actual version
    -- 💀
    '-configuration', home..'/OSProjects/Neovim/eclipse/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
                    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    -- Must point to the                      Change to one of `linux`, `win` or `mac`
                    -- eclipse.jdt.ls installation            Depending on your system.
    -- 💀
    -- See `data directory configuration` section in the README
    '-data', workspace_dir
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'pom.xml','.git', 'mvnw', 'gradlew'}),
  --capabilities = capabilities,
  on_attach = on_attach,
    flags = {
        allow_incremental_sync = true
    },
  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
        eclipse = {
            downloadSources = true,
        },
        maven = {
            downloadSources = true,
        },
        implementationsCodeLens = {
            enabled = true
        },
        referencesCodeLens = {
            enabled = true
        },
        references = {
            includeDecompiledSources = true
        },
        format = {
            enabled = true
        },
        sources = {
            organizeImports = {
              starThreshold = 9999;
              staticStarThreshold = 9999;
            }
        },
        configuration = {
            runtimes = {
                {
                    name = 'JavaSE-11',
                    path = home..'/.sdkman/candidates/java/11.0.12-open'
                },
                {
                    name = 'JavaSE-17',
                    path = home..'/.sdkman/candidates/java/17.0.4-amzn'
                },
                {
                    name = 'JavaSE-18',
                    path = home..'/.sdkman/candidates/java/18.0.2.1-open'
                },
                {
                    name = 'JavaSE-1.8',
                    path = home..'/.sdkman/candidates/java/8.0.302-open'
                },
            }
        },
        signatureHelp = { enabled = true },
        completion = {
            importOrder = {
                'java',
                'javax',
                'com',
                'org'
            },
          favoriteStaticMembers = {
            --"org.hamcrest.MatcherAssert.assertThat",
            "org.hamcrest.Matchers.*",
            "org.hamcrest.CoreMatchers.*",
            "org.junit.jupiter.api.Assertions.*",
            "java.util.Objects.requireNonNull",
            "java.util.Objects.requireNonNullElse",
            "org.mockito.Mockito.*",
            "org.assertj.core.api.Assertions",
            "java.nio.files.Files"
          },
      },
    },
  },

  capabilities = capabilities,
  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = bundles
  },
}


vim.api.nvim_create_autocmd({"BufWritePost"},{
    pattern = { "*.java" },
    callback = function()
        vim.lsp.codelens.refresh()
    end
})

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)
