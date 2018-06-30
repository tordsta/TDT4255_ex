package Core
import chisel3._
import chisel3.core.Input
import chisel3.iotesters.PeekPokeTester
import utilz._

/**
  The Cyclic multiplier creates two Cyclic grids, one transposed, and multiplies them.
  */
class CyclicMultiplier(dims: Dims, dataWidth: Int) extends Module {

  val io = IO(new Bundle {

    val dataInA     = Input(UInt(dataWidth.W))
    val writeEnableA = Input(Bool())

    val dataInB     = Input(UInt(dataWidth.W))
    val writeEnableB = Input(Bool())

    val dataOut     = Output(UInt(dataWidth.W))
    val dataValid   = Output(Bool())
    val done        = Output(Bool())
  })


  /**
    Your implementation here
    */
  val rowCounter       = RegInit(UInt(8.W), 0.U)
  val colCounter       = RegInit(UInt(8.W), 0.U)

  val rowOutputCounter = RegInit(UInt(8.W), 0.U)

  val calculating      = RegInit(Bool(), false.B)
  val accumulator      = RegInit(UInt(8.W), 0.U)

  val resultReady      = RegInit(Bool(), false.B)


  /**
    Following the same principle behind the the vector matrix multiplication, by
    NOT transposing the dimensions.

    When writing a multiplier for a 3x2 matrix it's implicit that this means a
    3x2 matrix and 2x3, returning a 2x2 matrix. By not transposing the dimensions
    we get the same effect as in VecMat
    */
  val matrixA = Module(new CyclicGrid(dims, dataWidth)).io
  val matrixB = Module(new CyclicGrid(dims, dataWidth)).io
}
