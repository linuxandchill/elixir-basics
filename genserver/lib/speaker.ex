defmodule Speak do 
  def handle_msg({:say, msg}, _from, _state) do 
    IO.puts msg
  end

  def handle_msg(_other, _from,_state ) do 
    false
  end
end
