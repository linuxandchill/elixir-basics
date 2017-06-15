defmodule Server do 

  def handle_cast({:add, item}, list) do
    {:noreply, [item|list]}
  end
  
  def handle_cast({:delete, item}, list) do 
    {:noreply, List.delete(list, item)}
  end

  def handle_call(:list, _, list) do
    {:reply, list, list}
  end
end
