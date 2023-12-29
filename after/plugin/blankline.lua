vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("space:⋅")

require("ibl").setup({
	scope = {
		enabled = true,
		show_start = true,
		show_end = true,
	},
	indent = {
		char = "⋅",
	},
})
