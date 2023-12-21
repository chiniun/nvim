vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- 开启 Go 代码的自动补全
vim.g.go_completion_enabled = 1

-- 在格式化代码时静默处理错误
vim.g.go_fmt_fail_silently = 1

-- 启用 Go 代码的静态分析工具 'vet'
vim.g.go_metalinter_enabled = { 'vet' }


-- 触发自动保存
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        vim.fn.execute("silent! write")
        vim.notify("Autosaved!", vim.log.levels.INFO, {})
    end,
})
