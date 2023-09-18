-- Installs lazy.nvim if not already installed. 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- LazyVim plugin installation. 
require("lazy").setup({
   {
     'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { { 'nvim-lua/plenary.nvim' }, { 'sharkdp/fd' } },
   },
   {
      "kylechui/nvim-surround",
      version = "*", -- For stability rather than pull latest from main branch.
      event = "VeryLazy",
      config = function()
         require("nvim-surround").setup()
      end
   },
   "vim-scripts/ReplaceWithRegister",
   {
      "numToStr/Comment.nvim",
      opts = {},
      lazy = false,
   },
   "rebelot/kanagawa.nvim",
   "williamboman/mason.nvim",
   {
   "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function () 
         local configs = require("nvim-treesitter.configs")

         configs.setup({
             ensure_installed = { "c", "vim", "vimdoc", "javascript", "html" },
             highlight = { enable = true },
             indent = { enable = true },  
           })
       end
   },
  "unblevable/quick-scope"
})

-- Telescope setup.
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})

-- Colorscheme setup.
vim.cmd("colorscheme kanagawa")
