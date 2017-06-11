defmodule Control do 
  def casey() do 
    case {:greeting, "Hola"} do 
      {:greeting, phrase} -> IO.inspect phrase
      {:error} -> "Wrong"
      _ -> "Default"
    end 
  end 

  '''
  def condy() do 
    cond do 
      7 + 1 == 0 -> IO.inspect "Wrong"
      ##catch all is important
      true -> IO.inspect "Default"
    end
  end 
  '''

  def withy() do 
    user = %{first: "TYler", last: "Munyon"}
    with {:ok, first} <- Map.fetch(user, :first), 
         {:ok, last} <- Map.fetch(user, :last), 
         do: IO.inspect first <> ", " <> last
  end 
end 
Control.withy()
