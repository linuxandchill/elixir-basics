defmodule Test do 
  @nukes ['a', 'b', 'c', 'a']

  def loopy() do 
    Enum.map(@nukes, fn(x) -> IO.inspect(x) end)
  end 

end 

Test.loopy()
