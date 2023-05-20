-- Enable ALE globally
vim.cmd([[let g:ale_enabled = 1]])

-- Set the linters for specific filetypes
vim.cmd([[let g:ale_linters = {
  \ 'javascript': ['prettier','eslint'],
  \ 'typescript': ['prettier','eslint'],
  \ 'python': ['flake8']
  \ }]])


vim.cmd([[let g:ale_fixers = {
  \ 'javascript': ['prettier','eslint'],
  \ 'typescript': ['prettier','eslint'],
  \ }]])

-- Enable highlighting of errors and warnings in the sign column
vim.cmd([[let g:ale_sign_column_always = 1]])

-- Display signs for errors and warnings
vim.cmd([[let g:ale_sign_error = '>>']])
vim.cmd([[let g:ale_sign_warning = '--']])

-- Show ALE virtual text
vim.cmd([[let g:ale_set_virtualtext = 1]])

-- Automatically fix fixable issues on save
vim.cmd([[let g:ale_fix_on_save = 1]])

-- Set the maximum number of lines to show in the error list
vim.cmd([[let g:ale_echo_max_lines = 10]])

