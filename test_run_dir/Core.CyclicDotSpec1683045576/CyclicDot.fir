;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicDot : 
  module CyclicDot : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip dataInB : UInt<32>, dataOut : UInt<32>, outputValid : UInt<1>}
    
    reg value : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 26:33]
    reg accumulator : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicDot.scala 23:28]
    node _T_17 = bits(reset, 0, 0) @[CyclicDot.scala 25:9]
    node _T_19 = eq(_T_17, UInt<1>("h00")) @[CyclicDot.scala 25:9]
    when _T_19 : @[CyclicDot.scala 25:9]
      printf(clock, UInt<1>(1), "accumulator = %d", accumulator) @[CyclicDot.scala 25:9]
      skip @[CyclicDot.scala 25:9]
    node _T_21 = lt(value, UInt<2>("h03")) @[CyclicDot.scala 27:22]
    when _T_21 : @[CyclicDot.scala 27:42]
      node _T_22 = mul(io.dataInA, io.dataInB) @[CyclicDot.scala 28:45]
      node _T_23 = add(accumulator, _T_22) @[CyclicDot.scala 28:32]
      node _T_24 = tail(_T_23, 1) @[CyclicDot.scala 28:32]
      accumulator <= _T_24 @[CyclicDot.scala 28:17]
      skip @[CyclicDot.scala 27:42]
    
