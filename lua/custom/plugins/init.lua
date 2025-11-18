return {
  -- Treesitter (Syntax Highlighting & Code Understanding)
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  -- Colorscheme: TokyoNight with transparency
  {
    'folke/tokyonight.nvim',
    lazy = false, -- load on startup
    opts = {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
    config = function(_, opts)
      require('tokyonight').setup(opts)
      vim.cmd [[colorscheme tokyonight]]
      vim.o.cursorline = true
      vim.api.nvim_set_hl(0, 'CursorLine', { blend = 20 })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1f2335' })
      vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#1f2335', fg = '#5ccfe6' })
    end,
  },

  -- LSP & Language Servers
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- Autocompletion & Snippets
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- Debugging (DAP)
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'leoluz/nvim-dap-go',

  -- Productivity & Navigation
  'nvim-telescope/telescope.nvim',
  'kyazdani42/nvim-tree.lua',
  'hoob3rt/lualine.nvim',
  'akinsho/bufferline.nvim',
  'lewis6991/gitsigns.nvim',
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'

      -- gopls setup
      lspconfig.gopls.setup {
        cmd = { 'gopls' },
        filetypes = { 'go', 'gomod' },
        root_dir = lspconfig.util.root_pattern('go.work', 'go.mod', '.git'),
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              unreachable = true,
            },
            staticcheck = true,
          },
        },
      }
    end,
  },
}
