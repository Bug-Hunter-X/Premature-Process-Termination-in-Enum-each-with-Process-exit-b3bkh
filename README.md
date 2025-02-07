# Elixir - Premature Process Termination in Enum.each

This example highlights a subtle but important issue in Elixir when using `Process.exit` within `Enum.each`.  Improper use can lead to unexpected process termination before all list elements are processed.  The solution showcases a safer alternative using `Enum.reduce` or error handling within the function.