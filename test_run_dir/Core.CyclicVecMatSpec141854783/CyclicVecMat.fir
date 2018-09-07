;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicVecMat : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_19 : UInt<32>[3] @[CyclicVec.scala 24:27]
    _T_19[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[3], clock with : (reset => (reset, _T_19)) @[CyclicVec.scala 24:23]
    node _T_51 = bits(currentIndex, 1, 0)
    io.dataOut <= memory[_T_51] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_55 = bits(currentIndex, 1, 0)
      memory[_T_55] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_57 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 32:32]
    node _T_58 = tail(_T_57, 1) @[CyclicVec.scala 32:32]
    currentIndex <= _T_58 @[CyclicVec.scala 32:16]
    
  module CyclicVector_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_19 : UInt<32>[3] @[CyclicVec.scala 24:27]
    _T_19[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[3], clock with : (reset => (reset, _T_19)) @[CyclicVec.scala 24:23]
    node _T_51 = bits(currentIndex, 1, 0)
    io.dataOut <= memory[_T_51] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_55 = bits(currentIndex, 1, 0)
      memory[_T_55] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_57 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 32:32]
    node _T_58 = tail(_T_57, 1) @[CyclicVec.scala 32:32]
    currentIndex <= _T_58 @[CyclicVec.scala 32:16]
    
  module CyclicVector_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_19 : UInt<32>[3] @[CyclicVec.scala 24:27]
    _T_19[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_19[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[3], clock with : (reset => (reset, _T_19)) @[CyclicVec.scala 24:23]
    node _T_51 = bits(currentIndex, 1, 0)
    io.dataOut <= memory[_T_51] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_55 = bits(currentIndex, 1, 0)
      memory[_T_55] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_57 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 32:32]
    node _T_58 = tail(_T_57, 1) @[CyclicVec.scala 32:32]
    currentIndex <= _T_58 @[CyclicVec.scala 32:16]
    
  module CyclicVectorGrid : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, flip rowSelect : UInt<8>, dataOut : UInt<32>}
    
    inst CyclicVector of CyclicVector_1 @[CyclicGrid.scala 22:43]
    CyclicVector.clock <= clock
    CyclicVector.reset <= reset
    inst CyclicVector_1 of CyclicVector_2 @[CyclicGrid.scala 22:43]
    CyclicVector_1.clock <= clock
    CyclicVector_1.reset <= reset
    
  module CyclicDot : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip dataInB : UInt<32>, dataOut : UInt<32>, outputValid : UInt<1>}
    
    reg value : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 26:33]
    reg accumulator : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicDot.scala 23:28]
    node _T_18 = lt(value, UInt<2>("h03")) @[CyclicDot.scala 25:22]
    when _T_18 : @[CyclicDot.scala 25:42]
      node _T_19 = mul(io.dataInA, io.dataInB) @[CyclicDot.scala 26:45]
      node _T_20 = add(accumulator, _T_19) @[CyclicDot.scala 26:32]
      node _T_21 = tail(_T_20, 1) @[CyclicDot.scala 26:32]
      accumulator <= _T_21 @[CyclicDot.scala 26:17]
      skip @[CyclicDot.scala 25:42]
    when io.outputValid : @[CyclicDot.scala 29:23]
      io.dataOut <= accumulator @[CyclicDot.scala 30:16]
      skip @[CyclicDot.scala 29:23]
    
  module CyclicVecMat : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip writeEnableA : UInt<1>, flip dataInB : UInt<32>, flip writeEnableB : UInt<1>, dataOut : UInt<32>, dataValid : UInt<1>, done : UInt<1>}
    
    inst CyclicVector of CyclicVector @[CyclicVecMat.scala 56:36]
    CyclicVector.clock <= clock
    CyclicVector.reset <= reset
    inst CyclicVectorGrid of CyclicVectorGrid @[CyclicVecMat.scala 57:36]
    CyclicVectorGrid.clock <= clock
    CyclicVectorGrid.reset <= reset
    inst CyclicDot of CyclicDot @[CyclicVecMat.scala 58:36]
    CyclicDot.clock <= clock
    CyclicDot.reset <= reset
    reg dataIsLoaded : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVecMat.scala 59:37]
    
