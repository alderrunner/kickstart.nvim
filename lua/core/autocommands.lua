vim.api.nvim_create_autocmd("Filetype", {
  pattern = "html",
  command = "setlocal sw=2 ts=2 sts=2 et",
})
