-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- [[Sync clipboard between OS and Neovim]]
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
}

-- if vim.env.TMUX ~= nil then
--   local copy = { "tmux", "load-buffer", "-w", "-" }
--   local paste = { "bash", "-c", "tmux refresh-client -l && sleep 0.05 && tmux save-buffer -" }
--   vim.g.clipboard = {
--     name = "tmux",
--     copy = {
--       ["+"] = copy,
--       ["*"] = copy,
--     },
--     paste = {
--       ["+"] = paste,
--       ["*"] = paste,
--     },
--     cache_enabled = 0,
--   }
-- end

vim.g.ai_cmp = false

-- [[Language providers]]
vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/shims/python")
vim.g.ruby_host_prog = vim.fn.expand("~/.rbenv/shims/ruby")
vim.g.node_host_prog = vim.fn.expand("~/.volta/bin/node")
