package Core
import chisel3._
import chisel3.core.Input
import chisel3.iotesters.PeekPokeTester

/**
  CyclicVectors are not indexed externally. They have no control inputs or outputs, only data.
  */
class CyclicVector(elements: Int, dataWidth: Int) extends Module{

  val io = IO(new Bundle {
    val writeEnable = Input(Bool())
    val dataIn     = Input(UInt(dataWidth.W))
    val dataOut    = Output(UInt(dataWidth.W))
  })

  /**
    although the vector is not accessible by index externally, an internal index is necessary
    It is initialized to the value 0
   */


  val currentIndex = RegInit(UInt(8.W), 0.U)
  val memory = RegInit(Vec(Seq.fill(elements)(0.U(dataWidth.W)))) //gjør om til reg of vec for å kunne bruke currentIndex som index i memory

  io.dataOut := memory(currentIndex)

  when(io.writeEnable){
    memory(currentIndex) := io.dataIn
  }

  currentIndex := currentIndex + 1.U %elements.U      //dette består alle tester

/**
  //index må starte på nytt, men dette funker ikke
  when(currentIndex<elements.asUInt(8.W)){
    currentIndex := currentIndex + 1.U          //while value mindre en lengden på elements, else value = 0.
  }elsewhen{
    currentIndex := currentIndex - elements.asUInt(8.W)
  }
*/

  // Cycle the currentIndex register, it should be equal to the current (cycle % elements)
  // Connect the selected output to io.dataOut
  // Connect writeEnable to the selected memory (selectable with memory(currentIndex))
}
