;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicDot : 
  module CyclicDot : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip dataInB : UInt<32>, dataOut : UInt<32>, outputValid : UInt<1>}
    
    reg value : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 26:33]
    reg accumulator : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicDot.scala 23:28]
    node _T_18 = eq(value, UInt<2>("h02")) @[Counter.scala 34:24]
    node _T_20 = add(value, UInt<1>("h01")) @[Counter.scala 35:22]
    node _T_21 = tail(_T_20, 1) @[Counter.scala 35:22]
    value <= _T_21 @[Counter.scala 35:13]
    when _T_18 : @[Counter.scala 37:21]
      value <= UInt<1>("h00") @[Counter.scala 37:29]
      skip @[Counter.scala 37:21]
    when _T_18 : @[CyclicDot.scala 26:22]
      node _T_23 = mul(io.dataInA, io.dataInB) @[CyclicDot.scala 27:45]
      node _T_24 = add(accumulator, _T_23) @[CyclicDot.scala 27:32]
      node _T_25 = tail(_T_24, 1) @[CyclicDot.scala 27:32]
      accumulator <= _T_25 @[CyclicDot.scala 27:17]
      skip @[CyclicDot.scala 26:22]
    when io.outputValid : @[CyclicDot.scala 43:23]
      io.dataOut <= accumulator @[CyclicDot.scala 44:16]
      accumulator <= UInt<1>("h00") @[CyclicDot.scala 45:17]
      skip @[CyclicDot.scala 43:23]
    
