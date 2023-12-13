vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Alt + Left Arrow to go back in buffer list
vim.api.nvim_set_keymap('n', '<A-Left>', ':bprevious<CR>', { noremap = true, silent = true })

-- Alt + Right Arrow to go forward in buffer list
vim.api.nvim_set_keymap('n', '<A-Right>', ':bnext<CR>', { noremap = true, silent = true })

