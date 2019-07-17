object Util {
  def timeIt[R](block: => R): (Double, R) = {
    val startTime = System.currentTimeMillis()
    val result = block
    val endTime = System.currentTimeMillis()
    ((endTime - startTime)/1000.0, result)
  }
}
