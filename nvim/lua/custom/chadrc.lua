local M = {}
 M.ui = {theme = 'catppuccin'}
 vim.cmd('autocmd BufEnter * set relativenumber')
 vim.cmd('autocmd BufEnter * set number')
return M
