vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.wrap = false
vim.opt.undodir = os.getenv('HOME') .. '/.config/nvim/.vim/'
vim.opt.undofile = true
vim.opt.colorcolumn = '120'
vim.cmd.colorscheme "unokai"
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
