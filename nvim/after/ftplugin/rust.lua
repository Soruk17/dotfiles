vim.opt.shiftwidth = 4

vim.lsp.config.rust_analyzer = {
  cmd = { 'rust-analyzer' },
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = true,
      check = {
        command = 'clippy'
      }
    }
  }
}

vim.lsp.enable('rust_analyzer')
