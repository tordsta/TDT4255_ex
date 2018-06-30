package Core
import chisel3._
import chisel3.core.Input
import chisel3.iotesters.PeekPokeTester
import utilz._

/**
  CyclicGrids hold n CyclicVecs. Unlike the CyclicVecs, CyclicGrids have a select signal for selecting
  which CyclicVec to work on, but these CyclicVecs can not be controlled from the outside.
  */
class CyclicVectorGrid(dims: Dims, dataWidth: Int) extends Module{

  val io = IO(new Bundle {

    val writeEnable = Input(Bool())
    val dataIn     = Input(UInt(dataWidth.W))
    val rowSelect    = Input(UInt(8.W))

    val dataOut    = Output(UInt(dataWidth.W))
  })

  val rows = Array.fill(dims.rows){ Module(new CyclicVector(dims.cols, dataWidth)).io }

  /**
    Your implementation here
    */
}
