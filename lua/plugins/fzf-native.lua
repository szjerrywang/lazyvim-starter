local osname = vim.loop.os_uname().sysname
local i, j = string.find(osname, "Windows")
if i then
return { 
    'nvim-telescope/telescope-fzf-native.nvim', 
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
}
else
    return {}
end