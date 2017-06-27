defmodule Pong do 
  use GenServer

  #second arg to start_link/3 is initial state
  def start() do 
    {:ok, pid} = GenServer.start_link(__MODULE__, [])
    pid
  end

 

end
