
-- floatterm stuff
vim.api.nvim_set_keymap('n', '<M-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<M-t>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- nvimtree stuff
vim.api.nvim_set_keymap('n', '\t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- telescope stuff
vim.api.nvim_set_keymap('n', '<F1>', ':Telescope find_files<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F2>', ':Telescope buffers<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F3>', ':Telescope live_grep<Cr>', { noremap = true, silent = true })





-- bufferline stuff
--[[
vim.api.nvim_set_keymap('n', '<Backspace>', ':bdelete<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-1>', ':BufferLineGoToBuffer 1<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-2>', ':BufferLineGoToBuffer 2<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-3>', ':BufferLineGoToBuffer 3<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-4>', ':BufferLineGoToBuffer 4<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-5>', ':BufferLineGoToBuffer 5<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-6>', ':BufferLineGoToBuffer 6<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-7>', ':BufferLineGoToBuffer 7<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-8>', ':BufferLineGoToBuffer 8<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-9>', ':BufferLineGoToBuffer 9<Cr>', { noremap = true, silent = true })
--]]

-- tab stuff
vim.api.nvim_set_keymap('n', '<M-c>', ':tabclose<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-n>', ':tabnew<Cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<M-1>', '1gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-2>', '2gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-3>', '3gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-4>', '4gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-5>', '5gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-6>', '6gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-7>', '7gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-8>', '8gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-9>', '9gt', { noremap = true, silent = true })

-- window stuff
vim.api.nvim_set_keymap('n', '<M-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-q>', '<C-w>q', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-H>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-J>', '<C-w>-', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-K>', '<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-L>', '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-q>', '<C-w>q', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-v>', ':vs<Cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-s>', ':sp<Cr>', { noremap = true, silent = true })










