// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jan  3 08:15:08 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/MW/Rototype/VVD/FPGA/FPGA_0/repo/SM_ctrl/SM_ctrl.srcs/sources_1/ip/sum_uns_28_28_lat2/sum_uns_28_28_lat2_sim_netlist.v
// Design      : sum_uns_28_28_lat2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sum_uns_28_28_lat2,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module sum_uns_28_28_lat2
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [27:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [27:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [28:0]S;

  wire [27:0]A;
  wire [27:0]B;
  wire CLK;
  wire [28:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "1011111010111100001000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "28" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000000000000000" *) 
  (* c_b_width = "28" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "29" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sum_uns_28_28_lat2_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "28" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000000000000000000000" *) 
(* C_B_WIDTH = "28" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "1" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "29" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "1011111010111100001000000000" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "spartan7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sum_uns_28_28_lat2_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [27:0]A;
  input [27:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [28:0]S;

  wire \<const0> ;
  wire [27:0]A;
  wire [27:0]B;
  wire CLK;
  wire [28:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "1011111010111100001000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "28" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000000000000000" *) 
  (* c_b_width = "28" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "29" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sum_uns_28_28_lat2_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RIb8YmK74FSs/HT74/oFddMJrdxzwQtgXe9qy7+uUFcdfA4d/m9e/d8ijlD57Vz0V23bpeKRrZMK
lfsRQ6tMfRgB++UMUA7c4YGTVjoM6iKhOXk7Zv/m9l1w9Ri9XHgNV1yAEnOy7OIiRly/rL2T6TPn
r/eOdSjpffOya9xL0f7nknhkn0lnJgIyDrYOOS5H8NFAJCtuSSJQnwHLbZMesRu+uyk2Lu1qr1hP
MfjxXe3rAHQKx7F/To8L2EAgaT0Gt+Z9eONwg7WgZKxfHka50nZ3jmoC9LcogYYk8lv71YW+S2YR
vGVMbU8Q53kcj3rVZO4L2y+QK8Nr/QYBeQr8vw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
shMY8P8j9umCfmOdixQ5lIlKCudmYid++W/5SQm6XaHTcoSog3LVPdiecLvDmS6wFT/DMoLokpND
VicIveCHl5yfRImowTGC0KUw/3b7cs8grrYsDG0TQc+x/7OIug4xFEqqUjJblQ5Y6TlLFMcuHdNq
RSVDdrF1INJAXsUOtlzCnG/iqXp+VZnZdjWzUq5mLhTMdHNeIML5dTMW1X5te2WmrtleBhG1RKqw
8njF2IMQLWU0DL0v8CkRaG+yGas/817C5V76XyK/5C5JUAL96nbWXa8T54yvtLqxneTopzqTn3nd
ml/0sLDQG5bfNMrs5vSlWeST95V03O2mHK/UCg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36736)
`pragma protect data_block
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
ucVxAF0Dv7hs2IobdCWi5KQrQ90NohP0QewHpA==
`pragma protect end_protected
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
