return {
  -- Treesitter (Syntax Highlighting & Code Understanding)
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

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
}
