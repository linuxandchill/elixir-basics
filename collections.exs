defmodule Collex do 
  oldList = [3.14, :pie, "Apple"]

  newList =  ["manzana"] ++ oldList 

  ##tl
  head = hd oldList 

  kList = [{:foo, "bar"}, {:hello, "world"}, {:foo, "baz"}]

  #maps use hashrockets, but when keys are atoms u can use colon
firstMap = %{one: "one", two: "two"}
newMap = %{firstMap| one: "UNO"}
ultraNewMap = Map.put(newMap, :three, "three")
IO.inspect ultraNewMap
IO.inspect ultraNewMap.three
end


