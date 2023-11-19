local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"


lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {rust},
    root_dir = utils.root_pattern("Cargo.toml"),
    settings = {
        ["rust-analyzer"] = {
                cargo = {
                    all_features = true,
                },
        },
    },
})

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities=capabilities,
})
