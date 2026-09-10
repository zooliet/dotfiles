-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- [[Sync clipboard between OS and Neovim]]
-- vim.opt.clipboard = "unnamedplus"
-- vim.g.clipboard = {
--   name = "OSC 52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   paste = {
--     ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
--   },
-- }

vim.opt.clipboard = "unnamedplus"
if vim.env.HERDR_ENV == "1" then
  local osc52 = require("vim.ui.clipboard.osc52")
  -- return non-list so provider get fails and nvim falls back to local register
  local function no_paste()
    return 0
  end
  vim.g.clipboard = {
    name = "osc52-copy-only",
    copy = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = no_paste,
      ["*"] = no_paste,
    },
  }
elseif vim.env.SSH_CONNECTION then
  vim.g.clipboard = "osc52"
end

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

-- vim.diagnostic.config({
--   virtual_text = {
--     format = function(diagnostic)
--       if diagnostic.message:match("MD013") then
--         return nil
--       end
--       return diagnostic.message
--     end,
--   },
-- })
