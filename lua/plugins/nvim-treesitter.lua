return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "bash", "dockerfile", "lua", "markdown", "python", "rust", "toml", "vim", "vimdoc", "yaml" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
