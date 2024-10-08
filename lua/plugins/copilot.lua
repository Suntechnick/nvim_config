return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = true,
        auto_refresh = true,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        accept = false,
      }
    })
  end
}
