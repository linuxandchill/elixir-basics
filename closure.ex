defmodule Funcs do

  animal = "Dog"

  talk = fn() -> IO.puts(animal) end

  #print Dog
  talk.()
  #rebind animal
  animal = "Cat"
  #print Cat
  IO.puts animal
  #print Dog cuz closure
  talk.()
end
