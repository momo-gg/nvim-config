-- import gitsigns safely
local gitsigns_status, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- enable gitsigns
gitsigns.setup()
