defmodule TrackState do
  def loop(state \\ []) do
    receive do
      {:push, item} -> state = [item | state]
      other -> {:error, "#{other} is not a valid"}
    end

    IO.inspect state
    loop(state)
  end
end
