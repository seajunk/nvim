

vim.g.mapleader = ' '




-- floatterm stuff
vim.api.nvim_set_keymap('n', '<M-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<M-t>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- nvimtree stuff
--[[
vim.api.nvim_set_keymap('n', '\t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
--]]

-- telescope stuff
vim.api.nvim_set_keymap('n', '<M-f>', ':Telescope find_files<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-g>', ':Telescope live_grep<Cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<F2>', ':Telescope buffers<Cr>', { noremap = true, silent = true })



-- tab stuff
--vim.api.nvim_set_keymap('n', '<M-c>', ':tabclose<Cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-n>', ':tabnew<Cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-1>', '1gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-2>', '2gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-3>', '3gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-4>', '4gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-5>', '5gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-6>', '6gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-7>', '7gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-8>', '8gt', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<M-9>', '9gt', { noremap = true, silent = true })


-- window stuff
vim.keymap.set('n', '<C-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').resize_right)
vim.keymap.set('n', '<M-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<M-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<M-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<M-l>', require('smart-splits').move_cursor_right)
--[[
vim.keymap.set('n', '<C-h>', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').swap_buf_right)
]]--
vim.api.nvim_set_keymap('n', '<M-=>', '<C-w>=', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-q>', '<C-w>q', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-v>', ':vs<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-s>', ':sp<Cr>', { noremap = true, silent = true })

-- undo tree stuff
vim.api.nvim_set_keymap('n', '<M-u>', ':UndotreeToggle<Cr>:UndotreeFocus<Cr>', { noremap = true, silent = true })










