-- import nvim-treesitter safely
local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	highlight = {
		enable = true,  -- enable syntax highlighting
	},
	indent = { enable = true }, -- enable indentation
	autotag = { enable = true }, -- enable autotagging (w/ nvim-ts-autotag plugin)
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"jsx",
		"tsx",
		"vue",
		"yaml",
		"html",
		"css",
		"markdown",
		"graphql",
		"bash",
		"sh",
		"dockerfile",
		"git_rebase",
		"gitattributes",
		"gitignore",
		"gitcommit",
		"jq",
		"jsdoc",
		"json",
		"json5",
		"lua",
		"vim",
		"make",
		"prisma",
		"proto",
		"rust",
		"scss",
		"sql",
		"toml",
	},
	auto_install = true,  -- auto install above language parsers
})
