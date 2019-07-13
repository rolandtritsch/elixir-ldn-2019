import org.scalatest.FlatSpec

class FibSpec extends FlatSpec {
  "fib()" should "return the right results" in {
    assert(Fib.fib(0) == 0)
    assert(Fib.fib(1) == 1)
    assert(Fib.fib(10) == 55)
  }

  "fib2()" should "return the right results" in {
    assert(Fib.fib2(0) == scala.math.BigInt("0"))
    assert(Fib.fib2(1) == scala.math.BigInt("1"))
    assert(Fib.fib2(10) == scala.math.BigInt("55"))
    assert(Fib.fib2(100) == scala.math.BigInt("354224848179261915075"))
    assert(Fib.fib2(1000) == scala.math.BigInt("43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875"))
  }
}
