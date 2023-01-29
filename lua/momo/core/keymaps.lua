vim.g.mapleader = " " -- set leader key to space

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights

keymap.set("n", "x", '"_x') -- delete a character without copying it into register

keymap.set("n", "<leader>+", "<C-a>") -- increment selected number
keymap.set("n", "<leader>-", "<C-x>") -- decrement selected number

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz") -- scrolls codebase down & centers viewport
keymap.set("n", "<C-u>", "<C-u>zz") -- scrolls codebase up & centers viewport
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current split window and restore it back to original size

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggles file explorer

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current nvim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>") -- list all git commits (use <CR> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<CR>") -- list git commits for current buffer
keymap.set("n", "<leader>gb", "<cmd>Telescope git_brancher<CR>") -- list git branches
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>") -- list current changes per file with diff preview

keymap.set("n", "<leader>f", vim.lsp.buf.format) -- apply formatting to current buffer using lsp

keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- restart LSP if necessary, sometimes ESLint or TypeScript get wonky
