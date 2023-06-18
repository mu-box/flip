-- -*- mode: lua; tab-width: 2; indent-tabs-mode: 1; st-rulers: [70] -*-
-- vim: ts=4 sw=4 ft=lua noet
return {
  name = "fliping/flip",
  version = "0.2.1",
  author = "daniel@pagodabox.com",
  dependencies =
  	{"luvit/luvit@1.9.1"
  	,"flip/lever@0.2.0"},
  files = {
    "**.lua",
    "**.txt",
    "**.so",
    "!examples",
    "!tests",
    "!.DS_Store"
  }
}


