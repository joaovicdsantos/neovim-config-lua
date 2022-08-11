local options = {
  backup = false,
  clipboard = 'unnamedplus',
  cmdheight = 2,
  completeopt = { 'menuone', 'noselect', 'noinsert' },
  conceallevel = 0,
  fileencoding = 'utf-8',
  hlsearch = true,
  ignorecase = true,
  mouse = 'a',
  pumheight = 10,
  showmode = true,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 100,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  cursorline = true,
  number = true,  
  relativenumber = true,
  numberwidth = 4, 
  signcolumn = 'yes',
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = 'CaskaydiaCove Nerd Font Mono:h17',
  bg='dark',
}

vim.opt_global.completeopt = { "menu", "noinsert", "noselect" }
vim.opt_global.shortmess:remove("F"):append("c")

require('onedark').setup {
  style = 'warmer'
}

require('onedark').load()



for k, v in pairs(options) do
  vim.opt[k] = v
end
