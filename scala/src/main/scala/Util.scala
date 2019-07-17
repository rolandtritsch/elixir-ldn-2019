object Util {
  def timeIt[R](block: => R): (Long, R) = {
    val startTime = System.currentTimeMillis()
    val result = block
    val endTime = System.currentTimeMillis()
    (endTime - startTime, result)
  }
}
