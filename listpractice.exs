defmodule Listpractice do
  
  #if arg is empty list, return empty list
  def square([]) do
    []
  end
  #if list not empty
  def square([head | tail]) do
    [head * head | square(tail)]
  end
end
