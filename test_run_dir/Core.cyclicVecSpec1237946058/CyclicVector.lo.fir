circuit CyclicVector : @[:@2.0]
  module CyclicVector : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    input io_writeEnable : UInt<1> @[:@6.4]
    input io_dataIn : UInt<32> @[:@6.4]
    output io_dataOut : UInt<32> @[:@6.4]
  
    reg currentIndex : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex) @[CyclicVec.scala 23:29:@8.4]
    reg memory_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), memory_0) @[CyclicVec.scala 24:23:@14.4]
    reg memory_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), memory_1) @[CyclicVec.scala 24:23:@14.4]
    reg memory_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), memory_2) @[CyclicVec.scala 24:23:@14.4]
    reg memory_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), memory_3) @[CyclicVec.scala 24:23:@14.4]
    node _T_20_0 = UInt<32>("h0") @[CyclicVec.scala 24:27:@9.4 CyclicVec.scala 24:27:@10.4]
    node _T_20_1 = UInt<32>("h0") @[CyclicVec.scala 24:27:@9.4 CyclicVec.scala 24:27:@11.4]
    node _T_20_2 = UInt<32>("h0") @[CyclicVec.scala 24:27:@9.4 CyclicVec.scala 24:27:@12.4]
    node _T_20_3 = UInt<32>("h0") @[CyclicVec.scala 24:27:@9.4 CyclicVec.scala 24:27:@13.4]
    io_dataOut <= memory_0 @[CyclicVec.scala 41:14:@16.4]
    currentIndex <= mux(reset, UInt<1>("h0"), currentIndex)
    memory_0 <= mux(reset, _T_20_0, io_dataIn) @[CyclicVec.scala 40:13:@15.4]
    memory_1 <= mux(reset, _T_20_1, memory_1)
    memory_2 <= mux(reset, _T_20_2, memory_2)
    memory_3 <= mux(reset, _T_20_3, memory_3)
