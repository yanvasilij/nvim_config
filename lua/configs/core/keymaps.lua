-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Jump to next window" })
keymap.set("n", "<leader>tab", ":bp", { desc = "Jump to next window" })
keymap.set("n", "<leader>mb", "<C-t>", { desc = "Jump back" })
