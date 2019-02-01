defmodule Area do
  @moduledoc """
  we're doing pattern matching stuff mostly here. The chapter is called: Atoms, Tuples, and Pattern Matching.
  Guard


"""
  @doc """
  when keyword is being used here as a guard! you can read about guards here: https://tinyurl.com/ybw49fvr
  this function will only run when the width AND the length is more than 0
  """
  defp area(:rectangle, len, wid) when wid > 0 and len > 0 do
      len * wid
  end


  defp area(:triangle, len, wid) when wid > 0 and len > 0 do
    len * wid / 2

  end

  defp area(:ellipse, len, wid) when wid > 0 and len > 0 do
    :math.pi() * len * wid
  end

  @doc """
  this has the same arity as the rest of them so when it can't do the others, it'll just come in here and give us 0.
  Note: generally speaking, we don't want to catch ALL errors like this.
  """
  defp area(_, _, _) do
    0
  end

  @doc """
  Elixir is really good at decomposing this tuple for us. Even though, we really and truly have a single argument,
  elixir understands whats going on, and allows us to use the individuals arguments in the body of the function
  """
  def area({shape, wid, len}) do
    area(shape, wid, len)
  end
  

end