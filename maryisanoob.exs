defmodule MaryNoob do

  def getAll(x,y) do 
    x..y
    |> Stream.filter(fn n -> rem(n, 3) == 0 or rem(n, 5) == 0 end)
    |> Enum.sum
  end 

end 
