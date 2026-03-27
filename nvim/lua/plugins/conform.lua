return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require("conform").setup({
      --format_on_save = {
      --  timeout_ms = 500,
      --  lsp_format = "fallback",
      --},
      formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt", lsp_format = "fallback" },
      -- Conform will run the first available formatter
      c = { 'clang-format' , 'astyle' },
      utility = { 'trim_newlines' , 'trim_whitespace' },
    },
  })
  end
}
