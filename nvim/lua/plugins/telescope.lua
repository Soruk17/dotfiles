vim.pack.add({
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
})

vim.pack.add({ {
  src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
  build = function() vim.fn.system({ 'make' }) end
} })

require('telescope').setup({
  pickers = {
    find_files = {
      theme = 'ivy'
    },

    help_tags = {
      theme = 'ivy'
    },

    live_grep = {
      theme = 'ivy'
    }
  },
  extensions = {
    fzf = {}
  }
})

require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fd', builtin.find_files)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>en', function()
  builtin.find_files {
    cwd = vim.fn.stdpath('config')
  }
end)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
