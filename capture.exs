listy = [1,2,3,4]

IO.inspect Enum.map listy, &(&1 + 2)

IO.inspect Enum.each listy, &(IO.inspect &1)


