--local status_ok, _ = pcall(require, "lspconfig")
--if not status_ok then
  --return
--end
--
-- Fix Undefined global 'vim'
local cmp_nvim_lsp = require "cmp_nvim_lsp"
local lspconfig = require('lspconfig')
lspconfig.clangd.setup { on_attach = on_attach, capabilities = cmp_nvim_lsp.default_capabilities(), cmd = { "clangd", "--offset-encoding=utf-16", }, }
lspconfig.pylsp.setup {}
lspconfig.cmake.setup {}
lspconfig.bashls.setup {}
lspconfig.dockerls.setup {}
lspconfig.csharp_ls.setup {}
--lspconfig.oelint.setup {}

require "sa3ed.lsp.mason"
require("sa3ed.lsp.handlers").setup()
require "sa3ed.lsp.null-ls"
