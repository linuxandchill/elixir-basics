defmodule Listpractice do
  
  #if arg is empty list, return empty list
  def square([]) do
    []
  end
  #if list not empty return 
  #new_head = old_head x itself
  #new_tail = list of squares of the tail
  def square([head | tail]) do
    [head * head | square(tail)]
  end
end
