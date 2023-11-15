-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Splitters
    ["<leader>sv"] = { "<C-w>v", desc = "Split window vertically" },
    ["<leader>sh"] = { "<C-w>s", desc = "Split window horizontally" },
    ["<leader>sx"] = { "<cmd>close<CR>", desc = "Close current split" },
    ["<leader>se"] = { "<C-w>=", desc = "Make splits equal size" },
    ["<leader>sH"] = { "<C-w>H", desc = "Move current split to the left" },
    ["<leader>sL"] = { "<C-w>L", desc = "Move current split to the right" },
    ["<leader>sJ"] = { "<C-w>J", desc = "Move current split down" },
    ["<leader>sK"] = { "<C-w>K", desc = "Move current split up" },

    ["<leader>nh"] = { ":nohl<CR>", desc = "Clear search highlights" },
    ["<leader>uTc"] = { ":Coverage<CR>", desc = "Fetch coverage data" },
    ["<leader>uTC"] = { ":CoverageHide<CR>", desc = "Hide code coverage" },

    ["<leader>N"] = { desc = "Neotest" },
    ["<leader>Nr"] = { ":lua require('neotest').run.run()<CR>", desc = "Run nearest test" },
    ["<leader>NR"] = { ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", desc = "Run all tests in file" },
    ["<leader>Nd"] = { ":lua require('neotest').run.run({strategy = 'dap'})<CR>", desc = "Debug nearest test" },
    ["<leader>ND"] = { ":lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<CR>", desc = "Debug all tests in file" },
    ["<leader>Ns"] = { ":lua require('neotest').summary.toggle()<CR>", desc = "Open summary" },
    ["<leader>Nq"] = { ":lua require('neotest').run.stop()<CR>", desc = "Stop neotest" },
    ["<leader>Nw"] = { ":lua require('neotest').watch.toggle()<CR>", desc = "Toggle watch" },
    ["<leader>NW"] = { ":lua require('neotest').watch.toggle(vim.fn.expand('%'))<CR>", desc = "Toggle watch entire file" },

    -- Trouble specifics
    ["<leader>x"] = { desc = "󱍼 Trouble"},
    ["<leader>xt"] = { ":TodoTrouble<CR>", desc = "Toggle todo" },
    ["<leader>xd"] = { ":TroubleToggle document_diagnostics<CR>", desc = "Document Diagnostics" },
    ["<leader>xD"] = { ":TroubleToggle workspace_diagnostics<CR>", desc = "Workspace Diagnostics" },
    ["<leader>xl"] = { ":TroubleToggle loclist<CR>", desc = "Location List" },
    ["<leader>xq"] = { ":TroubleToggle quickfix<CR>", desc = "Quickfix List" },

    -- Telescope specifics
    ["<leader>fT"] = { ":TodoTelescope<CR>", desc = "Toggle todo" },
    -- Remap scroll up and down to now center the screen
    ["<c-d>"] = { "<C-d>zz", desc = "Scroll down and center" },
    ["<c-u>"] = { "<C-u>zz", desc = "Scroll up and center" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
