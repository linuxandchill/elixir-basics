defmodule Hello do
  @moduledoc """
  Documentation for Hello.
  """
  def hello do
    :world
  end

  def div(_, 0) do
    :no_dice
  end

  def div(a, b) do
    a / b
  end

  def req do 
    get_request = fn(id) -> 
      :timer.sleep(1000)
      "{user:{id: #{id}}}"
    end 

    get_request.(123)
  end 

end
