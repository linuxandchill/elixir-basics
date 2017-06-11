defmodule LongList do

  def print_list() do 
    list = ~w(red yellow green purple)
    list 
    |> Enum.map(fn x -> IO.puts x end)
  end

  def read_file(filename) do 
    File.read(filename)
  end
end
