defmodule DimensionsTest do
  use ExUnit.Case
  doctest Dimensions

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "integer is returned" do 
    rectangle = %{w: 12, l: 12}
    assert is_integer(Dimensions.calc_area(rectangle))
  end 

  test "multiples width * length" do 
    rectangle = %{w: 12, l: 12}
    assert Dimensions.calc_area(rectangle) == 144
  end 
end
