require("fs-usage"):setup()
require("recycle-bin"):setup({
  -- Optional: Override automatic trash directory discovery
  -- trash_dir = "~/.local/share/Trash/",  -- Uncomment to use specific directory
})
