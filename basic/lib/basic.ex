defmodule Basic do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  #sets initial state
  def init(initial_data) do 
    IO.puts "I am being called"
    {:ok, initial_data}
  end 
end
