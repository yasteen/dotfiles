-- gd -> GOTO
--local map = vim.api.nvim_set_keymap
--map('n', 'gd', 'YcmCompleter GoTo', {noremap = true, silent = true})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Up down cursor stay same
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Paste onto highlighted text without replacing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
 

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- Set Ctrl-C to Esc (for vertical edit mode)
vim.keymap.set("i", "<C-c>", "<Esc>")


vim.keymap.set("n", "Q", "<nop>")


-- -- Format file with gg=G
-- local fmtFile = function() vim.cmd("setlocal equalprg=YcmCompleter Format") end
-- vim.api.nvim_create_autocmd({"FileType"}, {
--     pattern = {"*.c", "*.h", "*.cpp"},
--     callback = fmtFile,
-- })
-- 
-- -- Check code when saving
-- local checkFile = function() vim.cmd("YcmForceCompileAndDiagnostics") end
-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
--     pattern = {"*.c", "*.h", "*.cpp"},
--     callback = checkFile,
-- })
