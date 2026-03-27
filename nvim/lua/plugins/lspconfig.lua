return {
  "neovim/nvim-lspconfig",
  vim.lsp.config('global', { cmd = { 'true' } }),
  vim.lsp.enable('global'),
  vim.lsp.config('global', {
    settings = {
      ['jdtls'] = {},
      ['clangd'] = {},
      ['pylsp'] = {},
      ['lua_ls'] = {},
      ['google-java-format'] = {},
      ['clang-format'] = {},
      ['cmake-language-server'] = {},
      ['cmakelang'] = {},
      ['cmakelint'] = {},
    }
  })
}
