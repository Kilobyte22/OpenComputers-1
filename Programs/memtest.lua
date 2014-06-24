-- Startup Vars
version = "1.0.0"
isStable = true
isDebug = true

-- Requirements
c = require("computer")
m = require("math")
term = require("term")
os = require("os")

-- Startup Program
term.clear()
term.setCursor(1, 1)
print("memtest.lua copyright (c) PotatoTrumpet")
print("You may distribute this as long as you do not make a profit off of it")
print("Version: "..version)
if isStable == false then
  print("WARNING: This version is NOT stable")
elseif isStable == true then
  if isDebug == true then
    print("NOTICE: This version is stable")
  end
else
  error("isStable is not boolean", 0)
end

-- Get RAM
tMem = c.totalMemory()
fMem = c.freeMemory()
totalMem = tMem/1024
xfreeMem = fMem/1024
freeMem = m.floor(xfreeMem -.5)
usedMem = totalMem-freeMem
if isDebug == true then
  print("Using..usedMem .."k/"..totalMem.."k")
  print("Free Memory: "..freeMem.."k/"..totalMem.."k")
end
if totalMem <= 192 then
  error("Insuffecent Memory", 0)
elseif freeMem <= 192 then
  error("Insuffecent Memory", 0)
end

error("EOF", 0)