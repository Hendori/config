vim.g.mapleader = ";"
local s=vim.keymap.set

-- open the original vim file explorer
s("n", "<leader>pv", vim.cmd.Ex)

-- move selected (visual mode) text up and down
s("v", "J", ":m '>+1<CR>gv=gv")
s("v", "K", ":m '<-2<CR>gv=gv")
s("n", "J", "mzJ`z")

-- Go down and up in document while staying in the middle of it.
s("n", "<C-d>", "<C-d>zz")
s("n", "<C-d>", "<C-d>zz")

--void what's in the buffer and get the then latest buffer
s("x", "<leader>p", "\"_dP")

-- copy text to clipboard so it can be used outside of vim
s("n", "<leader>y", "\"+y")
s("v", "<leader>y", "\"+y")
s("n", "<leader>Y", "\"+Y")

--de-lete to void buffer
s("n", "<leader>d", "\"_d")
s("v", "<leader>d", "\"_d")
s("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
s("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>")
