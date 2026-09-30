defmodule Goatmire do
  @moduledoc """
  A tiny goat farm, used to demo stacked pull requests with `gt`.
  """

  @doc """
  Greets a goat by name.

  ## Examples

      iex> Goatmire.greet("Gunnar")
      "Hello, Gunnar!"

  """
  def greet(name), do: "Meeeee 2, #{name}!"
end
