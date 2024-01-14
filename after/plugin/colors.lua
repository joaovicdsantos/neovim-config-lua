function ColorMyPencils(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.cmd([[hi CursorLine guibg=#403658]])
	vim.cmd([[hi ColorColumn guibg=#26203f]])
end

ColorMyPencils()
