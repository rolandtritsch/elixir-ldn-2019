defmodule Fib do
  @moduledoc false

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)

  def fib2(n), do: fib2p(n, {0, 1})
  defp fib2p(0, {a, _}), do: a
  defp fib2p(n, {a, b}), do: fib2p(n - 1, {b, a + b})

  def fib3(n), do: fibs() |> Enum.at(n)
  defp fibs(), do: Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
end
