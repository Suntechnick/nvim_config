local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		w = { "<cmd>Telescope live_grep<cr>", "Find word" },
	},
	c = {
		function()
			require("suntechnick.utils.buffer").close()
		end,
		"Close buffer",
	},
	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename symbol" },
		d = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Diagnostics" },
	},
	n = {
		name = "Plugins",
		p = { "<cmd>NoNeckPain<cr>", "No neck pain" },
	},
	["/"] = {
		function()
			require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
		end,
		"Toggle comment line",
	},
}, { prefix = "<leader>" })

wk.register({
	["["] = {
		b = { "<cmd>bprevious<cr>", "Previous buffer" },
	},

	["]"] = {
		b = { "<cmd>bnext<cr>", "Next buffer" },
	},
	H = { "<C-w>h", "Previous window" },
	L = { "<C-w>l", "Next window" },
	s = {
		function()
			require("leap").leap({ target_windows = { vim.fn.win_getid() } })
		end,
		"Leap",
	},
})

wk.register({
	["/"] = {
		"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
		"Toggle comment for selection",
	},
}, { prefix = "<leader>", mode = "v" })