import Fib._

object Main {
  def main(args: Array[String]): Unit = {
    val (time, result) = Util.timeIt { fib(args(0).toInt) }
    println(s"fib (${time}): ${result}")
    val (time2, result2) = Util.timeIt { fib2(args(1).toInt) }
    println(s"fib2 (${time2}): ${result2}")
    val (time3, result3) = Util.timeIt { fib3(args(2).toInt) }
    println(s"fib3 (${time3}): ${result3}")
  }
}
