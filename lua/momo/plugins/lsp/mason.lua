-- import mason safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"eslint",
		"graphql",
		"html",
		"jsonls",
		"tsserver",
		"sumneko_lua",
		"remark_ls",
		"spectral",
		"prismals",
		"rust_analyzer",
		"sqlls",
		"stylelint_lsp",
		"taplo",
		"volar",
		"yamlls",
	},
	automatic_installation = true, -- auto-install configured servers (with lspconfig)
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"hadolint", -- dockerfile
		"jq", -- JSON
		"markdownlint", -- Markdown
		"shellcheck", -- sh
		"yamllint", -- YAML
	},
	automatic_installation = true, -- auto-install configured formatters & linters (with null-ls)
})
