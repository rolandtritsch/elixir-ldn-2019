object Fib {
  def fib(n: Int): Int = n match {
    case 0 => 0
    case 1 => 1
    case _ => fib(n - 1) + fib(n - 2)
  }

  import scala.math.BigInt

  def fib2(n: Int): BigInt = {
    def go(n: Int, acc: (BigInt, BigInt)): BigInt = n match {
      case 0 => acc._1
      case _ => go(n - 1, (acc._2, acc._1 + acc._2))
    }

    go(n, (0, 1))
  }

  def fib3(n: Int): BigInt = {
    def fibs(a: BigInt, b: BigInt): Stream[BigInt] = a #:: fibs(b, a + b)
    fibs(BigInt(0), BigInt(1))(n)
  }
}
