-- import comment plugin safely
local comment_status, comment = pcall(require, "Comment")
if not comment_status then
	return
end

-- enable comment plugin
comment.setup()
