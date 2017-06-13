defmodule PingPong do
  def handle_msg(:ping, from, _state) do
    send from, :pong
  end

  def handle_msg(:pong, from, _state) do 
    send from, :ping
  end
end

# ping_pong = Server.start(PingPong)
# send ping_pong, :ping
