defmodule Exprac do 

  def prac do 
    1..999
    |> Enum.filter(fn n -> rem(n, 3) == 0 or rem(n, 5) == 0 end)
    |> Enum.sum
    |> IO.puts
  end

  def euler1 do 
    1..999
    |> Enum.filter(fn n -> rem(n,3) == 0 or rem(n,5) == 0 end)
    |> Enum.sum
    |> IO.puts
  end 

  def fizzbuzz(n) when rem(n, 15) == 0, do: "#{n}: FizzBuzz" 
  def fizzbuzz(n) when rem(n, 5) == 0, do: "Fizz"
  def fizzbuzz(n) when rem(n,3) == 0, do: "Buzz"
  def fizzbuzz(n), do: n

end
