;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicMultiplier : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVector_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVector_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVectorGrid : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, flip rowSelect : UInt<8>, dataOut : UInt<32>}
    
    inst CyclicVector of CyclicVector @[CyclicGrid.scala 22:43]
    CyclicVector.clock <= clock
    CyclicVector.reset <= reset
    inst CyclicVector_1 of CyclicVector_1 @[CyclicGrid.scala 22:43]
    CyclicVector_1.clock <= clock
    CyclicVector_1.reset <= reset
    inst CyclicVector_2 of CyclicVector_2 @[CyclicGrid.scala 22:43]
    CyclicVector_2.clock <= clock
    CyclicVector_2.reset <= reset
    
  module CyclicVector_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVector_4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVector_5 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    wire _T_18 : UInt<8>[4] @[CyclicVec.scala 23:33]
    _T_18[0] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[1] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[2] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    _T_18[3] <= UInt<8>("h00") @[CyclicVec.scala 23:33]
    reg currentIndex : UInt<8>[4], clock with : (reset => (reset, _T_18)) @[CyclicVec.scala 23:29]
    reg _T_55 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_58 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    _T_55 <= io.dataIn @[CyclicVec.scala 40:13]
    io.dataOut <= _T_55 @[CyclicVec.scala 41:14]
    
  module CyclicVectorGrid_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, flip rowSelect : UInt<8>, dataOut : UInt<32>}
    
    inst CyclicVector of CyclicVector_3 @[CyclicGrid.scala 22:43]
    CyclicVector.clock <= clock
    CyclicVector.reset <= reset
    inst CyclicVector_1 of CyclicVector_4 @[CyclicGrid.scala 22:43]
    CyclicVector_1.clock <= clock
    CyclicVector_1.reset <= reset
    inst CyclicVector_2 of CyclicVector_5 @[CyclicGrid.scala 22:43]
    CyclicVector_2.clock <= clock
    CyclicVector_2.reset <= reset
    
  module CyclicMultiplier : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip writeEnableA : UInt<1>, flip dataInB : UInt<32>, flip writeEnableB : UInt<1>, dataOut : UInt<32>, dataValid : UInt<1>, done : UInt<1>}
    
    reg rowCounter : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 29:33]
    reg colCounter : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 30:33]
    reg rowOutputCounter : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 32:33]
    reg calculating : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 34:33]
    reg accumulator : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 35:33]
    reg resultReady : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicMatMul.scala 37:33]
    inst CyclicVectorGrid of CyclicVectorGrid @[CyclicMatMul.scala 48:23]
    CyclicVectorGrid.clock <= clock
    CyclicVectorGrid.reset <= reset
    inst CyclicVectorGrid_1 of CyclicVectorGrid_1 @[CyclicMatMul.scala 49:23]
    CyclicVectorGrid_1.clock <= clock
    CyclicVectorGrid_1.reset <= reset
    
