
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local keymap = vim.keymap

keymap.set('n', '<M-l>', '<cmd>TmuxNavigateLeft<cr>')
keymap.set('n', '<M-h>', '<cmd>TmuxNavigateRight<cr>')
keymap.set('n', '<M-j>', '<cmd>TmuxNavigateDown<cr>')
keymap.set('n', '<M-k>', '<cmd>TmuxNavigateUp<cr>')

keymap.set('n', '<leader>\\', '<cmd>split<cr>')
keymap.set('n', '<leader>|', '<cmd>vsplit<cr>')
keymap.set('n', '<leader>q', '<cmd>q<cr>')

require("lazy").setup("plugins")
