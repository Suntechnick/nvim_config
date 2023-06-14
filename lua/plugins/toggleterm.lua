return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			shell = "powershell",
			direction = "float",
			open_mapping = [[<F7>]],
			float_ops = {
				border = "curved",
			},
		})
	end,
}
