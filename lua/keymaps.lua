vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

map("n", "<leader>w", "<CMD>update<CR>")

map("n", "<leader>q", "<CMD>q<CR>")

-- ("i", "jk", "<ESC>")

-- map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
-- map("n", "<leader>r", "<CMD>Neotree focus<CR>")
