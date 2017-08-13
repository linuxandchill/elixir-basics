defmodule MyList do 
  def delete_all(list, el) do 
    _delete_all(list, el, [])
    |> Enum.reverse
  end

  def _delete_all([head | tail], el, new_list) 
    when head === el do 
      _delete_all(tail, el, new_list)
  end

  def _delete_all([head | tail], el, new_list ) do 
    _delete_all( tail, el, [head | new_list] )
  end

  def _delete_all([], le, new_list) do 
    new_list
  end
end
