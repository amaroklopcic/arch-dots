-- set default tab width to 4
vim.cmd("set expandtab") -- convert tabs to spaces
vim.cmd("set tabstop=4") -- determines the width of a tab character in columns
-- affects the behavior of tab/backspace keys; it specifies the amount of whitespace to be
-- inserted when the tab key is pressed and the amount to be remove when the backspace key is pressed
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4") -- defines the amount of whitespace used for one level of indentation, in columns.

-- set line numbers
vim.cmd("set relativenumber")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- unbind a (append) and s (substitute) keys
-- since I use homerow modifier keys, I accidentally hit these keys all the time which puts me in insert mode
vim.cmd("map a <NOP>")
vim.cmd("map s <NOP>")

-- have vim communicate with system clipboard
vim.opt.clipboard = "unnamedplus"
