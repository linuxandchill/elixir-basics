defmodule Portal.Door do
  @doc """
  -starts a door w  given color
  -using color instead of PID to id a door
  """
  def start_link(color) do 
    Agent.start_link(fn -> [] end, name: color)
  end

  @doc """
    get current data in door
  """
  def get(door) do 
    Agent.get(door, fn list -> list end )
  end

  @doc """
  push value into door
  """
  def push(door, value) do 
    Agent.update(door, fn list-> [value|list] end)
  end

  @doc """
  pops value from door
  returns {:ok, value } if there is value
  returns :error if hole is empty
  """
  def pop(door) do
    Agent.get_and_update(door, fn 
         [] -> {:error, []}
         [h|t] -> {{:ok, h}, t}
    end
       )
  end
end
