;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.12.4, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:51:33.220, builtAtMillis: 1532537493220
circuit CyclicVectorGrid : 
  module CyclicVector : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_21 : UInt<32>[5] @[CyclicVec.scala 24:27]
    _T_21[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[3] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[4] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[5], clock with : (reset => (reset, _T_21)) @[CyclicVec.scala 24:23]
    node _T_65 = bits(currentIndex, 2, 0)
    io.dataOut <= memory[_T_65] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_69 = bits(currentIndex, 2, 0)
      memory[_T_69] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_71 = lt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 34:20]
    when _T_71 : @[CyclicVec.scala 34:42]
      node _T_73 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 35:34]
      node _T_74 = tail(_T_73, 1) @[CyclicVec.scala 35:34]
      currentIndex <= _T_74 @[CyclicVec.scala 35:18]
      skip @[CyclicVec.scala 34:42]
    else : @[CyclicVec.scala 36:48]
      node _T_76 = gt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 36:26]
      when _T_76 : @[CyclicVec.scala 36:48]
        currentIndex <= UInt<1>("h00") @[CyclicVec.scala 37:18]
        skip @[CyclicVec.scala 36:48]
    
  module CyclicVector_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_21 : UInt<32>[5] @[CyclicVec.scala 24:27]
    _T_21[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[3] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[4] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[5], clock with : (reset => (reset, _T_21)) @[CyclicVec.scala 24:23]
    node _T_65 = bits(currentIndex, 2, 0)
    io.dataOut <= memory[_T_65] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_69 = bits(currentIndex, 2, 0)
      memory[_T_69] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_71 = lt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 34:20]
    when _T_71 : @[CyclicVec.scala 34:42]
      node _T_73 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 35:34]
      node _T_74 = tail(_T_73, 1) @[CyclicVec.scala 35:34]
      currentIndex <= _T_74 @[CyclicVec.scala 35:18]
      skip @[CyclicVec.scala 34:42]
    else : @[CyclicVec.scala 36:48]
      node _T_76 = gt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 36:26]
      when _T_76 : @[CyclicVec.scala 36:48]
        currentIndex <= UInt<1>("h00") @[CyclicVec.scala 37:18]
        skip @[CyclicVec.scala 36:48]
    
  module CyclicVector_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_21 : UInt<32>[5] @[CyclicVec.scala 24:27]
    _T_21[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[3] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[4] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[5], clock with : (reset => (reset, _T_21)) @[CyclicVec.scala 24:23]
    node _T_65 = bits(currentIndex, 2, 0)
    io.dataOut <= memory[_T_65] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_69 = bits(currentIndex, 2, 0)
      memory[_T_69] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_71 = lt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 34:20]
    when _T_71 : @[CyclicVec.scala 34:42]
      node _T_73 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 35:34]
      node _T_74 = tail(_T_73, 1) @[CyclicVec.scala 35:34]
      currentIndex <= _T_74 @[CyclicVec.scala 35:18]
      skip @[CyclicVec.scala 34:42]
    else : @[CyclicVec.scala 36:48]
      node _T_76 = gt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 36:26]
      when _T_76 : @[CyclicVec.scala 36:48]
        currentIndex <= UInt<1>("h00") @[CyclicVec.scala 37:18]
        skip @[CyclicVec.scala 36:48]
    
  module CyclicVector_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip writeEnable : UInt<1>, flip dataIn : UInt<32>, dataOut : UInt<32>}
    
    reg currentIndex : UInt<8>, clock with : (reset => (reset, UInt<1>("h00"))) @[CyclicVec.scala 23:29]
    wire _T_21 : UInt<32>[5] @[CyclicVec.scala 24:27]
    _T_21[0] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[1] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[2] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[3] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    _T_21[4] <= UInt<32>("h00") @[CyclicVec.scala 24:27]
    reg memory : UInt<32>[5], clock with : (reset => (reset, _T_21)) @[CyclicVec.scala 24:23]
    node _T_65 = bits(currentIndex, 2, 0)
    io.dataOut <= memory[_T_65] @[CyclicVec.scala 26:14]
    when io.writeEnable : @[CyclicVec.scala 28:23]
      node _T_69 = bits(currentIndex, 2, 0)
      memory[_T_69] <= io.dataIn @[CyclicVec.scala 29:26]
      skip @[CyclicVec.scala 28:23]
    node _T_71 = lt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 34:20]
    when _T_71 : @[CyclicVec.scala 34:42]
      node _T_73 = add(currentIndex, UInt<1>("h01")) @[CyclicVec.scala 35:34]
      node _T_74 = tail(_T_73, 1) @[CyclicVec.scala 35:34]
      currentIndex <= _T_74 @[CyclicVec.scala 35:18]
      skip @[CyclicVec.scala 34:42]
    else : @[CyclicVec.scala 36:48]
      node _T_76 = gt(currentIndex, UInt<8>("h05")) @[CyclicVec.scala 36:26]
      when _T_76 : @[CyclicVec.scala 36:48]
        currentIndex <= UInt<1>("h00") @[CyclicVec.scala 37:18]
        skip @[CyclicVec.scala 36:48]
    
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
    
