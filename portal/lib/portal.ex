defmodule Portal do
  defstruct [:left, :right]

  @doc """
    begins transfer from left 2 right 
  """
  def transfer(left, right, data) do
    for item <- data do 
      Portal.Door.push(left, item)
    end

    %Portal{left: left, right: right}
  end

end
