return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics

		null_ls.setup({
			sources = {
				-- Lua
				formatting.stylua,
				diagnostics.selene,

				-- Rust
				formatting.rustfmt,

				-- Web
				formatting.prettier,
				formatting.phpcbf,
				diagnostics.eslint_d,
				diagnostics.phpcs,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
