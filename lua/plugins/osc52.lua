local M = {
  "ojroques/nvim-osc52",
}

local function copy(lines, _)
  require("osc52").copy(table.concat(lines, "\n"))
end

local function paste()
  return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
end

function M.init()
  vim.g.clipboard = {
    name = "osc52",
    copy = {
      ["+"] = copy,
      ["*"] = copy,
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }

  vim.g.oscyank_term = "default"
  vim.opt.clipboard = "unnamedplus"
end

return M
