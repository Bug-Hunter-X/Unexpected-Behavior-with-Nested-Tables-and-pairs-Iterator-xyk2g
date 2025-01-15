local function foo(t)
  local function dfs(table)
    for k, v in pairs(table) do
      if type(v) == "table" then
        dfs(v)
      end
    end
  end
  dfs(t)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
print(t.b.d.e)