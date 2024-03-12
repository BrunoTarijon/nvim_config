require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "tflint", "lua_ls", "pyright", "gopls" },
}
