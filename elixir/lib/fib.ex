defmodule Fib do
  @moduledoc false

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)

  def fib2(n), do: go2(n, {0, 1})
  defp go2(0, {a, _}), do: a
  defp go2(n, {a, b}), do: go2(n - 1, {b, a + b})
end
