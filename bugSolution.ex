```elixir
list = [1, 2, 3, 4, 5]

# Safer approach using Enum.reduce
Enum.reduce(list, :ok, fn x, acc ->
  if x == 3 do
    {:error, x} # Return error state
  else
    IO.puts(x)
    acc
  end
end)

#Alternative handling with try/catch
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      raise "Exit condition met"
    end
    IO.puts(x)
  end)
catch
  :error, reason -> IO.puts("Caught error: #{reason}")
end
```