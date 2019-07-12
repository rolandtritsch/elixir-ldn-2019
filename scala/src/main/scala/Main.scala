import Fib._

object Main {
  def main(args: Array[String]): Unit = {
    println(fib(args(0).toInt))
  }
}
