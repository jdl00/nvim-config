-- plugins.lua

-- Specify your plugins here using packer.nvim
return require('packer').startup(function()
    -- LSP syntax highlighting
    use 'nvim-treesitter/nvim-treesitter'

    -- Lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Norder warm
    use 'AlexvZyl/nordic.nvim'

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- auto paid
    use 'windwp/nvim-autopairs'

    -- indent lines
    use 'lukas-reineke/indent-blankline.nvim'
    
    -- File tree plugin
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }


    -- Auto completion
    use {'ms-jpq/coq_nvim', branch='coq'}
    use {'ms-jpq/coq.artifacts', branch='artifacts'}


    -- Used to manage LSP's
    use {'williamboman/mason.nvim'}
    
    -- Neovim language server
    use 'neovim/nvim-lspconfig'
end)

