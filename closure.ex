defmodule Funcs do

  animal = "Dog"

  talk = fn() -> IO.puts(animal) end

  #print Dog
  talk.()
  #rebind animal
  animal = "Cat"
  #print Cat
  IO.puts animal
  #prints Dog cuz closure
  talk.()

  list = [1,2,3,4]
  sum = Enum.sum(list)

  IO.puts sum


end
