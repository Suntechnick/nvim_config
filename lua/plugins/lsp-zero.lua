return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{
			-- Optional
			"williamboman/mason.nvim",
			build = function()
				pcall(vim.cmd, "MasonUpdate")
			end,
		},
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "L3MON4D3/LuaSnip" }, -- Required
	},
	config = function()
		local lsp = require("lsp-zero").preset({})

		lsp.on_attach(function(client, bufnr)
			lsp.default_keymaps({ buffer = bufnr })
		end)

		require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

		lsp.format_on_save({
			format_opts = {
				async = false,
				timeout_ms = 1000,
			},
			servers = {
				["null-ls"] = { "javascript", "typescript", "typescriptreact", "rust", "lua" },
			},
		})

		lsp.setup()
	end,
}
