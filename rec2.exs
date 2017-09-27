defmodule Fact do 

  #not tail-call optimized
  #def fac(num) when num <= 1, do: 1
  #def fac(num), do: num * fac(num - 1) 
  
  def fac(num, acc \\ 1)

  def fac(0, acc) do 
    acc
  end

  def fac(num, acc) do 
    fac(num-1, acc * num )
  end

end
