package Core

object utilz {

  type Matrix = List[List[Int]]

  def genMatrix(dims: Dims): Matrix =
    List.fill(dims.rows)(
      List.fill(dims.cols)(scala.util.Random.nextInt(5))
    )

  case class Dims(rows: Int, cols: Int){
    val elements = rows*cols
    def transposed = Dims(cols, rows)
  }

  def printVector(v: List[Int]): String =
    v.mkString("[","\t","]")

  def printMatrix(m: List[List[Int]]): String =
    m.map(printVector).mkString("\n")

  /**
    Typically I'd fix the signature to Map[A,B]
    Prints all the IOs of a Module
    ex:

    ```
    CycleTask[daisyVecMat](
      10,
      _ => println(s"at step $n"),
      d => println(printModuleIO(d.peek(d.dut.io))),
    )
    ```
    */
  def printModuleIO[A,B](m: scala.collection.mutable.LinkedHashMap[A,B]): String =
    m.toList.map{ case(x,y) => "" + x.toString() + " -> " + y.toString() }.reverse.mkString("\n")


  def dotProduct(xs: List[Int], ys: List[Int]): Int =
    (for ((x, y) <- xs zip ys) yield x * y).sum

  def matrixMultiply(ma: Matrix, mb: Matrix): Matrix =
    ma.map(mav => mb.transpose.map(mbv => dotProduct(mav,mbv)))
}



object Examples {
  def somefun(someval: Int) : Unit = {}

  val vecA = List(1,  2, 4)
  val vecB = List(2, -3, 1)

  def dotProductForLoop(vecA: List[Int], vecB: List[Int]) = {
    var dotProduct = 0
    for(i <- 0 until vecA.length){
      dotProduct = dotProduct + (vecA(i) * vecB(i))
    }
    dotProduct
  }


  // If you prefer a functional style scala has excellent support.
  val dotProductFP = (vecA zip vecB)
    .map{ case(a, b) => a*b }
    .sum

  val fancyDotProduct = (vecA zip vecB)
    .foldLeft(0){ case(acc, ab) => acc + (ab._1 * ab._2) }


  // Scala gives you ample opportunity to write unreadable code.
  // This is not good code!!!
  val tooFancyDotProduct =
    (0 /: (vecA zip vecB)){ case(acc, ab) => acc + (ab._1 * ab._2) }


  // An example of type parametrization. For simplicity this is not used in
  // the utility code
  type Matrix[A] = List[List[A]]
  def vectorMatrixMultiply(vec: List[Int], matrix: Matrix[Int]): List[Int] = {
    val transposed = matrix.transpose

    val outputVector = Array.ofDim[Int](vec.length)
    for(ii <- 0 until matrix.length){
      outputVector(ii) = dotProductForLoop(vec, transposed(ii))
    }
    outputVector.toList
  }


  val vec = List(1, 0, 1)
  val matrix = List(
    List(2, 1, 2),
    List(3, 2, 3),
    List(4, 1, 1)
  )
}
