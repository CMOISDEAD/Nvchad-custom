return {
  ["elkowar/yuck.vim"] = { ft = "yuck" },

  -- Better escape
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Gruvbox material colorscheme
  ["sainnhe/gruvbox-material"] = {},

  -- Everforest colorscheme
  ["sainnhe/everforest"] = {},

  -- Emmet vim
  ["mattn/emmet-vim"] = {},

  -- Vim surround
  ["tpope/vim-surround"] = {},

  -- Bufferline
  ["akinsho/bufferline.nvim"] = {
    after = "nvim-web-devicons",
    config = function()
      require "custom.plugins.bufferline"
    end,
  },
  -- Harpoon
  ["ThePrimeagen/harpoon"] = {},

  -- Lightspeed
  ["ggandor/lightspeed.nvim"] = {},

  -- Beacon
  ["danilamihailov/beacon.nvim"] = {},

  -- Zen Mode
  ["folke/zen-mode.nvim"] = {},

  -- Nvim dap
  ["mfussenegger/nvim-dap"] = {},

  -- Nvim alpha
  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  -- Which key
  ["folke/which-key.nvim"] = {
    disable = false,
  },

  -- Nvim popup
  ["nvim-lua/popup.nvim"] = {},

  -- Buffer delete
  ["famiu/bufdelete.nvim"] = {
    cmd = { "Bdelete", "Bwipeout" },
  },

  -- Aerial
  ["stevearc/aerial.nvim"] = {
    cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    config = function()
      require "custom.plugins.aerial"
    end,
  },

  -- dressing nvim
  ["stevearc/dressing.nvim"] = {
    event = "VimEnter",
    config = function()
      require "custom.plugins.dressing"
    end,
  },

  -- nvim lspconfig
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- null-ls
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- mason nvim
  ["williamboman/mason.nvim"] = {
    config = function()
      require "custom.plugins.mason"
    end,
  },

  -- Mason tool installer
  ["WhoIsSethDaniel/mason-tool-installer.nvim"] = {
    after = "mason.nvim",
  },
}
