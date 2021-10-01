defmodule DummyAppTest do
  use ExUnit.Case
  doctest DummyApp

  test "greets the world" do
    assert DummyApp.hello() == :world
  end
end
