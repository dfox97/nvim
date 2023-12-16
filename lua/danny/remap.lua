vim.g.mapleader = " "
--[[ vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) ]]


-- Alt + Left Arrow to go back in buffer list
vim.api.nvim_set_keymap('n', '<A-Left>', ':bprevious<CR>', { noremap = true, silent = true })

-- Alt + Right Arrow to go forward in buffer list
vim.api.nvim_set_keymap('n', '<A-Right>', ':bnext<CR>', { noremap = true, silent = true })


-- Ignore CTRL-Z
vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-z>', '<NOP>', { noremap = true, silent = true })


-- move lines up and down using alt + arrow up/down
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true }) -- learn to stop using arrow keys but keep this for now
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Blockwise commenting/uncommenting
vim.api.nvim_set_keymap('n', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true })


-- nvim-tree
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>o", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>ti", ":NvimTreeResize +10<cr>")
vim.keymap.set("n", "<leader>td", ":NvimTreeResize -10<cr>")vim.api.nvim_set_keymap('x', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- Harpoon setup in harpoon.lua
-- LSP setup in lsp.lua
-- Commentor setup in commentor.lua
