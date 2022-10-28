local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "javascript", "tsx", "html", "css", "json" },
  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = {},
  },
}
