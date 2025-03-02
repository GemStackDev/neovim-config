vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- exit i mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- highlight search
keymap.set("n", "<leader>hh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- cusor management
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep page scroll cursor centered" }) -- / pagescroll cursor centering
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep page scroll cursor centered" }) -- / pagescroll cursor centering
keymap.set("n", "n", "nzzzv", { desc = "Keep '/' cursor centered" }) -- / searchscroll cursor centering
keymap.set("n", "N", "Nzzzv", { desc = "Keep '/' cursor centered" }) -- / searchscroll cursor centering

keymap.set("n", "J", "mzJ`z", { desc = "Keep 'J' cursor stable" }) -- / J does not move cursor to the end of the line

-- clipboard management
keymap.set("x", "<leader>p", '"_dP', { desc = "Retain clipboard after p" }) -- retain clipboard buffer after p

-- replace words
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><Left>", { desc = "Replace word" }) -- Replace word under cursor file wide

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tabo
