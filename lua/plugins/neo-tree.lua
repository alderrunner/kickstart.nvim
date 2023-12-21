return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behavior = "open_current",
      },
    })

    vim.keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", { silent = true, desc = "Toggle Neo-tree" })
    vim.keymap.set("n", "<leader>ef", ":Neotree focus<CR>", { silent = true, desc = "Toggle Neo-tree" })
  end
}
