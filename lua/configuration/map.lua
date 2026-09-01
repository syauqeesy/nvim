local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.opt.clipboard = "unnamedplus"

map("n", "<A-S-Up>", "yypk", { desc = "Duplicate line above" })
map("n", "<A-S-Down>", "yyp", { desc = "Duplicate line below" })

map("n", "<A-Up>", ":move .-2<CR>==", { desc = "Move line up" })
map("n", "<A-Down>", ":move .+1<CR>==", { desc = "Move line down" })

map("n", "<C-S-Left>", "v<Left>", { desc = "Select left" })
map("n", "<C-S-Right>", "v<Right>", { desc = "Select right" })
map("n", "<C-S-Up>", "V<Up>", { desc = "Select line up" })
map("n", "<C-S-Down>", "V<Down>", { desc = "Select line down" })

map("v", "<C-c>", '"+y', { desc = "Copy selection" })

map("n", "<C-v>", '"+p', { desc = "Paste" })
map("i", "<C-v>", '<C-r>+', { desc = "Paste" })

map("v", "<C-x>", '"+d', { desc = "Cut selection" })

map("n", "o", "o", { desc = "Insert line below" })
map("n", "<C-o>", "O", { desc = "Insert line above" })

map("n", "<C-a>", "ggVG", { desc = "Select all" })

