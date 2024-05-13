-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- -- views can only be fully collapsed with the global statusline
-- vim.opt.laststatus = 3
-- -- Default splitting will cause your main splits to jump when opening an edgebar.
-- -- To prevent this, set `splitkeep` to either `screen` or `topline`.
-- vim.opt.splitkeep = "screen"

local osname = vim.loop.os_uname().sysname
local i, j = string.find(osname, "Windows")
if i then
-- if vim.fn.has('macunix') then
-- else
    LazyVim.terminal.setup("pwsh")

    -- vim.o["shell"] = "pwsh.exe"
    -- vim.o["shellxquote"] = ''
    -- vim.o["shellcmdflag"] = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
    -- vim.o["shellquote"] = ''
    -- vim.o["shellpipe"] = '| Out-File -Encoding UTF8 %s'
    -- vim.o["shellredir"] = '| Out-File -Encoding UTF8 %s'

    -- -- vim.api.nvim_create_autocmd({"BufEnter"}, {
    -- -- 	pattern = {"term://*"},
    -- -- 	command = "startinsert",
    -- --   })

    local aug = vim.api.nvim_create_augroup("Whatever", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter", "TermOpen" }, {
    group = aug,
    pattern = "term://*",
    callback = function()
        vim.cmd.startinsert()
    end,
    })
end