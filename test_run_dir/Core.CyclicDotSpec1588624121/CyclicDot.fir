;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicDot : 
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
    
