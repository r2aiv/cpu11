//
// Copyright (c) 2014-2020 by 1801BM1@gmail.com
//
// MCP-1621 Control Chip model, for debug and simulating only
//______________________________________________________________________________
//
module mcp1621
(
   input          pin_c1,        // clock phase 1
   input          pin_c2,        // clock phase 2
   input          pin_c3,        // clock phase 3
   input          pin_c4,        // clock phase 4
   inout [17:0]   pin_m_n,       // microinstruction bus
                                 //
   input [4:1]    pin_inrrq,     // interrupt requests
   input          pin_bbusy,     // bus busy
   input          pin_comp,      // debug mode
   input          pin_sr_n,      // system reset
   input          pin_ra,        // ready
                                 //
   output         pin_syn,       // cycle sync
   output         pin_di,        // data input
   output         pin_do,        // data output
   output         pin_inrak,     // interrupt ack
   output         pin_wrby,      // write byte
   output         pin_wi         // wait
);

endmodule
