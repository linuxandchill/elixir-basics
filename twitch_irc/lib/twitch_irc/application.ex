defmodule TwitchIrc.Application do
  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: TwitchIrc.Worker.start_link(arg1, arg2, arg3)
      # worker(TwitchIrc.Worker, [arg1, arg2, arg3]),
      # first arg to worker is Process NAME
      #worker(ExIrc.Client, [[], [name: :irc_client]]),
      #Genserver handlers
      #worker(TwitchIrc, []), 
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TwitchIrc.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
