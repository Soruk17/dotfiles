vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter' },
  {
    callback = function()
      vim.cmd(':norm zR')
    end
  })
