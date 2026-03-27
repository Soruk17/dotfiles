-- define common options
local opts = {
    noremap = true,
    silent = true
}


-------------------
--- Normal Mode ---
-------------------

vim.g.mapleader = ' '
---------------------------
--- Getting used to vim ---
---------------------------
vim.keymap.set({'n', 'i', 'v'}, '<Up>', '<Nop>', opts)
vim.keymap.set({'n', 'i', 'v'}, '<Down>', '<Nop>', opts)
vim.keymap.set({'n', 'i', 'v'}, '<Left>', '<Nop>', opts)
vim.keymap.set({'n', 'i', 'v'}, '<Right>', '<Nop>', opts)
-------------------------------------------------
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Utility
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<leader>n', vim.cmd.Oil, opts)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':resize +2<CR>', opts)

-------------------
--- Visual Mode ---
-------------------

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)






