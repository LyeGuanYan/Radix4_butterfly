// This is the unpowered netlist.
module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;


 R4_butter R4_butter (.CLK(wb_clk_i),
    .RST(wb_rst_i),
    .c1(la_data_in[45]),
    .c2(la_data_in[46]),
    .c3(la_data_in[47]),
    .Xio({la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13]}),
    .Xro({la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8]}),
    .xi0({la_data_in[28],
    la_data_in[27],
    la_data_in[26],
    la_data_in[25]}),
    .xi1({la_data_in[33],
    la_data_in[32],
    la_data_in[31],
    la_data_in[30]}),
    .xi2({la_data_in[38],
    la_data_in[37],
    la_data_in[36],
    la_data_in[35]}),
    .xi3({la_data_in[43],
    la_data_in[42],
    la_data_in[41],
    la_data_in[40]}),
    .xr0({la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8]}),
    .xr1({la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12]}),
    .xr2({la_data_in[19],
    la_data_in[18],
    la_data_in[17],
    la_data_in[16]}),
    .xr3({la_data_in[23],
    la_data_in[22],
    la_data_in[21],
    la_data_in[20]}));
endmodule

