-- Normal mode keybinding
--vim.api.nvim_set_keymap('n', '<F1>', ':HopWord<CR>', { noremap = true, silent = true })
vim.g.mapleader = " " 



--vim.api.nvim_set_keymap('n', '<M-t>', ':FloatermNew --height=0.9 --width=0.9 <CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('t', '<m-t>', '<C-\\><C-n>:FloatermKill<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<M-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<M-t>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })
