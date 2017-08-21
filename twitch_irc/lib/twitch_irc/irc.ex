##defmodule TwitchIrc.Irc do 
##  use GenServer
##  
##  #allows for referring to TwitchIrc.Api as Api
##  alias TwitchIrc.Api
##
##  # All the necessary config properties to connect to the IRC server
##  @host Application.get_env(:twitch_irc, :irc_host)
##  @port Application.get_env(:twitch_irc, :irc_port)
##  @pass "oauth:" <> Application.get_env(:twitch_irc, :oauth_access_token)
##  @name Application.get_env(:twitch_irc, :irc_name)
##
##  #find Kappas
##  @kappa_regex Regex.compile!("Kappa")
##
##  #state of GenServer
##  def start_link(state \\ %State{}) do 
##    GenServer.start_link(__MODULE__, state, name: __MODULE__)
##  end
##
##  #add as ExIrc handlers, try to connect
##  def init(state) do 
##    ExIrc.Client.add_handler(:irc_client, self())
##    ExIrc.Client.connect_ssl(:irc_client, @host, @port)
##    {:ok, state}
##  end
##
##  #logon once connected
##  def handle_info({:connected, _server, _port}, state) do 
##    ExIrc.Client.logon :irc_client, @pass, @name, @name, @name
##    {:noreply, state}
##  end
##
##  #follow top channels
##  def handle_info(:logged_in, state) do 
##    send(self(), :get_top_channels)
##    {:noreply, state}
##  end
##end
