defmodule Recursion do 
  ##not tail call optimized
  ##def sum([head|tail]), do: head + sum(tail)
  
  @doc  """
    Adds all of the elements in the list
    and returns the total
  """
  def sum(list), do: sum(list, 0)
  def sum([], acc), do: acc
  def sum([h|t], acc) do 
    sum(t, h + acc)
  end

  #map function tail recursive
  @doc  """
    Applies the function to each element
    in the list and returns :done
  """
  def each([], _func), do: :done
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  #map function tail recursive
  @doc  """
    Applies the function to each element
    returns new list at the end
  """
  def map(list, func) do
    map(list, func, [])
  end 

  def map([], _func, acc) do 
    :lists.reverse(acc)
  end

  def map([head|tail], func, acc) do 
    map(tail, func, [func.(head) | acc])
  end

  @doc  """
    calculates length of list
  """
  def len(list), do: len(list, 0)
  def len([], count), do: count
  def len([_| tail], count) do
    len(tail, count + 1)
  end

  @doc  """
    finds factorial product of number entered
  """
  #function head, defines default args etc
  def fac(num, acc \\ 1)
  #when num is 0 return acc
  def fac(0, acc), do: acc
  #subtract 1 from num and multiply num * acc
  def fac(num, acc) do 
    fac(num - 1, num * acc)
  end

end

