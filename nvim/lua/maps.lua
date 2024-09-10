local keymap = vim.keymap

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Undo
keymap.set('n', 'ud', ':undo<Return>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'vs', ':vsplit<Return><C-w>w', {silent = true})
