-- lua/custom/mappings
local M = {}

-- add this table only when you want to disable default keys
M.disable = {
  n = {
    ["<leader>x"] = { "" },
    ["<leader>ca"] = { "" },
    ["<leader>cc"] = { "" },
    ["<leader>cm"] = { "" },
    ["<leader>ra"] = { "" },
    ["<leader>rn"] = { "" },
    ["<leader>v"] = { "" },
  },
}

M.generals = {
  n = {
    -- generals
    ["<leader>h"] = { "<cmd>nohlsearch<CR>", "no highlight" },
    ["<leader>w"] = { "<cmd>w<CR>", "save file" },
    ["<leader>q"] = { "<cmd>q<CR>", "close nvim" },

    -- Navigate buffers
    ["<leader>c"] = { "<cmd>Bdelete<CR>", "Close window", opts = { nowait = true } },
    [">b"] = { "<cmd>BufferLineMoveNext<cr>", "Move buffer tab right", opts = { nowait = true } },
    ["<b"] = { "<cmd>BufferLineMovePrev<cr>", "Move buffer tab left", opts = { nowait = true } },
    ["<S-l>"] = { "<cmd>BufferLineCycleNext<cr>", "Next buffer tab" },
    ["<S-h>"] = { "<cmd>BufferLineCyclePrev<cr>", "Previous buffer tab" },

    -- NvimTree
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "NvimTree toggle" },
    ["<leader>o"] = { "<cmd>NvimTreeFocus<CR>", "NvimTree focus" },

    -- GitSigns
    ["<leader>gj"] = {
      function()
        require("gitsigns").next_hunk()
      end,
      "Next git hunk",
    },
    ["<leader>gk"] = {
      function()
        require("gitsigns").prev_hunk()
      end,
      "Previous git hunk",
    },
    ["<leader>gl"] = {
      function()
        require("gitsigns").blame_line()
      end,
      "View git blame",
    },
    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview git hunk",
    },
    ["<leader>gh"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset git hunk",
    },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_buffer()
      end,
      "Reset git buffer",
    },
    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage git hunk",
    },
    ["<leader>gu"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "Unstage git hunk",
    },
    ["<leader>gd"] = {
      function()
        require("gitsigns").diffthis()
      end,
      "View git diff",
    },

    -- Go next and prev diagnostic
    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "Diagnostic go previous",
    },
    ["d]"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "Diagnostic go next",
    },

    -- Telescope
    ["<leader>gt"] = {
      function()
        require("telescope.builtin").git_status()
      end,
      "Git status",
    },
    ["<leader>gb"] = {
      function()
        require("telescope.builtin").git_branches()
      end,
      "Git branches",
    },
    ["<leader>gc"] = {
      function()
        require("telescope.builtin").git_commits()
      end,
      "Git commits",
    },
    ["<leader>ff"] = {
      function()
        require("telescope.builtin").find_files()
      end,
      "Search files",
    },
    ["<leader>fF"] = {
      function()
        require("telescope.builtin").find_files { hidden = true, no_ignore = true }
      end,
      "Search all files",
    },
    ["<leader>fb"] = {
      function()
        require("telescope.builtin").buffers()
      end,
      "Search buffers",
    },
    ["<leader>fh"] = {
      function()
        require("telescope.builtin").help_tags()
      end,
      "Search help",
    },
    ["<leader>fm"] = {
      function()
        require("telescope.builtin").marks()
      end,
      "Search marks",
    },
    ["<leader>fo"] = {
      function()
        require("telescope.builtin").oldfiles()
      end,
      "Search history",
    },
    ["<leader>sb"] = {
      function()
        require("telescope.builtin").git_branches()
      end,
      "Git branches",
    },
    ["<leader>sk"] = {
      function()
        require("telescope.builtin").keymaps()
      end,
      "Search keymaps",
    },

    -- LSP
    ["<leader>lI"] = { "<cmd>Mason<cr>", "LSP installer" },
    ["<leader>li"] = { "<cmd>LspInfo<cr>", "LSP information" },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.formatting_sync()
      end,
      "Format file",
    },
    ["<leader>lS"] = { "<cmd>AerialToggle<cr>", "Symbols outline" },
    ["<leader>ls"] = {
      function()
        local aerial_avail, _ = pcall(require, "aerial")
        if aerial_avail then
          require("telescope").extensions.aerial.aerial()
        else
          require("telescope.builtin").lsp_document_symbols()
        end
      end,
      "Search symbols",
    },
    ["<leader>lG"] = {
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      "Search workspace symbols",
    },
    ["<leader>lR"] = {
      function()
        require("telescope.builtin").lsp_references()
      end,
      "Search references",
    },
    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
    ["<leader>lD"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "Search diagnostics",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp action",
    },

    -- Packer
    ["<leader>pc"] = { "<cmd>PackerCompile<cr>", "Packer Compile" },
    ["<leader>pi"] = { "<cmd>PackerInstall<cr>", "Packer Install" },
    ["<leader>ps"] = { "<cmd>PackerSync<cr>", "Packer Sync" },
    ["<leader>pS"] = { "<cmd>PackerStatus<cr>", "Packer Status" },
    ["<leader>pu"] = { "<cmd>PackerUpdate<cr>", "Packer Update" },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M
