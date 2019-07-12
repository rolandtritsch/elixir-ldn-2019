import org.scalatest.FlatSpec

class FibSpec extends FlatSpec {
  "fib()" should "return the right results" in {
    assert(Fib.fib(0) == 0)
    assert(Fib.fib(1) == 1)
    assert(Fib.fib(10) == 55)
  }
}
