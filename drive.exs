defmodule Driver do
  def can_drive?(age, "US") when age >= 16, do: "u can drive"
  def can_drive?(age, "CR") when age >= 18, do: "si, puede manejar" 
end
