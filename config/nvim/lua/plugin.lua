-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]
vim.cmd [[packadd nvim-treesitter]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  --WOLe for linting
  --
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }
  --Code Highlighter
  --
  use 'nvim-treesitter/nvim-treesitter'

  --Neovim Themes
  --
  use 'arcticicestudio/nord-vim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {'dracula/vim', as = 'dracula'}
  use 'tanvirtin/monokai.nvim'
  --use 'mfussenegger/nvim-jdtls'
  --formatter for format the projects
  use 'mhartington/formatter.nvim'

  --Lsp related plugins
  use 'kabouzeid/nvim-lspinstall'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/diagnostic-nvim'

  --editor config
  use 'editorconfig/editorconfig-vim'

  --telescope fuzzy finder
  use {
   'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Your own status line

  use 'famiu/feline.nvim'
  
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  --snippets related 
  use 'ludovicchabant/vim-gutentags'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'

  use 'onsails/lspkind-nvim'
-- For luasnip user.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            -- Tell Neorg what modules to load
            load = {
                ["core.defaults"] = {}, -- Load all the default modules
                ["core.keybinds"] = { -- Configure core.keybinds
                    config = {
                        default_keybinds = true, -- Generate the default keybinds
                        neorg_leader = "<Leader>o" -- This is the default if unspecified
                    }
                },
                ["core.norg.concealer"] = {}, -- Allows for use of icons
                ["core.norg.dirman"] = { -- Manage your directories with Neorg
                    config = {
                        workspaces = {
                            my_workspace = "~/neorg"
                        }
                    }
                }
            },
        }
    end,
    requires = "nvim-lua/plenary.nvim"
}


end)
