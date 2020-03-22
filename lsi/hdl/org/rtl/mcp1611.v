//
// Copyright (c) 2014-2020 by 1801BM1@gmail.com
//
// MCP-1611 Data Chip model, for debug and simulating only
//______________________________________________________________________________
//
module mcp1611
(
   input          pin_c1,        // clock phase 1
   input          pin_c2,        // clock phase 2
   input          pin_c3,        // clock phase 3
   input          pin_c4,        // clock phase 4
   input          pin_wi,        // wait for ready
   inout [15:0]   pin_m_n,       // microinstruction bus
   inout [15:0]   pin_ad         // address/data bus
);

endmodule

