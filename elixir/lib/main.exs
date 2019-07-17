{n, ""} = System.argv()
|> Enum.at(0)
|> Integer.parse()

{n2, ""} = System.argv()
|> Enum.at(1)
|> Integer.parse()

{n3, ""} = System.argv()
|> Enum.at(2)
|> Integer.parse()

{time, result} = :timer.tc(fn -> Fib.fib(n) end)
IO.puts("fib (#{time/1_000_000}): #{result}")

{time2, result2} = :timer.tc(fn -> Fib.fib2(n2) end)
IO.puts("fib2 (#{time2/1_000_000}): #{result2}")

{time3, result3} = :timer.tc(fn -> Fib.fib3(n3) end)
IO.puts("fib3 (#{time3/1_000_000}): #{result3}")
