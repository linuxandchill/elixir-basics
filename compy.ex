defmodule Compy do
  def comp(list) do
    for x <- list, x < 20, is_integer(x) do
      x
    end
  end
end 
