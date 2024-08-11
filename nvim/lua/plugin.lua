-- packer bootstrap
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        local url = 'https://github.com/wbthomason/packer.nvim'
        fn.system({'git', 'clone', '--depth', '1', url, install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
   end
    return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use 'Shatur/neovim-ayu'

    -- basic uis
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- floating uis
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5' }
    use 'kdheepak/lazygit.nvim'

    -- session
    use 'rmagatti/auto-session'

    -- tmux
    use 'christoomey/vim-tmux-navigator'

    -- completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

require('plugin_configs.colorscheme')
require('plugin_configs.basic_uis')
require('plugin_configs.floating_uis')
require('plugin_configs.session')
require('plugin_configs.tmux')
require('plugin_configs.completion')

