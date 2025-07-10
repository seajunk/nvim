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
        lspconfig.hls.setup({})
        --lspconfig.asm_lsp.setup({})
    end

},
--[[
{
    "https://github.com/nvim-tree/nvim-tree.lua",
    config = function()
        local api = require("nvim-tree.api")

        local function my_on_attach(bufnr)

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
        end

        -- opens buffer but keeps focus on tree
        local function open()
            api.node.open.edit(node)
            api.tree.focus()            
        end
        vim.keymap.set("n", "<Cr>", open)

        require("nvim-tree").setup{
            renderer = {
                icons = {
                    git_placement = "before",
                    modified_placement = "after",
                    hidden_placement = "after",
                    diagnostics_placement = "signcolumn",
                    bookmarks_placement = "signcolumn",
                    padding = " ",
                    symlink_arrow = " ➛ ",
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = true,
                        git = true,
                        modified = true,
                        hidden = false,
                        diagnostics = true,
                        bookmarks = true,
		},
	},
},           
update_focused_file = {
	enable = true,
	update_root = {
		enable = false,
		ignore_list = {},
	},
	exclude = false,
},
on_attach = my_on_attach,
	} 
end
},
--]]
{
    "https://github.com/nvim-lua/plenary.nvim",
},
{
    "https://github.com/nvim-treesitter/nvim-treesitter",
    config = function()

        require'nvim-treesitter.configs'.setup {
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            --auto_install = true,

            -- List of parsers to ignore installing (or "all")
            --ignore_install = { "javascript" },

            ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

            highlight = {
                enable = true,

                -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
                -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
                -- the name of the parser)
                -- list of language that will be disabled
                --disable = { "c", "rust" },
                -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                --additional_vim_regex_highlighting = false,
            },
        }
    end
},
{
    "https://github.com/nvim-telescope/telescope.nvim",
    config = function()
        local actions = require("telescope.actions")

        require("telescope").setup({
            defaults = {
                file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
                mappings = {
                    i = {
                        -- using space might be a bad idea 
                        --[" "] = actions.select_default,
                        ["<M-f>"] = actions.close,
                        ["<M-g>"] = actions.close,
                    },
                    n = {
                        -- using space might be a bad idea 
                        ["<M-f>"] = actions.close,
                        ["<M-g>"] = actions.close,
                    },
                },
                {},
            },
        })
    end
},
{
    "mrjones2014/smart-splits.nvim",
},
{
    "https://github.com/mbbill/undotree",
},
{
    "https://github.com/SirVer/ultisnips",
},
{
  "hrsh7th/nvim-cmp",
},
{
      'mrcjkb/haskell-tools.nvim',
  version = '^6', -- Recommended
  lazy = false, -- This plugin is already lazy
}
})
