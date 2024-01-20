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
  }
}, { prefix = "<leader>" })
