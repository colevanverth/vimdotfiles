local opt = vim.opt

-- Numbers
opt.relativenumber = true
opt.number = true 

-- Searching
opt.hlsearch = true -- Highlights search results
opt.incsearch = true -- Searches as you type
opt.ignorecase = true -- Searching is case insensitive
opt.smartcase = true -- Searching prefers case sensitive result 

-- Tabs & Indentation
opt.tabstop = 2 -- Tab spacing from tab key 
opt.shiftwidth = 2 -- Tab spacing from carrot invokation
opt.expandtab = true -- Place space characters instead of a tab 
opt.autoindent = true -- Automatic indenting from curly braces

-- Appereance
opt.cursorline = true -- Line wherever the cursor is 
opt.termguicolors = true -- Support for color schemes
opt.background = "dark" -- Color schemes default to dark mode
opt.signcolumn = "yes" -- Left block appereance thing
opt.splitright = true -- Vertical splits open to the right of current window

-- Backspace
--[[
    `indent` allows you to backspace over auto indents
    `eol` allows you to backspace over an end of line character
    `start` allows you to backspace over the character you start at in insert mode
]]
opt.backspace = "indent,eol,start" 

-- Clipboard
opt.clipboard:append("unnamedplus") -- Yank works with system clipboard