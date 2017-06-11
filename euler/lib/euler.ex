defmodule EulerTwo do
  alias Math.Fibonacci
  import Integer, only: [is_even: 1]

  def solve do
    Fibonacci.under(4_000_000)
    |> Enum.filter(&is_even/1)
    |> Enum.sum
  end
end
