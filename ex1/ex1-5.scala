object Main{
  def infinity(x: Int): Int = if(x == 0) infinity(x) else 1

  def test(x: Int, y: => Int): Int = if(x == 0) 0 else y

  def main(args: Array[String]):Unit = {
    // $ scalac ex1-5.scala
    // $ scala Main
    // infinity(0) <- 無限ループ
    // infinity(0) は、名前渡しにより遅延評価されるため無限ループしない
    println(test(0, infinity(0))) // => 0
  }
}
