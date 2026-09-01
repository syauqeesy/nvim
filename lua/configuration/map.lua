local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<A-S-Up>", "yypk", { desc = "Duplicate line above" })
vim.keymap.set("n", "<A-S-Down>", "yyp", { desc = "Duplicate line below" })

vim.keymap.set("n", "<A-Up>", ":move .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":move .+1<CR>==", { desc = "Move line down" })

vim.keymap.set("n", "<C-S-Left>", "v<Left>", { desc = "Select left" })
vim.keymap.set("n", "<C-S-Right>", "v<Right>", { desc = "Select right" })
vim.keymap.set("n", "<C-S-Up>", "V<Up>", { desc = "Select line up" })
vim.keymap.set("n", "<C-S-Down>", "V<Down>", { desc = "Select line down" })

vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy selection" })

vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste" })
vim.keymap.set("i", "<C-v>", '<C-r>+', { desc = "Paste" })

vim.keymap.set("v", "<C-x>", '"+d', { desc = "Cut selection" })

