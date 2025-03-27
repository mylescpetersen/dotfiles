return {

  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- Diagnostics
        null_ls.builtins.diagnostics.rubocop,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>fw", function()
      vim.lsp.buf.format({})
      vim.cmd("edit!")
      vim.cmd("write")
    end, { desc = "Format file and write" })
  end,
}
