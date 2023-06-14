local M = {}

function M.close(bufnr)
    vim.cmd((force and "bd!" or "confirm bd") .. (bufnr == nil and "" or bufnr))
end

function M.nav(n)
  local current = vim.api.nvim_get_current_buf()
  for i, v in ipairs(vim.t.bufs) do
    if current == v then
      vim.cmd.b(vim.t.bufs[(i + n - 1) % #vim.t.bufs + 1])
      break
    end
  end
end

return M
