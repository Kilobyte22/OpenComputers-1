-- Startup Vars
local version = "1.0.0"
local isStable = true
local isDebug = true

-- Requirements
local c = require("computer")
local m = require("math")
local term = require("term")
local os = require("os")

-- Startup Program
term.clear()
term.setCursor(1, 1)
print("memtest.lua copyright (c) PotatoTrumpet")
print("You may distribute this as long as you do not make a profit off of it")
print("Version: "..version)
if isStable then
  if isDebug then
    print("NOTICE: This version is stable")
  end
else
  print("WARNING: This version is NOT stable")
end

-- Get RAM
local tMem = c.totalMemory()
local fMem = c.freeMemory()
local totalMem = tMem / 1024
local xfreeMem = fMem / 1024
local freeMem = m.floor(xfreeMem - .5)
local usedMem = totalMem - freeMem
if isDebug then
  print("Using..usedMem .."k/"..totalMem.."k")
  print("Free Memory: "..freeMem.."k/"..totalMem.."k")
end
if totalMem <= 192 or totalMem <= 192 then
  error("Insuffecent Memory", 0)
end
