--Treesitter
local sitter_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not sitter_status_ok then
  return
end

configs.setup {
  ensure_installed = {"c", "python", "lua", "cpp","markdown", "yaml", "c_sharp", "cmake", "make", "comment"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false, disable = { "yaml" } },
  rainbow = {
      enable = true,
       disable = {""}, --list of languages you want to disable the plugin for
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    }
}
