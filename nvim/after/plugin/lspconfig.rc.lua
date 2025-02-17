local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then 
    print('lsp_error')
    return
end

local protocol = require('vim.lsp.protocol')
local on_attach = function (client, bufnr)
    -- formating
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

nvim_lsp.ts_ls.setup {
    root_dir = nvim_lsp.util.root_pattern(".git"),
    on_attach = on_attach,
    filetypes = {"javascript", "typescript", "typescriptreact", "tsx"},
    cmd = {"typescript-language-server", "--stdio"}
}   

nvim_lsp.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'} 
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false
            }
        }
    }
}
