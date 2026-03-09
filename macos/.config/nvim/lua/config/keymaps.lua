-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Alternate way to save and quit
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<C-Q>", ":wq!<CR>", { noremap = true })
-- nnoremap <C-s> :w<CR>
-- nnoremap <C-Q> :wq!<CR>

-- Move visual block
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
