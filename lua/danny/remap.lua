vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Alt + Left Arrow to go back in buffer list
vim.api.nvim_set_keymap('n', '<A-Left>', ':bprevious<CR>', { noremap = true, silent = true })

-- Alt + Right Arrow to go forward in buffer list
vim.api.nvim_set_keymap('n', '<A-Right>', ':bnext<CR>', { noremap = true, silent = true })


-- Ignore CTRL-Z
vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-z>', '<NOP>', { noremap = true, silent = true })



-- Commenter 
-- vim.api.nvim_set_keymap('n', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
-- -- Linewise commenting/uncommenting
vim.api.nvim_set_keymap('n', '<C-/>', "<Plug>Comment", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-/>', "<Plug>Comment", { noremap = true, silent = true })

-- Blockwise commenting/uncommenting
vim.api.nvim_set_keymap('n', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true })
