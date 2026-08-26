return {
  "ChmaraX/herdr-nvim",
  -- opts = {},
  config = function()
    local herdr = require("herdr-nvim")
    herdr.setup({
      prefix = "<leader>a",
      keymaps = true,
      clear_after_send = true,
    })
  end,
}
