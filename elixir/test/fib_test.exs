defmodule FibTest do
  use ExUnit.Case
  doctest Fib

  test "fib() should return the right results" do
    assert Fib.fib(0) == 0
    assert Fib.fib(1) == 1
    assert Fib.fib(10) == 55
  end

  test "fib2() should return the right results" do
    assert Fib.fib2(0) == 0
    assert Fib.fib2(1) == 1
    assert Fib.fib2(10) == 55
    assert Fib.fib2(100) == 354224848179261915075
    assert Fib.fib2(1000) == 43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875
  end
end
