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

  @doc """
    Pushes data to the right
  """
  def push_right(portal) do
    case Portal.Door.pop(portal.left) do
      :error -> :ok
      {:ok, h} -> Portal.Door.push(portal.right, h)
    end

    # return portal
    portal
  end
end
