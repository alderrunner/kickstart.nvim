return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- Bash
					"bashls",

					-- Web
					"html",
					"cssls",
					"tsserver",
					"intelephense",

					-- Lua
					"lua_ls",

					-- Docker
					"dockerls",
					"docker_compose_language_service",

					-- Markdown
					"marksman",

					-- Python
					"pyright",

					-- Rust
					"rust_analyzer",

					-- TOML
					"taplo",

					-- YAML
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Bash
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})

			-- Web
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})

			-- Docker and Docker Compose
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities,
			})

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = { -- custom settings for lua
					Lua = {
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							-- make language server aware of runtime files
							library = {
								[vim.fn.expand("$VIMRUNTIME/lua")] = true,
								[vim.fn.stdpath("config") .. "/lua"] = true,
							},
						},
					},
				},
			})

			-- Markdown
			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			-- Python
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			-- Rust
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

			-- TOML
			lspconfig.taplo.setup({
				capabilities = capabilities,
			})

			-- YAML
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
