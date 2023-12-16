local status_ok , comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup({
  toggler = {
    block = "<C-_>",
  },
  opleader = {
    block = "<C-_>",
  },
})

-- Ctrl + / to comment out a line or visual selection
--[[ vim.keymap.set("n", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true }) ]]
-- Ctrl + Alt + / to comment out a block of code
