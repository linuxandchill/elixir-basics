defmodule Talk.Supervisor do
  use Supervisor

  def start_link do 
    Supervisor.start_link(__MODULE__,[])
  end
end
