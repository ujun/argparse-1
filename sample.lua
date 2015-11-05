local argparse = require "src/argparse"

local parser = argparse("script", "An example.")
parser:argument("input", "Input file.")
parser:option("-o --output", "Output file.", "a.out")
-- parser:option("-I --include", "Include locations."):count("*")
parser:option("-p --piyo", "Include locations.")
parser:option("-m --moge", "Include locations.")
parser:option("-f --fuga", "Include locations.")

local args = parser:parse()
print(args.output)
print(args.input)
print(args.piyo)
print(args.moge)
print(args.fuga)

local array = {key = 3}
-- print(array.key)

for item in ipairs(array) do
  print(item)
end
