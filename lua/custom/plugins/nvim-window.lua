-- nvim-window: Quick window navigation using letter hints
return {
  'yorickpeterse/nvim-window',
  config = function()
    require('nvim-window').setup {
      -- The characters available for hinting windows (home row keys)
      chars = {
        'a', 's', 'd', 'f', 'j', 'k', 'l', 'h', 'g'
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
    vim.keymap.set('n', '<leader>w', function()
      require('nvim-window').pick()
    end, { desc = '[W]indow jump with hints' })
  end,
}
