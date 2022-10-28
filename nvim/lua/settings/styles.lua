vim.api.nvim_command('colorscheme gruvbox')

local present, colorbuddy = pcall(require, 'colorbuddy')

if not present then
  return
end

local Color, colors, Group, groups, styles = colorbuddy.setup()

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('dark_blue', '#225577')
Color.new('purple', '#7788dd')
Color.new('background', '#282c34')
Color.new('dark_gray', '#667766')
Color.new('gruv_blue', '#4585aa')
Color.new('red', '#cc6666')
Color.new('green', '#99cc99')
Color.new('yellow', '#cc9966')

Group.new('Function', colors.green, nil, nil)
-- Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)
-- Group.new('Comment', colors.dark_gray, nil, styles.italic)
