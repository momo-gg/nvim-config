-- safely set colorscheme to tokyonight with protected call in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
    print("Colorscheme 'tokyonight' not found!")
    return
end
