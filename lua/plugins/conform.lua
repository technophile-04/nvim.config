local function foundry_or_hardhat()
  local has_foundry = vim.fs.find({
    "foundry.toml",
  }, { upward = true })[1]
  if has_foundry then
    return { "forge_fmt" }
  end
  return {}
end

local prettierOrBiome = { "prettier" }
return {
  -- Use Biome instead of prettier / eslint
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["javascript"] = prettierOrBiome,
        ["javascriptreact"] = prettierOrBiome,
        ["typescript"] = prettierOrBiome,
        ["typescriptreact"] = prettierOrBiome,
        ["vue"] = prettierOrBiome,
        ["css"] = prettierOrBiome,
        ["scss"] = prettierOrBiome,
        ["less"] = prettierOrBiome,
        ["html"] = prettierOrBiome,
        ["json"] = prettierOrBiome,
        ["jsonc"] = prettierOrBiome,
        ["yaml"] = prettierOrBiome,
        ["markdown"] = prettierOrBiome,
        ["markdown.mdx"] = prettierOrBiome,
        ["graphql"] = prettierOrBiome,
        ["handlebars"] = prettierOrBiome,
        ["solidity"] = foundry_or_hardhat,
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "biome",
      },
    },
  },
}
