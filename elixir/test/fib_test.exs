defmodule FibTest do
  use ExUnit.Case
  doctest Fib

  test "fib() should return the right results" do
    assert Fib.fib(0) == 0
    assert Fib.fib(1) == 1
    assert Fib.fib(10) == 55
  end
end
