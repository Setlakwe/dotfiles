require("hydromel.core")
require("hydromel.lazy")

vim.filetype.add({
  pattern = {
    ["*.blade%.php"] = "blade",
  },
})
