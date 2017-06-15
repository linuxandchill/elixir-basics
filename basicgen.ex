defmodule Basic do
  use GenServer

  def start() do 
    GenServer.start(__MODULE__, "HI BITCH")
  end

  #implied call
  #used to set initial state of process
  #must reposnd w {:ok, data}
  def init(data) do 
    #IO.inspect data
    hello = %{hi: data}
    {:ok, hello}
  end

  

end
