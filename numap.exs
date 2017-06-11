defmodule Listy do 
   def map(list, fun) do
    do_map(list, fun, [])
  end

  defp do_map([], _fun, acc) do
    Enum.reverse(acc)
  end

  defp do_map([h|t], fun, acc) do
    result = fun.(h)
    acc = [result | acc]
    do_map(t, fun, acc)
  end
end 
