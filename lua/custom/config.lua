require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = { 'gopls', 'typescript-language-server', 'eslint_d', 'tailwindcss-language-server' },
}

local lspconfig = require 'lspconfig'

-- Go LSP
lspconfig.gopls.setup {}

-- TypeScript & JavaScript LSP
lspconfig.tsserver.setup {}

-- Tailwind CSS (if needed)
lspconfig.tailwindcss.setup {}
