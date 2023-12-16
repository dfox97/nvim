local status_ok , comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup({
  toggler = {
    ---Line-comment toggle keymap
    line = 'gcc',
    block = "<C-_>",
  },
  opleader = {
    ---Line-comment keymap
    line = 'gc',
    block = "<C-_>",
  },
})

