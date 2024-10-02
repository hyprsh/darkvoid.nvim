local M = {}

M.setup = function()
	local colors = require("darkvoid.colors").config.colors

	local highlight_groups = {
		MiniStatuslineModeNormal = { fg = colors.added, bg = "NONE" },
		MiniStatuslineModeInsert = { fg = colors.search_highlight, bg = "NONE" },
		MiniStatuslineModeVisual = { fg = colors.title, bg = "NONE" },
		MiniStatuslineModeCommand = { fg = colors.search_highlight, bg = "NONE" },
		MiniStatuslineModeOther = { fg = colors.eob, bg = "NONE" },
		MiniStatuslineDevinfo = { fg = colors.type, bg = "NONE" },
		MiniStatuslineFilename = { fg = colors.bracket, bg = "NONE" },
		MiniStatuslineFileinfo = { fg = colors.bool, bg = "NONE" },
	}

	for group_name, config in pairs(highlight_groups) do
		local cmd = "highlight " .. group_name
		if config.fg then
			cmd = cmd .. " guifg=" .. config.fg
		end
		if config.bg then
			cmd = cmd .. " guibg=" .. config.bg
		end
		vim.cmd(cmd)
	end
end

return M
