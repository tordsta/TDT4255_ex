;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicVectorGrid : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    reg _T_15 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_18 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_21 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_24 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_27 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    io.dataOut <= io.dataIn @[CyclicVec.scala 38:14]
    
  module CyclicVector_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    reg _T_15 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_18 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_21 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_24 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_27 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    io.dataOut <= io.dataIn @[CyclicVec.scala 38:14]
    
  module CyclicVector_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    reg _T_15 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_18 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_21 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_24 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_27 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    io.dataOut <= io.dataIn @[CyclicVec.scala 38:14]
    
  module CyclicVector_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    reg _T_15 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_18 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_21 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_24 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_27 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    io.dataOut <= io.dataIn @[CyclicVec.scala 38:14]
    
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
    inst CyclicVector_3 of CyclicVector_3 @[CyclicGrid.scala 22:43]
    CyclicVector_3.clock <= clock
    CyclicVector_3.reset <= reset
    
