defmodule Dimensions do
  def calc_area(%{w: width, l: length}) do 
    width * length 
  end 
end

defmodule Shapes do 
  import Dimensions, only: [calc_area: 1]
  def execute(shape) when is_map(shape) do 
    shape
    |> calc_area
  end 
end 
