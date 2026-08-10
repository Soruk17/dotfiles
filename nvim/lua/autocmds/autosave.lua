vim.api.nvim_create_autocmd({'InsertLeave'}, {
  nested = true,
  callback = function()
    vim.cmd('silent! write')
  end
})
