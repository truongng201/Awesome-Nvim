-- import nvim-autopairs safely
local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return
end

-- configure autopairs
autopairs.setup({
  disable_filetype = { "TelescopePrompt" },
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  enable_check_bracket_line = true,
  enable_moveright = true,
  enable_afterquote = true,
  enable_check_bracket_line = true,
  check_ts = true,
  ts_config = {
    lua = { "string" }, -- it will not add pair on that treesitter node
    javascript = { "template_string" },
    java = false, -- don't check treesitter on java
  },
})
