defmodule GoatmireTest do
  use ExUnit.Case
  doctest Goatmire

  test "greets a goat by name" do
    assert Goatmire.greet("Gunnar") == "Hello, Gunnar!"
  end
end
