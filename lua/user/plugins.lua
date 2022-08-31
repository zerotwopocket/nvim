local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use { 'phaazon/hop.nvim',
        branch = 'v2',
        config = require'user.config.hop'    
    }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = require'user.config.telescope'
    }

    use { "williamboman/mason.nvim",
        config= require'user.config.mason'
    }
    use { 'neovim/nvim-lspconfig',
        config = require'user.config.lsp'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require'nvim-treesitter.install'.update({with_sync=true}) end,
        config = require'user.config.treesitter'
    }
    use {
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = require'user.config.lspsaga'
    }
     use { 'mfussenegger/nvim-jdtls' }
     use { 'mfussenegger/nvim-dap' }
     use { 'hrsh7th/cmp-buffer' }
     use { 'hrsh7th/cmp-path' }
     use { 'hrsh7th/cmp-cmdline' }
     use { 'hrsh7th/nvim-cmp',
        config = require'user.config.cmp'
     } 
     use { 'hrsh7th/cmp-nvim-lua' }
     use { 'hrsh7th/cmp-nvim-lsp' }
     use { 'L3MON4D3/LuaSnip' }
     use { 'saadparwaiz1/cmp_luasnip' }
     use { 
         'jose-elias-alvarez/null-ls.nvim',
         config = require'user.config.null-ls',
     }
     use { 'mhartington/oceanic-next' }
    use { 'TimUntersberger/neogit',
       requires = 'nvim-lua/plenary.nvim',
       config = require'user.config.neogit'    
   }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
