defmodule Compz do

#list = [1,2,34,5]

#looped = for x <- list, do: x*x 

def loopy(str) do
  new_list= ~w(one two three four)
  for y <- new_list, do: IO.puts y <> str
end

end


