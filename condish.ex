defmodule Condish do

  def test(x) do 
    if x > 0 do
      IO.puts "greater than zero"
    else
      IO.puts "less than zero"
    end
  end

  def color_checker(color) do
    cond do
      color == :green -> IO.puts "green"
      color == :red -> IO.puts "red"
      color == :blue -> IO.puts "blue"
      true -> IO.puts "no color"
    end
  end

  def meal_checker(carb, protein) do 
    case {carb, protein} do 
      {:rice, :beans} -> IO.puts "Rice n beans"
      {:rice, _} -> IO.puts "Rice with anything"
      _ -> IO.puts "Starving tonight"
    end
  end
end
