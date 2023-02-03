local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)

    use("wbthomason/packer.nvim")
    use ("nvim-lua/plenary.nvim")
    use("navarasu/onedark.nvim")
    use {
        'nvim-lualine/lualine.nvim',
        }
    use 'nvim-tree/nvim-web-devicons'
    use ("lukas-reineke/indent-blankline.nvim")
    use ('nvim-treesitter/nvim-treesitter')
    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-path')
    use ('hrsh7th/cmp-buffer')
    use ('L3MON4D3/LuaSnip')
    use ('saadparwaiz1/cmp_luasnip')
    use ('nvim-tree/nvim-tree.lua')
    use('hrsh7th/cmp-nvim-lsp')
    use("neovim/nvim-lspconfig")
    use { "williamboman/mason.nvim" }    
    use ('williamboman/mason-lspconfig.nvim')
    use("onsails/lspkind.nvim")
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use 'sonph/onehalf'
    use { "bluz71/vim-nightfly-colors", as = "nightfly" }
  if packer_bootstrap then
    require("packer").sync()
  end
end)
