;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicDot : 
  module CyclicDot : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip dataInB : UInt<32>, dataOut : UInt<32>, outputValid : UInt<1>}
    
    reg value : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 26:33]
    reg accumulator : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicDot.scala 23:28]
    node _T_17 = mul(io.dataInA, io.dataInB) @[CyclicDot.scala 25:41]
    node _T_18 = add(io.dataOut, _T_17) @[CyclicDot.scala 25:28]
    node _T_19 = tail(_T_18, 1) @[CyclicDot.scala 25:28]
    io.dataOut <= _T_19 @[CyclicDot.scala 25:14]
    
