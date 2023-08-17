-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- Perusing code faster with K and J
vim.keymap.set({ "n", "v" }, "J", "5j", { noremap = true, desc = "Down faster" })

-- Remap K and J
vim.keymap.set({ "n", "v" }, "<leader>k", "K", { noremap = true, desc = "Keyword" })
vim.keymap.set({ "n", "v" }, "<leader>j", "J", { noremap = true, desc = "Join lines" })

-- C-P classic
vim.keymap.set("n", "<C-P>", "<leader>ff")

-- Save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Save window" })

-- Close all buffers expect current
vim.keymap.set(
  "n",
  "<leader>bc",
  "<cmd>w <bar> %bd <bar> e# <bar> bd# <CR>",
  { noremap = true, desc = "Close all buffers" }
)
