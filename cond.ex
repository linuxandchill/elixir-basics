defmodule DidItWork do
  def check(atom) do
    case atom do
      :ok    -> "it worked!"
      :error -> "it didn't work"
      _      -> "I'm not sure if it worked"
    end
  end
end
