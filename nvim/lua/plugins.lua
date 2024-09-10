local status, packer = pcall(require, 'packer')

if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer
    -- use {
        -- 'svrana/neosolarized.nvim',
        -- requires = {'tjdevries/colorbuddy.nvim'}
    --}
    
    use "rebelot/kanagawa.nvim" --Theme
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-tree/nvim-tree.lua'

    use 'kyazdani42/nvim-web-devicons'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'hoob3rt/lualine.nvim' -- Statusline
    use 'L3MON4D3/luaSnip' -- Snippet
    use 'onsails/lspkind.nvim' -- Pictograms
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP Config

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
end)

