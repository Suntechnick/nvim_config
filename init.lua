vim.g.mapleader = " "

require("suntechnick.options")
require("suntechnick.lazy")
require("suntechnick.wk-mappings")

local cmd = vim.api.nvim_command
local ag = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

cmd("language en_US")

vim.o.autoread = true
cmd("au CursorHold *.<fileextension> checktime")

au("TextYankPost", {
	group = ag("yank_highlight", {}),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 1000 })
	end,
})


cmd("colorscheme gruber-darker")
cmd("set colorcolumn=100")

vim.lsp.enable("stylua")
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")

