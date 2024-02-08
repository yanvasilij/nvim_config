return {
    "simrat39/rust-tools.nvim",
    config = function()
        local rt = require("rust-tools")

        rt.setup({
            server = {
                on_attach = function(_, bufnr)
                    local opts = { noremap = true, silent = true }
                    local keymap = vim.keymap -- for conciseness

                    opts.buffer = bufnr
                    -- Hover actions
                    vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                    keymap.set("n", "<leader>md", vim.lsp.buf.declaration, opts) -- go to declaration
                    keymap.set("n", "<leader>me", vim.diagnostic.setloclist) -- show error list
                    keymap.set("n", "<leader>mr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
                    keymap.set("n", "<leader>mD", vim.diagnostic.open_float, opts) -- show diagnostics for line
                end,
            },
            tools = {
                hover_actions = {
                    auto_focus = true,
                },
            },
        })
    end,
}
