circuit CyclicVector : @[:@2.0]
  module CyclicVector : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    input io_writeEnable : UInt<1> @[:@6.4]
    input io_dataIn : UInt<32> @[:@6.4]
    output io_dataOut : UInt<32> @[:@6.4]
  
    reg currentIndex_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex_0) @[CyclicVec.scala 23:29:@13.4]
    reg currentIndex_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex_1) @[CyclicVec.scala 23:29:@13.4]
    reg currentIndex_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex_2) @[CyclicVec.scala 23:29:@13.4]
    reg currentIndex_3 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), currentIndex_3) @[CyclicVec.scala 23:29:@13.4]
    reg _T_55 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_55) @[CyclicVec.scala 24:44:@14.4]
    reg _T_58 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_58) @[CyclicVec.scala 24:44:@15.4]
    reg _T_61 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_61) @[CyclicVec.scala 24:44:@16.4]
    reg _T_64 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), _T_64) @[CyclicVec.scala 24:44:@17.4]
    node _T_18_0 = UInt<8>("h0") @[CyclicVec.scala 23:33:@8.4 CyclicVec.scala 23:33:@9.4]
    node _T_18_1 = UInt<8>("h0") @[CyclicVec.scala 23:33:@8.4 CyclicVec.scala 23:33:@10.4]
    node _T_18_2 = UInt<8>("h0") @[CyclicVec.scala 23:33:@8.4 CyclicVec.scala 23:33:@11.4]
    node _T_18_3 = UInt<8>("h0") @[CyclicVec.scala 23:33:@8.4 CyclicVec.scala 23:33:@12.4]
    io_dataOut <= _T_55 @[CyclicVec.scala 41:14:@19.4]
    currentIndex_0 <= mux(reset, _T_18_0, currentIndex_0)
    currentIndex_1 <= mux(reset, _T_18_1, currentIndex_1)
    currentIndex_2 <= mux(reset, _T_18_2, currentIndex_2)
    currentIndex_3 <= mux(reset, _T_18_3, currentIndex_3)
    _T_55 <= mux(reset, UInt<1>("h0"), io_dataIn) @[CyclicVec.scala 40:13:@18.4]
    _T_58 <= mux(reset, UInt<1>("h0"), _T_58)
    _T_61 <= mux(reset, UInt<1>("h0"), _T_61)
    _T_64 <= mux(reset, UInt<1>("h0"), _T_64)
