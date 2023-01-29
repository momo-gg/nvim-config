-- import lualine plugin safely
local lualine_status, lualine = pcall(require, "lualine")
if not lualine_status then
	return
end

-- enable lualine plugin
lualine.setup()
