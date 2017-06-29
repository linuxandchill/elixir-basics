defmodule Fact do 
  def fac(num) when num <= 1, do: 1
  #not tail-call optimized
  def fac(num), do: num * fac(num - 1) 

end
