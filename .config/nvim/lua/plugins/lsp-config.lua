return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- 🌐 Web Development
					"html",
					"cssls",  -- "eslint_d",

					-- 🐍 Python
					"pyright", -- "ruff_lsp",

					-- ☕ Java
					-- "jdtls",

					-- 🦀 Rust
					-- "rust_analyzer",

					-- 🔨 C/C++
					-- "clangd", "cmake",

					-- 🏎️ Go
					--"gopls",

					-- 🚀 Lua
					"lua_ls",

					-- ☁️ YAML, JSON, Terraform
					 "yamlls", "jsonls", "terraformls",

					-- 📄 Markdown
					-- "marksman",

					-- 📝 Shell & Bash
					 "bashls",

					-- 🔧 Misc
					-- "taplo",   -- TOML
					-- "lemminx", -- XML
					 "dockerls", -- Docker
					-- "ansible-language-server" -- Ansible
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			--lspconfig.tsserver.setup({
				--capabilites = capabilities,
			--})

			lspconfig.html.setup({
				capabilities = capabilities,
			})
			-- Setup
			-- lspconfig.lua_ls.setup({})
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }, -- Avoid "undefined global 'vim'" errors
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
					},
				},
			})
			lspconfig.pyright.setup({
				capabilites = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.terraformls.setup({
				capabilities = capabilities,
			})
			-- lspconfig.html.setup({})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			-- lspconfig.eslint.setup({})
			-- lspconfig.marksman.setup({})
			-- lspconfig.ansiblels.setup({})

			-- Keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
