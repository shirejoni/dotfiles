local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

require('telescope').setup {
  defaults = {
    mappings = {
       i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
      n = {
        ["q"] = actions.close
      }
    },
  },
}

pcall(require('telescope').load_extension, 'fzf')
