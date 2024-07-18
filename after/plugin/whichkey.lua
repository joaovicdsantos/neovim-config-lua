local wk = require("which-key")


wk.add(
  {
    { "<leader>f", group = "File" },
    { "<leader>fb", desc = "Find Buffers" },
    { "<leader>ff", desc = "Find File" },
    { "<leader>fg", desc = "Find Grep" },
    { "<leader>fr", desc = "Find Repo" },
    { "<leader>h", group = "Git" },
    { "<leader>hp", desc = "Preview" },
    { "<leader>hs", desc = "Stage" },
    { "<leader>hu", desc = "Undo" },
    { "<leader>p", group = "Paste" },
    { "<leader>pv", desc = "Paste Saving" },
    { "<leader>s", desc = "Replace this word" },
    { "<leader>v", group = "LSP" },
    { "<leader>vc", group = "Code" },
    { "<leader>vca", desc = "Code Action" },
    { "<leader>vd", desc = "Show Diagnostics" },
    { "<leader>vr", group = "References" },
    { "<leader>vrn", desc = "Rename" },
    { "<leader>vrr", desc = "Find References" },
    { "<leader>vw", group = "Workspace" },
    { "<leader>vws", desc = "Symbols" },
    { "<leader>w", group = "Window" },
    { "<leader>wj", desc = "Jump to" },
    { "<leader>x", desc = "Now u can run!" },
  }
)
