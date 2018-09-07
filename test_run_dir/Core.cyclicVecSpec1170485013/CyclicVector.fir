;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicVector : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_20 : UInt<32>[4] @[CyclicVec.scala 24:27]
    _T_20[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_20[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_20[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_20[3] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[4], clock with : (reset => (reset, _T_20)) @[CyclicVec.scala 24:23]
    node _T_58 = bits(currentIndex, 1, 0)
    io.dataOut <= memory[_T_58] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_62 = bits(currentIndex, 1, 0)
      memory[_T_62] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_64 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 34:32]
    node _T_65 = tail(_T_64, 1) @[CyclicVec.scala 34:32]
    currentIndex <= _T_65 @[CyclicVec.scala 34:16]
    
