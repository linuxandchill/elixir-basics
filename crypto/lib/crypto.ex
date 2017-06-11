defmodule Crypto do
  @moduledoc """
  Documentation for Crypto.
  """

@doc """
Hello world.

## Examples

iex> Crypto.hello
:world

"""
def hello do
  :world
end

def testcond(x) do 
  cond do 
    x + 1 == 3 -> "Doesnt work"
    x + 3 == 6 -> "Yes works"
    true -> "None of the conditions are matched"
  end 
end 

def testcase(x) do 
  case x do 
    {:ok, item} -> "Expression matches case"
    {:error, reason} -> "NO MATCH"
    _other -> "Unknown error"
  end 
end 

@doc """

## Different ways to implement blank? function

def blank?(false), do: true
def blank?(nil), do: true
def blank?(""), do: true
def blank?(_other), do: false

def blank?(value) when value in [nil, false,""], do: true
#when returning true or false,
#see if you can accomplish using operator like 'in'
def blank?(value),do: value in [nil, false, ""] 

"""

  def length(list) do 
    length(list, 0)
  end 

  #handle case when list is empty
  defp length([], count) do
    count
  end 

  #handle case when list isn't empty
  defp length([_|t], count) do
    length(t, count+ 1)
  end 

end
