
local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.cursorline = true
opt.termguicolors = true

opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

opt.ignorecase = true
opt.smartcase = true

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
