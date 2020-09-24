package = "kong-plugin-jwt-claims-headers"
version = "1.0-2"
source = {
  url = "git+https://github.com/wshirey/kong-plugin-jwt-claims-headers.git"
  tag = "V1.0-2"
}
description = {
  summary = "A Kong plugin that will expose JWT claims as request headers",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-claims-headers.handler"] = "handler.lua",
    ["kong.plugins.jwt-claims-headers.schema"]  = "schema.lua"
  }
}
