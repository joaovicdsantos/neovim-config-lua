local wk = require("which-key")


wk.register({
  x = "Now u can run!",
  s = "Replace this word",
  f = {
    name = "File",
    f = "Find File",
    g = "Find Grep",
    b = "Find Buffers",
    r = "Find Repo",
  },
  h = {
    name = "Git",
    p = "Preview",
    s = "Stage",
    u = "Undo"
  },
  p = {
    name = "Paste",
    v = "Paste Saving"
  },
  w = {
    name = "Window",
    j = "Jump to",
  },
  v = {
    name = "LSP",
    d = "Show Diagnostics",
    c = {
      name = "Code",
      a = "Code Action"
    },
    r = {
      name = "References",
      n = "Rename",
      r = "Find References",
    },
    w = {
      name = "Workspace",
      s = "Symbols"
    }
  }
}, { prefix = "<leader>" })
