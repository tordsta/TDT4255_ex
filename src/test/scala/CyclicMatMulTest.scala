package Core
import chisel3._
import chisel3.iotesters._
import org.scalatest.{Matchers, FlatSpec}
import testUtils._
import utilz._

class CyclicMatMulSpec extends FlatSpec with Matchers {
  def generateProblem(dims: Dims): List[CycleTask[CyclicMultiplier]] = {

    val matrixA = genMatrix(dims)
    val matrixB = genMatrix(dims).transpose

    val answers = matrixMultiply(matrixA, matrixB)

    println("Multiplying matrix A")
    println(printMatrix(matrixA))
    println("with matrix B")
    println(printMatrix(matrixB))
    println("The input order of matrix B is")
    println(printMatrix(matrixB.transpose))
    println("Expected output is")
    println(printMatrix(answers))


    val matrixInputA = matrixA.flatten.zipWithIndex.map{
      case(in, idx) =>
        CycleTask[CyclicMultiplier](
          idx,
          d => d.poke(d.dut.io.dataInA, in),
          d => d.poke(d.dut.io.writeEnableA, 1)
        )
    }


    val matrixInputB = matrixB.transpose.flatten.zipWithIndex.map{
      case(in, idx) =>
        CycleTask[CyclicMultiplier](
          idx,
          d => d.poke(d.dut.io.dataInB, in),
          d => d.poke(d.dut.io.writeEnableB, 1)
        )
    }


    val disableInputs = List(
      CycleTask[CyclicMultiplier](
        dims.elements,
        d => d.poke(d.dut.io.writeEnableA, 0)
      ),
      CycleTask[CyclicMultiplier](
        dims.elements,
        d => d.poke(d.dut.io.writeEnableB, 0)
      )
    )


    val checkValid1 = (0 until dims.elements).map( n =>
      CycleTask[CyclicMultiplier](
        n,
        d => d.expect(d.dut.io.dataValid, 0, "data valid should not be asserted before data is ready")
      )
    ).toList



    val checkValid2 = (0 until dims.rows * dims.rows * dims.cols).map{ n =>

      val shouldBeValid = (n % dims.cols) == dims.cols - 1

      val answerRowIndex = n/(dims.rows*dims.cols)
      val answerColIndex = ((n-1)/(dims.cols)) % dims.rows

      val expectedOutput = answers(answerRowIndex)(answerColIndex)

      CycleTask[CyclicMultiplier](
        n,
        d => if(!shouldBeValid)
               d.expect(d.dut.io.dataValid, 0)
             else {
               d.expect(d.dut.io.dataValid, 1)
               d.expect(d.dut.io.dataOut, expectedOutput)
             }

      ).delay(dims.elements + 1)
    }.toList


    // adds a lot of annoying noise
    // val peekDebug = (0 until 20).map(n =>
    //   CycleTask[CyclicMultiplier](
    //     n,
    //     _ => println(s"at step $n"),
    //     d => println(printModuleIO(d.peek(d.dut.io))),
    //     _ => println(),
    //     )
    // ).toList

    matrixInputA ::: matrixInputB ::: disableInputs ::: checkValid1 ::: checkValid2 // ::: peekDebug
  }


  behavior of "mat multiplier"

  val dims = Dims(rows = 3, cols = 2)

  it should "work" in {
    iotesters.Driver.execute(() => new CyclicMultiplier(dims, 32), new TesterOptionsManager) { c =>
      IoSpec[CyclicMultiplier](generateProblem(Dims(rows = 3, cols = 2)), c).myTester
    } should be(true)
  }
}
