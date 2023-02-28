return {
  cmd = { "typescript-language-server", "--stdio" },
  filetype = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx"
  },
  root_dir: root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
}
