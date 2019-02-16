//
// Copyright (C) 1991-2012 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions
// and other software and tools, and its AMPP partner logic
// functions, and any output files from any of the foregoing
// (including device programming or simulation files), and any
// associated documentation or information are expressly subject
// to the terms and conditions of the Altera Program License
// Subscription Agreement, Altera MegaCore Function License
// Agreement, or other applicable license agreement, including,
// without limitation, that your use is for the sole purpose of
// programming logic devices manufactured by Altera and sold by
// Altera or its authorized distributors.  Please refer to the
// applicable agreement for further details.
//
// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module vm1_vcram (
   address_a,
   address_b,
   byteena_a,
   clock,
   data_a,
   data_b,
   wren_a,
   wren_b,
   q_a,
   q_b);

   input [5:0]  address_a;
   input [5:0]  address_b;
   input [1:0]  byteena_a;
   input   clock;
   input [15:0]  data_a;
   input [15:0]  data_b;
   input   wren_a;
   input   wren_b;
   output   [15:0]  q_a;
   output   [15:0]  q_b;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
   tri1  [1:0]  byteena_a;
   tri1    clock;
   tri0    wren_a;
   tri0    wren_b;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

   wire [15:0] sub_wire0;
   wire [15:0] sub_wire1;
   wire [15:0] q_a = sub_wire0[15:0];
   wire [15:0] q_b = sub_wire1[15:0];

   altsyncram  altsyncram_component (
            .byteena_a (byteena_a),
            .clock0 (clock),
            .wren_a (wren_a),
            .address_b (address_b),
            .data_b (data_b),
            .wren_b (wren_b),
            .address_a (address_a),
            .data_a (data_a),
            .q_a (sub_wire0),
            .q_b (sub_wire1),
            .aclr0 (1'b0),
            .aclr1 (1'b0),
            .addressstall_a (1'b0),
            .addressstall_b (1'b0),
            .byteena_b (1'b1),
            .clock1 (1'b1),
            .clocken0 (1'b1),
            .clocken1 (1'b1),
            .clocken2 (1'b1),
            .clocken3 (1'b1),
            .eccstatus (),
            .rden_a (1'b1),
            .rden_b (1'b1));
   defparam
      altsyncram_component.address_reg_b = "CLOCK0",
      altsyncram_component.byte_size = 8,
      altsyncram_component.clock_enable_input_a = "BYPASS",
      altsyncram_component.clock_enable_input_b = "BYPASS",
      altsyncram_component.clock_enable_output_a = "BYPASS",
      altsyncram_component.clock_enable_output_b = "BYPASS",
      altsyncram_component.indata_reg_b = "CLOCK0",
      altsyncram_component.init_file = "../../lib/de1/vm1_reg.mif",
      altsyncram_component.intended_device_family = "Cyclone II",
      altsyncram_component.lpm_type = "altsyncram",
      altsyncram_component.numwords_a = 64,
      altsyncram_component.numwords_b = 64,
      altsyncram_component.operation_mode = "BIDIR_DUAL_PORT",
      altsyncram_component.outdata_aclr_a = "NONE",
      altsyncram_component.outdata_aclr_b = "NONE",
      altsyncram_component.outdata_reg_a = "UNREGISTERED",
      altsyncram_component.outdata_reg_b = "UNREGISTERED",
      altsyncram_component.power_up_uninitialized = "FALSE",
      altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE",
      altsyncram_component.widthad_a = 6,
      altsyncram_component.widthad_b = 6,
      altsyncram_component.width_a = 16,
      altsyncram_component.width_b = 16,
      altsyncram_component.width_byteena_a = 2,
      altsyncram_component.width_byteena_b = 1,
      altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0";
endmodule
