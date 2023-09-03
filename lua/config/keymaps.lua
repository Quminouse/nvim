-- Move a line up or down
vim.keymap.set("n", "K", "<cmd>m-2<cr>")
vim.keymap.set("n", "J", "<cmd>m+<cr>")

-- Move a selected area up or down
-- (I need to work on this though as it is quite buggy)
vim.keymap.set("v", "J", "<cmd>m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", "<cmd>m '<-2<cr>gv=gv")

-- Duplicate a line
vim.keymap.set("n", "<leader>ld", "<cmd>t.<cr>")

-- Normal mode
vim.keymap.set("i", "jj", "<esc>")

-- Save file
vim.keymap.set("n", "w", "<cmd>w<cr>")

-- Move to top or bottom of screen
vim.keymap.set("n", "<leader>u", "<c-u>zz")
vim.keymap.set("n", "<leader>d", "<c-d>zz")

vim.keymap.set("t", "jj", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
