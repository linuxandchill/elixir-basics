defmodule Team do
  defstruct employees: nil

  defimpl Enumerable do
    def count(%Team{employees: employees}), do: {:ok, length(employees)}
  end
end
