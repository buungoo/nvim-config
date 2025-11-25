-- nvim-window: Quick window navigation using letter hints
return {
  'yorickpeterse/nvim-window',
  config = function()
    require('nvim-window').setup {
      -- The characters available for hinting windows
      chars = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
      },

      -- A group to use for overwriting the Normal highlight group in the floating
      -- window. This can be used to change the background color.
      normal_hl = 'Normal',

      -- The highlight group to apply to the line that contains the hint characters.
      -- This is used to make them stand out more.
      hint_hl = 'Bold',

      -- The border style to use for the floating window.
      border = 'single',

      -- How the hints should be rendered. The possible values are:
      -- - 'float' (default): renders the hints in a floating window overlaying the
      --   target window
      -- - 'status': renders the hints in the status line of the target window
      render = 'float',
    }

    -- Set up keybinding to trigger window picker
    vim.keymap.set('n', '<leader>wj', function()
      require('nvim-window').pick()
    end, { desc = '[W]indow [J]ump with hints' })
  end,
}
