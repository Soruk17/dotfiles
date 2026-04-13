-- plugins/telescope.lua: 
return {
    'nvim-telescope/telescope.nvim', tag = '0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
          'nvim-telescope/telescope-fzf-native.nvim',
          build = 'make',
        }

    },
    config = function()
        require('telescope').load_extension('fzf')
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = 'ivy'
                }
            },
            extensions = {
                fzf = {}
            }
        }

        require"plugins.telescope.multigrep".setup()

        vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files)
        vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files)
        vim.keymap.set('n', '<leader>en', function()
            require('telescope.builtin').find_files {
                cwd = vim.fn.stdpath('config')
            }

      end)
    end
    }
