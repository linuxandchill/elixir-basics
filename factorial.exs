defmodule Fact do
  def of(0), do: 1
  def of(x), do: x * of(x - 1)

  def sum(0), do: 0
  def sum(x), do: x + sum(x - 1)
end
