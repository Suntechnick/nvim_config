local wk = require("which-key")

wk.add({
  {
    "<leader>/",
    "<cmd>lua require('Comment.api').toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)<cr>",
    desc = "Toggle comment line"
  },
  { "<leader>c",  "<cmd>BufferLinePickClose<cr>",                                                  desc = "Pick and close the opened buffer" },
  { "<leader>f",  group = "Find" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>",                                                 desc = "Find file" },
  { "<leader>fw", "<cmd>Telescope live_grep<cr>",                                                  desc = "Find word" },
  { "<leader>l",  group = "LSP" },
  { "<leader>lD", "<cmd>Telescope diagnostics<cr>",                                                desc = "File diagnostics" },
  { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>",                                        desc = "Code action" },
  { "<leader>ld", "<cmd>lua vim.diagnostic.open_float({source = true})<cr>",                       desc = "Line diagnostics" },
  { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>",                                             desc = "Rename symbol" },
  { "<leader>n",  group = "Plugins" },
  { "<leader>np", "<cmd>NoNeckPain<cr>",                                                           desc = "No neck pain" },
  { "<C-d>",      "<C-d>zz",                                                                       desc = "Scroll down and center the view" },
  { "<C-h>",      "<C-w>h",                                                                        desc = "Previous window" },
  { "<C-l>",      "<C-w>l",                                                                        desc = "Next window" },
  { "<C-u>",      "<C-u>zz",                                                                       desc = "Scroll up and center the view" },
  { "[b",         "<cmd>bprevious<cr>",                                                            desc = "Previous buffer" },
  { "]b",         "<cmd>bnext<cr>",                                                                desc = "Next buffer" },
  { "gd",         "<cmd>lua vim.lsp.buf.definition()<cr>",                                         desc = "Go to definition" },
  { "<leader>/",  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Toggle comment for selection",    mode = "v" },
})
