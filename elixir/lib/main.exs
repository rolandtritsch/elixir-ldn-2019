{n, ""} = System.argv()
|> hd()
|> Integer.parse()

IO.puts("#{Fib.fib(n)}")
