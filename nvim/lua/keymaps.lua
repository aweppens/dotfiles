-- and plugins.
-----------------------------------------------------------
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local opts = {noremap = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
-- map Esc to jj
map('i', 'jj', '<Esc>', {noremap = true})

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- resize windows
map('n', '<Right>', ':vertical resize +5<CR>', default_opts)
map('n', '<Left>', ':vertical resize -5<CR>', default_opts)
map('n', '<Up>', ':resize +5<CR>', default_opts)
map('n', '<Down>', ':resize -5<CR>', default_opts)

-- close all windows and exit from neovim
map('n', '<leader>q', ':qa!<CR>', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map('n', '<C-t>', ':Term<CR>', { noremap = true })

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

