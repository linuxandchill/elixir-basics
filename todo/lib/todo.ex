defmodule Exercise.ToDoList do
  use GenServer
  
  def start(list) do
    {:ok, to_do_list} = GenServer.start(__MODULE__, list)
    to_do_list
  end

  def add_item(to_do_list, item) do
    GenServer.cast(to_do_list, {:add_item, item})
  end

  def remove_item(to_do_list, item) do
    GenServer.cast(to_do_list, {:remove_item, item})
  end

  def list(to_do_list) do
    GenServer.call(to_do_list, {:list})
  end

  def handle_cast({:add_item, item}, list) do
    {:noreply, [item|list]}
  end

  def handle_cast({:remove_item, item}, list) do
    {:noreply, List.delete(list, item)}
  end

  def handle_call(:list, _, list) do
    {:reply, list, list}
  end
end
