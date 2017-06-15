defmodule Rec do

  def printy(word, x) when x <= 1 do
    IO.puts word
  end

  def printy(word,x) do
    IO.puts word
    printy(word, x-1)
  end

end
