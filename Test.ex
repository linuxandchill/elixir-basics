defmodule Test do 
  def main do 
    name = IO.gets("Enter name: ") |> String.trim
    IO.puts "Hello #{name}"
  end 
  
  def dataStuff do 
    data = 69
    #IO.puts "Is it an integer? #{is_integer(data)}"
    atomz = :atomz
    #IO.puts "Is it an atom? #{is_atom(atomz)}"
    rangez = 1..10
    Enum.to_list rangez |> Enum.map( &(&1 + 2))
  end 

  def stringz do 
    sentence = "Hello there"
    #IO.puts "#{String.slice(sentence,2,100)}"
  end

  def condz do 
    name = "John"
    cond do 
      name == IO.puts "Tyler" -> "Your name is #{name}"
      name == IO.puts "Sarah" -> "Your #{name}"
      true -> IO.puts "Your name is #{name}"
    end
  end 

    #will return error
  def casez do 
    name = "Tyr"
    case {"Hello", name} do 
      {hi, "Tyler"} -> "#{hi}, #{name}"
      _ -> "Error"
    end
  end 

  def showNums([]), do: nil

  def showNums([h|tail]) do 
    IO.puts h
    showNums(tail)
  end 

  def mapz do 
    ages = %{John: 12, Mary: 56, Oliver: 42}
    newAges = Map.put_new(ages, Jess, 33)
    newAges
    #Map.delete,, use it to drop single key
    #Map.drop,, use it to drop multiple keys
    dropt  = Map.drop(newAges, [:Mary, :Oliver])
    dropt
  end 

  def mappy do 
    ages = %{John: 12, Mary: 56, Oliver: 42}
    plusTen = Enum.map(ages, fn({k,v}) -> {k, v + 10} end)

  end

  def compz do 
    list = [1,2,3]
    newList = for n <- list, rem(n,2) == 0, do: n + 5
    IO.inspect newList, char_lists: :as_list
  end 

end 














