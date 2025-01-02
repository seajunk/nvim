local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  {       "https://github.com/morhetz/gruvbox.git",
  config = function()
    vim.cmd("colorscheme gruvbox")
  end
},
{
    "https://github.com/voldikss/vim-floaterm.git",

},
{
  "https://github.com/vim-airline/vim-airline.git",
},
{
  "https://github.com/nvim-treesitter/nvim-treesitter.git",
  config = function() 
    require("nvim-treesitter.configs").setup({
      highight = {
        enable = true
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
          node_incremental = "<Leader>si",
          scope_incremental = "<Leader>sc",
          node_decremental = "<Leader>sd",
        },
      },
    })
  end

},
{
  "https://github.com/neovim/nvim-lspconfig.git",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup({})
    lspconfig.asm_lsp.setup({})
  end

},
{
    "williamboman/mason.nvim",
    config = function()
        local masonconfig = require("mason").setup();
    end

},
--[[
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" }
  },
},
--]]
--[[
{
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
  end
}
--]]
--[[
{
  "https://github.com/ggandor/leap.nvim",
  config = function()
    require('leap')
  end
}
--]]
--[[
{
  'smoka7/hop.nvim',
  version = "*",
  opts = {
    keys = 'etovxqpdygfblzhckisuran'
  }
}
--]]
--[[
{
  "https://github.com/jinh0/eyeliner.nvim.git",
  config = function()
    require("eyeliner").setup({
      highlight_on_key = true,
      dim = false,
      max_length = 9999,
      default_keymaps = true

    })
  end
}
--]]
})
