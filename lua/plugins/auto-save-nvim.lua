local excluded_filetypes = {
  "gitcommit",
  "NvimTree",
  "Outline",
  "TelescopePrompt",
  "alpha",
  "dashboard",
  "lazygit",
  "neo-tree",
  "oil",
  "prompt",
  "toggleterm",
  "tex", -- exclude LaTeX files
}

local function save_condition(buf)
  if vim.tbl_contains(excluded_filetypes, vim.fn.getbufvar(buf, "&filetype")) then return false end
  return true
end

return {
  "okuuva/auto-save.nvim",
  version = "^1.0.0",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    condition = save_condition,
  },
}
