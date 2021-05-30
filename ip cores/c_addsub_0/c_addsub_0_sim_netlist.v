// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 17 02:48:01 2021
// Host        : DESKTOP-KFTDESR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_0 -prefix
//               c_addsub_0_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
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
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
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
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
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
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jAGGfq8QGCjXg5BXCEStMhGJTBPxCntDIbjQWmZGPJ/dNvLhe8C9jfi8kOVIki8j7fBCu03tezaz
ZjIhUKSWXleLaCIhxTsC3I7DIvC9qNgU7r6xemtWHSMgjV9TyH6WR3VMSH2v5gFBtDGCUI0It8DR
Va1VUwW5WDqpisdk+CdaFXRQjvsmbWzqUBQ53o1XVlbIkt4oUpd16yG0//SlHaDUgwwHDzs8qWMU
qRw4n19EB/pC2VTxmGsynKBppgPuWmyazx9lUrOPqG45KQlpdUJOoTOX5B3o9sfe0boZt2X9B/Xb
WrsmKlC02JmV4D30RbPoodQ+IcxDx6uT2KriiA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zIn1LVpkr3dnNCLfBC061QfPlfGvMyKEbokuft4IDax7fF47pAwMEE1FvV0cImxDhgWxBHBpgrp1
VEQSL/9ykJyqexJHookFqUADW34zTizXWa1dJO3novfiQOOF7iAe51b5rM31P92wK967vhp130Ez
cCtnb6XeOGnLA6Jm6lscsJCnDtOnNnr/V0I7c5CYZ+eGJGSfqjMkqPm5eWclbe0hSg9oO/ltV5lL
Yd7ZttAvjEsSVHZxi38vN3yLN2OsSdp1nF9e0ZoojktG+PTSn+wsL3IjslK6s8ZO5DrWh/mMnw4O
9oQpzu3zcLdrGqfLW1djCh/EaAAaYWPtCiC3Tg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22992)
`pragma protect data_block
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
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
