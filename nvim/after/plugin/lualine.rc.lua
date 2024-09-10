local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = 'solarized_dark',
        selection_separators = {left = '', right = ''},
        component_separators = { left = '', right = ''},
        disablede_filetypes = {}
    },
    selections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{
            'filename',
            file_status = true,
            path = 0 -- 0 = just filenamme

        }},
        lualine_x = {
            {'diagnostics', source = { 'nvim_diagnostic' }, symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H'}},
            'encoding',
            'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_section = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{
            'filename',
            file_status = true,
            path = 1 -- 1 = relative path

        }}
    }
}
