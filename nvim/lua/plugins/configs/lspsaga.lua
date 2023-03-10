--lsp saga
local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

saga.init_lsp_saga {
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  -- preview lines above of lsp_finder
  preview_lines_above = 0,
  -- preview lines of lsp_finder and definition preview
  max_preview_lines = 10,
  -- use emoji lightbulb in default
  code_action_icon = "💡",
  -- if true can press number to execute the codeaction in codeaction window
  code_action_num_shortcut = true,
  -- finder icons
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  -- finder do lsp request timeout
  -- if your project is big enough or your server very slow
  -- you may need to increase this value
  finder_request_timeout = 1,
  definition_action_keys = {
    quit = 'q',
  },
  rename_action_quit = '<C-q>',
  rename_in_select = true,
  -- show outline
  show_outline = {
    win_position = 'right',
    --set special filetype win that outline window split.like NvimTree neotree
    -- defx, db_ui
    win_with = '',
    win_width = 30,
    auto_enter = true,
    auto_preview = true,
    virt_text = '┃',
    jump_key = 'o',
    -- auto refresh when change buffer
    auto_refresh = true,
  },
  server_filetype_map = {
    typescript = 'typescript',
    jdtls = 'jdtls',
    java = 'java',
  },
}
