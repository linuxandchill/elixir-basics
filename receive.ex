defmodule Say do
  def say do 
    receive do 
        {:say, msg} -> 
          IO.puts msg
          say
        _default ->
          say
    end
  end
end

#iex > pid = spawn(Say, :say, [])
#iex > send pid, {:say, "HELLO"}
