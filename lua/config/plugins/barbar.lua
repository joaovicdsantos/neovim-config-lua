return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    animation = true,
    tabpages = true,
    preset = 'default',

    sidebar_filetypes = {
      NvimTree = true,
      undotree = {text = 'undotree'},
      ['neo-tree'] = {event = 'BufWipeout'},
      Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },

    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  }
}
