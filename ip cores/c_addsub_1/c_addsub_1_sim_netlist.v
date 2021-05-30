// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 17 02:51:37 2021
// Host        : DESKTOP-KFTDESR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_1 -prefix
//               c_addsub_1_ c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_addsub_1
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_1_c_addsub_v12_0_12
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
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12_viv xst_addsub
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
C3iT465bkAQxRHkqbVKVvfF2J5+Q2NK/LO/Y0PV7R3UDCGwIt13k7dBmansFxF7dHQyPVhD4RC2N
25RVEUjIUkZ5Ezj0Hd9r49VUMUhDjCLwt4Zxe9QLYnFN/m255J7Gt9rFNlWJArDaOV8wGrOb0cnQ
vFjPy3QgInTDfACDL4od7yishUQhFqiBJhj+D/4FIvNASwd+RcMRgjoeAfJsfdycJz6gYDvgsNhL
73Z1rFUczDMcydLHCJ+dfMuKM7aka52UrtEBK49pBSfDAqsfVriT22t2QZrZtL5o3nBhDWvshrto
0u80EEQiFSTvGT3vrHYFqpu0wbJDaEpTSJwaTg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GbSJIwDbvNKKcH/w6/ggyAEgZ1cqDqY+TbTzXEr2YsvIztut2MTzptzwiUAilWkq4chTtGl0ZoM8
Lo9IMX6eNMkLcWbHcXtNz6FFlr8zBfpoNoQsNA+BBuEiO+ylXanDKflBjuRdLf5hYaqDq1CVBfJ4
+x8McIABftSUn0M2YxX7A6acHMP0UPDk5AS8qij2yFZ5VmuzQ8omQUvCg/c3vqFKdwh1OQ9rfYa+
JvVOHjc/m3BqHXT7EO4ZpS+zlJRI6x2Cj8kppE/x6SwgB7qQ4YDwvCRTyDFji8iO+xLdCrJ3wfLS
OwPrdMIuqDnUWA9dnwHu2qrKM5wtspzLN+UBDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12896)
`pragma protect data_block
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
s73Al6fTrSt0dKxKZ8acngUBEIuw3NHdWody
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
