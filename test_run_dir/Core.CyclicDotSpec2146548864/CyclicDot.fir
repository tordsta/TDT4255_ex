;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicDot : 
  module CyclicDot : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip dataInA : UInt<32>, flip dataInB : UInt<32>, dataOut : UInt<32>, outputValid : UInt<1>}
    
    reg value : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 26:33]
    reg accumulator : UInt<32>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicDot.scala 23:28]
    io.outputValid <= UInt<1>("h00") @[CyclicDot.scala 25:18]
    node _T_18 = mul(io.dataInA, io.dataInB) @[CyclicDot.scala 26:44]
    node _T_19 = add(accumulator, _T_18) @[CyclicDot.scala 26:30]
    node _T_20 = tail(_T_19, 1) @[CyclicDot.scala 26:30]
    accumulator <= _T_20 @[CyclicDot.scala 26:15]
    node _T_22 = eq(value, UInt<2>("h02")) @[Counter.scala 34:24]
    node _T_24 = add(value, UInt<1>("h01")) @[Counter.scala 35:22]
    node _T_25 = tail(_T_24, 1) @[Counter.scala 35:22]
    value <= _T_25 @[Counter.scala 35:13]
    when _T_22 : @[Counter.scala 37:21]
      value <= UInt<1>("h00") @[Counter.scala 37:29]
      skip @[Counter.scala 37:21]
    node _T_28 = eq(value, UInt<2>("h02")) @[Counter.scala 34:24]
    node _T_30 = add(value, UInt<1>("h01")) @[Counter.scala 35:22]
    node _T_31 = tail(_T_30, 1) @[Counter.scala 35:22]
    value <= _T_31 @[Counter.scala 35:13]
    when _T_28 : @[Counter.scala 37:21]
      value <= UInt<1>("h00") @[Counter.scala 37:29]
      skip @[Counter.scala 37:21]
    when _T_28 : @[CyclicDot.scala 29:27]
      io.outputValid <= UInt<1>("h01") @[CyclicDot.scala 30:20]
      skip @[CyclicDot.scala 29:27]
    when io.outputValid : @[CyclicDot.scala 33:23]
      io.dataOut <= accumulator @[CyclicDot.scala 34:16]
      skip @[CyclicDot.scala 33:23]
    
