vim.keymap.set("n", "<leader>lt", function()
  -- Step 1: Save current window ID
  local original_win = vim.api.nvim_get_current_win()

  -- Step 2: Close Neo-tree if it's open
  require("neo-tree.command").execute({ action = "close", source = "filesystem" })

  -- Step 3: Build layout
  vim.cmd("topleft vnew")
  vim.cmd("vertical resize 50")
  vim.cmd("wincmd h") -- move to left

  -- Step 4: Open Neo-tree in fixed sidebar
  require("neo-tree.command").execute({
    source = "filesystem",
    position = "left",
  })

  -- Step 5: Split below for terminal
  vim.cmd("wincmd h")
  vim.cmd("belowright split")
  vim.cmd("resize 15")
  vim.cmd("terminal")

  -- Step 6: Move to main (right) pane
  vim.cmd("wincmd l")

  -- Step 7: Close the original window (if still valid)
  if vim.api.nvim_win_is_valid(original_win) then
    vim.api.nvim_win_close(original_win, true)
  end
end, { desc = "Left Neo-tree + terminal layout" })
