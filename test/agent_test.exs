defmodule AgentTest do
  use ExUnit.Case, async: true

  test "user_data must be contains :age and :name keys" do
    {:ok, pid} = Agent.start_link(fn -> %{name: "Ari", age: 33} end)

    user_data = Agent.get(pid, fn v -> v end)

    assert Map.keys(user_data) == [:age, :name]
  end
end
