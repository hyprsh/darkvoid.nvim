local M = {}

M.setup = function()
	local colors = require("darkvoid.colors").config.colors

	local highlight_groups = {
		MiniStatuslineModeNormal = { fg = colors.added, bg = colors.bg },
		MiniStatuslineModeInsert = { fg = colors.search_highlight, bg = colors.bg },
		MiniStatuslineModeVisual = { fg = colors.title, bg = colors.bg },
		MiniStatuslineModeCommand = { fg = colors.search_highlight, bg = colors.bg },
		MiniStatuslineModeOther = { fg = colors.eob, bg = colors.bg },
		MiniStatuslineDevinfo = { fg = colors.type, bg = colors.bg },
		MiniStatuslineFilename = { fg = colors.bracket, bg = colors.bg },
		MiniStatuslineFileinfo = { fg = colors.bool, bg = colors.bg },
		MiniNotifyBorder = { fg = colors.border, bg = colors.bg },
		MiniNotifyNormal = { fg = colors.fg, bg = colors.bg },
		MiniNotifyTitle = { fg = colors.fg, bg = colors.bg },
		MiniClueBorder = { fg = colors.border, bg = colors.bg },
		MiniClueSeparator = { fg = colors.bg, bg = colors.bg },
		MiniClueTitle = { fg = colors.fg, bg = colors.bg },
		MiniClueDescGroup = { fg = colors.fg, bg = colors.bg },
		MiniClueDescSingle = { fg = colors.bg, bg = colors.bg },
		MiniClueNextKey = { fg = colors.fg, bg = colors.bg },
		MiniClueNextKeyWithPostkeys = { fg = colors.fg, bg = colors.bg },
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
