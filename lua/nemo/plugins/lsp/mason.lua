local mason_status, mason = pcall(require, "mason") 
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end



mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "ansiblels", 
    "bashls",
    "clangd",
    "cmake",
    "cssls",
    "cssmodules_ls",
    "dockerls",
    "docker_compose_language_service",
    "eslint",
    "golangci_lint_ls",
    "gopls",
    "graphql",
    "html",
    "helm_ls",
    "jsonls",
    "tsserver",
    "lua_ls",
    "pyright",
    "pylsp",
    "sqls",
    "terraformls",
    "vimls",
    "yamlls",
  },
})

mason_null_ls.setup({
  ensure_installed = {
    "ansiblelint",
    "dockerfilelint",
    "hadolint",
    "markdownlint",
    "shellcheck",
    "shfmt",
    "terraform",
    "terraform_fmt",
    "terraform_lint",
    "terraform_validate",
    "yamllint",
  },
})
