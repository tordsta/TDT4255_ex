;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicVector : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    reg _T_15 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_18 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_21 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    reg _T_24 : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 24:44]
    io.dataOut <= io.dataIn @[CyclicVec.scala 38:14]
    
