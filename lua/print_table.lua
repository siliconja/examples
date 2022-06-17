#!/usr/bin/env lua

local cjson = require 'cjson'

t = {x=0, y=0, label="console"}

print('table t: '..tostring(t))
print('table t: '..cjson.encode(t))

