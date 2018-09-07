circuit CyclicVector : @[:@2.0]
  module CyclicVector : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    input io_writeEnable : UInt<1> @[:@6.4]
    input io_dataIn : UInt<32> @[:@6.4]
    output io_dataOut : UInt<32> @[:@6.4]
  
    reg currentIndex : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex) @[CyclicVec.scala 23:29:@8.4]
    reg _T_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_15) @[CyclicVec.scala 24:44:@9.4]
    reg _T_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_18) @[CyclicVec.scala 24:44:@10.4]
    reg _T_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_21) @[CyclicVec.scala 24:44:@11.4]
    reg _T_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_24) @[CyclicVec.scala 24:44:@12.4]
    io_dataOut <= io_dataIn @[CyclicVec.scala 40:14:@13.4]
    currentIndex <= mux(reset, UInt<1>("h0"), currentIndex)
    _T_15 <= mux(reset, UInt<1>("h0"), _T_15)
    _T_18 <= mux(reset, UInt<1>("h0"), _T_18)
    _T_21 <= mux(reset, UInt<1>("h0"), _T_21)
    _T_24 <= mux(reset, UInt<1>("h0"), _T_24)
