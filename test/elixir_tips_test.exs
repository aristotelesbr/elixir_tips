defmodule ElixirTipsTest do
  use ExUnit.Case
  doctest ElixirTips

  test "greets the world" do
    assert ElixirTips.hello() == :world
  end
end
