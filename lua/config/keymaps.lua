-- Additional keymaps
vim.keymap.set("n", "<leader><tab>t", "<cmd>tab term<cr>", { desc = "Open Terminal" })
vim.keymap.set("n", "<leader>ot", "<cmd>tab term<cr>", { desc = "Open Terminal" })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
vim.keymap.set("t", "<c-[><c-[>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
