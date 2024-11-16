local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Toggle command mode
keymap.set("i", "jk", "<esc>")

-- Close buffer
keymap.set("n", "<leader>x", ":bdelete<Return>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-S-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "<leader>|", ":vsplit<Return>")
keymap.set("n", "<leader>_", ":split<Return>")

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
