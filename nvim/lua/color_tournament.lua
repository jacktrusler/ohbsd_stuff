local M = {}

-- M.setup = function(opts)
--   print("Options: ", opts)
-- end

-- functions we need
-- vim.keymap.set() -> add new keymaps for popup window
-- vim.api.nvim_get_keymap() -> see all the current keymaps so we don't overwrite

M.push = function(name, mappings)
end

M.pop = function(name)
end

-- lua.require("mapstack").push("debug_mode, {
-- })
-- lua.require("mapstack").pop("debug_mode, {
-- })

return M
