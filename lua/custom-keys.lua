local map = vim.api.nvim_set_keymap

map('n', '<A-z>', [[:Lspsaga diagnostic_jump_next<CR>]], {})
map('n', '<A-x>', [[:Lspsaga diagnostic_jump_prev<CR>]], {})
map('n', '<A-a>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
map('n', '<A-s>', [[:lua require'dap'.continue()<CR>]], {})
map('n', '<A-d>', [[:lua require'dap'.step_over()<CR>]], {})
map('n', '<A-f>', [[:lua require'dap'.step_into()<CR>]], {})
map('n', '<A-g>', [[:lua require'dap'.step_out()<CR>]], {})
map('n', '<A-q>', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
map('n', '<A-w>', ':lua require"telescope.builtin".live_grep()<CR>', {})
map('n', '<A-c>', ':Lspsaga peek_definition<CR>', {})
