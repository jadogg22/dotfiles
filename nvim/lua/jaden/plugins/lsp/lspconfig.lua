return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    {
      "smjonas/inc-rename.nvim",
      config = true,
    },
  },
  config = function()

    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local on_attach = function(client, bufnr)
      -- keybinds
      
      local opts = {noremap = true, silent = true, buffer = bufnr}

      keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
      keymap.set("n", "K", vim.lsp.buf.hover, opts)
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      -- python specific
      keymap.set("n", "<leader>rn", ":IncRename", opts) 

    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- python LSP
    lspconfig.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

  end
}
