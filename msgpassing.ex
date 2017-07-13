defmodule Passing do 
  def listen do 
    receive do
      {:ok, "hello"} -> IO.puts "World"
      {:okas} -> IO.puts "okassi"
  end

  listen 
  end

  def talk do 
    receive do 
      {:talk, "im"} -> IO.puts "talking"
  end
  talk
  end

end
