vim.g.mapleader = " "
local keymap = vim.keymap

-- Essential rebinds
keymap.set("n", "//", ":nohl<CR>") -- Resets searchs on slash double tap
keymap.set("n", "<leader>u", "~<Left>") -- Toggles case
keymap.set("n", "J", ":m '>+1<CR>gv=gv") -- Move selected line down 
keymap.set("n", "K", ":m '<-2<CR>gv=gv") -- Move selected line up

-- Nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggles Nvim Tree

-- Window splits 
keymap.set("n", "<leader>j", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>h", "<C-w>h") -- Moves to left pane
keymap.set("n", "<leader>l", "<C-w>l") -- Moves to right pane
keymap.set("n", "<leader>q", ":q<CR>") -- Deletes the current window
keymap.set("n", "<leader>w", ":w<CR>") -- Saves the window

-- Tabs
keymap.set("n", "<leader>d", ":tabnew<CR>") -- Opens new tab
keymap.set("n", "<leader>s", ":tabn<CR>") -- Go to next tab
keymap.set("n", "<leader>a", ":tabp<CR>") -- Go to previous tab
