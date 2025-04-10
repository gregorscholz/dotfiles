return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    keys = {
        { "K",     vim.lsp.buf.hover },
        { "gd",    vim.lsp.buf.definition },
        { "<A-.>", vim.lsp.buf.code_action },
        { "gD",    vim.lsp.buf.declaration },
        { "gt",    vim.lsp.buf.type_definition },
        { "<A-r>", vim.lsp.buf.rename },
        { "sr",    vim.lsp.buf.references },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local util = require("lspconfig.util")

        lspconfig.kotlin_language_server.setup({
            cmd = { vim.fn.stdpath("data") .. "/mason/bin/kotlin-language-server" },
            root_dir = util.root_pattern(".git", ".idea"),
            single_file_support = true,
            init_options = {
                storage_path = util.root_pattern(".git", ".idea")(vim.fn.expand("%:p:h")),
            },
        })

        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "love" },
                        disable = { "lowercase-global" },
                    },
                    telemetry = { enable = false },
                    library = {
                        "${3rd}/love2d/library",
                    },
                },
            },
        })

        lspconfig.bashls.setup({})

        lspconfig.marksman.setup({})

        lspconfig.ltex.setup({
            settings = {
                ltex = {
                    -- When using the language code "auto", LTEX will try to detect the language of the document.
                    -- This is not recommended, as only generic languages like "en" or "de" will be detected and thus no spelling errors will be reported.
                    -- good enough for me
                    language = "auto",
                },
            },
        })

        lspconfig.lemminx.setup({
            filetypes = {
                "xml",
                "sdf",
            }
        })
    end,
}
