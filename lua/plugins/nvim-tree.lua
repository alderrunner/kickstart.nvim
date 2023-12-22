return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}

    vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
    vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus nvim-tree" })
  end,
}
