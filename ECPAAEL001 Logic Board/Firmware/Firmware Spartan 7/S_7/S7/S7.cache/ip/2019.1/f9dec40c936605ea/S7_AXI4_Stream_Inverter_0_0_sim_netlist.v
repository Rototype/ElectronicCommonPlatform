// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 15:17:41 2021
// Host        : LAPTOP-3UDEBL19 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_AXI4_Stream_Inverter_0_0_sim_netlist.v
// Design      : S7_AXI4_Stream_Inverter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter
   (counter,
    file_dimension,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_tdata,
    clk,
    s00_axis_tvalid,
    s00_axis_tlast,
    resetn,
    m00_axis_tready);
  output [30:0]counter;
  output [31:0]file_dimension;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input [31:0]s00_axis_tdata;
  input clk;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input resetn;
  input m00_axis_tready;

  wire clk;
  wire [30:0]counter;
  wire [31:0]file_dimension;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire resetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter Inst_Inverter
       (.Q(counter),
        .clk(clk),
        .file_dimension(file_dimension),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .resetn(resetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter
   (Q,
    file_dimension,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_tdata,
    clk,
    s00_axis_tvalid,
    s00_axis_tlast,
    resetn,
    m00_axis_tready);
  output [30:0]Q;
  output [31:0]file_dimension;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input [31:0]s00_axis_tdata;
  input clk;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input resetn;
  input m00_axis_tready;

  wire [30:0]Q;
  wire clk;
  wire [31:1]data0;
  wire [31:0]file_dimension;
  wire \image_length_vct[15]_i_1_n_0 ;
  wire \image_length_vct[31]_i_1_n_0 ;
  wire \image_length_vct[31]_i_2_n_0 ;
  wire \image_length_vct[31]_i_3_n_0 ;
  wire \image_length_vct[31]_i_4_n_0 ;
  wire \image_length_vct[31]_i_5_n_0 ;
  wire \image_length_vct[31]_i_6_n_0 ;
  wire \image_length_vct[31]_i_7_n_0 ;
  wire \image_length_vct[31]_i_8_n_0 ;
  wire \image_length_vct[31]_i_9_n_0 ;
  wire \inverted_tdata_2ndB[0]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[1]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[2]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[3]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[4]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[5]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[6]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[7]_i_1_n_0 ;
  wire \inverted_tdata_2ndB[7]_i_2_n_0 ;
  wire \inverted_tdata_2ndB[7]_i_3_n_0 ;
  wire \inverted_tdata_3rdB[0]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[1]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[2]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[3]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[4]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[5]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[6]_i_1_n_0 ;
  wire \inverted_tdata_3rdB[7]_i_1_n_0 ;
  wire \inverted_tdata_LSB[0]_i_1_n_0 ;
  wire \inverted_tdata_LSB[1]_i_1_n_0 ;
  wire \inverted_tdata_LSB[2]_i_1_n_0 ;
  wire \inverted_tdata_LSB[3]_i_1_n_0 ;
  wire \inverted_tdata_LSB[4]_i_1_n_0 ;
  wire \inverted_tdata_LSB[5]_i_1_n_0 ;
  wire \inverted_tdata_LSB[6]_i_1_n_0 ;
  wire \inverted_tdata_LSB[7]_i_1_n_0 ;
  wire inverted_tdata_MSB0;
  wire \inverted_tdata_MSB[0]_i_1_n_0 ;
  wire \inverted_tdata_MSB[1]_i_1_n_0 ;
  wire \inverted_tdata_MSB[2]_i_1_n_0 ;
  wire \inverted_tdata_MSB[3]_i_1_n_0 ;
  wire \inverted_tdata_MSB[4]_i_1_n_0 ;
  wire \inverted_tdata_MSB[5]_i_1_n_0 ;
  wire \inverted_tdata_MSB[6]_i_1_n_0 ;
  wire \inverted_tdata_MSB[7]_i_1_n_0 ;
  wire \inverted_tdata_MSB[7]_i_3_n_0 ;
  wire \inverted_tdata_MSB[7]_i_4_n_0 ;
  wire \inverted_tdata_MSB[7]_i_5_n_0 ;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [0:0]p_0_in;
  wire [31:2]packet_counter_vct3;
  wire packet_counter_vct3_carry__0_i_1_n_0;
  wire packet_counter_vct3_carry__0_i_2_n_0;
  wire packet_counter_vct3_carry__0_i_3_n_0;
  wire packet_counter_vct3_carry__0_i_4_n_0;
  wire packet_counter_vct3_carry__0_n_0;
  wire packet_counter_vct3_carry__0_n_1;
  wire packet_counter_vct3_carry__0_n_2;
  wire packet_counter_vct3_carry__0_n_3;
  wire packet_counter_vct3_carry__1_i_1_n_0;
  wire packet_counter_vct3_carry__1_i_2_n_0;
  wire packet_counter_vct3_carry__1_i_3_n_0;
  wire packet_counter_vct3_carry__1_i_4_n_0;
  wire packet_counter_vct3_carry__1_n_0;
  wire packet_counter_vct3_carry__1_n_1;
  wire packet_counter_vct3_carry__1_n_2;
  wire packet_counter_vct3_carry__1_n_3;
  wire packet_counter_vct3_carry__2_i_1_n_0;
  wire packet_counter_vct3_carry__2_i_2_n_0;
  wire packet_counter_vct3_carry__2_i_3_n_0;
  wire packet_counter_vct3_carry__2_i_4_n_0;
  wire packet_counter_vct3_carry__2_n_0;
  wire packet_counter_vct3_carry__2_n_1;
  wire packet_counter_vct3_carry__2_n_2;
  wire packet_counter_vct3_carry__2_n_3;
  wire packet_counter_vct3_carry__3_i_1_n_0;
  wire packet_counter_vct3_carry__3_i_2_n_0;
  wire packet_counter_vct3_carry__3_i_3_n_0;
  wire packet_counter_vct3_carry__3_i_4_n_0;
  wire packet_counter_vct3_carry__3_n_0;
  wire packet_counter_vct3_carry__3_n_1;
  wire packet_counter_vct3_carry__3_n_2;
  wire packet_counter_vct3_carry__3_n_3;
  wire packet_counter_vct3_carry__4_i_1_n_0;
  wire packet_counter_vct3_carry__4_i_2_n_0;
  wire packet_counter_vct3_carry__4_i_3_n_0;
  wire packet_counter_vct3_carry__4_i_4_n_0;
  wire packet_counter_vct3_carry__4_n_0;
  wire packet_counter_vct3_carry__4_n_1;
  wire packet_counter_vct3_carry__4_n_2;
  wire packet_counter_vct3_carry__4_n_3;
  wire packet_counter_vct3_carry__5_i_1_n_0;
  wire packet_counter_vct3_carry__5_i_2_n_0;
  wire packet_counter_vct3_carry__5_i_3_n_0;
  wire packet_counter_vct3_carry__5_i_4_n_0;
  wire packet_counter_vct3_carry__5_n_0;
  wire packet_counter_vct3_carry__5_n_1;
  wire packet_counter_vct3_carry__5_n_2;
  wire packet_counter_vct3_carry__5_n_3;
  wire packet_counter_vct3_carry__6_i_1_n_0;
  wire packet_counter_vct3_carry__6_i_2_n_0;
  wire packet_counter_vct3_carry__6_i_3_n_0;
  wire packet_counter_vct3_carry__6_i_4_n_0;
  wire packet_counter_vct3_carry__6_n_1;
  wire packet_counter_vct3_carry__6_n_2;
  wire packet_counter_vct3_carry__6_n_3;
  wire packet_counter_vct3_carry_i_1_n_0;
  wire packet_counter_vct3_carry_i_2_n_0;
  wire packet_counter_vct3_carry_i_3_n_0;
  wire packet_counter_vct3_carry_n_0;
  wire packet_counter_vct3_carry_n_1;
  wire packet_counter_vct3_carry_n_2;
  wire packet_counter_vct3_carry_n_3;
  wire \packet_counter_vct[10]_i_1_n_0 ;
  wire \packet_counter_vct[11]_i_1_n_0 ;
  wire \packet_counter_vct[12]_i_1_n_0 ;
  wire \packet_counter_vct[13]_i_1_n_0 ;
  wire \packet_counter_vct[14]_i_1_n_0 ;
  wire \packet_counter_vct[15]_i_1_n_0 ;
  wire \packet_counter_vct[16]_i_1_n_0 ;
  wire \packet_counter_vct[17]_i_1_n_0 ;
  wire \packet_counter_vct[18]_i_1_n_0 ;
  wire \packet_counter_vct[19]_i_1_n_0 ;
  wire \packet_counter_vct[1]_i_1_n_0 ;
  wire \packet_counter_vct[20]_i_1_n_0 ;
  wire \packet_counter_vct[21]_i_1_n_0 ;
  wire \packet_counter_vct[22]_i_1_n_0 ;
  wire \packet_counter_vct[23]_i_1_n_0 ;
  wire \packet_counter_vct[24]_i_1_n_0 ;
  wire \packet_counter_vct[25]_i_1_n_0 ;
  wire \packet_counter_vct[26]_i_1_n_0 ;
  wire \packet_counter_vct[27]_i_1_n_0 ;
  wire \packet_counter_vct[28]_i_1_n_0 ;
  wire \packet_counter_vct[29]_i_1_n_0 ;
  wire \packet_counter_vct[2]_i_1_n_0 ;
  wire \packet_counter_vct[30]_i_1_n_0 ;
  wire \packet_counter_vct[31]_i_1_n_0 ;
  wire \packet_counter_vct[31]_i_2_n_0 ;
  wire \packet_counter_vct[31]_i_3_n_0 ;
  wire \packet_counter_vct[31]_i_4_n_0 ;
  wire \packet_counter_vct[31]_i_6_n_0 ;
  wire \packet_counter_vct[31]_i_7_n_0 ;
  wire \packet_counter_vct[31]_i_8_n_0 ;
  wire \packet_counter_vct[31]_i_9_n_0 ;
  wire \packet_counter_vct[3]_i_1_n_0 ;
  wire \packet_counter_vct[4]_i_1_n_0 ;
  wire \packet_counter_vct[4]_i_3_n_0 ;
  wire \packet_counter_vct[5]_i_1_n_0 ;
  wire \packet_counter_vct[6]_i_1_n_0 ;
  wire \packet_counter_vct[7]_i_1_n_0 ;
  wire \packet_counter_vct[8]_i_1_n_0 ;
  wire \packet_counter_vct[9]_i_1_n_0 ;
  wire \packet_counter_vct_reg[12]_i_2_n_0 ;
  wire \packet_counter_vct_reg[12]_i_2_n_1 ;
  wire \packet_counter_vct_reg[12]_i_2_n_2 ;
  wire \packet_counter_vct_reg[12]_i_2_n_3 ;
  wire \packet_counter_vct_reg[16]_i_2_n_0 ;
  wire \packet_counter_vct_reg[16]_i_2_n_1 ;
  wire \packet_counter_vct_reg[16]_i_2_n_2 ;
  wire \packet_counter_vct_reg[16]_i_2_n_3 ;
  wire \packet_counter_vct_reg[20]_i_2_n_0 ;
  wire \packet_counter_vct_reg[20]_i_2_n_1 ;
  wire \packet_counter_vct_reg[20]_i_2_n_2 ;
  wire \packet_counter_vct_reg[20]_i_2_n_3 ;
  wire \packet_counter_vct_reg[24]_i_2_n_0 ;
  wire \packet_counter_vct_reg[24]_i_2_n_1 ;
  wire \packet_counter_vct_reg[24]_i_2_n_2 ;
  wire \packet_counter_vct_reg[24]_i_2_n_3 ;
  wire \packet_counter_vct_reg[28]_i_2_n_0 ;
  wire \packet_counter_vct_reg[28]_i_2_n_1 ;
  wire \packet_counter_vct_reg[28]_i_2_n_2 ;
  wire \packet_counter_vct_reg[28]_i_2_n_3 ;
  wire \packet_counter_vct_reg[31]_i_5_n_2 ;
  wire \packet_counter_vct_reg[31]_i_5_n_3 ;
  wire \packet_counter_vct_reg[4]_i_2_n_0 ;
  wire \packet_counter_vct_reg[4]_i_2_n_1 ;
  wire \packet_counter_vct_reg[4]_i_2_n_2 ;
  wire \packet_counter_vct_reg[4]_i_2_n_3 ;
  wire \packet_counter_vct_reg[8]_i_2_n_0 ;
  wire \packet_counter_vct_reg[8]_i_2_n_1 ;
  wire \packet_counter_vct_reg[8]_i_2_n_2 ;
  wire \packet_counter_vct_reg[8]_i_2_n_3 ;
  wire resetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [1:0]NLW_packet_counter_vct3_carry_O_UNCONNECTED;
  wire [3:3]NLW_packet_counter_vct3_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_packet_counter_vct_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_packet_counter_vct_reg[31]_i_5_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0002)) 
    \image_length_vct[15]_i_1 
       (.I0(\image_length_vct[31]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\image_length_vct[31]_i_3_n_0 ),
        .O(\image_length_vct[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \image_length_vct[31]_i_1 
       (.I0(\image_length_vct[31]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\image_length_vct[31]_i_3_n_0 ),
        .O(\image_length_vct[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \image_length_vct[31]_i_2 
       (.I0(resetn),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(m00_axis_tready),
        .I5(s00_axis_tvalid),
        .O(\image_length_vct[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \image_length_vct[31]_i_3 
       (.I0(\image_length_vct[31]_i_4_n_0 ),
        .I1(\image_length_vct[31]_i_5_n_0 ),
        .I2(\image_length_vct[31]_i_6_n_0 ),
        .I3(\image_length_vct[31]_i_7_n_0 ),
        .I4(\image_length_vct[31]_i_8_n_0 ),
        .I5(\image_length_vct[31]_i_9_n_0 ),
        .O(\image_length_vct[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \image_length_vct[31]_i_4 
       (.I0(Q[20]),
        .I1(Q[19]),
        .I2(Q[22]),
        .I3(Q[21]),
        .O(\image_length_vct[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \image_length_vct[31]_i_5 
       (.I0(Q[24]),
        .I1(Q[23]),
        .I2(Q[26]),
        .I3(Q[25]),
        .O(\image_length_vct[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \image_length_vct[31]_i_6 
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(Q[14]),
        .I3(Q[13]),
        .O(\image_length_vct[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \image_length_vct[31]_i_7 
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(Q[18]),
        .I3(Q[17]),
        .O(\image_length_vct[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \image_length_vct[31]_i_8 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[10]),
        .I3(Q[9]),
        .O(\image_length_vct[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \image_length_vct[31]_i_9 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(Q[27]),
        .I3(Q[28]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\image_length_vct[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[0] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[16]),
        .Q(file_dimension[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[10] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[26]),
        .Q(file_dimension[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[11] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[27]),
        .Q(file_dimension[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[12] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[28]),
        .Q(file_dimension[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[13] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[29]),
        .Q(file_dimension[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[14] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[30]),
        .Q(file_dimension[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[15] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[31]),
        .Q(file_dimension[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[16] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[0]),
        .Q(file_dimension[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[17] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[1]),
        .Q(file_dimension[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[18] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[2]),
        .Q(file_dimension[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[19] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[3]),
        .Q(file_dimension[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[1] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[17]),
        .Q(file_dimension[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[20] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[4]),
        .Q(file_dimension[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[21] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[5]),
        .Q(file_dimension[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[22] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[6]),
        .Q(file_dimension[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[23] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[7]),
        .Q(file_dimension[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[24] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[8]),
        .Q(file_dimension[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[25] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[9]),
        .Q(file_dimension[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[26] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[10]),
        .Q(file_dimension[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[27] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[11]),
        .Q(file_dimension[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[28] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[12]),
        .Q(file_dimension[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[29] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[13]),
        .Q(file_dimension[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[2] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[18]),
        .Q(file_dimension[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[30] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[14]),
        .Q(file_dimension[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[31] 
       (.C(clk),
        .CE(\image_length_vct[31]_i_1_n_0 ),
        .D(s00_axis_tdata[15]),
        .Q(file_dimension[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[3] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[19]),
        .Q(file_dimension[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[4] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[20]),
        .Q(file_dimension[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[5] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[21]),
        .Q(file_dimension[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[6] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[22]),
        .Q(file_dimension[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[7] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[23]),
        .Q(file_dimension[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[8] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[24]),
        .Q(file_dimension[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \image_length_vct_reg[9] 
       (.C(clk),
        .CE(\image_length_vct[15]_i_1_n_0 ),
        .D(s00_axis_tdata[25]),
        .Q(file_dimension[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[0]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[8]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[1]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[9]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[2]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[10]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[3]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[11]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[4]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[12]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[5]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[13]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[6]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[14]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_2ndB[7]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[15]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001FFF5FFF)) 
    \inverted_tdata_2ndB[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\image_length_vct[31]_i_3_n_0 ),
        .O(\inverted_tdata_2ndB[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \inverted_tdata_2ndB[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .O(\inverted_tdata_2ndB[7]_i_3_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[0] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[8]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[1] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[9]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[2] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[10]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[3] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[11]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[4] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[12]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[5] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[13]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[6] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[14]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_2ndB_reg[7] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_2ndB[7]_i_1_n_0 ),
        .Q(m00_axis_tdata[15]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[16]),
        .O(\inverted_tdata_3rdB[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[17]),
        .O(\inverted_tdata_3rdB[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[18]),
        .O(\inverted_tdata_3rdB[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[19]),
        .O(\inverted_tdata_3rdB[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[20]),
        .O(\inverted_tdata_3rdB[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[21]),
        .O(\inverted_tdata_3rdB[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[22]),
        .O(\inverted_tdata_3rdB[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_3rdB[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[23]),
        .O(\inverted_tdata_3rdB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[0] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[16]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[1] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[17]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[2] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[18]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[3] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[19]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[4] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[20]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[5] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[21]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[6] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[22]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_3rdB_reg[7] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_3rdB[7]_i_1_n_0 ),
        .Q(m00_axis_tdata[23]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[0]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[0]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[1]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[1]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[2]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[2]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[3]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[3]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[4]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[4]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[5]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[5]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[6]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[6]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inverted_tdata_LSB[7]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(s00_axis_tdata[7]),
        .I2(\inverted_tdata_2ndB[7]_i_3_n_0 ),
        .O(\inverted_tdata_LSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[0] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[0]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[1] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[1]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[2] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[2]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[3] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[3]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[4] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[4]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[5] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[5]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[6] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[6]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_LSB_reg[7] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_LSB[7]_i_1_n_0 ),
        .Q(m00_axis_tdata[7]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[24]),
        .O(\inverted_tdata_MSB[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[25]),
        .O(\inverted_tdata_MSB[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[26]),
        .O(\inverted_tdata_MSB[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[27]),
        .O(\inverted_tdata_MSB[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[28]),
        .O(\inverted_tdata_MSB[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[29]),
        .O(\inverted_tdata_MSB[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[30]),
        .O(\inverted_tdata_MSB[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \inverted_tdata_MSB[7]_i_1 
       (.I0(resetn),
        .O(\inverted_tdata_MSB[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \inverted_tdata_MSB[7]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(m00_axis_tready),
        .O(inverted_tdata_MSB0));
  LUT6 #(
    .INIT(64'hFFFF0000FF80FF80)) 
    \inverted_tdata_MSB[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\inverted_tdata_MSB[7]_i_4_n_0 ),
        .I4(\inverted_tdata_MSB[7]_i_5_n_0 ),
        .I5(s00_axis_tdata[31]),
        .O(\inverted_tdata_MSB[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \inverted_tdata_MSB[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\image_length_vct[31]_i_3_n_0 ),
        .O(\inverted_tdata_MSB[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000777F)) 
    \inverted_tdata_MSB[7]_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\image_length_vct[31]_i_3_n_0 ),
        .O(\inverted_tdata_MSB[7]_i_5_n_0 ));
  FDRE \inverted_tdata_MSB_reg[0] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[0]_i_1_n_0 ),
        .Q(m00_axis_tdata[24]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[1] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[1]_i_1_n_0 ),
        .Q(m00_axis_tdata[25]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[2] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[2]_i_1_n_0 ),
        .Q(m00_axis_tdata[26]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[3] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[3]_i_1_n_0 ),
        .Q(m00_axis_tdata[27]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[4] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[4]_i_1_n_0 ),
        .Q(m00_axis_tdata[28]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[5] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[5]_i_1_n_0 ),
        .Q(m00_axis_tdata[29]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[6] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[6]_i_1_n_0 ),
        .Q(m00_axis_tdata[30]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE \inverted_tdata_MSB_reg[7] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\inverted_tdata_MSB[7]_i_3_n_0 ),
        .Q(m00_axis_tdata[31]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE out_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tlast),
        .Q(m00_axis_tlast),
        .R(1'b0));
  FDRE out_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  CARRY4 packet_counter_vct3_carry
       (.CI(1'b0),
        .CO({packet_counter_vct3_carry_n_0,packet_counter_vct3_carry_n_1,packet_counter_vct3_carry_n_2,packet_counter_vct3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Q[2:0],1'b0}),
        .O({packet_counter_vct3[3:2],NLW_packet_counter_vct3_carry_O_UNCONNECTED[1:0]}),
        .S({packet_counter_vct3_carry_i_1_n_0,packet_counter_vct3_carry_i_2_n_0,packet_counter_vct3_carry_i_3_n_0,p_0_in}));
  CARRY4 packet_counter_vct3_carry__0
       (.CI(packet_counter_vct3_carry_n_0),
        .CO({packet_counter_vct3_carry__0_n_0,packet_counter_vct3_carry__0_n_1,packet_counter_vct3_carry__0_n_2,packet_counter_vct3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[6:3]),
        .O(packet_counter_vct3[7:4]),
        .S({packet_counter_vct3_carry__0_i_1_n_0,packet_counter_vct3_carry__0_i_2_n_0,packet_counter_vct3_carry__0_i_3_n_0,packet_counter_vct3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__0_i_1
       (.I0(Q[6]),
        .I1(file_dimension[7]),
        .O(packet_counter_vct3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__0_i_2
       (.I0(Q[5]),
        .I1(file_dimension[6]),
        .O(packet_counter_vct3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__0_i_3
       (.I0(Q[4]),
        .I1(file_dimension[5]),
        .O(packet_counter_vct3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__0_i_4
       (.I0(Q[3]),
        .I1(file_dimension[4]),
        .O(packet_counter_vct3_carry__0_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__1
       (.CI(packet_counter_vct3_carry__0_n_0),
        .CO({packet_counter_vct3_carry__1_n_0,packet_counter_vct3_carry__1_n_1,packet_counter_vct3_carry__1_n_2,packet_counter_vct3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[10:7]),
        .O(packet_counter_vct3[11:8]),
        .S({packet_counter_vct3_carry__1_i_1_n_0,packet_counter_vct3_carry__1_i_2_n_0,packet_counter_vct3_carry__1_i_3_n_0,packet_counter_vct3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__1_i_1
       (.I0(Q[10]),
        .I1(file_dimension[11]),
        .O(packet_counter_vct3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__1_i_2
       (.I0(Q[9]),
        .I1(file_dimension[10]),
        .O(packet_counter_vct3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__1_i_3
       (.I0(Q[8]),
        .I1(file_dimension[9]),
        .O(packet_counter_vct3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__1_i_4
       (.I0(Q[7]),
        .I1(file_dimension[8]),
        .O(packet_counter_vct3_carry__1_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__2
       (.CI(packet_counter_vct3_carry__1_n_0),
        .CO({packet_counter_vct3_carry__2_n_0,packet_counter_vct3_carry__2_n_1,packet_counter_vct3_carry__2_n_2,packet_counter_vct3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[14:11]),
        .O(packet_counter_vct3[15:12]),
        .S({packet_counter_vct3_carry__2_i_1_n_0,packet_counter_vct3_carry__2_i_2_n_0,packet_counter_vct3_carry__2_i_3_n_0,packet_counter_vct3_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__2_i_1
       (.I0(Q[14]),
        .I1(file_dimension[15]),
        .O(packet_counter_vct3_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__2_i_2
       (.I0(Q[13]),
        .I1(file_dimension[14]),
        .O(packet_counter_vct3_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__2_i_3
       (.I0(Q[12]),
        .I1(file_dimension[13]),
        .O(packet_counter_vct3_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__2_i_4
       (.I0(Q[11]),
        .I1(file_dimension[12]),
        .O(packet_counter_vct3_carry__2_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__3
       (.CI(packet_counter_vct3_carry__2_n_0),
        .CO({packet_counter_vct3_carry__3_n_0,packet_counter_vct3_carry__3_n_1,packet_counter_vct3_carry__3_n_2,packet_counter_vct3_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[18:15]),
        .O(packet_counter_vct3[19:16]),
        .S({packet_counter_vct3_carry__3_i_1_n_0,packet_counter_vct3_carry__3_i_2_n_0,packet_counter_vct3_carry__3_i_3_n_0,packet_counter_vct3_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__3_i_1
       (.I0(Q[18]),
        .I1(file_dimension[19]),
        .O(packet_counter_vct3_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__3_i_2
       (.I0(Q[17]),
        .I1(file_dimension[18]),
        .O(packet_counter_vct3_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__3_i_3
       (.I0(Q[16]),
        .I1(file_dimension[17]),
        .O(packet_counter_vct3_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__3_i_4
       (.I0(Q[15]),
        .I1(file_dimension[16]),
        .O(packet_counter_vct3_carry__3_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__4
       (.CI(packet_counter_vct3_carry__3_n_0),
        .CO({packet_counter_vct3_carry__4_n_0,packet_counter_vct3_carry__4_n_1,packet_counter_vct3_carry__4_n_2,packet_counter_vct3_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[22:19]),
        .O(packet_counter_vct3[23:20]),
        .S({packet_counter_vct3_carry__4_i_1_n_0,packet_counter_vct3_carry__4_i_2_n_0,packet_counter_vct3_carry__4_i_3_n_0,packet_counter_vct3_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__4_i_1
       (.I0(Q[22]),
        .I1(file_dimension[23]),
        .O(packet_counter_vct3_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__4_i_2
       (.I0(Q[21]),
        .I1(file_dimension[22]),
        .O(packet_counter_vct3_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__4_i_3
       (.I0(Q[20]),
        .I1(file_dimension[21]),
        .O(packet_counter_vct3_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__4_i_4
       (.I0(Q[19]),
        .I1(file_dimension[20]),
        .O(packet_counter_vct3_carry__4_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__5
       (.CI(packet_counter_vct3_carry__4_n_0),
        .CO({packet_counter_vct3_carry__5_n_0,packet_counter_vct3_carry__5_n_1,packet_counter_vct3_carry__5_n_2,packet_counter_vct3_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[26:23]),
        .O(packet_counter_vct3[27:24]),
        .S({packet_counter_vct3_carry__5_i_1_n_0,packet_counter_vct3_carry__5_i_2_n_0,packet_counter_vct3_carry__5_i_3_n_0,packet_counter_vct3_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__5_i_1
       (.I0(Q[26]),
        .I1(file_dimension[27]),
        .O(packet_counter_vct3_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__5_i_2
       (.I0(Q[25]),
        .I1(file_dimension[26]),
        .O(packet_counter_vct3_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__5_i_3
       (.I0(Q[24]),
        .I1(file_dimension[25]),
        .O(packet_counter_vct3_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__5_i_4
       (.I0(Q[23]),
        .I1(file_dimension[24]),
        .O(packet_counter_vct3_carry__5_i_4_n_0));
  CARRY4 packet_counter_vct3_carry__6
       (.CI(packet_counter_vct3_carry__5_n_0),
        .CO({NLW_packet_counter_vct3_carry__6_CO_UNCONNECTED[3],packet_counter_vct3_carry__6_n_1,packet_counter_vct3_carry__6_n_2,packet_counter_vct3_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[29:27]}),
        .O(packet_counter_vct3[31:28]),
        .S({packet_counter_vct3_carry__6_i_1_n_0,packet_counter_vct3_carry__6_i_2_n_0,packet_counter_vct3_carry__6_i_3_n_0,packet_counter_vct3_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__6_i_1
       (.I0(Q[30]),
        .I1(file_dimension[31]),
        .O(packet_counter_vct3_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__6_i_2
       (.I0(Q[29]),
        .I1(file_dimension[30]),
        .O(packet_counter_vct3_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__6_i_3
       (.I0(Q[28]),
        .I1(file_dimension[29]),
        .O(packet_counter_vct3_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry__6_i_4
       (.I0(Q[27]),
        .I1(file_dimension[28]),
        .O(packet_counter_vct3_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry_i_1
       (.I0(Q[2]),
        .I1(file_dimension[3]),
        .O(packet_counter_vct3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry_i_2
       (.I0(Q[1]),
        .I1(file_dimension[2]),
        .O(packet_counter_vct3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    packet_counter_vct3_carry_i_3
       (.I0(Q[0]),
        .I1(file_dimension[1]),
        .O(packet_counter_vct3_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    packet_counter_vct3_carry_i_4
       (.I0(file_dimension[0]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[10]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[10]),
        .O(\packet_counter_vct[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[11]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[11]),
        .O(\packet_counter_vct[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[12]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[12]),
        .O(\packet_counter_vct[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[13]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[13]),
        .O(\packet_counter_vct[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[14]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[14]),
        .O(\packet_counter_vct[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[15]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[15]),
        .O(\packet_counter_vct[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[16]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[16]),
        .O(\packet_counter_vct[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[17]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[17]),
        .O(\packet_counter_vct[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[18]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[18]),
        .O(\packet_counter_vct[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[19]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[19]),
        .O(\packet_counter_vct[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[1]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[1]),
        .O(\packet_counter_vct[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[20]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[20]),
        .O(\packet_counter_vct[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[21]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[21]),
        .O(\packet_counter_vct[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[22]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[22]),
        .O(\packet_counter_vct[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[23]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[23]),
        .O(\packet_counter_vct[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[24]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[24]),
        .O(\packet_counter_vct[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[25]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[25]),
        .O(\packet_counter_vct[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[26]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[26]),
        .O(\packet_counter_vct[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[27]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[27]),
        .O(\packet_counter_vct[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[28]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[28]),
        .O(\packet_counter_vct[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[29]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[29]),
        .O(\packet_counter_vct[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[2]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[2]),
        .O(\packet_counter_vct[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[30]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[30]),
        .O(\packet_counter_vct[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[31]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[31]),
        .O(\packet_counter_vct[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \packet_counter_vct[31]_i_2 
       (.I0(packet_counter_vct3[13]),
        .I1(packet_counter_vct3[14]),
        .I2(packet_counter_vct3[11]),
        .I3(packet_counter_vct3[12]),
        .I4(\packet_counter_vct[31]_i_6_n_0 ),
        .O(\packet_counter_vct[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \packet_counter_vct[31]_i_3 
       (.I0(packet_counter_vct3[5]),
        .I1(packet_counter_vct3[6]),
        .I2(packet_counter_vct3[3]),
        .I3(packet_counter_vct3[4]),
        .I4(\packet_counter_vct[31]_i_7_n_0 ),
        .O(\packet_counter_vct[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \packet_counter_vct[31]_i_4 
       (.I0(\packet_counter_vct[31]_i_8_n_0 ),
        .I1(packet_counter_vct3[20]),
        .I2(packet_counter_vct3[19]),
        .I3(packet_counter_vct3[22]),
        .I4(packet_counter_vct3[21]),
        .I5(\packet_counter_vct[31]_i_9_n_0 ),
        .O(\packet_counter_vct[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packet_counter_vct[31]_i_6 
       (.I0(packet_counter_vct3[16]),
        .I1(packet_counter_vct3[15]),
        .I2(packet_counter_vct3[18]),
        .I3(packet_counter_vct3[17]),
        .O(\packet_counter_vct[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packet_counter_vct[31]_i_7 
       (.I0(packet_counter_vct3[8]),
        .I1(packet_counter_vct3[7]),
        .I2(packet_counter_vct3[10]),
        .I3(packet_counter_vct3[9]),
        .O(\packet_counter_vct[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packet_counter_vct[31]_i_8 
       (.I0(packet_counter_vct3[24]),
        .I1(packet_counter_vct3[23]),
        .I2(packet_counter_vct3[26]),
        .I3(packet_counter_vct3[25]),
        .O(\packet_counter_vct[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \packet_counter_vct[31]_i_9 
       (.I0(packet_counter_vct3[29]),
        .I1(packet_counter_vct3[30]),
        .I2(packet_counter_vct3[27]),
        .I3(packet_counter_vct3[28]),
        .I4(s00_axis_tlast),
        .I5(packet_counter_vct3[2]),
        .O(\packet_counter_vct[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[3]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[3]),
        .O(\packet_counter_vct[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[4]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[4]),
        .O(\packet_counter_vct[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \packet_counter_vct[4]_i_3 
       (.I0(Q[1]),
        .O(\packet_counter_vct[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[5]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[5]),
        .O(\packet_counter_vct[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[6]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[6]),
        .O(\packet_counter_vct[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[7]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[7]),
        .O(\packet_counter_vct[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[8]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[8]),
        .O(\packet_counter_vct[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \packet_counter_vct[9]_i_1 
       (.I0(\inverted_tdata_2ndB[7]_i_2_n_0 ),
        .I1(packet_counter_vct3[31]),
        .I2(\packet_counter_vct[31]_i_2_n_0 ),
        .I3(\packet_counter_vct[31]_i_3_n_0 ),
        .I4(\packet_counter_vct[31]_i_4_n_0 ),
        .I5(data0[9]),
        .O(\packet_counter_vct[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[10] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[10]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[11] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[11]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[12] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[12]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[12]_i_2 
       (.CI(\packet_counter_vct_reg[8]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[12]_i_2_n_0 ,\packet_counter_vct_reg[12]_i_2_n_1 ,\packet_counter_vct_reg[12]_i_2_n_2 ,\packet_counter_vct_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[13] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[13]_i_1_n_0 ),
        .Q(Q[12]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[14] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[14]_i_1_n_0 ),
        .Q(Q[13]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[15] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[15]_i_1_n_0 ),
        .Q(Q[14]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[16] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[16]_i_1_n_0 ),
        .Q(Q[15]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[16]_i_2 
       (.CI(\packet_counter_vct_reg[12]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[16]_i_2_n_0 ,\packet_counter_vct_reg[16]_i_2_n_1 ,\packet_counter_vct_reg[16]_i_2_n_2 ,\packet_counter_vct_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Q[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[17] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[17]_i_1_n_0 ),
        .Q(Q[16]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[18] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[18]_i_1_n_0 ),
        .Q(Q[17]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[19] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[19]_i_1_n_0 ),
        .Q(Q[18]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[1] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[20] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[20]_i_1_n_0 ),
        .Q(Q[19]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[20]_i_2 
       (.CI(\packet_counter_vct_reg[16]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[20]_i_2_n_0 ,\packet_counter_vct_reg[20]_i_2_n_1 ,\packet_counter_vct_reg[20]_i_2_n_2 ,\packet_counter_vct_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(Q[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[21] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[21]_i_1_n_0 ),
        .Q(Q[20]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[22] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[22]_i_1_n_0 ),
        .Q(Q[21]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[23] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[23]_i_1_n_0 ),
        .Q(Q[22]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[24] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[24]_i_1_n_0 ),
        .Q(Q[23]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[24]_i_2 
       (.CI(\packet_counter_vct_reg[20]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[24]_i_2_n_0 ,\packet_counter_vct_reg[24]_i_2_n_1 ,\packet_counter_vct_reg[24]_i_2_n_2 ,\packet_counter_vct_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(Q[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[25] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[25]_i_1_n_0 ),
        .Q(Q[24]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[26] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[26]_i_1_n_0 ),
        .Q(Q[25]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[27] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[27]_i_1_n_0 ),
        .Q(Q[26]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[28] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[28]_i_1_n_0 ),
        .Q(Q[27]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[28]_i_2 
       (.CI(\packet_counter_vct_reg[24]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[28]_i_2_n_0 ,\packet_counter_vct_reg[28]_i_2_n_1 ,\packet_counter_vct_reg[28]_i_2_n_2 ,\packet_counter_vct_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(Q[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[29] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[29]_i_1_n_0 ),
        .Q(Q[28]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[2] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[30] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[30]_i_1_n_0 ),
        .Q(Q[29]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[31] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[31]_i_1_n_0 ),
        .Q(Q[30]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[31]_i_5 
       (.CI(\packet_counter_vct_reg[28]_i_2_n_0 ),
        .CO({\NLW_packet_counter_vct_reg[31]_i_5_CO_UNCONNECTED [3:2],\packet_counter_vct_reg[31]_i_5_n_2 ,\packet_counter_vct_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_packet_counter_vct_reg[31]_i_5_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,Q[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[3] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[4] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\packet_counter_vct_reg[4]_i_2_n_0 ,\packet_counter_vct_reg[4]_i_2_n_1 ,\packet_counter_vct_reg[4]_i_2_n_2 ,\packet_counter_vct_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(data0[4:1]),
        .S({Q[3:2],\packet_counter_vct[4]_i_3_n_0 ,Q[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[5] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[5]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[6] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[6]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[7] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[7]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[8] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[8]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
  CARRY4 \packet_counter_vct_reg[8]_i_2 
       (.CI(\packet_counter_vct_reg[4]_i_2_n_0 ),
        .CO({\packet_counter_vct_reg[8]_i_2_n_0 ,\packet_counter_vct_reg[8]_i_2_n_1 ,\packet_counter_vct_reg[8]_i_2_n_2 ,\packet_counter_vct_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \packet_counter_vct_reg[9] 
       (.C(clk),
        .CE(inverted_tdata_MSB0),
        .D(\packet_counter_vct[9]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\inverted_tdata_MSB[7]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "S7_AXI4_Stream_Inverter_0_0,AXI4Stream_Inverter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AXI4Stream_Inverter,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (resetn,
    clk,
    s00_axis_tdata,
    s00_axis_tvalid,
    s00_axis_tlast,
    s00_axis_tready,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tready,
    counter,
    file_dimension);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, ASSOCIATED_RESET resetn:counter:file_dimension, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;
  (* x_interface_info = "xilinx.com:signal:data:1.0 counter DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME counter, LAYERED_METADATA undef" *) output [31:0]counter;
  (* x_interface_info = "xilinx.com:signal:data:1.0 file_dimension DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME file_dimension, LAYERED_METADATA undef" *) output [31:0]file_dimension;

  wire \<const0> ;
  wire clk;
  wire [31:1]\^counter ;
  wire [31:0]file_dimension;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire resetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;

  assign counter[31:1] = \^counter [31:1];
  assign counter[0] = \<const0> ;
  assign s00_axis_tready = m00_axis_tready;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter U0
       (.clk(clk),
        .counter(\^counter ),
        .file_dimension(file_dimension),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .resetn(resetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
