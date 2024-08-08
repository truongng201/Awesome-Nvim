local opt = vim.opt

--  line numbers
opt.number = true

-- tabs and identation
opt.tabstop = 4 
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- copy to system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- consider dash as a whole word

