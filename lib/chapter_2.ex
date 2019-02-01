defmodule Geom do
  @moduledoc """
  this is all the chapter 2 stuff that I've done
"""

  @doc """
  - to add a default value to a function, use the \\ after it in the definition
  """
  def area(len \\ 1, wid \\ 1) do
    len * wid

  end


end

defmodule Test do
  @doc """
  here's an interesting demonstration of how things gets funny when when the default one isn't last
  Test.sum(1) ---> 11 (this one thinks a is 3, b is the value given 1 and c is the default value 7)
  Test.sum(1, 1) ---> 9 (this one think a is 1 and b is 1 and gives c is the default)
  Test.sum(1, 1, 1) ---> 3 (this one is normal)
  Test.sum() ---> error
"""
  def sum( a \\ 3, b, c \\ 7) do
    a + b + c
  end
end