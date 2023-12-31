
-- vim.g.lsp_zero_api_warnings = 0
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader><F12>", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader><F2>", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'angularls',
    'html',
    'cssls',
    'stylelint_lsp',
    'jsonls',
    'lua_ls',},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
    tsserver = function()
      require('lspconfig').tsserver.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
    end,
    stylelint_lsp = function()
      require('lspconfig').stylelint_lsp.setup({
        filetypes = { "css", "scss" },
        settings = {
          stylelintplus = {
            autoFixOnSave = true
          }
        }
      })
    end,
    eslint = function()
      require('lspconfig').eslint.setup({
        settings = {
          linting = {
            eslint = {
              autoFixOnSave = true
            }
          }
        }
      })
    end,
  }
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
})
