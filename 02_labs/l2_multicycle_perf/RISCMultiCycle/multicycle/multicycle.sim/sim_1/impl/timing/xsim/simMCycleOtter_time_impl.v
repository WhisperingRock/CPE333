// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Jul  2 11:12:26 2026
// Host        : TPX13-YG3-WR running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/whirck/Desktop/Sources/2026_Summer/CPE333/02_labs/l2_multicycle_perf/RISCMultiCycle/multicycle.sim/sim_1/impl/timing/xsim/simMCycleOtter_time_impl.v
// Design      : OTTER_Wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD25
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD26
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD27
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD29
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD30
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD31
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD32
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD33
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD36
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD28
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD34
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD35
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module ALU
   (\OUT_reg[31] ,
    data1,
    CO,
    i__carry__2_i_8__0,
    ram_reg_r1_0_31_30_31_i_10,
    memory_mux_sel_a_pos_3_i_16,
    srcB,
    S,
    memory_reg_bram_0_i_69,
    memory_reg_bram_0_i_54,
    srcA,
    memory_mux_sel_a_pos_3_i_4,
    ram_reg_r1_0_31_12_17_i_43,
    ram_reg_r1_0_31_18_23_i_35,
    ram_reg_r1_0_31_24_29_i_25,
    ram_reg_r1_0_31_24_29_i_45,
    DI,
    memory_reg_bram_0_i_194,
    memory_reg_bram_0_i_129,
    memory_reg_bram_0_i_129_0,
    memory_reg_bram_0_i_107,
    memory_mux_sel_a_pos_3_i_8,
    ram_reg_r1_0_31_12_17_i_64,
    ram_reg_r1_0_31_18_23_i_70,
    ram_reg_r1_0_31_24_29_i_58,
    ram_reg_r1_0_31_24_29_i_82,
    \RESULT0_inferred__8/i__carry__0_0 ,
    \RESULT0_inferred__7/i__carry__0_0 ,
    \RESULT0_inferred__7/i__carry__0_1 ,
    \RESULT0_inferred__7/i__carry__1_0 ,
    \RESULT0_inferred__7/i__carry__1_1 ,
    \RESULT0_inferred__7/i__carry__2_0 ,
    \RESULT0_inferred__7/i__carry__2_1 ,
    memory_reg_bram_0_i_151,
    memory_reg_bram_0_i_151_0,
    \RESULT0_inferred__8/i__carry__0_1 ,
    \RESULT0_inferred__8/i__carry__1_0 ,
    \RESULT0_inferred__8/i__carry__1_1 ,
    \RESULT0_inferred__8/i__carry__2_0 ,
    \RESULT0_inferred__8/i__carry__2_1 ,
    memory_reg_bram_0_i_151_1,
    memory_reg_bram_0_i_151_2,
    alu_fun,
    ram_reg_r1_0_31_30_31_i_2,
    ram_reg_r1_0_31_30_31_i_2_0,
    ram_reg_r1_0_31_30_31_i_2_1,
    ram_reg_r1_0_31_30_31_i_2_2);
  output [29:0]\OUT_reg[31] ;
  output [31:0]data1;
  output [0:0]CO;
  output [0:0]i__carry__2_i_8__0;
  output ram_reg_r1_0_31_30_31_i_10;
  output memory_mux_sel_a_pos_3_i_16;
  input [11:0]srcB;
  input [3:0]S;
  input [3:0]memory_reg_bram_0_i_69;
  input [3:0]memory_reg_bram_0_i_54;
  input [26:0]srcA;
  input [3:0]memory_mux_sel_a_pos_3_i_4;
  input [3:0]ram_reg_r1_0_31_12_17_i_43;
  input [3:0]ram_reg_r1_0_31_18_23_i_35;
  input [3:0]ram_reg_r1_0_31_24_29_i_25;
  input [3:0]ram_reg_r1_0_31_24_29_i_45;
  input [1:0]DI;
  input [3:0]memory_reg_bram_0_i_194;
  input [1:0]memory_reg_bram_0_i_129;
  input [3:0]memory_reg_bram_0_i_129_0;
  input [3:0]memory_reg_bram_0_i_107;
  input [3:0]memory_mux_sel_a_pos_3_i_8;
  input [3:0]ram_reg_r1_0_31_12_17_i_64;
  input [3:0]ram_reg_r1_0_31_18_23_i_70;
  input [3:0]ram_reg_r1_0_31_24_29_i_58;
  input [3:0]ram_reg_r1_0_31_24_29_i_82;
  input [3:0]\RESULT0_inferred__8/i__carry__0_0 ;
  input [1:0]\RESULT0_inferred__7/i__carry__0_0 ;
  input [3:0]\RESULT0_inferred__7/i__carry__0_1 ;
  input [3:0]\RESULT0_inferred__7/i__carry__1_0 ;
  input [3:0]\RESULT0_inferred__7/i__carry__1_1 ;
  input [3:0]\RESULT0_inferred__7/i__carry__2_0 ;
  input [3:0]\RESULT0_inferred__7/i__carry__2_1 ;
  input [3:0]memory_reg_bram_0_i_151;
  input [3:0]memory_reg_bram_0_i_151_0;
  input [3:0]\RESULT0_inferred__8/i__carry__0_1 ;
  input [2:0]\RESULT0_inferred__8/i__carry__1_0 ;
  input [3:0]\RESULT0_inferred__8/i__carry__1_1 ;
  input [3:0]\RESULT0_inferred__8/i__carry__2_0 ;
  input [3:0]\RESULT0_inferred__8/i__carry__2_1 ;
  input [3:0]memory_reg_bram_0_i_151_1;
  input [3:0]memory_reg_bram_0_i_151_2;
  input [0:0]alu_fun;
  input ram_reg_r1_0_31_30_31_i_2;
  input ram_reg_r1_0_31_30_31_i_2_0;
  input ram_reg_r1_0_31_30_31_i_2_1;
  input ram_reg_r1_0_31_30_31_i_2_2;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [29:0]\OUT_reg[31] ;
  wire RESULT0_carry__0_n_0;
  wire RESULT0_carry__1_n_0;
  wire RESULT0_carry__2_n_0;
  wire RESULT0_carry__3_n_0;
  wire RESULT0_carry__4_n_0;
  wire RESULT0_carry__5_n_0;
  wire RESULT0_carry_n_0;
  wire \RESULT0_inferred__0/i__carry__0_n_0 ;
  wire \RESULT0_inferred__0/i__carry__1_n_0 ;
  wire \RESULT0_inferred__0/i__carry__2_n_0 ;
  wire \RESULT0_inferred__0/i__carry__3_n_0 ;
  wire \RESULT0_inferred__0/i__carry__4_n_0 ;
  wire \RESULT0_inferred__0/i__carry__5_n_0 ;
  wire \RESULT0_inferred__0/i__carry_n_0 ;
  wire [1:0]\RESULT0_inferred__7/i__carry__0_0 ;
  wire [3:0]\RESULT0_inferred__7/i__carry__0_1 ;
  wire \RESULT0_inferred__7/i__carry__0_n_0 ;
  wire [3:0]\RESULT0_inferred__7/i__carry__1_0 ;
  wire [3:0]\RESULT0_inferred__7/i__carry__1_1 ;
  wire \RESULT0_inferred__7/i__carry__1_n_0 ;
  wire [3:0]\RESULT0_inferred__7/i__carry__2_0 ;
  wire [3:0]\RESULT0_inferred__7/i__carry__2_1 ;
  wire \RESULT0_inferred__7/i__carry_n_0 ;
  wire [3:0]\RESULT0_inferred__8/i__carry__0_0 ;
  wire [3:0]\RESULT0_inferred__8/i__carry__0_1 ;
  wire \RESULT0_inferred__8/i__carry__0_n_0 ;
  wire [2:0]\RESULT0_inferred__8/i__carry__1_0 ;
  wire [3:0]\RESULT0_inferred__8/i__carry__1_1 ;
  wire \RESULT0_inferred__8/i__carry__1_n_0 ;
  wire [3:0]\RESULT0_inferred__8/i__carry__2_0 ;
  wire [3:0]\RESULT0_inferred__8/i__carry__2_1 ;
  wire \RESULT0_inferred__8/i__carry_n_0 ;
  wire [3:0]S;
  wire [0:0]alu_fun;
  wire [30:13]data0;
  wire [31:0]data1;
  wire [0:0]i__carry__2_i_8__0;
  wire memory_mux_sel_a_pos_3_i_16;
  wire [3:0]memory_mux_sel_a_pos_3_i_4;
  wire [3:0]memory_mux_sel_a_pos_3_i_8;
  wire [3:0]memory_reg_bram_0_i_107;
  wire [1:0]memory_reg_bram_0_i_129;
  wire [3:0]memory_reg_bram_0_i_129_0;
  wire [3:0]memory_reg_bram_0_i_151;
  wire [3:0]memory_reg_bram_0_i_151_0;
  wire [3:0]memory_reg_bram_0_i_151_1;
  wire [3:0]memory_reg_bram_0_i_151_2;
  wire [3:0]memory_reg_bram_0_i_194;
  wire [3:0]memory_reg_bram_0_i_54;
  wire [3:0]memory_reg_bram_0_i_69;
  wire [3:0]ram_reg_r1_0_31_12_17_i_43;
  wire [3:0]ram_reg_r1_0_31_12_17_i_64;
  wire [3:0]ram_reg_r1_0_31_18_23_i_35;
  wire [3:0]ram_reg_r1_0_31_18_23_i_70;
  wire [3:0]ram_reg_r1_0_31_24_29_i_25;
  wire [3:0]ram_reg_r1_0_31_24_29_i_45;
  wire [3:0]ram_reg_r1_0_31_24_29_i_58;
  wire [3:0]ram_reg_r1_0_31_24_29_i_82;
  wire ram_reg_r1_0_31_30_31_i_10;
  wire ram_reg_r1_0_31_30_31_i_2;
  wire ram_reg_r1_0_31_30_31_i_2_0;
  wire ram_reg_r1_0_31_30_31_i_2_1;
  wire ram_reg_r1_0_31_30_31_i_2_2;
  wire [26:0]srcA;
  wire [11:0]srcB;
  wire [2:0]NLW_RESULT0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_RESULT0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_RESULT0_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__7/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__7/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__7/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__7/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__7/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__7/i__carry__1_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__7/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__7/i__carry__2_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__8/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__8/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__8/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__8/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__8/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__8/i__carry__1_O_UNCONNECTED ;
  wire [2:0]\NLW_RESULT0_inferred__8/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_RESULT0_inferred__8/i__carry__2_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry
       (.CI(1'b0),
        .CO({RESULT0_carry_n_0,NLW_RESULT0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcB[3:0]),
        .O(\OUT_reg[31] [3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__0
       (.CI(RESULT0_carry_n_0),
        .CO({RESULT0_carry__0_n_0,NLW_RESULT0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcB[7:4]),
        .O(\OUT_reg[31] [7:4]),
        .S(memory_reg_bram_0_i_69));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__1
       (.CI(RESULT0_carry__0_n_0),
        .CO({RESULT0_carry__1_n_0,NLW_RESULT0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcB[11:8]),
        .O(\OUT_reg[31] [11:8]),
        .S(memory_reg_bram_0_i_54));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__2
       (.CI(RESULT0_carry__1_n_0),
        .CO({RESULT0_carry__2_n_0,NLW_RESULT0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[11:8]),
        .O({\OUT_reg[31] [14:13],data0[13],\OUT_reg[31] [12]}),
        .S(memory_mux_sel_a_pos_3_i_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__3
       (.CI(RESULT0_carry__2_n_0),
        .CO({RESULT0_carry__3_n_0,NLW_RESULT0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[15:12]),
        .O(\OUT_reg[31] [18:15]),
        .S(ram_reg_r1_0_31_12_17_i_43));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__4
       (.CI(RESULT0_carry__3_n_0),
        .CO({RESULT0_carry__4_n_0,NLW_RESULT0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[19:16]),
        .O(\OUT_reg[31] [22:19]),
        .S(ram_reg_r1_0_31_18_23_i_35));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__5
       (.CI(RESULT0_carry__4_n_0),
        .CO({RESULT0_carry__5_n_0,NLW_RESULT0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[23:20]),
        .O(\OUT_reg[31] [26:23]),
        .S(ram_reg_r1_0_31_24_29_i_25));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 RESULT0_carry__6
       (.CI(RESULT0_carry__5_n_0),
        .CO(NLW_RESULT0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,srcA[26:24]}),
        .O({\OUT_reg[31] [29],data0[30],\OUT_reg[31] [28:27]}),
        .S(ram_reg_r1_0_31_24_29_i_45));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\RESULT0_inferred__0/i__carry_n_0 ,\NLW_RESULT0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({srcA[1],DI[1],srcA[0],DI[0]}),
        .O(data1[3:0]),
        .S(memory_reg_bram_0_i_194));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__0 
       (.CI(\RESULT0_inferred__0/i__carry_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__0_n_0 ,\NLW_RESULT0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({srcA[3],memory_reg_bram_0_i_129[1],srcA[2],memory_reg_bram_0_i_129[0]}),
        .O(data1[7:4]),
        .S(memory_reg_bram_0_i_129_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__1 
       (.CI(\RESULT0_inferred__0/i__carry__0_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__1_n_0 ,\NLW_RESULT0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[7:4]),
        .O(data1[11:8]),
        .S(memory_reg_bram_0_i_107));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__2 
       (.CI(\RESULT0_inferred__0/i__carry__1_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__2_n_0 ,\NLW_RESULT0_inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[11:8]),
        .O(data1[15:12]),
        .S(memory_mux_sel_a_pos_3_i_8));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__3 
       (.CI(\RESULT0_inferred__0/i__carry__2_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__3_n_0 ,\NLW_RESULT0_inferred__0/i__carry__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[15:12]),
        .O(data1[19:16]),
        .S(ram_reg_r1_0_31_12_17_i_64));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__4 
       (.CI(\RESULT0_inferred__0/i__carry__3_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__4_n_0 ,\NLW_RESULT0_inferred__0/i__carry__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[19:16]),
        .O(data1[23:20]),
        .S(ram_reg_r1_0_31_18_23_i_70));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__5 
       (.CI(\RESULT0_inferred__0/i__carry__4_n_0 ),
        .CO({\RESULT0_inferred__0/i__carry__5_n_0 ,\NLW_RESULT0_inferred__0/i__carry__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(srcA[23:20]),
        .O(data1[27:24]),
        .S(ram_reg_r1_0_31_24_29_i_58));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \RESULT0_inferred__0/i__carry__6 
       (.CI(\RESULT0_inferred__0/i__carry__5_n_0 ),
        .CO(\NLW_RESULT0_inferred__0/i__carry__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,srcA[26:24]}),
        .O(data1[31:28]),
        .S(ram_reg_r1_0_31_24_29_i_82));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__7/i__carry 
       (.CI(1'b0),
        .CO({\RESULT0_inferred__7/i__carry_n_0 ,\NLW_RESULT0_inferred__7/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\RESULT0_inferred__8/i__carry__0_0 [3:2],\RESULT0_inferred__7/i__carry__0_0 }),
        .O(\NLW_RESULT0_inferred__7/i__carry_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__7/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__7/i__carry__0 
       (.CI(\RESULT0_inferred__7/i__carry_n_0 ),
        .CO({\RESULT0_inferred__7/i__carry__0_n_0 ,\NLW_RESULT0_inferred__7/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\RESULT0_inferred__7/i__carry__1_0 ),
        .O(\NLW_RESULT0_inferred__7/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__7/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__7/i__carry__1 
       (.CI(\RESULT0_inferred__7/i__carry__0_n_0 ),
        .CO({\RESULT0_inferred__7/i__carry__1_n_0 ,\NLW_RESULT0_inferred__7/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\RESULT0_inferred__7/i__carry__2_0 ),
        .O(\NLW_RESULT0_inferred__7/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__7/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__7/i__carry__2 
       (.CI(\RESULT0_inferred__7/i__carry__1_n_0 ),
        .CO({CO,\NLW_RESULT0_inferred__7/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(memory_reg_bram_0_i_151),
        .O(\NLW_RESULT0_inferred__7/i__carry__2_O_UNCONNECTED [3:0]),
        .S(memory_reg_bram_0_i_151_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__8/i__carry 
       (.CI(1'b0),
        .CO({\RESULT0_inferred__8/i__carry_n_0 ,\NLW_RESULT0_inferred__8/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\RESULT0_inferred__8/i__carry__0_0 ),
        .O(\NLW_RESULT0_inferred__8/i__carry_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__8/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__8/i__carry__0 
       (.CI(\RESULT0_inferred__8/i__carry_n_0 ),
        .CO({\RESULT0_inferred__8/i__carry__0_n_0 ,\NLW_RESULT0_inferred__8/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\RESULT0_inferred__8/i__carry__1_0 ,\RESULT0_inferred__7/i__carry__1_0 [0]}),
        .O(\NLW_RESULT0_inferred__8/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__8/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__8/i__carry__1 
       (.CI(\RESULT0_inferred__8/i__carry__0_n_0 ),
        .CO({\RESULT0_inferred__8/i__carry__1_n_0 ,\NLW_RESULT0_inferred__8/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\RESULT0_inferred__8/i__carry__2_0 ),
        .O(\NLW_RESULT0_inferred__8/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\RESULT0_inferred__8/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \RESULT0_inferred__8/i__carry__2 
       (.CI(\RESULT0_inferred__8/i__carry__1_n_0 ),
        .CO({i__carry__2_i_8__0,\NLW_RESULT0_inferred__8/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(memory_reg_bram_0_i_151_1),
        .O(\NLW_RESULT0_inferred__8/i__carry__2_O_UNCONNECTED [3:0]),
        .S(memory_reg_bram_0_i_151_2));
  LUT2 #(
    .INIT(4'h2)) 
    memory_mux_sel_a_pos_2_i_9
       (.I0(data0[13]),
        .I1(alu_fun),
        .O(memory_mux_sel_a_pos_3_i_16));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    ram_reg_r1_0_31_30_31_i_5
       (.I0(data0[30]),
        .I1(alu_fun),
        .I2(ram_reg_r1_0_31_30_31_i_2),
        .I3(ram_reg_r1_0_31_30_31_i_2_0),
        .I4(ram_reg_r1_0_31_30_31_i_2_1),
        .I5(ram_reg_r1_0_31_30_31_i_2_2),
        .O(ram_reg_r1_0_31_30_31_i_10));
endmodule

module BAG
   (jalr,
    \OUT_reg[12] ,
    \OUT_reg[16] ,
    \OUT_reg[19] ,
    \OUT_reg[4] ,
    \OUT_reg[12]_0 ,
    \OUT_reg[4]_0 ,
    \OUT_reg[19]_0 ,
    \OUT_reg[16]_0 ,
    ir,
    S,
    \OUT_reg[7] ,
    \OUT_reg[11] ,
    \OUT_reg[15] ,
    \OUT_reg[19]_1 ,
    \OUT_reg[23] ,
    \OUT_reg[27] ,
    \OUT_reg[31] ,
    Q);
  output [31:0]jalr;
  output [1:0]\OUT_reg[12] ;
  output [3:0]\OUT_reg[16] ;
  output [2:0]\OUT_reg[19] ;
  output [3:0]\OUT_reg[4] ;
  output [1:0]\OUT_reg[12]_0 ;
  output [3:0]\OUT_reg[4]_0 ;
  output [2:0]\OUT_reg[19]_0 ;
  output [3:0]\OUT_reg[16]_0 ;
  input [24:0]ir;
  input [3:0]S;
  input [3:0]\OUT_reg[7] ;
  input [3:0]\OUT_reg[11] ;
  input [3:0]\OUT_reg[15] ;
  input [3:0]\OUT_reg[19]_1 ;
  input [3:0]\OUT_reg[23] ;
  input [3:0]\OUT_reg[27] ;
  input [3:0]\OUT_reg[31] ;
  input [12:0]Q;

  wire JALR_carry__0_n_0;
  wire JALR_carry__1_n_0;
  wire JALR_carry__2_n_0;
  wire JALR_carry__3_n_0;
  wire JALR_carry__4_n_0;
  wire JALR_carry__5_n_0;
  wire JALR_carry_n_0;
  wire [3:0]\OUT_reg[11] ;
  wire [1:0]\OUT_reg[12] ;
  wire [1:0]\OUT_reg[12]_0 ;
  wire [3:0]\OUT_reg[15] ;
  wire [3:0]\OUT_reg[16] ;
  wire [3:0]\OUT_reg[16]_0 ;
  wire [2:0]\OUT_reg[19] ;
  wire [2:0]\OUT_reg[19]_0 ;
  wire [3:0]\OUT_reg[19]_1 ;
  wire [3:0]\OUT_reg[23] ;
  wire [3:0]\OUT_reg[27] ;
  wire [3:0]\OUT_reg[31] ;
  wire [3:0]\OUT_reg[4] ;
  wire [3:0]\OUT_reg[4]_0 ;
  wire [3:0]\OUT_reg[7] ;
  wire [12:0]Q;
  wire [3:0]S;
  wire [24:0]ir;
  wire [31:0]jalr;
  wire [2:0]NLW_JALR_carry_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_JALR_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_JALR_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry
       (.CI(1'b0),
        .CO({JALR_carry_n_0,NLW_JALR_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ir[16:13]),
        .O(jalr[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__0
       (.CI(JALR_carry_n_0),
        .CO({JALR_carry__0_n_0,NLW_JALR_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ir[20:17]),
        .O(jalr[7:4]),
        .S(\OUT_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__1
       (.CI(JALR_carry__0_n_0),
        .CO({JALR_carry__1_n_0,NLW_JALR_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ir[24:21]),
        .O(jalr[11:8]),
        .S(\OUT_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__2
       (.CI(JALR_carry__1_n_0),
        .CO({JALR_carry__2_n_0,NLW_JALR_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ir[24],ir[24],ir[24],ir[24]}),
        .O(jalr[15:12]),
        .S(\OUT_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__3
       (.CI(JALR_carry__2_n_0),
        .CO({JALR_carry__3_n_0,NLW_JALR_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ir[24],ir[24],ir[24],ir[24]}),
        .O(jalr[19:16]),
        .S(\OUT_reg[19]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__4
       (.CI(JALR_carry__3_n_0),
        .CO({JALR_carry__4_n_0,NLW_JALR_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ir[24],ir[24],ir[24],ir[24]}),
        .O(jalr[23:20]),
        .S(\OUT_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__5
       (.CI(JALR_carry__4_n_0),
        .CO({JALR_carry__5_n_0,NLW_JALR_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ir[24],ir[24],ir[24],ir[24]}),
        .O(jalr[27:24]),
        .S(\OUT_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 JALR_carry__6
       (.CI(JALR_carry__5_n_0),
        .CO(NLW_JALR_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,ir[24],ir[24],ir[24]}),
        .O(jalr[31:28]),
        .S(\OUT_reg[31] ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_4 
       (.I0(Q[5]),
        .I1(ir[24]),
        .O(\OUT_reg[12]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_5 
       (.I0(Q[4]),
        .I1(ir[0]),
        .O(\OUT_reg[12]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_8 
       (.I0(Q[5]),
        .I1(ir[5]),
        .O(\OUT_reg[12] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_9 
       (.I0(Q[4]),
        .I1(ir[13]),
        .O(\OUT_reg[12] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_10 
       (.I0(Q[7]),
        .I1(ir[7]),
        .O(\OUT_reg[16] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_11 
       (.I0(Q[6]),
        .I1(ir[6]),
        .O(\OUT_reg[16] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_4 
       (.I0(Q[9]),
        .I1(ir[24]),
        .O(\OUT_reg[16]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_5 
       (.I0(Q[8]),
        .I1(ir[24]),
        .O(\OUT_reg[16]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_6 
       (.I0(Q[7]),
        .I1(ir[24]),
        .O(\OUT_reg[16]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_7 
       (.I0(Q[6]),
        .I1(ir[24]),
        .O(\OUT_reg[16]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_8 
       (.I0(Q[9]),
        .I1(ir[9]),
        .O(\OUT_reg[16] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[16]_i_9 
       (.I0(Q[8]),
        .I1(ir[8]),
        .O(\OUT_reg[16] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_10 
       (.I0(Q[11]),
        .I1(ir[11]),
        .O(\OUT_reg[19] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_11 
       (.I0(Q[10]),
        .I1(ir[10]),
        .O(\OUT_reg[19] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_5 
       (.I0(Q[12]),
        .I1(ir[24]),
        .O(\OUT_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_6 
       (.I0(Q[11]),
        .I1(ir[24]),
        .O(\OUT_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_7 
       (.I0(Q[10]),
        .I1(ir[24]),
        .O(\OUT_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_9 
       (.I0(Q[12]),
        .I1(ir[12]),
        .O(\OUT_reg[19] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_10 
       (.I0(Q[1]),
        .I1(ir[15]),
        .O(\OUT_reg[4] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_11 
       (.I0(Q[0]),
        .I1(ir[14]),
        .O(\OUT_reg[4] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_4 
       (.I0(Q[3]),
        .I1(ir[4]),
        .O(\OUT_reg[4]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_5 
       (.I0(Q[2]),
        .I1(ir[3]),
        .O(\OUT_reg[4]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_6 
       (.I0(Q[1]),
        .I1(ir[2]),
        .O(\OUT_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_7 
       (.I0(Q[0]),
        .I1(ir[1]),
        .O(\OUT_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_8 
       (.I0(Q[3]),
        .I1(ir[17]),
        .O(\OUT_reg[4] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[4]_i_9 
       (.I0(Q[2]),
        .I1(ir[16]),
        .O(\OUT_reg[4] [2]));
endmodule

module BCG
   (CO,
    BR_LT_carry__2_i_8,
    BR_LTU_carry__2_i_8,
    S,
    BR_EQ_carry__1_0,
    \OUT[31]_i_18 ,
    DI,
    BR_LT_carry__0_0,
    BR_LT_carry__1_0,
    BR_LT_carry__1_1,
    BR_LT_carry__2_0,
    BR_LT_carry__2_1,
    \OUT[31]_i_18_0 ,
    \OUT[31]_i_18_1 ,
    BR_LTU_carry__0_0,
    BR_LTU_carry__0_1,
    BR_LTU_carry__1_0,
    BR_LTU_carry__1_1,
    BR_LTU_carry__2_0,
    BR_LTU_carry__2_1,
    \OUT[31]_i_18_2 ,
    \OUT[31]_i_18_3 );
  output [0:0]CO;
  output [0:0]BR_LT_carry__2_i_8;
  output [0:0]BR_LTU_carry__2_i_8;
  input [3:0]S;
  input [3:0]BR_EQ_carry__1_0;
  input [2:0]\OUT[31]_i_18 ;
  input [3:0]DI;
  input [3:0]BR_LT_carry__0_0;
  input [3:0]BR_LT_carry__1_0;
  input [3:0]BR_LT_carry__1_1;
  input [3:0]BR_LT_carry__2_0;
  input [3:0]BR_LT_carry__2_1;
  input [3:0]\OUT[31]_i_18_0 ;
  input [3:0]\OUT[31]_i_18_1 ;
  input [3:0]BR_LTU_carry__0_0;
  input [3:0]BR_LTU_carry__0_1;
  input [3:0]BR_LTU_carry__1_0;
  input [3:0]BR_LTU_carry__1_1;
  input [3:0]BR_LTU_carry__2_0;
  input [3:0]BR_LTU_carry__2_1;
  input [3:0]\OUT[31]_i_18_2 ;
  input [3:0]\OUT[31]_i_18_3 ;

  wire BR_EQ_carry__0_n_0;
  wire [3:0]BR_EQ_carry__1_0;
  wire BR_EQ_carry_n_0;
  wire [3:0]BR_LTU_carry__0_0;
  wire [3:0]BR_LTU_carry__0_1;
  wire BR_LTU_carry__0_n_0;
  wire [3:0]BR_LTU_carry__1_0;
  wire [3:0]BR_LTU_carry__1_1;
  wire BR_LTU_carry__1_n_0;
  wire [3:0]BR_LTU_carry__2_0;
  wire [3:0]BR_LTU_carry__2_1;
  wire [0:0]BR_LTU_carry__2_i_8;
  wire BR_LTU_carry_n_0;
  wire [3:0]BR_LT_carry__0_0;
  wire BR_LT_carry__0_n_0;
  wire [3:0]BR_LT_carry__1_0;
  wire [3:0]BR_LT_carry__1_1;
  wire BR_LT_carry__1_n_0;
  wire [3:0]BR_LT_carry__2_0;
  wire [3:0]BR_LT_carry__2_1;
  wire [0:0]BR_LT_carry__2_i_8;
  wire BR_LT_carry_n_0;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]\OUT[31]_i_18 ;
  wire [3:0]\OUT[31]_i_18_0 ;
  wire [3:0]\OUT[31]_i_18_1 ;
  wire [3:0]\OUT[31]_i_18_2 ;
  wire [3:0]\OUT[31]_i_18_3 ;
  wire [3:0]S;
  wire [2:0]NLW_BR_EQ_carry_CO_UNCONNECTED;
  wire [3:0]NLW_BR_EQ_carry_O_UNCONNECTED;
  wire [2:0]NLW_BR_EQ_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_BR_EQ_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_BR_EQ_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_BR_EQ_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_BR_LTU_carry_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LTU_carry_O_UNCONNECTED;
  wire [2:0]NLW_BR_LTU_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LTU_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_BR_LTU_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LTU_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_BR_LTU_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LTU_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_BR_LT_carry_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LT_carry_O_UNCONNECTED;
  wire [2:0]NLW_BR_LT_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LT_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_BR_LT_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LT_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_BR_LT_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_BR_LT_carry__2_O_UNCONNECTED;

  CARRY4 BR_EQ_carry
       (.CI(1'b0),
        .CO({BR_EQ_carry_n_0,NLW_BR_EQ_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BR_EQ_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 BR_EQ_carry__0
       (.CI(BR_EQ_carry_n_0),
        .CO({BR_EQ_carry__0_n_0,NLW_BR_EQ_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BR_EQ_carry__0_O_UNCONNECTED[3:0]),
        .S(BR_EQ_carry__1_0));
  CARRY4 BR_EQ_carry__1
       (.CI(BR_EQ_carry__0_n_0),
        .CO({NLW_BR_EQ_carry__1_CO_UNCONNECTED[3],CO,NLW_BR_EQ_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BR_EQ_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,\OUT[31]_i_18 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LTU_carry
       (.CI(1'b0),
        .CO({BR_LTU_carry_n_0,NLW_BR_LTU_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(BR_LTU_carry__0_0),
        .O(NLW_BR_LTU_carry_O_UNCONNECTED[3:0]),
        .S(BR_LTU_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LTU_carry__0
       (.CI(BR_LTU_carry_n_0),
        .CO({BR_LTU_carry__0_n_0,NLW_BR_LTU_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(BR_LTU_carry__1_0),
        .O(NLW_BR_LTU_carry__0_O_UNCONNECTED[3:0]),
        .S(BR_LTU_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LTU_carry__1
       (.CI(BR_LTU_carry__0_n_0),
        .CO({BR_LTU_carry__1_n_0,NLW_BR_LTU_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(BR_LTU_carry__2_0),
        .O(NLW_BR_LTU_carry__1_O_UNCONNECTED[3:0]),
        .S(BR_LTU_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LTU_carry__2
       (.CI(BR_LTU_carry__1_n_0),
        .CO({BR_LTU_carry__2_i_8,NLW_BR_LTU_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\OUT[31]_i_18_2 ),
        .O(NLW_BR_LTU_carry__2_O_UNCONNECTED[3:0]),
        .S(\OUT[31]_i_18_3 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LT_carry
       (.CI(1'b0),
        .CO({BR_LT_carry_n_0,NLW_BR_LT_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_BR_LT_carry_O_UNCONNECTED[3:0]),
        .S(BR_LT_carry__0_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LT_carry__0
       (.CI(BR_LT_carry_n_0),
        .CO({BR_LT_carry__0_n_0,NLW_BR_LT_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(BR_LT_carry__1_0),
        .O(NLW_BR_LT_carry__0_O_UNCONNECTED[3:0]),
        .S(BR_LT_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LT_carry__1
       (.CI(BR_LT_carry__0_n_0),
        .CO({BR_LT_carry__1_n_0,NLW_BR_LT_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(BR_LT_carry__2_0),
        .O(NLW_BR_LT_carry__1_O_UNCONNECTED[3:0]),
        .S(BR_LT_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 BR_LT_carry__2
       (.CI(BR_LT_carry__1_n_0),
        .CO({BR_LT_carry__2_i_8,NLW_BR_LT_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\OUT[31]_i_18_0 ),
        .O(NLW_BR_LT_carry__2_O_UNCONNECTED[3:0]),
        .S(\OUT[31]_i_18_1 ));
endmodule

module CU_FSM
   (Q,
    \FSM_onehot_PS_reg[1]_0 ,
    \FSM_onehot_PS_reg[1]_1 ,
    SS,
    D,
    clk_50_BUFG);
  output [3:0]Q;
  input \FSM_onehot_PS_reg[1]_0 ;
  input \FSM_onehot_PS_reg[1]_1 ;
  input [0:0]SS;
  input [0:0]D;
  input clk_50_BUFG;

  wire [0:0]D;
  wire \FSM_onehot_PS_reg[1]_0 ;
  wire \FSM_onehot_PS_reg[1]_1 ;
  wire [1:1]NS;
  wire [3:0]Q;
  wire [0:0]SS;
  wire clk_50_BUFG;

  LUT5 #(
    .INIT(32'hFEFFEEEE)) 
    \FSM_onehot_PS[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(\FSM_onehot_PS_reg[1]_0 ),
        .I3(\FSM_onehot_PS_reg[1]_1 ),
        .I4(Q[2]),
        .O(NS));
  (* FSM_ENCODED_STATES = "INIT:0001,EXEC:0100,WRITE_BACK:1000,FETCH:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_PS_reg[0] 
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(Q[0]),
        .S(SS));
  (* FSM_ENCODED_STATES = "INIT:0001,EXEC:0100,WRITE_BACK:1000,FETCH:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[1] 
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(NS),
        .Q(Q[1]),
        .R(SS));
  (* FSM_ENCODED_STATES = "INIT:0001,EXEC:0100,WRITE_BACK:1000,FETCH:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[2] 
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SS));
  (* FSM_ENCODED_STATES = "INIT:0001,EXEC:0100,WRITE_BACK:1000,FETCH:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[3] 
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q[3]),
        .R(SS));
endmodule

module CathodeDriver
   (Q,
    ANODES_OBUF,
    CLK,
    \CATHODES_reg[0]_0 );
  output [6:0]Q;
  output [3:0]ANODES_OBUF;
  input CLK;
  input [15:0]\CATHODES_reg[0]_0 ;

  wire \ANODES[2]_i_1_n_0 ;
  wire [3:0]ANODES_OBUF;
  wire \CATHODES[0]_i_2_n_0 ;
  wire \CATHODES[0]_i_3_n_0 ;
  wire \CATHODES[0]_i_4_n_0 ;
  wire \CATHODES[0]_i_5_n_0 ;
  wire \CATHODES[1]_i_2_n_0 ;
  wire \CATHODES[1]_i_3_n_0 ;
  wire \CATHODES[1]_i_4_n_0 ;
  wire \CATHODES[1]_i_5_n_0 ;
  wire \CATHODES[2]_i_2_n_0 ;
  wire \CATHODES[2]_i_3_n_0 ;
  wire \CATHODES[2]_i_4_n_0 ;
  wire \CATHODES[2]_i_5_n_0 ;
  wire \CATHODES[3]_i_2_n_0 ;
  wire \CATHODES[3]_i_3_n_0 ;
  wire \CATHODES[3]_i_4_n_0 ;
  wire \CATHODES[3]_i_5_n_0 ;
  wire \CATHODES[4]_i_2_n_0 ;
  wire \CATHODES[4]_i_3_n_0 ;
  wire \CATHODES[4]_i_4_n_0 ;
  wire \CATHODES[4]_i_5_n_0 ;
  wire \CATHODES[5]_i_2_n_0 ;
  wire \CATHODES[5]_i_3_n_0 ;
  wire \CATHODES[5]_i_4_n_0 ;
  wire \CATHODES[5]_i_5_n_0 ;
  wire \CATHODES[6]_i_2_n_0 ;
  wire \CATHODES[6]_i_3_n_0 ;
  wire \CATHODES[6]_i_4_n_0 ;
  wire \CATHODES[6]_i_5_n_0 ;
  wire [15:0]\CATHODES_reg[0]_0 ;
  wire \CATHODES_reg[0]_i_1_n_0 ;
  wire \CATHODES_reg[1]_i_1_n_0 ;
  wire \CATHODES_reg[2]_i_1_n_0 ;
  wire \CATHODES_reg[3]_i_1_n_0 ;
  wire \CATHODES_reg[4]_i_1_n_0 ;
  wire \CATHODES_reg[5]_i_1_n_0 ;
  wire \CATHODES_reg[6]_i_1_n_0 ;
  wire CLK;
  wire [6:0]Q;
  wire clear;
  wire \clk_div_counter[0]_i_3_n_0 ;
  wire \clk_div_counter[0]_i_4_n_0 ;
  wire \clk_div_counter[0]_i_5_n_0 ;
  wire \clk_div_counter[0]_i_7_n_0 ;
  wire [19:0]clk_div_counter_reg;
  wire \clk_div_counter_reg[0]_i_10_n_0 ;
  wire \clk_div_counter_reg[0]_i_10_n_4 ;
  wire \clk_div_counter_reg[0]_i_10_n_5 ;
  wire \clk_div_counter_reg[0]_i_10_n_6 ;
  wire \clk_div_counter_reg[0]_i_10_n_7 ;
  wire \clk_div_counter_reg[0]_i_11_n_0 ;
  wire \clk_div_counter_reg[0]_i_11_n_4 ;
  wire \clk_div_counter_reg[0]_i_11_n_5 ;
  wire \clk_div_counter_reg[0]_i_11_n_6 ;
  wire \clk_div_counter_reg[0]_i_11_n_7 ;
  wire \clk_div_counter_reg[0]_i_2_n_0 ;
  wire \clk_div_counter_reg[0]_i_2_n_4 ;
  wire \clk_div_counter_reg[0]_i_2_n_5 ;
  wire \clk_div_counter_reg[0]_i_2_n_6 ;
  wire \clk_div_counter_reg[0]_i_2_n_7 ;
  wire \clk_div_counter_reg[0]_i_6_n_0 ;
  wire \clk_div_counter_reg[0]_i_6_n_4 ;
  wire \clk_div_counter_reg[0]_i_6_n_5 ;
  wire \clk_div_counter_reg[0]_i_6_n_6 ;
  wire \clk_div_counter_reg[0]_i_6_n_7 ;
  wire \clk_div_counter_reg[0]_i_8_n_5 ;
  wire \clk_div_counter_reg[0]_i_8_n_6 ;
  wire \clk_div_counter_reg[0]_i_8_n_7 ;
  wire \clk_div_counter_reg[0]_i_9_n_0 ;
  wire \clk_div_counter_reg[0]_i_9_n_4 ;
  wire \clk_div_counter_reg[0]_i_9_n_5 ;
  wire \clk_div_counter_reg[0]_i_9_n_6 ;
  wire \clk_div_counter_reg[0]_i_9_n_7 ;
  wire \clk_div_counter_reg[12]_i_1_n_0 ;
  wire \clk_div_counter_reg[12]_i_1_n_4 ;
  wire \clk_div_counter_reg[12]_i_1_n_5 ;
  wire \clk_div_counter_reg[12]_i_1_n_6 ;
  wire \clk_div_counter_reg[12]_i_1_n_7 ;
  wire \clk_div_counter_reg[16]_i_1_n_4 ;
  wire \clk_div_counter_reg[16]_i_1_n_5 ;
  wire \clk_div_counter_reg[16]_i_1_n_6 ;
  wire \clk_div_counter_reg[16]_i_1_n_7 ;
  wire \clk_div_counter_reg[4]_i_1_n_0 ;
  wire \clk_div_counter_reg[4]_i_1_n_4 ;
  wire \clk_div_counter_reg[4]_i_1_n_5 ;
  wire \clk_div_counter_reg[4]_i_1_n_6 ;
  wire \clk_div_counter_reg[4]_i_1_n_7 ;
  wire \clk_div_counter_reg[8]_i_1_n_0 ;
  wire \clk_div_counter_reg[8]_i_1_n_4 ;
  wire \clk_div_counter_reg[8]_i_1_n_5 ;
  wire \clk_div_counter_reg[8]_i_1_n_6 ;
  wire \clk_div_counter_reg[8]_i_1_n_7 ;
  wire [1:0]r_disp_digit;
  wire \r_disp_digit[0]_i_1_n_0 ;
  wire \r_disp_digit[1]_i_1_n_0 ;
  wire s_clk_500;
  wire s_clk_500_i_1_n_0;
  wire [2:0]\NLW_clk_div_counter_reg[0]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[0]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_div_counter_reg[0]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_div_counter_reg[0]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[0]_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_div_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_clk_div_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \ANODES[2]_i_1 
       (.I0(r_disp_digit[1]),
        .O(\ANODES[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ANODES_reg[0] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(r_disp_digit[1]),
        .Q(ANODES_OBUF[0]),
        .S(r_disp_digit[0]));
  FDSE #(
    .INIT(1'b1)) 
    \ANODES_reg[1] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(r_disp_digit[1]),
        .Q(ANODES_OBUF[1]),
        .S(\r_disp_digit[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ANODES_reg[2] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\ANODES[2]_i_1_n_0 ),
        .Q(ANODES_OBUF[2]),
        .S(r_disp_digit[0]));
  FDSE #(
    .INIT(1'b1)) 
    \ANODES_reg[3] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\ANODES[2]_i_1_n_0 ),
        .Q(ANODES_OBUF[3]),
        .S(\r_disp_digit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \CATHODES[0]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [8]),
        .I2(\CATHODES_reg[0]_0 [10]),
        .I3(\CATHODES_reg[0]_0 [9]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[0]_i_4_n_0 ),
        .O(\CATHODES[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \CATHODES[0]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [12]),
        .I2(\CATHODES_reg[0]_0 [14]),
        .I3(\CATHODES_reg[0]_0 [13]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[0]_i_5_n_0 ),
        .O(\CATHODES[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2043)) 
    \CATHODES[0]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [3]),
        .I2(\CATHODES_reg[0]_0 [2]),
        .I3(\CATHODES_reg[0]_0 [1]),
        .O(\CATHODES[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \CATHODES[0]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [4]),
        .I2(\CATHODES_reg[0]_0 [6]),
        .I3(\CATHODES_reg[0]_0 [5]),
        .O(\CATHODES[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5910FFFF59100000)) 
    \CATHODES[1]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [10]),
        .I2(\CATHODES_reg[0]_0 [9]),
        .I3(\CATHODES_reg[0]_0 [8]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[1]_i_4_n_0 ),
        .O(\CATHODES[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5910FFFF59100000)) 
    \CATHODES[1]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [14]),
        .I2(\CATHODES_reg[0]_0 [13]),
        .I3(\CATHODES_reg[0]_0 [12]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[1]_i_5_n_0 ),
        .O(\CATHODES[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0B82)) 
    \CATHODES[1]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [2]),
        .I2(\CATHODES_reg[0]_0 [3]),
        .I3(\CATHODES_reg[0]_0 [1]),
        .O(\CATHODES[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \CATHODES[1]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [6]),
        .I2(\CATHODES_reg[0]_0 [4]),
        .I3(\CATHODES_reg[0]_0 [5]),
        .O(\CATHODES[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \CATHODES[2]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [9]),
        .I2(\CATHODES_reg[0]_0 [10]),
        .I3(\CATHODES_reg[0]_0 [8]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[2]_i_4_n_0 ),
        .O(\CATHODES[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \CATHODES[2]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [13]),
        .I2(\CATHODES_reg[0]_0 [14]),
        .I3(\CATHODES_reg[0]_0 [12]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[2]_i_5_n_0 ),
        .O(\CATHODES[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h223A)) 
    \CATHODES[2]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [3]),
        .I2(\CATHODES_reg[0]_0 [2]),
        .I3(\CATHODES_reg[0]_0 [1]),
        .O(\CATHODES[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \CATHODES[2]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [5]),
        .I2(\CATHODES_reg[0]_0 [6]),
        .I3(\CATHODES_reg[0]_0 [4]),
        .O(\CATHODES[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC234FFFFC2340000)) 
    \CATHODES[3]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [10]),
        .I2(\CATHODES_reg[0]_0 [8]),
        .I3(\CATHODES_reg[0]_0 [9]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[3]_i_4_n_0 ),
        .O(\CATHODES[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC234FFFFC2340000)) 
    \CATHODES[3]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [14]),
        .I2(\CATHODES_reg[0]_0 [12]),
        .I3(\CATHODES_reg[0]_0 [13]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[3]_i_5_n_0 ),
        .O(\CATHODES[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8692)) 
    \CATHODES[3]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [1]),
        .I2(\CATHODES_reg[0]_0 [2]),
        .I3(\CATHODES_reg[0]_0 [3]),
        .O(\CATHODES[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \CATHODES[3]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [6]),
        .I2(\CATHODES_reg[0]_0 [4]),
        .I3(\CATHODES_reg[0]_0 [5]),
        .O(\CATHODES[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \CATHODES[4]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [8]),
        .I2(\CATHODES_reg[0]_0 [9]),
        .I3(\CATHODES_reg[0]_0 [10]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[4]_i_4_n_0 ),
        .O(\CATHODES[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \CATHODES[4]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [12]),
        .I2(\CATHODES_reg[0]_0 [13]),
        .I3(\CATHODES_reg[0]_0 [14]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[4]_i_5_n_0 ),
        .O(\CATHODES[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD004)) 
    \CATHODES[4]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [1]),
        .I2(\CATHODES_reg[0]_0 [3]),
        .I3(\CATHODES_reg[0]_0 [2]),
        .O(\CATHODES[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \CATHODES[4]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [4]),
        .I2(\CATHODES_reg[0]_0 [5]),
        .I3(\CATHODES_reg[0]_0 [6]),
        .O(\CATHODES[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \CATHODES[5]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [8]),
        .I2(\CATHODES_reg[0]_0 [9]),
        .I3(\CATHODES_reg[0]_0 [10]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[5]_i_4_n_0 ),
        .O(\CATHODES[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \CATHODES[5]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [12]),
        .I2(\CATHODES_reg[0]_0 [13]),
        .I3(\CATHODES_reg[0]_0 [14]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[5]_i_5_n_0 ),
        .O(\CATHODES[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hD680)) 
    \CATHODES[5]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [1]),
        .I2(\CATHODES_reg[0]_0 [3]),
        .I3(\CATHODES_reg[0]_0 [2]),
        .O(\CATHODES[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \CATHODES[5]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [5]),
        .I2(\CATHODES_reg[0]_0 [4]),
        .I3(\CATHODES_reg[0]_0 [6]),
        .O(\CATHODES[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \CATHODES[6]_i_2 
       (.I0(\CATHODES_reg[0]_0 [11]),
        .I1(\CATHODES_reg[0]_0 [10]),
        .I2(\CATHODES_reg[0]_0 [8]),
        .I3(\CATHODES_reg[0]_0 [9]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[6]_i_4_n_0 ),
        .O(\CATHODES[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \CATHODES[6]_i_3 
       (.I0(\CATHODES_reg[0]_0 [15]),
        .I1(\CATHODES_reg[0]_0 [14]),
        .I2(\CATHODES_reg[0]_0 [12]),
        .I3(\CATHODES_reg[0]_0 [13]),
        .I4(r_disp_digit[1]),
        .I5(\CATHODES[6]_i_5_n_0 ),
        .O(\CATHODES[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0892)) 
    \CATHODES[6]_i_4 
       (.I0(\CATHODES_reg[0]_0 [0]),
        .I1(\CATHODES_reg[0]_0 [3]),
        .I2(\CATHODES_reg[0]_0 [2]),
        .I3(\CATHODES_reg[0]_0 [1]),
        .O(\CATHODES[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \CATHODES[6]_i_5 
       (.I0(\CATHODES_reg[0]_0 [7]),
        .I1(\CATHODES_reg[0]_0 [6]),
        .I2(\CATHODES_reg[0]_0 [4]),
        .I3(\CATHODES_reg[0]_0 [5]),
        .O(\CATHODES[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[0] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[0]_i_1 
       (.I0(\CATHODES[0]_i_2_n_0 ),
        .I1(\CATHODES[0]_i_3_n_0 ),
        .O(\CATHODES_reg[0]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[1] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[1]_i_1 
       (.I0(\CATHODES[1]_i_2_n_0 ),
        .I1(\CATHODES[1]_i_3_n_0 ),
        .O(\CATHODES_reg[1]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[2] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[2]_i_1 
       (.I0(\CATHODES[2]_i_2_n_0 ),
        .I1(\CATHODES[2]_i_3_n_0 ),
        .O(\CATHODES_reg[2]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[3] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[3]_i_1 
       (.I0(\CATHODES[3]_i_2_n_0 ),
        .I1(\CATHODES[3]_i_3_n_0 ),
        .O(\CATHODES_reg[3]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[4] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[4]_i_1 
       (.I0(\CATHODES[4]_i_2_n_0 ),
        .I1(\CATHODES[4]_i_3_n_0 ),
        .O(\CATHODES_reg[4]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[5] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[5]_i_1 
       (.I0(\CATHODES[5]_i_2_n_0 ),
        .I1(\CATHODES[5]_i_3_n_0 ),
        .O(\CATHODES_reg[5]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  FDRE #(
    .INIT(1'b0)) 
    \CATHODES_reg[6] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\CATHODES_reg[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  MUXF7 \CATHODES_reg[6]_i_1 
       (.I0(\CATHODES[6]_i_2_n_0 ),
        .I1(\CATHODES[6]_i_3_n_0 ),
        .O(\CATHODES_reg[6]_i_1_n_0 ),
        .S(r_disp_digit[0]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \clk_div_counter[0]_i_1 
       (.I0(\clk_div_counter[0]_i_3_n_0 ),
        .I1(\clk_div_counter[0]_i_4_n_0 ),
        .I2(\clk_div_counter[0]_i_5_n_0 ),
        .I3(\clk_div_counter_reg[0]_i_6_n_7 ),
        .I4(\clk_div_counter_reg[0]_i_6_n_6 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \clk_div_counter[0]_i_3 
       (.I0(\clk_div_counter_reg[0]_i_8_n_7 ),
        .I1(\clk_div_counter_reg[0]_i_8_n_6 ),
        .I2(\clk_div_counter_reg[0]_i_9_n_5 ),
        .I3(\clk_div_counter_reg[0]_i_9_n_4 ),
        .I4(\clk_div_counter_reg[0]_i_8_n_5 ),
        .I5(clk_div_counter_reg[0]),
        .O(\clk_div_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \clk_div_counter[0]_i_4 
       (.I0(\clk_div_counter_reg[0]_i_10_n_7 ),
        .I1(\clk_div_counter_reg[0]_i_10_n_6 ),
        .I2(\clk_div_counter_reg[0]_i_6_n_5 ),
        .I3(\clk_div_counter_reg[0]_i_6_n_4 ),
        .I4(\clk_div_counter_reg[0]_i_10_n_4 ),
        .I5(\clk_div_counter_reg[0]_i_10_n_5 ),
        .O(\clk_div_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \clk_div_counter[0]_i_5 
       (.I0(\clk_div_counter_reg[0]_i_11_n_5 ),
        .I1(\clk_div_counter_reg[0]_i_11_n_4 ),
        .I2(\clk_div_counter_reg[0]_i_11_n_7 ),
        .I3(\clk_div_counter_reg[0]_i_11_n_6 ),
        .I4(\clk_div_counter_reg[0]_i_9_n_6 ),
        .I5(\clk_div_counter_reg[0]_i_9_n_7 ),
        .O(\clk_div_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_counter[0]_i_7 
       (.I0(clk_div_counter_reg[0]),
        .O(\clk_div_counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_7 ),
        .Q(clk_div_counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_10 
       (.CI(\clk_div_counter_reg[0]_i_6_n_0 ),
        .CO({\clk_div_counter_reg[0]_i_10_n_0 ,\NLW_clk_div_counter_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[0]_i_10_n_4 ,\clk_div_counter_reg[0]_i_10_n_5 ,\clk_div_counter_reg[0]_i_10_n_6 ,\clk_div_counter_reg[0]_i_10_n_7 }),
        .S(clk_div_counter_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_11 
       (.CI(\clk_div_counter_reg[0]_i_10_n_0 ),
        .CO({\clk_div_counter_reg[0]_i_11_n_0 ,\NLW_clk_div_counter_reg[0]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[0]_i_11_n_4 ,\clk_div_counter_reg[0]_i_11_n_5 ,\clk_div_counter_reg[0]_i_11_n_6 ,\clk_div_counter_reg[0]_i_11_n_7 }),
        .S(clk_div_counter_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_div_counter_reg[0]_i_2_n_0 ,\NLW_clk_div_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_counter_reg[0]_i_2_n_4 ,\clk_div_counter_reg[0]_i_2_n_5 ,\clk_div_counter_reg[0]_i_2_n_6 ,\clk_div_counter_reg[0]_i_2_n_7 }),
        .S({clk_div_counter_reg[3:1],\clk_div_counter[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\clk_div_counter_reg[0]_i_6_n_0 ,\NLW_clk_div_counter_reg[0]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(clk_div_counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[0]_i_6_n_4 ,\clk_div_counter_reg[0]_i_6_n_5 ,\clk_div_counter_reg[0]_i_6_n_6 ,\clk_div_counter_reg[0]_i_6_n_7 }),
        .S(clk_div_counter_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_8 
       (.CI(\clk_div_counter_reg[0]_i_9_n_0 ),
        .CO(\NLW_clk_div_counter_reg[0]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_counter_reg[0]_i_8_O_UNCONNECTED [3],\clk_div_counter_reg[0]_i_8_n_5 ,\clk_div_counter_reg[0]_i_8_n_6 ,\clk_div_counter_reg[0]_i_8_n_7 }),
        .S({1'b0,clk_div_counter_reg[19:17]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[0]_i_9 
       (.CI(\clk_div_counter_reg[0]_i_11_n_0 ),
        .CO({\clk_div_counter_reg[0]_i_9_n_0 ,\NLW_clk_div_counter_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[0]_i_9_n_4 ,\clk_div_counter_reg[0]_i_9_n_5 ,\clk_div_counter_reg[0]_i_9_n_6 ,\clk_div_counter_reg[0]_i_9_n_7 }),
        .S(clk_div_counter_reg[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_5 ),
        .Q(clk_div_counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_4 ),
        .Q(clk_div_counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_7 ),
        .Q(clk_div_counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[12]_i_1 
       (.CI(\clk_div_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[12]_i_1_n_0 ,\NLW_clk_div_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[12]_i_1_n_4 ,\clk_div_counter_reg[12]_i_1_n_5 ,\clk_div_counter_reg[12]_i_1_n_6 ,\clk_div_counter_reg[12]_i_1_n_7 }),
        .S(clk_div_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_6 ),
        .Q(clk_div_counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_5 ),
        .Q(clk_div_counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_4 ),
        .Q(clk_div_counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_7 ),
        .Q(clk_div_counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[16]_i_1 
       (.CI(\clk_div_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_clk_div_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[16]_i_1_n_4 ,\clk_div_counter_reg[16]_i_1_n_5 ,\clk_div_counter_reg[16]_i_1_n_6 ,\clk_div_counter_reg[16]_i_1_n_7 }),
        .S(clk_div_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_6 ),
        .Q(clk_div_counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_5 ),
        .Q(clk_div_counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_4 ),
        .Q(clk_div_counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_6 ),
        .Q(clk_div_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_5 ),
        .Q(clk_div_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_4 ),
        .Q(clk_div_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_7 ),
        .Q(clk_div_counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[4]_i_1 
       (.CI(\clk_div_counter_reg[0]_i_2_n_0 ),
        .CO({\clk_div_counter_reg[4]_i_1_n_0 ,\NLW_clk_div_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[4]_i_1_n_4 ,\clk_div_counter_reg[4]_i_1_n_5 ,\clk_div_counter_reg[4]_i_1_n_6 ,\clk_div_counter_reg[4]_i_1_n_7 }),
        .S(clk_div_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_6 ),
        .Q(clk_div_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_5 ),
        .Q(clk_div_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_4 ),
        .Q(clk_div_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_7 ),
        .Q(clk_div_counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_counter_reg[8]_i_1 
       (.CI(\clk_div_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[8]_i_1_n_0 ,\NLW_clk_div_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[8]_i_1_n_4 ,\clk_div_counter_reg[8]_i_1_n_5 ,\clk_div_counter_reg[8]_i_1_n_6 ,\clk_div_counter_reg[8]_i_1_n_7 }),
        .S(clk_div_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_6 ),
        .Q(clk_div_counter_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \r_disp_digit[0]_i_1 
       (.I0(r_disp_digit[0]),
        .O(\r_disp_digit[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_disp_digit[1]_i_1 
       (.I0(r_disp_digit[0]),
        .I1(r_disp_digit[1]),
        .O(\r_disp_digit[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_digit_reg[0] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\r_disp_digit[0]_i_1_n_0 ),
        .Q(r_disp_digit[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_disp_digit_reg[1] 
       (.C(s_clk_500),
        .CE(1'b1),
        .D(\r_disp_digit[1]_i_1_n_0 ),
        .Q(r_disp_digit[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    s_clk_500_i_1
       (.I0(\clk_div_counter[0]_i_3_n_0 ),
        .I1(\clk_div_counter[0]_i_4_n_0 ),
        .I2(\clk_div_counter[0]_i_5_n_0 ),
        .I3(\clk_div_counter_reg[0]_i_6_n_7 ),
        .I4(\clk_div_counter_reg[0]_i_6_n_6 ),
        .I5(s_clk_500),
        .O(s_clk_500_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_clk_500_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_clk_500_i_1_n_0),
        .Q(s_clk_500),
        .R(1'b0));
endmodule

module Memory
   (memory_mux_sel_a_pos_3_i_3_0,
    D,
    \OUT_reg[6] ,
    \OUT_reg[11] ,
    alu_src_a,
    \OUT_reg[7] ,
    \OUT_reg[11]_0 ,
    \OUT_reg[11]_1 ,
    \OUT_reg[15] ,
    srcA,
    \OUT_reg[19] ,
    \OUT_reg[31] ,
    \OUT_reg[27] ,
    \OUT_reg[23] ,
    \OUT_reg[3] ,
    S,
    \OUT_reg[30] ,
    pc_source,
    E,
    p_0_in0_out,
    memory_reg_mux_sel_b_pos_0_0,
    memory_reg_mux_sel_b_pos_0_1,
    memory_reg_mux_sel_b_pos_0_2,
    \OUT_reg[15]_0 ,
    \OUT_reg[15]_1 ,
    \OUT_reg[23]_0 ,
    \OUT_reg[23]_1 ,
    \OUT_reg[31]_0 ,
    \OUT_reg[31]_1 ,
    \OUT_reg[7]_0 ,
    \OUT_reg[7]_1 ,
    memory_reg_mux_sel_a_pos_0_0,
    memory_reg_mux_sel_a_pos_0_1,
    memory_reg_mux_sel_a_pos_0_2,
    memory_reg_mux_sel_a_pos_0_3,
    memory_reg_mux_sel_a_pos_0_4,
    memory_reg_mux_sel_a_pos_0_5,
    memory_reg_mux_sel_a_pos_0_6,
    memory_reg_mux_sel_a_pos_0_7,
    memory_reg_mux_sel_a_pos_0_8,
    memory_reg_mux_sel_a_pos_0_9,
    memory_reg_mux_sel_a_pos_0_10,
    memory_reg_mux_sel_a_pos_0_11,
    memory_reg_mux_sel_a_pos_0_12,
    memory_reg_mux_sel_a_pos_0_13,
    memory_reg_mux_sel_a_pos_0_14,
    memory_reg_mux_sel_a_pos_0_15,
    memory_reg_mux_sel_a_pos_0_16,
    memory_reg_mux_sel_a_pos_0_17,
    memory_reg_mux_sel_a_pos_0_18,
    memory_reg_mux_sel_a_pos_0_19,
    memory_reg_mux_sel_a_pos_0_20,
    memory_reg_mux_sel_a_pos_0_21,
    memory_reg_mux_sel_a_pos_0_22,
    memory_reg_mux_sel_a_pos_0_23,
    memory_reg_mux_sel_a_pos_0_24,
    memory_reg_mux_sel_a_pos_0_25,
    memory_reg_mux_sel_a_pos_0_26,
    memory_reg_mux_sel_a_pos_0_27,
    memory_reg_mux_sel_a_pos_0_28,
    memory_reg_mux_sel_a_pos_0_29,
    memory_reg_mux_sel_a_pos_0_30,
    memory_reg_mux_sel_a_pos_0_31,
    wd,
    \OUT_reg[6]_0 ,
    RESULT0_carry_i_9_0,
    \OUT_reg[0] ,
    \OUT_reg[14] ,
    \OUT_reg[14]_0 ,
    \OUT_reg[22] ,
    \OUT_reg[31]_2 ,
    \OUT_reg[31]_3 ,
    \OUT_reg[0]_0 ,
    \OUT_reg[1] ,
    \OUT_reg[1]_0 ,
    memory_reg_mux_sel_b_pos_0_3,
    memory_reg_mux_sel_b_pos_0_4,
    \OUT_reg[31]_4 ,
    \OUT_reg[2] ,
    \OUT_reg[22]_0 ,
    \OUT_reg[15]_2 ,
    \OUT_reg[19]_0 ,
    \OUT_reg[27]_0 ,
    \OUT_reg[23]_2 ,
    memory_reg_mux_sel_b_pos_0_5,
    memory_reg_mux_sel_b_pos_0_6,
    memory_reg_mux_sel_b_pos_0_7,
    memory_reg_mux_sel_b_pos_0_8,
    memory_reg_mux_sel_b_pos_0_9,
    memory_reg_mux_sel_b_pos_0_10,
    memory_reg_mux_sel_b_pos_0_11,
    \FSM_onehot_PS_reg[2] ,
    \FSM_onehot_PS_reg[2]_0 ,
    clk_50_BUFG,
    Q,
    RESULT0_carry__6,
    memory_reg_bram_0_0,
    DIADI,
    memory_reg_bram_1_0,
    memory_reg_bram_2_0,
    memory_reg_bram_3_0,
    memory_reg_bram_4_0,
    memory_reg_bram_5_0,
    memory_reg_bram_6_0,
    memory_reg_bram_7_0,
    memory_reg_bram_8_0,
    memory_reg_bram_9_0,
    memory_reg_bram_10_0,
    memory_reg_bram_11_0,
    memory_reg_bram_12_0,
    memory_reg_bram_13_0,
    memory_reg_bram_14_0,
    memory_reg_bram_15_0,
    rs1,
    jalr,
    \OUT_reg[0]_1 ,
    memory_reg_bram_0_1,
    RS2,
    memory_reg_bram_0_2,
    data1,
    branch,
    pc_out_inc,
    jal,
    ram_reg_r1_0_31_0_5_i_24_0,
    ram_reg_r1_0_31_0_5_i_24_1,
    ram_reg_r1_0_31_0_5_i_19_0,
    ram_reg_r1_0_31_0_5_i_30_0,
    ram_reg_r1_0_31_0_5_i_27_0,
    ram_reg_r1_0_31_0_5_i_36_0,
    ram_reg_r1_0_31_0_5_i_33_0,
    ram_reg_r1_0_31_6_11_i_10_0,
    ram_reg_r1_0_31_6_11_i_7_0,
    ram_reg_r1_0_31_0_5_i_24_2,
    ram_reg_r1_0_31_0_5_i_19_1,
    ram_reg_r1_0_31_0_5_i_30_1,
    ram_reg_r1_0_31_0_5_i_27_1,
    ram_reg_r1_0_31_0_5_i_36_1,
    ram_reg_r1_0_31_0_5_i_33_1,
    ram_reg_r1_0_31_6_11_i_10_1,
    ram_reg_r1_0_31_6_11_i_7_1,
    ram_reg_r1_0_31_6_11_i_34_0,
    ram_reg_r1_0_31_6_11_i_32_0,
    ram_reg_r1_0_31_6_11_i_38_0,
    ram_reg_r1_0_31_6_11_i_36_0,
    ram_reg_r1_0_31_12_17_i_29_0,
    ram_reg_r1_0_31_12_17_i_27_0,
    ram_reg_r1_0_31_12_17_i_33_0,
    ram_reg_r1_0_31_12_17_i_31_0,
    ram_reg_r1_0_31_6_11_i_33_0,
    ram_reg_r1_0_31_6_11_i_31_0,
    ram_reg_r1_0_31_6_11_i_37_0,
    ram_reg_r1_0_31_6_11_i_35_0,
    ram_reg_r1_0_31_12_17_i_28_0,
    ram_reg_r1_0_31_12_17_i_26_0,
    ram_reg_r1_0_31_12_17_i_32_0,
    ram_reg_r1_0_31_12_17_i_30_0,
    memory_reg_bram_0_i_44_0,
    memory_reg_mux_sel_a_pos_2_0,
    memory_mux_sel_a_pos_2_i_4_0,
    ram_reg_r1_0_31_30_31_i_1_0,
    ram_reg_r1_0_31_30_31__0_i_2_0,
    CO,
    memory_reg_bram_0_i_80_0,
    SWITCHES_IBUF);
  output [0:0]memory_mux_sel_a_pos_3_i_3_0;
  output [0:0]D;
  output [2:0]\OUT_reg[6] ;
  output [11:0]\OUT_reg[11] ;
  output alu_src_a;
  output [3:0]\OUT_reg[7] ;
  output [3:0]\OUT_reg[11]_0 ;
  output [3:0]\OUT_reg[11]_1 ;
  output [3:0]\OUT_reg[15] ;
  output [18:0]srcA;
  output [3:0]\OUT_reg[19] ;
  output [3:0]\OUT_reg[31] ;
  output [3:0]\OUT_reg[27] ;
  output [3:0]\OUT_reg[23] ;
  output [3:0]\OUT_reg[3] ;
  output [3:0]S;
  output [4:0]\OUT_reg[30] ;
  output [1:0]pc_source;
  output [0:0]E;
  output p_0_in0_out;
  output [24:0]memory_reg_mux_sel_b_pos_0_0;
  output [0:0]memory_reg_mux_sel_b_pos_0_1;
  output memory_reg_mux_sel_b_pos_0_2;
  output [3:0]\OUT_reg[15]_0 ;
  output [3:0]\OUT_reg[15]_1 ;
  output [3:0]\OUT_reg[23]_0 ;
  output [3:0]\OUT_reg[23]_1 ;
  output [3:0]\OUT_reg[31]_0 ;
  output [3:0]\OUT_reg[31]_1 ;
  output [3:0]\OUT_reg[7]_0 ;
  output [3:0]\OUT_reg[7]_1 ;
  output memory_reg_mux_sel_a_pos_0_0;
  output memory_reg_mux_sel_a_pos_0_1;
  output memory_reg_mux_sel_a_pos_0_2;
  output memory_reg_mux_sel_a_pos_0_3;
  output memory_reg_mux_sel_a_pos_0_4;
  output memory_reg_mux_sel_a_pos_0_5;
  output memory_reg_mux_sel_a_pos_0_6;
  output memory_reg_mux_sel_a_pos_0_7;
  output memory_reg_mux_sel_a_pos_0_8;
  output memory_reg_mux_sel_a_pos_0_9;
  output memory_reg_mux_sel_a_pos_0_10;
  output memory_reg_mux_sel_a_pos_0_11;
  output memory_reg_mux_sel_a_pos_0_12;
  output memory_reg_mux_sel_a_pos_0_13;
  output memory_reg_mux_sel_a_pos_0_14;
  output memory_reg_mux_sel_a_pos_0_15;
  output memory_reg_mux_sel_a_pos_0_16;
  output memory_reg_mux_sel_a_pos_0_17;
  output memory_reg_mux_sel_a_pos_0_18;
  output memory_reg_mux_sel_a_pos_0_19;
  output memory_reg_mux_sel_a_pos_0_20;
  output memory_reg_mux_sel_a_pos_0_21;
  output memory_reg_mux_sel_a_pos_0_22;
  output memory_reg_mux_sel_a_pos_0_23;
  output memory_reg_mux_sel_a_pos_0_24;
  output memory_reg_mux_sel_a_pos_0_25;
  output memory_reg_mux_sel_a_pos_0_26;
  output memory_reg_mux_sel_a_pos_0_27;
  output memory_reg_mux_sel_a_pos_0_28;
  output memory_reg_mux_sel_a_pos_0_29;
  output memory_reg_mux_sel_a_pos_0_30;
  output memory_reg_mux_sel_a_pos_0_31;
  output [31:0]wd;
  output [3:0]\OUT_reg[6]_0 ;
  output RESULT0_carry_i_9_0;
  output \OUT_reg[0] ;
  output [3:0]\OUT_reg[14] ;
  output [2:0]\OUT_reg[14]_0 ;
  output [3:0]\OUT_reg[22] ;
  output [3:0]\OUT_reg[31]_2 ;
  output [3:0]\OUT_reg[31]_3 ;
  output \OUT_reg[0]_0 ;
  output \OUT_reg[1] ;
  output \OUT_reg[1]_0 ;
  output memory_reg_mux_sel_b_pos_0_3;
  output [3:0]memory_reg_mux_sel_b_pos_0_4;
  output [3:0]\OUT_reg[31]_4 ;
  output [0:0]\OUT_reg[2] ;
  output [3:0]\OUT_reg[22]_0 ;
  output [3:0]\OUT_reg[15]_2 ;
  output [3:0]\OUT_reg[19]_0 ;
  output [3:0]\OUT_reg[27]_0 ;
  output [3:0]\OUT_reg[23]_2 ;
  output [3:0]memory_reg_mux_sel_b_pos_0_5;
  output [3:0]memory_reg_mux_sel_b_pos_0_6;
  output [3:0]memory_reg_mux_sel_b_pos_0_7;
  output [3:0]memory_reg_mux_sel_b_pos_0_8;
  output [3:0]memory_reg_mux_sel_b_pos_0_9;
  output [3:0]memory_reg_mux_sel_b_pos_0_10;
  output [3:0]memory_reg_mux_sel_b_pos_0_11;
  output [0:0]\FSM_onehot_PS_reg[2] ;
  output [0:0]\FSM_onehot_PS_reg[2]_0 ;
  input clk_50_BUFG;
  input [2:0]Q;
  input [31:0]RESULT0_carry__6;
  input memory_reg_bram_0_0;
  input [15:0]DIADI;
  input memory_reg_bram_1_0;
  input memory_reg_bram_2_0;
  input memory_reg_bram_3_0;
  input memory_reg_bram_4_0;
  input memory_reg_bram_5_0;
  input memory_reg_bram_6_0;
  input memory_reg_bram_7_0;
  input memory_reg_bram_8_0;
  input memory_reg_bram_9_0;
  input memory_reg_bram_10_0;
  input memory_reg_bram_11_0;
  input memory_reg_bram_12_0;
  input memory_reg_bram_13_0;
  input memory_reg_bram_14_0;
  input memory_reg_bram_15_0;
  input [31:0]rs1;
  input [4:0]jalr;
  input \OUT_reg[0]_1 ;
  input memory_reg_bram_0_1;
  input [21:0]RS2;
  input memory_reg_bram_0_2;
  input [31:0]data1;
  input [3:0]branch;
  input [30:0]pc_out_inc;
  input [3:0]jal;
  input ram_reg_r1_0_31_0_5_i_24_0;
  input ram_reg_r1_0_31_0_5_i_24_1;
  input ram_reg_r1_0_31_0_5_i_19_0;
  input ram_reg_r1_0_31_0_5_i_30_0;
  input ram_reg_r1_0_31_0_5_i_27_0;
  input ram_reg_r1_0_31_0_5_i_36_0;
  input ram_reg_r1_0_31_0_5_i_33_0;
  input ram_reg_r1_0_31_6_11_i_10_0;
  input ram_reg_r1_0_31_6_11_i_7_0;
  input ram_reg_r1_0_31_0_5_i_24_2;
  input ram_reg_r1_0_31_0_5_i_19_1;
  input ram_reg_r1_0_31_0_5_i_30_1;
  input ram_reg_r1_0_31_0_5_i_27_1;
  input ram_reg_r1_0_31_0_5_i_36_1;
  input ram_reg_r1_0_31_0_5_i_33_1;
  input ram_reg_r1_0_31_6_11_i_10_1;
  input ram_reg_r1_0_31_6_11_i_7_1;
  input ram_reg_r1_0_31_6_11_i_34_0;
  input ram_reg_r1_0_31_6_11_i_32_0;
  input ram_reg_r1_0_31_6_11_i_38_0;
  input ram_reg_r1_0_31_6_11_i_36_0;
  input ram_reg_r1_0_31_12_17_i_29_0;
  input ram_reg_r1_0_31_12_17_i_27_0;
  input ram_reg_r1_0_31_12_17_i_33_0;
  input ram_reg_r1_0_31_12_17_i_31_0;
  input ram_reg_r1_0_31_6_11_i_33_0;
  input ram_reg_r1_0_31_6_11_i_31_0;
  input ram_reg_r1_0_31_6_11_i_37_0;
  input ram_reg_r1_0_31_6_11_i_35_0;
  input ram_reg_r1_0_31_12_17_i_28_0;
  input ram_reg_r1_0_31_12_17_i_26_0;
  input ram_reg_r1_0_31_12_17_i_32_0;
  input ram_reg_r1_0_31_12_17_i_30_0;
  input memory_reg_bram_0_i_44_0;
  input memory_reg_mux_sel_a_pos_2_0;
  input memory_mux_sel_a_pos_2_i_4_0;
  input ram_reg_r1_0_31_30_31_i_1_0;
  input [29:0]ram_reg_r1_0_31_30_31__0_i_2_0;
  input [0:0]CO;
  input [0:0]memory_reg_bram_0_i_80_0;
  input [15:0]SWITCHES_IBUF;

  wire [0:0]CO;
  wire [0:0]D;
  wire [15:0]DIADI;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_PS_reg[2] ;
  wire [0:0]\FSM_onehot_PS_reg[2]_0 ;
  wire [31:1]IOBUS_addr;
  wire JALR_carry__0_i_10_n_0;
  wire JALR_carry__0_i_11_n_0;
  wire JALR_carry__0_i_12_n_0;
  wire JALR_carry__0_i_13_n_0;
  wire JALR_carry__0_i_14_n_0;
  wire JALR_carry__0_i_15_n_0;
  wire JALR_carry__0_i_16_n_0;
  wire JALR_carry__0_i_17_n_0;
  wire JALR_carry__0_i_18_n_0;
  wire JALR_carry__0_i_19_n_0;
  wire JALR_carry__0_i_8_n_0;
  wire JALR_carry__0_i_9_n_0;
  wire JALR_carry__1_i_10_n_0;
  wire JALR_carry__1_i_11_n_0;
  wire JALR_carry__1_i_12_n_0;
  wire JALR_carry__1_i_13_n_0;
  wire JALR_carry__1_i_14_n_0;
  wire JALR_carry__1_i_15_n_0;
  wire JALR_carry__1_i_16_n_0;
  wire JALR_carry__1_i_17_n_0;
  wire JALR_carry__1_i_18_n_0;
  wire JALR_carry__1_i_19_n_0;
  wire JALR_carry__1_i_20_n_0;
  wire JALR_carry__1_i_21_n_0;
  wire JALR_carry__1_i_22_n_0;
  wire JALR_carry__1_i_23_n_0;
  wire JALR_carry__1_i_24_n_0;
  wire JALR_carry__1_i_9_n_0;
  wire \LEDS[15]_i_3_n_0 ;
  wire \LEDS[15]_i_4_n_0 ;
  wire \LEDS[15]_i_5_n_0 ;
  wire \OUT[31]_i_25_n_0 ;
  wire \OUT[31]_i_26_n_0 ;
  wire \OUT[31]_i_27_n_0 ;
  wire \OUT[31]_i_28_n_0 ;
  wire \OUT[31]_i_29_n_0 ;
  wire \OUT[31]_i_30_n_0 ;
  wire \OUT[31]_i_31_n_0 ;
  wire \OUT[31]_i_32_n_0 ;
  wire \OUT[31]_i_39_n_0 ;
  wire \OUT[31]_i_3_n_0 ;
  wire \OUT[31]_i_40_n_0 ;
  wire \OUT[31]_i_41_n_0 ;
  wire \OUT[31]_i_42_n_0 ;
  wire \OUT[31]_i_43_n_0 ;
  wire \OUT[31]_i_44_n_0 ;
  wire \OUT[31]_i_45_n_0 ;
  wire \OUT[31]_i_46_n_0 ;
  wire \OUT[31]_i_47_n_0 ;
  wire \OUT[31]_i_48_n_0 ;
  wire \OUT[31]_i_49_n_0 ;
  wire \OUT[31]_i_4_n_0 ;
  wire \OUT[31]_i_50_n_0 ;
  wire \OUT[31]_i_5_n_0 ;
  wire \OUT[31]_i_6_n_0 ;
  wire \OUT_reg[0] ;
  wire \OUT_reg[0]_0 ;
  wire \OUT_reg[0]_1 ;
  wire [11:0]\OUT_reg[11] ;
  wire [3:0]\OUT_reg[11]_0 ;
  wire [3:0]\OUT_reg[11]_1 ;
  wire [3:0]\OUT_reg[14] ;
  wire [2:0]\OUT_reg[14]_0 ;
  wire [3:0]\OUT_reg[15] ;
  wire [3:0]\OUT_reg[15]_0 ;
  wire [3:0]\OUT_reg[15]_1 ;
  wire [3:0]\OUT_reg[15]_2 ;
  wire [3:0]\OUT_reg[19] ;
  wire [3:0]\OUT_reg[19]_0 ;
  wire \OUT_reg[1] ;
  wire \OUT_reg[1]_0 ;
  wire [3:0]\OUT_reg[22] ;
  wire [3:0]\OUT_reg[22]_0 ;
  wire [3:0]\OUT_reg[23] ;
  wire [3:0]\OUT_reg[23]_0 ;
  wire [3:0]\OUT_reg[23]_1 ;
  wire [3:0]\OUT_reg[23]_2 ;
  wire [3:0]\OUT_reg[27] ;
  wire [3:0]\OUT_reg[27]_0 ;
  wire [0:0]\OUT_reg[2] ;
  wire [4:0]\OUT_reg[30] ;
  wire [3:0]\OUT_reg[31] ;
  wire [3:0]\OUT_reg[31]_0 ;
  wire [3:0]\OUT_reg[31]_1 ;
  wire [3:0]\OUT_reg[31]_2 ;
  wire [3:0]\OUT_reg[31]_3 ;
  wire [3:0]\OUT_reg[31]_4 ;
  wire \OUT_reg[31]_i_11_n_0 ;
  wire \OUT_reg[31]_i_12_n_0 ;
  wire \OUT_reg[31]_i_13_n_0 ;
  wire \OUT_reg[31]_i_14_n_0 ;
  wire \OUT_reg[31]_i_33_n_0 ;
  wire \OUT_reg[31]_i_34_n_0 ;
  wire \OUT_reg[31]_i_35_n_0 ;
  wire \OUT_reg[31]_i_36_n_0 ;
  wire \OUT_reg[31]_i_37_n_0 ;
  wire \OUT_reg[31]_i_38_n_0 ;
  wire [3:0]\OUT_reg[3] ;
  wire [2:0]\OUT_reg[6] ;
  wire [3:0]\OUT_reg[6]_0 ;
  wire [3:0]\OUT_reg[7] ;
  wire [3:0]\OUT_reg[7]_0 ;
  wire [3:0]\OUT_reg[7]_1 ;
  wire [2:0]Q;
  wire RESULT0_carry__0_i_11_n_0;
  wire RESULT0_carry__0_i_9_n_0;
  wire RESULT0_carry__1_i_9_n_0;
  wire RESULT0_carry__2_i_16_n_0;
  wire RESULT0_carry__2_i_17_n_0;
  wire RESULT0_carry__2_i_18_n_0;
  wire RESULT0_carry__2_i_19_n_0;
  wire RESULT0_carry__2_i_20_n_0;
  wire RESULT0_carry__2_i_21_n_0;
  wire RESULT0_carry__2_i_22_n_0;
  wire RESULT0_carry__2_i_23_n_0;
  wire RESULT0_carry__2_i_24_n_0;
  wire RESULT0_carry__2_i_25_n_0;
  wire RESULT0_carry__2_i_26_n_0;
  wire RESULT0_carry__2_i_27_n_0;
  wire RESULT0_carry__2_i_28_n_0;
  wire RESULT0_carry__2_i_29_n_0;
  wire RESULT0_carry__2_i_30_n_0;
  wire RESULT0_carry__2_i_31_n_0;
  wire RESULT0_carry__2_i_32_n_0;
  wire RESULT0_carry__2_i_33_n_0;
  wire [31:0]RESULT0_carry__6;
  wire RESULT0_carry_i_9_0;
  wire [21:0]RS2;
  wire [3:0]S;
  wire [15:0]SWITCHES_IBUF;
  wire [3:1]alu_fun;
  wire alu_src_a;
  wire [1:0]alu_src_b;
  wire [3:0]branch;
  wire clk_50_BUFG;
  wire [31:0]data1;
  wire [15:0]ioBuffer;
  wire \ioBuffer[15]_i_10_n_0 ;
  wire \ioBuffer[15]_i_11_n_0 ;
  wire \ioBuffer[15]_i_12_n_0 ;
  wire \ioBuffer[15]_i_13_n_0 ;
  wire \ioBuffer[15]_i_17_n_0 ;
  wire \ioBuffer[15]_i_18_n_0 ;
  wire \ioBuffer[15]_i_19_n_0 ;
  wire \ioBuffer[15]_i_1_n_0 ;
  wire \ioBuffer[15]_i_20_n_0 ;
  wire \ioBuffer[15]_i_3_n_0 ;
  wire \ioBuffer[15]_i_4_n_0 ;
  wire \ioBuffer[15]_i_5_n_0 ;
  wire \ioBuffer[15]_i_6_n_0 ;
  wire \ioBuffer[15]_i_9_n_0 ;
  wire \ioBuffer_reg[15]_i_14_n_0 ;
  wire \ioBuffer_reg[15]_i_15_n_0 ;
  wire [6:0]ir;
  wire [3:0]jal;
  wire [4:0]jalr;
  wire [31:0]memReadSized__238;
  wire mem_we2;
  wire memory_mux_sel_a_pos_0_i_10_n_0;
  wire memory_mux_sel_a_pos_0_i_11_n_0;
  wire memory_mux_sel_a_pos_0_i_12_n_0;
  wire memory_mux_sel_a_pos_0_i_13_n_0;
  wire memory_mux_sel_a_pos_0_i_2_n_0;
  wire memory_mux_sel_a_pos_0_i_3_n_0;
  wire memory_mux_sel_a_pos_0_i_4_n_0;
  wire memory_mux_sel_a_pos_0_i_5_n_0;
  wire memory_mux_sel_a_pos_0_i_6_n_0;
  wire memory_mux_sel_a_pos_0_i_7_n_0;
  wire memory_mux_sel_a_pos_0_i_8_n_0;
  wire memory_mux_sel_a_pos_0_i_9_n_0;
  wire memory_mux_sel_a_pos_1_i_10_n_0;
  wire memory_mux_sel_a_pos_1_i_11_n_0;
  wire memory_mux_sel_a_pos_1_i_12_n_0;
  wire memory_mux_sel_a_pos_1_i_13_n_0;
  wire memory_mux_sel_a_pos_1_i_14_n_0;
  wire memory_mux_sel_a_pos_1_i_2_n_0;
  wire memory_mux_sel_a_pos_1_i_3_n_0;
  wire memory_mux_sel_a_pos_1_i_4_n_0;
  wire memory_mux_sel_a_pos_1_i_5_n_0;
  wire memory_mux_sel_a_pos_1_i_6_n_0;
  wire memory_mux_sel_a_pos_1_i_7_n_0;
  wire memory_mux_sel_a_pos_1_i_8_n_0;
  wire memory_mux_sel_a_pos_1_i_9_n_0;
  wire memory_mux_sel_a_pos_2_i_10_n_0;
  wire memory_mux_sel_a_pos_2_i_11_n_0;
  wire memory_mux_sel_a_pos_2_i_12_n_0;
  wire memory_mux_sel_a_pos_2_i_13_n_0;
  wire memory_mux_sel_a_pos_2_i_15_n_0;
  wire memory_mux_sel_a_pos_2_i_16_n_0;
  wire memory_mux_sel_a_pos_2_i_2_n_0;
  wire memory_mux_sel_a_pos_2_i_3_n_0;
  wire memory_mux_sel_a_pos_2_i_4_0;
  wire memory_mux_sel_a_pos_2_i_4_n_0;
  wire memory_mux_sel_a_pos_2_i_5_n_0;
  wire memory_mux_sel_a_pos_2_i_6_n_0;
  wire memory_mux_sel_a_pos_2_i_7_n_0;
  wire memory_mux_sel_a_pos_2_i_8_n_0;
  wire memory_mux_sel_a_pos_3_i_10_n_0;
  wire memory_mux_sel_a_pos_3_i_11_n_0;
  wire memory_mux_sel_a_pos_3_i_12_n_0;
  wire memory_mux_sel_a_pos_3_i_13_n_0;
  wire memory_mux_sel_a_pos_3_i_14_n_0;
  wire memory_mux_sel_a_pos_3_i_15_n_0;
  wire memory_mux_sel_a_pos_3_i_17_n_0;
  wire memory_mux_sel_a_pos_3_i_18_n_0;
  wire memory_mux_sel_a_pos_3_i_21_n_0;
  wire memory_mux_sel_a_pos_3_i_22_n_0;
  wire memory_mux_sel_a_pos_3_i_23_n_0;
  wire memory_mux_sel_a_pos_3_i_24_n_0;
  wire memory_mux_sel_a_pos_3_i_25_n_0;
  wire memory_mux_sel_a_pos_3_i_26_n_0;
  wire memory_mux_sel_a_pos_3_i_27_n_0;
  wire memory_mux_sel_a_pos_3_i_28_n_0;
  wire memory_mux_sel_a_pos_3_i_29_n_0;
  wire memory_mux_sel_a_pos_3_i_2_n_0;
  wire memory_mux_sel_a_pos_3_i_30_n_0;
  wire memory_mux_sel_a_pos_3_i_31_n_0;
  wire memory_mux_sel_a_pos_3_i_33_n_0;
  wire memory_mux_sel_a_pos_3_i_34_n_0;
  wire memory_mux_sel_a_pos_3_i_35_n_0;
  wire memory_mux_sel_a_pos_3_i_36_n_0;
  wire memory_mux_sel_a_pos_3_i_37_n_0;
  wire memory_mux_sel_a_pos_3_i_38_n_0;
  wire memory_mux_sel_a_pos_3_i_39_n_0;
  wire [0:0]memory_mux_sel_a_pos_3_i_3_0;
  wire memory_mux_sel_a_pos_3_i_40_n_0;
  wire memory_mux_sel_a_pos_3_i_41_n_0;
  wire memory_mux_sel_a_pos_3_i_42_n_0;
  wire memory_mux_sel_a_pos_3_i_43_n_0;
  wire memory_mux_sel_a_pos_3_i_44_n_0;
  wire memory_mux_sel_a_pos_3_i_45_n_0;
  wire memory_mux_sel_a_pos_3_i_46_n_0;
  wire memory_mux_sel_a_pos_3_i_4_n_0;
  wire memory_mux_sel_a_pos_3_i_5_n_0;
  wire memory_mux_sel_a_pos_3_i_6_n_0;
  wire memory_mux_sel_a_pos_3_i_7_n_0;
  wire memory_mux_sel_a_pos_3_i_8_n_0;
  wire memory_mux_sel_a_pos_3_i_9_n_0;
  wire memory_reg_bram_0_0;
  wire memory_reg_bram_0_1;
  wire memory_reg_bram_0_2;
  wire memory_reg_bram_0_i_100_n_0;
  wire memory_reg_bram_0_i_101_n_0;
  wire memory_reg_bram_0_i_102_n_0;
  wire memory_reg_bram_0_i_103_n_0;
  wire memory_reg_bram_0_i_104_n_0;
  wire memory_reg_bram_0_i_105_n_0;
  wire memory_reg_bram_0_i_106_n_0;
  wire memory_reg_bram_0_i_107_n_0;
  wire memory_reg_bram_0_i_108_n_0;
  wire memory_reg_bram_0_i_109_n_0;
  wire memory_reg_bram_0_i_110_n_0;
  wire memory_reg_bram_0_i_111_n_0;
  wire memory_reg_bram_0_i_112_n_0;
  wire memory_reg_bram_0_i_113_n_0;
  wire memory_reg_bram_0_i_114_n_0;
  wire memory_reg_bram_0_i_115_n_0;
  wire memory_reg_bram_0_i_116_n_0;
  wire memory_reg_bram_0_i_117_n_0;
  wire memory_reg_bram_0_i_118_n_0;
  wire memory_reg_bram_0_i_119_n_0;
  wire memory_reg_bram_0_i_120_n_0;
  wire memory_reg_bram_0_i_121_n_0;
  wire memory_reg_bram_0_i_122_n_0;
  wire memory_reg_bram_0_i_123_n_0;
  wire memory_reg_bram_0_i_124_n_0;
  wire memory_reg_bram_0_i_125_n_0;
  wire memory_reg_bram_0_i_126_n_0;
  wire memory_reg_bram_0_i_127_n_0;
  wire memory_reg_bram_0_i_128_n_0;
  wire memory_reg_bram_0_i_129_n_0;
  wire memory_reg_bram_0_i_130_n_0;
  wire memory_reg_bram_0_i_131_n_0;
  wire memory_reg_bram_0_i_132_n_0;
  wire memory_reg_bram_0_i_133_n_0;
  wire memory_reg_bram_0_i_134_n_0;
  wire memory_reg_bram_0_i_135_n_0;
  wire memory_reg_bram_0_i_136_n_0;
  wire memory_reg_bram_0_i_137_n_0;
  wire memory_reg_bram_0_i_138_n_0;
  wire memory_reg_bram_0_i_139_n_0;
  wire memory_reg_bram_0_i_140_n_0;
  wire memory_reg_bram_0_i_141_n_0;
  wire memory_reg_bram_0_i_142_n_0;
  wire memory_reg_bram_0_i_143_n_0;
  wire memory_reg_bram_0_i_144_n_0;
  wire memory_reg_bram_0_i_145_n_0;
  wire memory_reg_bram_0_i_146_n_0;
  wire memory_reg_bram_0_i_147_n_0;
  wire memory_reg_bram_0_i_148_n_0;
  wire memory_reg_bram_0_i_149_n_0;
  wire memory_reg_bram_0_i_150_n_0;
  wire memory_reg_bram_0_i_151_n_0;
  wire memory_reg_bram_0_i_152_n_0;
  wire memory_reg_bram_0_i_153_n_0;
  wire memory_reg_bram_0_i_154_n_0;
  wire memory_reg_bram_0_i_155_n_0;
  wire memory_reg_bram_0_i_156_n_0;
  wire memory_reg_bram_0_i_157_n_0;
  wire memory_reg_bram_0_i_158_n_0;
  wire memory_reg_bram_0_i_159_n_0;
  wire memory_reg_bram_0_i_160_n_0;
  wire memory_reg_bram_0_i_161_n_0;
  wire memory_reg_bram_0_i_162_n_0;
  wire memory_reg_bram_0_i_164_n_0;
  wire memory_reg_bram_0_i_165_n_0;
  wire memory_reg_bram_0_i_166_n_0;
  wire memory_reg_bram_0_i_167_n_0;
  wire memory_reg_bram_0_i_168_n_0;
  wire memory_reg_bram_0_i_169_n_0;
  wire memory_reg_bram_0_i_170_n_0;
  wire memory_reg_bram_0_i_171_n_0;
  wire memory_reg_bram_0_i_172_n_0;
  wire memory_reg_bram_0_i_173_n_0;
  wire memory_reg_bram_0_i_174_n_0;
  wire memory_reg_bram_0_i_175_n_0;
  wire memory_reg_bram_0_i_176_n_0;
  wire memory_reg_bram_0_i_177_n_0;
  wire memory_reg_bram_0_i_178_n_0;
  wire memory_reg_bram_0_i_179_n_0;
  wire memory_reg_bram_0_i_180_n_0;
  wire memory_reg_bram_0_i_181_n_0;
  wire memory_reg_bram_0_i_182_n_0;
  wire memory_reg_bram_0_i_183_n_0;
  wire memory_reg_bram_0_i_184_n_0;
  wire memory_reg_bram_0_i_185_n_0;
  wire memory_reg_bram_0_i_186_n_0;
  wire memory_reg_bram_0_i_187_n_0;
  wire memory_reg_bram_0_i_188_n_0;
  wire memory_reg_bram_0_i_189_n_0;
  wire memory_reg_bram_0_i_190_n_0;
  wire memory_reg_bram_0_i_191_n_0;
  wire memory_reg_bram_0_i_192_n_0;
  wire memory_reg_bram_0_i_193_n_0;
  wire memory_reg_bram_0_i_194_n_0;
  wire memory_reg_bram_0_i_195_n_0;
  wire memory_reg_bram_0_i_196_n_0;
  wire memory_reg_bram_0_i_197_n_0;
  wire memory_reg_bram_0_i_198_n_0;
  wire memory_reg_bram_0_i_199_n_0;
  wire memory_reg_bram_0_i_1_n_0;
  wire memory_reg_bram_0_i_200_n_0;
  wire memory_reg_bram_0_i_201_n_0;
  wire memory_reg_bram_0_i_202_n_0;
  wire memory_reg_bram_0_i_203_n_0;
  wire memory_reg_bram_0_i_37_n_0;
  wire memory_reg_bram_0_i_38_n_0;
  wire memory_reg_bram_0_i_39_n_0;
  wire memory_reg_bram_0_i_40_n_0;
  wire memory_reg_bram_0_i_41_n_0;
  wire memory_reg_bram_0_i_42_n_0;
  wire memory_reg_bram_0_i_43_n_0;
  wire memory_reg_bram_0_i_44_0;
  wire memory_reg_bram_0_i_44_n_0;
  wire memory_reg_bram_0_i_45_n_0;
  wire memory_reg_bram_0_i_46_n_0;
  wire memory_reg_bram_0_i_47_n_0;
  wire memory_reg_bram_0_i_48_n_0;
  wire memory_reg_bram_0_i_49_n_0;
  wire memory_reg_bram_0_i_50_n_0;
  wire memory_reg_bram_0_i_51_n_0;
  wire memory_reg_bram_0_i_52_n_0;
  wire memory_reg_bram_0_i_53_n_0;
  wire memory_reg_bram_0_i_54_n_0;
  wire memory_reg_bram_0_i_55_n_0;
  wire memory_reg_bram_0_i_56_n_0;
  wire memory_reg_bram_0_i_57_n_0;
  wire memory_reg_bram_0_i_58_n_0;
  wire memory_reg_bram_0_i_59_n_0;
  wire memory_reg_bram_0_i_60_n_0;
  wire memory_reg_bram_0_i_61_n_0;
  wire memory_reg_bram_0_i_62_n_0;
  wire memory_reg_bram_0_i_63_n_0;
  wire memory_reg_bram_0_i_64_n_0;
  wire memory_reg_bram_0_i_65_n_0;
  wire memory_reg_bram_0_i_66_n_0;
  wire memory_reg_bram_0_i_67_n_0;
  wire memory_reg_bram_0_i_68_n_0;
  wire memory_reg_bram_0_i_69_n_0;
  wire memory_reg_bram_0_i_70_n_0;
  wire memory_reg_bram_0_i_71_n_0;
  wire memory_reg_bram_0_i_72_n_0;
  wire memory_reg_bram_0_i_73_n_0;
  wire memory_reg_bram_0_i_74_n_0;
  wire memory_reg_bram_0_i_75_n_0;
  wire memory_reg_bram_0_i_76_n_0;
  wire memory_reg_bram_0_i_77_n_0;
  wire memory_reg_bram_0_i_78_n_0;
  wire [0:0]memory_reg_bram_0_i_80_0;
  wire memory_reg_bram_0_i_81_n_0;
  wire memory_reg_bram_0_i_87_n_0;
  wire memory_reg_bram_0_i_88_n_0;
  wire memory_reg_bram_0_i_89_n_0;
  wire memory_reg_bram_0_i_90_n_0;
  wire memory_reg_bram_0_i_91_n_0;
  wire memory_reg_bram_0_i_93_n_0;
  wire memory_reg_bram_0_i_94_n_0;
  wire memory_reg_bram_0_i_95_n_0;
  wire memory_reg_bram_0_i_96_n_0;
  wire memory_reg_bram_0_i_97_n_0;
  wire memory_reg_bram_0_i_98_n_0;
  wire memory_reg_bram_0_i_99_n_0;
  wire memory_reg_bram_0_n_10;
  wire memory_reg_bram_0_n_11;
  wire memory_reg_bram_0_n_12;
  wire memory_reg_bram_0_n_13;
  wire memory_reg_bram_0_n_14;
  wire memory_reg_bram_0_n_15;
  wire memory_reg_bram_0_n_16;
  wire memory_reg_bram_0_n_17;
  wire memory_reg_bram_0_n_18;
  wire memory_reg_bram_0_n_19;
  wire memory_reg_bram_0_n_20;
  wire memory_reg_bram_0_n_21;
  wire memory_reg_bram_0_n_22;
  wire memory_reg_bram_0_n_23;
  wire memory_reg_bram_0_n_24;
  wire memory_reg_bram_0_n_25;
  wire memory_reg_bram_0_n_26;
  wire memory_reg_bram_0_n_27;
  wire memory_reg_bram_0_n_28;
  wire memory_reg_bram_0_n_29;
  wire memory_reg_bram_0_n_30;
  wire memory_reg_bram_0_n_31;
  wire memory_reg_bram_0_n_32;
  wire memory_reg_bram_0_n_33;
  wire memory_reg_bram_0_n_34;
  wire memory_reg_bram_0_n_35;
  wire memory_reg_bram_0_n_36;
  wire memory_reg_bram_0_n_37;
  wire memory_reg_bram_0_n_38;
  wire memory_reg_bram_0_n_39;
  wire memory_reg_bram_0_n_4;
  wire memory_reg_bram_0_n_40;
  wire memory_reg_bram_0_n_41;
  wire memory_reg_bram_0_n_42;
  wire memory_reg_bram_0_n_43;
  wire memory_reg_bram_0_n_44;
  wire memory_reg_bram_0_n_45;
  wire memory_reg_bram_0_n_46;
  wire memory_reg_bram_0_n_47;
  wire memory_reg_bram_0_n_48;
  wire memory_reg_bram_0_n_49;
  wire memory_reg_bram_0_n_5;
  wire memory_reg_bram_0_n_50;
  wire memory_reg_bram_0_n_51;
  wire memory_reg_bram_0_n_52;
  wire memory_reg_bram_0_n_53;
  wire memory_reg_bram_0_n_54;
  wire memory_reg_bram_0_n_55;
  wire memory_reg_bram_0_n_56;
  wire memory_reg_bram_0_n_57;
  wire memory_reg_bram_0_n_58;
  wire memory_reg_bram_0_n_59;
  wire memory_reg_bram_0_n_6;
  wire memory_reg_bram_0_n_60;
  wire memory_reg_bram_0_n_61;
  wire memory_reg_bram_0_n_62;
  wire memory_reg_bram_0_n_63;
  wire memory_reg_bram_0_n_64;
  wire memory_reg_bram_0_n_65;
  wire memory_reg_bram_0_n_66;
  wire memory_reg_bram_0_n_67;
  wire memory_reg_bram_0_n_7;
  wire memory_reg_bram_0_n_8;
  wire memory_reg_bram_0_n_9;
  wire memory_reg_bram_10_0;
  wire memory_reg_bram_10_i_1_n_0;
  wire memory_reg_bram_10_i_3_n_0;
  wire memory_reg_bram_10_i_4_n_0;
  wire memory_reg_bram_10_i_5_n_0;
  wire memory_reg_bram_10_i_6_n_0;
  wire memory_reg_bram_10_n_10;
  wire memory_reg_bram_10_n_11;
  wire memory_reg_bram_10_n_12;
  wire memory_reg_bram_10_n_13;
  wire memory_reg_bram_10_n_14;
  wire memory_reg_bram_10_n_15;
  wire memory_reg_bram_10_n_16;
  wire memory_reg_bram_10_n_17;
  wire memory_reg_bram_10_n_18;
  wire memory_reg_bram_10_n_19;
  wire memory_reg_bram_10_n_20;
  wire memory_reg_bram_10_n_21;
  wire memory_reg_bram_10_n_22;
  wire memory_reg_bram_10_n_23;
  wire memory_reg_bram_10_n_24;
  wire memory_reg_bram_10_n_25;
  wire memory_reg_bram_10_n_26;
  wire memory_reg_bram_10_n_27;
  wire memory_reg_bram_10_n_28;
  wire memory_reg_bram_10_n_29;
  wire memory_reg_bram_10_n_30;
  wire memory_reg_bram_10_n_31;
  wire memory_reg_bram_10_n_32;
  wire memory_reg_bram_10_n_33;
  wire memory_reg_bram_10_n_34;
  wire memory_reg_bram_10_n_35;
  wire memory_reg_bram_10_n_36;
  wire memory_reg_bram_10_n_37;
  wire memory_reg_bram_10_n_38;
  wire memory_reg_bram_10_n_39;
  wire memory_reg_bram_10_n_4;
  wire memory_reg_bram_10_n_40;
  wire memory_reg_bram_10_n_41;
  wire memory_reg_bram_10_n_42;
  wire memory_reg_bram_10_n_43;
  wire memory_reg_bram_10_n_44;
  wire memory_reg_bram_10_n_45;
  wire memory_reg_bram_10_n_46;
  wire memory_reg_bram_10_n_47;
  wire memory_reg_bram_10_n_48;
  wire memory_reg_bram_10_n_49;
  wire memory_reg_bram_10_n_5;
  wire memory_reg_bram_10_n_50;
  wire memory_reg_bram_10_n_51;
  wire memory_reg_bram_10_n_52;
  wire memory_reg_bram_10_n_53;
  wire memory_reg_bram_10_n_54;
  wire memory_reg_bram_10_n_55;
  wire memory_reg_bram_10_n_56;
  wire memory_reg_bram_10_n_57;
  wire memory_reg_bram_10_n_58;
  wire memory_reg_bram_10_n_59;
  wire memory_reg_bram_10_n_6;
  wire memory_reg_bram_10_n_60;
  wire memory_reg_bram_10_n_61;
  wire memory_reg_bram_10_n_62;
  wire memory_reg_bram_10_n_63;
  wire memory_reg_bram_10_n_64;
  wire memory_reg_bram_10_n_65;
  wire memory_reg_bram_10_n_66;
  wire memory_reg_bram_10_n_67;
  wire memory_reg_bram_10_n_7;
  wire memory_reg_bram_10_n_8;
  wire memory_reg_bram_10_n_9;
  wire memory_reg_bram_11_0;
  wire memory_reg_bram_11_i_1_n_0;
  wire memory_reg_bram_11_i_3_n_0;
  wire memory_reg_bram_11_i_4_n_0;
  wire memory_reg_bram_11_i_5_n_0;
  wire memory_reg_bram_11_i_6_n_0;
  wire memory_reg_bram_11_n_10;
  wire memory_reg_bram_11_n_11;
  wire memory_reg_bram_11_n_12;
  wire memory_reg_bram_11_n_13;
  wire memory_reg_bram_11_n_14;
  wire memory_reg_bram_11_n_15;
  wire memory_reg_bram_11_n_16;
  wire memory_reg_bram_11_n_17;
  wire memory_reg_bram_11_n_18;
  wire memory_reg_bram_11_n_19;
  wire memory_reg_bram_11_n_20;
  wire memory_reg_bram_11_n_21;
  wire memory_reg_bram_11_n_22;
  wire memory_reg_bram_11_n_23;
  wire memory_reg_bram_11_n_24;
  wire memory_reg_bram_11_n_25;
  wire memory_reg_bram_11_n_26;
  wire memory_reg_bram_11_n_27;
  wire memory_reg_bram_11_n_28;
  wire memory_reg_bram_11_n_29;
  wire memory_reg_bram_11_n_30;
  wire memory_reg_bram_11_n_31;
  wire memory_reg_bram_11_n_32;
  wire memory_reg_bram_11_n_33;
  wire memory_reg_bram_11_n_34;
  wire memory_reg_bram_11_n_35;
  wire memory_reg_bram_11_n_36;
  wire memory_reg_bram_11_n_37;
  wire memory_reg_bram_11_n_38;
  wire memory_reg_bram_11_n_39;
  wire memory_reg_bram_11_n_4;
  wire memory_reg_bram_11_n_40;
  wire memory_reg_bram_11_n_41;
  wire memory_reg_bram_11_n_42;
  wire memory_reg_bram_11_n_43;
  wire memory_reg_bram_11_n_44;
  wire memory_reg_bram_11_n_45;
  wire memory_reg_bram_11_n_46;
  wire memory_reg_bram_11_n_47;
  wire memory_reg_bram_11_n_48;
  wire memory_reg_bram_11_n_49;
  wire memory_reg_bram_11_n_5;
  wire memory_reg_bram_11_n_50;
  wire memory_reg_bram_11_n_51;
  wire memory_reg_bram_11_n_52;
  wire memory_reg_bram_11_n_53;
  wire memory_reg_bram_11_n_54;
  wire memory_reg_bram_11_n_55;
  wire memory_reg_bram_11_n_56;
  wire memory_reg_bram_11_n_57;
  wire memory_reg_bram_11_n_58;
  wire memory_reg_bram_11_n_59;
  wire memory_reg_bram_11_n_6;
  wire memory_reg_bram_11_n_60;
  wire memory_reg_bram_11_n_61;
  wire memory_reg_bram_11_n_62;
  wire memory_reg_bram_11_n_63;
  wire memory_reg_bram_11_n_64;
  wire memory_reg_bram_11_n_65;
  wire memory_reg_bram_11_n_66;
  wire memory_reg_bram_11_n_67;
  wire memory_reg_bram_11_n_7;
  wire memory_reg_bram_11_n_8;
  wire memory_reg_bram_11_n_9;
  wire memory_reg_bram_12_0;
  wire memory_reg_bram_12_i_1_n_0;
  wire memory_reg_bram_12_i_3_n_0;
  wire memory_reg_bram_12_i_4_n_0;
  wire memory_reg_bram_12_i_5_n_0;
  wire memory_reg_bram_12_i_6_n_0;
  wire memory_reg_bram_12_n_10;
  wire memory_reg_bram_12_n_11;
  wire memory_reg_bram_12_n_12;
  wire memory_reg_bram_12_n_13;
  wire memory_reg_bram_12_n_14;
  wire memory_reg_bram_12_n_15;
  wire memory_reg_bram_12_n_16;
  wire memory_reg_bram_12_n_17;
  wire memory_reg_bram_12_n_18;
  wire memory_reg_bram_12_n_19;
  wire memory_reg_bram_12_n_20;
  wire memory_reg_bram_12_n_21;
  wire memory_reg_bram_12_n_22;
  wire memory_reg_bram_12_n_23;
  wire memory_reg_bram_12_n_24;
  wire memory_reg_bram_12_n_25;
  wire memory_reg_bram_12_n_26;
  wire memory_reg_bram_12_n_27;
  wire memory_reg_bram_12_n_28;
  wire memory_reg_bram_12_n_29;
  wire memory_reg_bram_12_n_30;
  wire memory_reg_bram_12_n_31;
  wire memory_reg_bram_12_n_32;
  wire memory_reg_bram_12_n_33;
  wire memory_reg_bram_12_n_34;
  wire memory_reg_bram_12_n_35;
  wire memory_reg_bram_12_n_36;
  wire memory_reg_bram_12_n_37;
  wire memory_reg_bram_12_n_38;
  wire memory_reg_bram_12_n_39;
  wire memory_reg_bram_12_n_4;
  wire memory_reg_bram_12_n_40;
  wire memory_reg_bram_12_n_41;
  wire memory_reg_bram_12_n_42;
  wire memory_reg_bram_12_n_43;
  wire memory_reg_bram_12_n_44;
  wire memory_reg_bram_12_n_45;
  wire memory_reg_bram_12_n_46;
  wire memory_reg_bram_12_n_47;
  wire memory_reg_bram_12_n_48;
  wire memory_reg_bram_12_n_49;
  wire memory_reg_bram_12_n_5;
  wire memory_reg_bram_12_n_50;
  wire memory_reg_bram_12_n_51;
  wire memory_reg_bram_12_n_52;
  wire memory_reg_bram_12_n_53;
  wire memory_reg_bram_12_n_54;
  wire memory_reg_bram_12_n_55;
  wire memory_reg_bram_12_n_56;
  wire memory_reg_bram_12_n_57;
  wire memory_reg_bram_12_n_58;
  wire memory_reg_bram_12_n_59;
  wire memory_reg_bram_12_n_6;
  wire memory_reg_bram_12_n_60;
  wire memory_reg_bram_12_n_61;
  wire memory_reg_bram_12_n_62;
  wire memory_reg_bram_12_n_63;
  wire memory_reg_bram_12_n_64;
  wire memory_reg_bram_12_n_65;
  wire memory_reg_bram_12_n_66;
  wire memory_reg_bram_12_n_67;
  wire memory_reg_bram_12_n_7;
  wire memory_reg_bram_12_n_8;
  wire memory_reg_bram_12_n_9;
  wire memory_reg_bram_13_0;
  wire memory_reg_bram_13_i_1_n_0;
  wire memory_reg_bram_13_i_3_n_0;
  wire memory_reg_bram_13_i_4_n_0;
  wire memory_reg_bram_13_i_5_n_0;
  wire memory_reg_bram_13_i_6_n_0;
  wire memory_reg_bram_13_n_10;
  wire memory_reg_bram_13_n_11;
  wire memory_reg_bram_13_n_12;
  wire memory_reg_bram_13_n_13;
  wire memory_reg_bram_13_n_14;
  wire memory_reg_bram_13_n_15;
  wire memory_reg_bram_13_n_16;
  wire memory_reg_bram_13_n_17;
  wire memory_reg_bram_13_n_18;
  wire memory_reg_bram_13_n_19;
  wire memory_reg_bram_13_n_20;
  wire memory_reg_bram_13_n_21;
  wire memory_reg_bram_13_n_22;
  wire memory_reg_bram_13_n_23;
  wire memory_reg_bram_13_n_24;
  wire memory_reg_bram_13_n_25;
  wire memory_reg_bram_13_n_26;
  wire memory_reg_bram_13_n_27;
  wire memory_reg_bram_13_n_28;
  wire memory_reg_bram_13_n_29;
  wire memory_reg_bram_13_n_30;
  wire memory_reg_bram_13_n_31;
  wire memory_reg_bram_13_n_32;
  wire memory_reg_bram_13_n_33;
  wire memory_reg_bram_13_n_34;
  wire memory_reg_bram_13_n_35;
  wire memory_reg_bram_13_n_36;
  wire memory_reg_bram_13_n_37;
  wire memory_reg_bram_13_n_38;
  wire memory_reg_bram_13_n_39;
  wire memory_reg_bram_13_n_4;
  wire memory_reg_bram_13_n_40;
  wire memory_reg_bram_13_n_41;
  wire memory_reg_bram_13_n_42;
  wire memory_reg_bram_13_n_43;
  wire memory_reg_bram_13_n_44;
  wire memory_reg_bram_13_n_45;
  wire memory_reg_bram_13_n_46;
  wire memory_reg_bram_13_n_47;
  wire memory_reg_bram_13_n_48;
  wire memory_reg_bram_13_n_49;
  wire memory_reg_bram_13_n_5;
  wire memory_reg_bram_13_n_50;
  wire memory_reg_bram_13_n_51;
  wire memory_reg_bram_13_n_52;
  wire memory_reg_bram_13_n_53;
  wire memory_reg_bram_13_n_54;
  wire memory_reg_bram_13_n_55;
  wire memory_reg_bram_13_n_56;
  wire memory_reg_bram_13_n_57;
  wire memory_reg_bram_13_n_58;
  wire memory_reg_bram_13_n_59;
  wire memory_reg_bram_13_n_6;
  wire memory_reg_bram_13_n_60;
  wire memory_reg_bram_13_n_61;
  wire memory_reg_bram_13_n_62;
  wire memory_reg_bram_13_n_63;
  wire memory_reg_bram_13_n_64;
  wire memory_reg_bram_13_n_65;
  wire memory_reg_bram_13_n_66;
  wire memory_reg_bram_13_n_67;
  wire memory_reg_bram_13_n_7;
  wire memory_reg_bram_13_n_8;
  wire memory_reg_bram_13_n_9;
  wire memory_reg_bram_14_0;
  wire memory_reg_bram_14_i_1_n_0;
  wire memory_reg_bram_14_i_3_n_0;
  wire memory_reg_bram_14_i_4_n_0;
  wire memory_reg_bram_14_i_5_n_0;
  wire memory_reg_bram_14_i_6_n_0;
  wire memory_reg_bram_14_n_10;
  wire memory_reg_bram_14_n_11;
  wire memory_reg_bram_14_n_12;
  wire memory_reg_bram_14_n_13;
  wire memory_reg_bram_14_n_14;
  wire memory_reg_bram_14_n_15;
  wire memory_reg_bram_14_n_16;
  wire memory_reg_bram_14_n_17;
  wire memory_reg_bram_14_n_18;
  wire memory_reg_bram_14_n_19;
  wire memory_reg_bram_14_n_20;
  wire memory_reg_bram_14_n_21;
  wire memory_reg_bram_14_n_22;
  wire memory_reg_bram_14_n_23;
  wire memory_reg_bram_14_n_24;
  wire memory_reg_bram_14_n_25;
  wire memory_reg_bram_14_n_26;
  wire memory_reg_bram_14_n_27;
  wire memory_reg_bram_14_n_28;
  wire memory_reg_bram_14_n_29;
  wire memory_reg_bram_14_n_30;
  wire memory_reg_bram_14_n_31;
  wire memory_reg_bram_14_n_32;
  wire memory_reg_bram_14_n_33;
  wire memory_reg_bram_14_n_34;
  wire memory_reg_bram_14_n_35;
  wire memory_reg_bram_14_n_36;
  wire memory_reg_bram_14_n_37;
  wire memory_reg_bram_14_n_38;
  wire memory_reg_bram_14_n_39;
  wire memory_reg_bram_14_n_4;
  wire memory_reg_bram_14_n_40;
  wire memory_reg_bram_14_n_41;
  wire memory_reg_bram_14_n_42;
  wire memory_reg_bram_14_n_43;
  wire memory_reg_bram_14_n_44;
  wire memory_reg_bram_14_n_45;
  wire memory_reg_bram_14_n_46;
  wire memory_reg_bram_14_n_47;
  wire memory_reg_bram_14_n_48;
  wire memory_reg_bram_14_n_49;
  wire memory_reg_bram_14_n_5;
  wire memory_reg_bram_14_n_50;
  wire memory_reg_bram_14_n_51;
  wire memory_reg_bram_14_n_52;
  wire memory_reg_bram_14_n_53;
  wire memory_reg_bram_14_n_54;
  wire memory_reg_bram_14_n_55;
  wire memory_reg_bram_14_n_56;
  wire memory_reg_bram_14_n_57;
  wire memory_reg_bram_14_n_58;
  wire memory_reg_bram_14_n_59;
  wire memory_reg_bram_14_n_6;
  wire memory_reg_bram_14_n_60;
  wire memory_reg_bram_14_n_61;
  wire memory_reg_bram_14_n_62;
  wire memory_reg_bram_14_n_63;
  wire memory_reg_bram_14_n_64;
  wire memory_reg_bram_14_n_65;
  wire memory_reg_bram_14_n_66;
  wire memory_reg_bram_14_n_67;
  wire memory_reg_bram_14_n_7;
  wire memory_reg_bram_14_n_8;
  wire memory_reg_bram_14_n_9;
  wire memory_reg_bram_15_0;
  wire memory_reg_bram_15_i_1_n_0;
  wire memory_reg_bram_15_i_3_n_0;
  wire memory_reg_bram_15_i_4_n_0;
  wire memory_reg_bram_15_i_5_n_0;
  wire memory_reg_bram_15_i_6_n_0;
  wire memory_reg_bram_15_n_10;
  wire memory_reg_bram_15_n_11;
  wire memory_reg_bram_15_n_12;
  wire memory_reg_bram_15_n_13;
  wire memory_reg_bram_15_n_14;
  wire memory_reg_bram_15_n_15;
  wire memory_reg_bram_15_n_16;
  wire memory_reg_bram_15_n_17;
  wire memory_reg_bram_15_n_18;
  wire memory_reg_bram_15_n_19;
  wire memory_reg_bram_15_n_20;
  wire memory_reg_bram_15_n_21;
  wire memory_reg_bram_15_n_22;
  wire memory_reg_bram_15_n_23;
  wire memory_reg_bram_15_n_24;
  wire memory_reg_bram_15_n_25;
  wire memory_reg_bram_15_n_26;
  wire memory_reg_bram_15_n_27;
  wire memory_reg_bram_15_n_28;
  wire memory_reg_bram_15_n_29;
  wire memory_reg_bram_15_n_30;
  wire memory_reg_bram_15_n_31;
  wire memory_reg_bram_15_n_32;
  wire memory_reg_bram_15_n_33;
  wire memory_reg_bram_15_n_34;
  wire memory_reg_bram_15_n_35;
  wire memory_reg_bram_15_n_36;
  wire memory_reg_bram_15_n_37;
  wire memory_reg_bram_15_n_38;
  wire memory_reg_bram_15_n_39;
  wire memory_reg_bram_15_n_4;
  wire memory_reg_bram_15_n_40;
  wire memory_reg_bram_15_n_41;
  wire memory_reg_bram_15_n_42;
  wire memory_reg_bram_15_n_43;
  wire memory_reg_bram_15_n_44;
  wire memory_reg_bram_15_n_45;
  wire memory_reg_bram_15_n_46;
  wire memory_reg_bram_15_n_47;
  wire memory_reg_bram_15_n_48;
  wire memory_reg_bram_15_n_49;
  wire memory_reg_bram_15_n_5;
  wire memory_reg_bram_15_n_50;
  wire memory_reg_bram_15_n_51;
  wire memory_reg_bram_15_n_52;
  wire memory_reg_bram_15_n_53;
  wire memory_reg_bram_15_n_54;
  wire memory_reg_bram_15_n_55;
  wire memory_reg_bram_15_n_56;
  wire memory_reg_bram_15_n_57;
  wire memory_reg_bram_15_n_58;
  wire memory_reg_bram_15_n_59;
  wire memory_reg_bram_15_n_6;
  wire memory_reg_bram_15_n_60;
  wire memory_reg_bram_15_n_61;
  wire memory_reg_bram_15_n_62;
  wire memory_reg_bram_15_n_63;
  wire memory_reg_bram_15_n_64;
  wire memory_reg_bram_15_n_65;
  wire memory_reg_bram_15_n_66;
  wire memory_reg_bram_15_n_67;
  wire memory_reg_bram_15_n_7;
  wire memory_reg_bram_15_n_8;
  wire memory_reg_bram_15_n_9;
  wire memory_reg_bram_1_0;
  wire memory_reg_bram_1_i_1_n_0;
  wire memory_reg_bram_1_i_3_n_0;
  wire memory_reg_bram_1_i_4_n_0;
  wire memory_reg_bram_1_i_5_n_0;
  wire memory_reg_bram_1_i_6_n_0;
  wire memory_reg_bram_1_n_10;
  wire memory_reg_bram_1_n_11;
  wire memory_reg_bram_1_n_12;
  wire memory_reg_bram_1_n_13;
  wire memory_reg_bram_1_n_14;
  wire memory_reg_bram_1_n_15;
  wire memory_reg_bram_1_n_16;
  wire memory_reg_bram_1_n_17;
  wire memory_reg_bram_1_n_18;
  wire memory_reg_bram_1_n_19;
  wire memory_reg_bram_1_n_20;
  wire memory_reg_bram_1_n_21;
  wire memory_reg_bram_1_n_22;
  wire memory_reg_bram_1_n_23;
  wire memory_reg_bram_1_n_24;
  wire memory_reg_bram_1_n_25;
  wire memory_reg_bram_1_n_26;
  wire memory_reg_bram_1_n_27;
  wire memory_reg_bram_1_n_28;
  wire memory_reg_bram_1_n_29;
  wire memory_reg_bram_1_n_30;
  wire memory_reg_bram_1_n_31;
  wire memory_reg_bram_1_n_32;
  wire memory_reg_bram_1_n_33;
  wire memory_reg_bram_1_n_34;
  wire memory_reg_bram_1_n_35;
  wire memory_reg_bram_1_n_36;
  wire memory_reg_bram_1_n_37;
  wire memory_reg_bram_1_n_38;
  wire memory_reg_bram_1_n_39;
  wire memory_reg_bram_1_n_4;
  wire memory_reg_bram_1_n_40;
  wire memory_reg_bram_1_n_41;
  wire memory_reg_bram_1_n_42;
  wire memory_reg_bram_1_n_43;
  wire memory_reg_bram_1_n_44;
  wire memory_reg_bram_1_n_45;
  wire memory_reg_bram_1_n_46;
  wire memory_reg_bram_1_n_47;
  wire memory_reg_bram_1_n_48;
  wire memory_reg_bram_1_n_49;
  wire memory_reg_bram_1_n_5;
  wire memory_reg_bram_1_n_50;
  wire memory_reg_bram_1_n_51;
  wire memory_reg_bram_1_n_52;
  wire memory_reg_bram_1_n_53;
  wire memory_reg_bram_1_n_54;
  wire memory_reg_bram_1_n_55;
  wire memory_reg_bram_1_n_56;
  wire memory_reg_bram_1_n_57;
  wire memory_reg_bram_1_n_58;
  wire memory_reg_bram_1_n_59;
  wire memory_reg_bram_1_n_6;
  wire memory_reg_bram_1_n_60;
  wire memory_reg_bram_1_n_61;
  wire memory_reg_bram_1_n_62;
  wire memory_reg_bram_1_n_63;
  wire memory_reg_bram_1_n_64;
  wire memory_reg_bram_1_n_65;
  wire memory_reg_bram_1_n_66;
  wire memory_reg_bram_1_n_67;
  wire memory_reg_bram_1_n_7;
  wire memory_reg_bram_1_n_8;
  wire memory_reg_bram_1_n_9;
  wire memory_reg_bram_2_0;
  wire memory_reg_bram_2_i_1_n_0;
  wire memory_reg_bram_2_i_3_n_0;
  wire memory_reg_bram_2_i_4_n_0;
  wire memory_reg_bram_2_i_5_n_0;
  wire memory_reg_bram_2_i_6_n_0;
  wire memory_reg_bram_2_n_10;
  wire memory_reg_bram_2_n_11;
  wire memory_reg_bram_2_n_12;
  wire memory_reg_bram_2_n_13;
  wire memory_reg_bram_2_n_14;
  wire memory_reg_bram_2_n_15;
  wire memory_reg_bram_2_n_16;
  wire memory_reg_bram_2_n_17;
  wire memory_reg_bram_2_n_18;
  wire memory_reg_bram_2_n_19;
  wire memory_reg_bram_2_n_20;
  wire memory_reg_bram_2_n_21;
  wire memory_reg_bram_2_n_22;
  wire memory_reg_bram_2_n_23;
  wire memory_reg_bram_2_n_24;
  wire memory_reg_bram_2_n_25;
  wire memory_reg_bram_2_n_26;
  wire memory_reg_bram_2_n_27;
  wire memory_reg_bram_2_n_28;
  wire memory_reg_bram_2_n_29;
  wire memory_reg_bram_2_n_30;
  wire memory_reg_bram_2_n_31;
  wire memory_reg_bram_2_n_32;
  wire memory_reg_bram_2_n_33;
  wire memory_reg_bram_2_n_34;
  wire memory_reg_bram_2_n_35;
  wire memory_reg_bram_2_n_36;
  wire memory_reg_bram_2_n_37;
  wire memory_reg_bram_2_n_38;
  wire memory_reg_bram_2_n_39;
  wire memory_reg_bram_2_n_4;
  wire memory_reg_bram_2_n_40;
  wire memory_reg_bram_2_n_41;
  wire memory_reg_bram_2_n_42;
  wire memory_reg_bram_2_n_43;
  wire memory_reg_bram_2_n_44;
  wire memory_reg_bram_2_n_45;
  wire memory_reg_bram_2_n_46;
  wire memory_reg_bram_2_n_47;
  wire memory_reg_bram_2_n_48;
  wire memory_reg_bram_2_n_49;
  wire memory_reg_bram_2_n_5;
  wire memory_reg_bram_2_n_50;
  wire memory_reg_bram_2_n_51;
  wire memory_reg_bram_2_n_52;
  wire memory_reg_bram_2_n_53;
  wire memory_reg_bram_2_n_54;
  wire memory_reg_bram_2_n_55;
  wire memory_reg_bram_2_n_56;
  wire memory_reg_bram_2_n_57;
  wire memory_reg_bram_2_n_58;
  wire memory_reg_bram_2_n_59;
  wire memory_reg_bram_2_n_6;
  wire memory_reg_bram_2_n_60;
  wire memory_reg_bram_2_n_61;
  wire memory_reg_bram_2_n_62;
  wire memory_reg_bram_2_n_63;
  wire memory_reg_bram_2_n_64;
  wire memory_reg_bram_2_n_65;
  wire memory_reg_bram_2_n_66;
  wire memory_reg_bram_2_n_67;
  wire memory_reg_bram_2_n_7;
  wire memory_reg_bram_2_n_8;
  wire memory_reg_bram_2_n_9;
  wire memory_reg_bram_3_0;
  wire memory_reg_bram_3_i_1_n_0;
  wire memory_reg_bram_3_i_3_n_0;
  wire memory_reg_bram_3_i_4_n_0;
  wire memory_reg_bram_3_i_5_n_0;
  wire memory_reg_bram_3_i_6_n_0;
  wire memory_reg_bram_3_n_10;
  wire memory_reg_bram_3_n_11;
  wire memory_reg_bram_3_n_12;
  wire memory_reg_bram_3_n_13;
  wire memory_reg_bram_3_n_14;
  wire memory_reg_bram_3_n_15;
  wire memory_reg_bram_3_n_16;
  wire memory_reg_bram_3_n_17;
  wire memory_reg_bram_3_n_18;
  wire memory_reg_bram_3_n_19;
  wire memory_reg_bram_3_n_20;
  wire memory_reg_bram_3_n_21;
  wire memory_reg_bram_3_n_22;
  wire memory_reg_bram_3_n_23;
  wire memory_reg_bram_3_n_24;
  wire memory_reg_bram_3_n_25;
  wire memory_reg_bram_3_n_26;
  wire memory_reg_bram_3_n_27;
  wire memory_reg_bram_3_n_28;
  wire memory_reg_bram_3_n_29;
  wire memory_reg_bram_3_n_30;
  wire memory_reg_bram_3_n_31;
  wire memory_reg_bram_3_n_32;
  wire memory_reg_bram_3_n_33;
  wire memory_reg_bram_3_n_34;
  wire memory_reg_bram_3_n_35;
  wire memory_reg_bram_3_n_36;
  wire memory_reg_bram_3_n_37;
  wire memory_reg_bram_3_n_38;
  wire memory_reg_bram_3_n_39;
  wire memory_reg_bram_3_n_4;
  wire memory_reg_bram_3_n_40;
  wire memory_reg_bram_3_n_41;
  wire memory_reg_bram_3_n_42;
  wire memory_reg_bram_3_n_43;
  wire memory_reg_bram_3_n_44;
  wire memory_reg_bram_3_n_45;
  wire memory_reg_bram_3_n_46;
  wire memory_reg_bram_3_n_47;
  wire memory_reg_bram_3_n_48;
  wire memory_reg_bram_3_n_49;
  wire memory_reg_bram_3_n_5;
  wire memory_reg_bram_3_n_50;
  wire memory_reg_bram_3_n_51;
  wire memory_reg_bram_3_n_52;
  wire memory_reg_bram_3_n_53;
  wire memory_reg_bram_3_n_54;
  wire memory_reg_bram_3_n_55;
  wire memory_reg_bram_3_n_56;
  wire memory_reg_bram_3_n_57;
  wire memory_reg_bram_3_n_58;
  wire memory_reg_bram_3_n_59;
  wire memory_reg_bram_3_n_6;
  wire memory_reg_bram_3_n_60;
  wire memory_reg_bram_3_n_61;
  wire memory_reg_bram_3_n_62;
  wire memory_reg_bram_3_n_63;
  wire memory_reg_bram_3_n_64;
  wire memory_reg_bram_3_n_65;
  wire memory_reg_bram_3_n_66;
  wire memory_reg_bram_3_n_67;
  wire memory_reg_bram_3_n_7;
  wire memory_reg_bram_3_n_8;
  wire memory_reg_bram_3_n_9;
  wire memory_reg_bram_4_0;
  wire memory_reg_bram_4_i_1_n_0;
  wire memory_reg_bram_4_i_3_n_0;
  wire memory_reg_bram_4_i_4_n_0;
  wire memory_reg_bram_4_i_5_n_0;
  wire memory_reg_bram_4_i_6_n_0;
  wire memory_reg_bram_4_n_10;
  wire memory_reg_bram_4_n_11;
  wire memory_reg_bram_4_n_12;
  wire memory_reg_bram_4_n_13;
  wire memory_reg_bram_4_n_14;
  wire memory_reg_bram_4_n_15;
  wire memory_reg_bram_4_n_16;
  wire memory_reg_bram_4_n_17;
  wire memory_reg_bram_4_n_18;
  wire memory_reg_bram_4_n_19;
  wire memory_reg_bram_4_n_20;
  wire memory_reg_bram_4_n_21;
  wire memory_reg_bram_4_n_22;
  wire memory_reg_bram_4_n_23;
  wire memory_reg_bram_4_n_24;
  wire memory_reg_bram_4_n_25;
  wire memory_reg_bram_4_n_26;
  wire memory_reg_bram_4_n_27;
  wire memory_reg_bram_4_n_28;
  wire memory_reg_bram_4_n_29;
  wire memory_reg_bram_4_n_30;
  wire memory_reg_bram_4_n_31;
  wire memory_reg_bram_4_n_32;
  wire memory_reg_bram_4_n_33;
  wire memory_reg_bram_4_n_34;
  wire memory_reg_bram_4_n_35;
  wire memory_reg_bram_4_n_36;
  wire memory_reg_bram_4_n_37;
  wire memory_reg_bram_4_n_38;
  wire memory_reg_bram_4_n_39;
  wire memory_reg_bram_4_n_4;
  wire memory_reg_bram_4_n_40;
  wire memory_reg_bram_4_n_41;
  wire memory_reg_bram_4_n_42;
  wire memory_reg_bram_4_n_43;
  wire memory_reg_bram_4_n_44;
  wire memory_reg_bram_4_n_45;
  wire memory_reg_bram_4_n_46;
  wire memory_reg_bram_4_n_47;
  wire memory_reg_bram_4_n_48;
  wire memory_reg_bram_4_n_49;
  wire memory_reg_bram_4_n_5;
  wire memory_reg_bram_4_n_50;
  wire memory_reg_bram_4_n_51;
  wire memory_reg_bram_4_n_52;
  wire memory_reg_bram_4_n_53;
  wire memory_reg_bram_4_n_54;
  wire memory_reg_bram_4_n_55;
  wire memory_reg_bram_4_n_56;
  wire memory_reg_bram_4_n_57;
  wire memory_reg_bram_4_n_58;
  wire memory_reg_bram_4_n_59;
  wire memory_reg_bram_4_n_6;
  wire memory_reg_bram_4_n_60;
  wire memory_reg_bram_4_n_61;
  wire memory_reg_bram_4_n_62;
  wire memory_reg_bram_4_n_63;
  wire memory_reg_bram_4_n_64;
  wire memory_reg_bram_4_n_65;
  wire memory_reg_bram_4_n_66;
  wire memory_reg_bram_4_n_67;
  wire memory_reg_bram_4_n_7;
  wire memory_reg_bram_4_n_8;
  wire memory_reg_bram_4_n_9;
  wire memory_reg_bram_5_0;
  wire memory_reg_bram_5_i_1_n_0;
  wire memory_reg_bram_5_i_3_n_0;
  wire memory_reg_bram_5_i_4_n_0;
  wire memory_reg_bram_5_i_5_n_0;
  wire memory_reg_bram_5_i_6_n_0;
  wire memory_reg_bram_5_n_10;
  wire memory_reg_bram_5_n_11;
  wire memory_reg_bram_5_n_12;
  wire memory_reg_bram_5_n_13;
  wire memory_reg_bram_5_n_14;
  wire memory_reg_bram_5_n_15;
  wire memory_reg_bram_5_n_16;
  wire memory_reg_bram_5_n_17;
  wire memory_reg_bram_5_n_18;
  wire memory_reg_bram_5_n_19;
  wire memory_reg_bram_5_n_20;
  wire memory_reg_bram_5_n_21;
  wire memory_reg_bram_5_n_22;
  wire memory_reg_bram_5_n_23;
  wire memory_reg_bram_5_n_24;
  wire memory_reg_bram_5_n_25;
  wire memory_reg_bram_5_n_26;
  wire memory_reg_bram_5_n_27;
  wire memory_reg_bram_5_n_28;
  wire memory_reg_bram_5_n_29;
  wire memory_reg_bram_5_n_30;
  wire memory_reg_bram_5_n_31;
  wire memory_reg_bram_5_n_32;
  wire memory_reg_bram_5_n_33;
  wire memory_reg_bram_5_n_34;
  wire memory_reg_bram_5_n_35;
  wire memory_reg_bram_5_n_36;
  wire memory_reg_bram_5_n_37;
  wire memory_reg_bram_5_n_38;
  wire memory_reg_bram_5_n_39;
  wire memory_reg_bram_5_n_4;
  wire memory_reg_bram_5_n_40;
  wire memory_reg_bram_5_n_41;
  wire memory_reg_bram_5_n_42;
  wire memory_reg_bram_5_n_43;
  wire memory_reg_bram_5_n_44;
  wire memory_reg_bram_5_n_45;
  wire memory_reg_bram_5_n_46;
  wire memory_reg_bram_5_n_47;
  wire memory_reg_bram_5_n_48;
  wire memory_reg_bram_5_n_49;
  wire memory_reg_bram_5_n_5;
  wire memory_reg_bram_5_n_50;
  wire memory_reg_bram_5_n_51;
  wire memory_reg_bram_5_n_52;
  wire memory_reg_bram_5_n_53;
  wire memory_reg_bram_5_n_54;
  wire memory_reg_bram_5_n_55;
  wire memory_reg_bram_5_n_56;
  wire memory_reg_bram_5_n_57;
  wire memory_reg_bram_5_n_58;
  wire memory_reg_bram_5_n_59;
  wire memory_reg_bram_5_n_6;
  wire memory_reg_bram_5_n_60;
  wire memory_reg_bram_5_n_61;
  wire memory_reg_bram_5_n_62;
  wire memory_reg_bram_5_n_63;
  wire memory_reg_bram_5_n_64;
  wire memory_reg_bram_5_n_65;
  wire memory_reg_bram_5_n_66;
  wire memory_reg_bram_5_n_67;
  wire memory_reg_bram_5_n_7;
  wire memory_reg_bram_5_n_8;
  wire memory_reg_bram_5_n_9;
  wire memory_reg_bram_6_0;
  wire memory_reg_bram_6_i_1_n_0;
  wire memory_reg_bram_6_i_3_n_0;
  wire memory_reg_bram_6_i_4_n_0;
  wire memory_reg_bram_6_i_5_n_0;
  wire memory_reg_bram_6_i_6_n_0;
  wire memory_reg_bram_6_n_10;
  wire memory_reg_bram_6_n_11;
  wire memory_reg_bram_6_n_12;
  wire memory_reg_bram_6_n_13;
  wire memory_reg_bram_6_n_14;
  wire memory_reg_bram_6_n_15;
  wire memory_reg_bram_6_n_16;
  wire memory_reg_bram_6_n_17;
  wire memory_reg_bram_6_n_18;
  wire memory_reg_bram_6_n_19;
  wire memory_reg_bram_6_n_20;
  wire memory_reg_bram_6_n_21;
  wire memory_reg_bram_6_n_22;
  wire memory_reg_bram_6_n_23;
  wire memory_reg_bram_6_n_24;
  wire memory_reg_bram_6_n_25;
  wire memory_reg_bram_6_n_26;
  wire memory_reg_bram_6_n_27;
  wire memory_reg_bram_6_n_28;
  wire memory_reg_bram_6_n_29;
  wire memory_reg_bram_6_n_30;
  wire memory_reg_bram_6_n_31;
  wire memory_reg_bram_6_n_32;
  wire memory_reg_bram_6_n_33;
  wire memory_reg_bram_6_n_34;
  wire memory_reg_bram_6_n_35;
  wire memory_reg_bram_6_n_36;
  wire memory_reg_bram_6_n_37;
  wire memory_reg_bram_6_n_38;
  wire memory_reg_bram_6_n_39;
  wire memory_reg_bram_6_n_4;
  wire memory_reg_bram_6_n_40;
  wire memory_reg_bram_6_n_41;
  wire memory_reg_bram_6_n_42;
  wire memory_reg_bram_6_n_43;
  wire memory_reg_bram_6_n_44;
  wire memory_reg_bram_6_n_45;
  wire memory_reg_bram_6_n_46;
  wire memory_reg_bram_6_n_47;
  wire memory_reg_bram_6_n_48;
  wire memory_reg_bram_6_n_49;
  wire memory_reg_bram_6_n_5;
  wire memory_reg_bram_6_n_50;
  wire memory_reg_bram_6_n_51;
  wire memory_reg_bram_6_n_52;
  wire memory_reg_bram_6_n_53;
  wire memory_reg_bram_6_n_54;
  wire memory_reg_bram_6_n_55;
  wire memory_reg_bram_6_n_56;
  wire memory_reg_bram_6_n_57;
  wire memory_reg_bram_6_n_58;
  wire memory_reg_bram_6_n_59;
  wire memory_reg_bram_6_n_6;
  wire memory_reg_bram_6_n_60;
  wire memory_reg_bram_6_n_61;
  wire memory_reg_bram_6_n_62;
  wire memory_reg_bram_6_n_63;
  wire memory_reg_bram_6_n_64;
  wire memory_reg_bram_6_n_65;
  wire memory_reg_bram_6_n_66;
  wire memory_reg_bram_6_n_67;
  wire memory_reg_bram_6_n_7;
  wire memory_reg_bram_6_n_8;
  wire memory_reg_bram_6_n_9;
  wire memory_reg_bram_7_0;
  wire memory_reg_bram_7_i_1_n_0;
  wire memory_reg_bram_7_i_3_n_0;
  wire memory_reg_bram_7_i_4_n_0;
  wire memory_reg_bram_7_i_5_n_0;
  wire memory_reg_bram_7_i_6_n_0;
  wire memory_reg_bram_7_n_10;
  wire memory_reg_bram_7_n_11;
  wire memory_reg_bram_7_n_12;
  wire memory_reg_bram_7_n_13;
  wire memory_reg_bram_7_n_14;
  wire memory_reg_bram_7_n_15;
  wire memory_reg_bram_7_n_16;
  wire memory_reg_bram_7_n_17;
  wire memory_reg_bram_7_n_18;
  wire memory_reg_bram_7_n_19;
  wire memory_reg_bram_7_n_20;
  wire memory_reg_bram_7_n_21;
  wire memory_reg_bram_7_n_22;
  wire memory_reg_bram_7_n_23;
  wire memory_reg_bram_7_n_24;
  wire memory_reg_bram_7_n_25;
  wire memory_reg_bram_7_n_26;
  wire memory_reg_bram_7_n_27;
  wire memory_reg_bram_7_n_28;
  wire memory_reg_bram_7_n_29;
  wire memory_reg_bram_7_n_30;
  wire memory_reg_bram_7_n_31;
  wire memory_reg_bram_7_n_32;
  wire memory_reg_bram_7_n_33;
  wire memory_reg_bram_7_n_34;
  wire memory_reg_bram_7_n_35;
  wire memory_reg_bram_7_n_36;
  wire memory_reg_bram_7_n_37;
  wire memory_reg_bram_7_n_38;
  wire memory_reg_bram_7_n_39;
  wire memory_reg_bram_7_n_4;
  wire memory_reg_bram_7_n_40;
  wire memory_reg_bram_7_n_41;
  wire memory_reg_bram_7_n_42;
  wire memory_reg_bram_7_n_43;
  wire memory_reg_bram_7_n_44;
  wire memory_reg_bram_7_n_45;
  wire memory_reg_bram_7_n_46;
  wire memory_reg_bram_7_n_47;
  wire memory_reg_bram_7_n_48;
  wire memory_reg_bram_7_n_49;
  wire memory_reg_bram_7_n_5;
  wire memory_reg_bram_7_n_50;
  wire memory_reg_bram_7_n_51;
  wire memory_reg_bram_7_n_52;
  wire memory_reg_bram_7_n_53;
  wire memory_reg_bram_7_n_54;
  wire memory_reg_bram_7_n_55;
  wire memory_reg_bram_7_n_56;
  wire memory_reg_bram_7_n_57;
  wire memory_reg_bram_7_n_58;
  wire memory_reg_bram_7_n_59;
  wire memory_reg_bram_7_n_6;
  wire memory_reg_bram_7_n_60;
  wire memory_reg_bram_7_n_61;
  wire memory_reg_bram_7_n_62;
  wire memory_reg_bram_7_n_63;
  wire memory_reg_bram_7_n_64;
  wire memory_reg_bram_7_n_65;
  wire memory_reg_bram_7_n_66;
  wire memory_reg_bram_7_n_67;
  wire memory_reg_bram_7_n_7;
  wire memory_reg_bram_7_n_8;
  wire memory_reg_bram_7_n_9;
  wire memory_reg_bram_8_0;
  wire memory_reg_bram_8_i_1_n_0;
  wire memory_reg_bram_8_i_3_n_0;
  wire memory_reg_bram_8_i_4_n_0;
  wire memory_reg_bram_8_i_5_n_0;
  wire memory_reg_bram_8_i_6_n_0;
  wire memory_reg_bram_8_n_10;
  wire memory_reg_bram_8_n_11;
  wire memory_reg_bram_8_n_12;
  wire memory_reg_bram_8_n_13;
  wire memory_reg_bram_8_n_14;
  wire memory_reg_bram_8_n_15;
  wire memory_reg_bram_8_n_16;
  wire memory_reg_bram_8_n_17;
  wire memory_reg_bram_8_n_18;
  wire memory_reg_bram_8_n_19;
  wire memory_reg_bram_8_n_20;
  wire memory_reg_bram_8_n_21;
  wire memory_reg_bram_8_n_22;
  wire memory_reg_bram_8_n_23;
  wire memory_reg_bram_8_n_24;
  wire memory_reg_bram_8_n_25;
  wire memory_reg_bram_8_n_26;
  wire memory_reg_bram_8_n_27;
  wire memory_reg_bram_8_n_28;
  wire memory_reg_bram_8_n_29;
  wire memory_reg_bram_8_n_30;
  wire memory_reg_bram_8_n_31;
  wire memory_reg_bram_8_n_32;
  wire memory_reg_bram_8_n_33;
  wire memory_reg_bram_8_n_34;
  wire memory_reg_bram_8_n_35;
  wire memory_reg_bram_8_n_36;
  wire memory_reg_bram_8_n_37;
  wire memory_reg_bram_8_n_38;
  wire memory_reg_bram_8_n_39;
  wire memory_reg_bram_8_n_4;
  wire memory_reg_bram_8_n_40;
  wire memory_reg_bram_8_n_41;
  wire memory_reg_bram_8_n_42;
  wire memory_reg_bram_8_n_43;
  wire memory_reg_bram_8_n_44;
  wire memory_reg_bram_8_n_45;
  wire memory_reg_bram_8_n_46;
  wire memory_reg_bram_8_n_47;
  wire memory_reg_bram_8_n_48;
  wire memory_reg_bram_8_n_49;
  wire memory_reg_bram_8_n_5;
  wire memory_reg_bram_8_n_50;
  wire memory_reg_bram_8_n_51;
  wire memory_reg_bram_8_n_52;
  wire memory_reg_bram_8_n_53;
  wire memory_reg_bram_8_n_54;
  wire memory_reg_bram_8_n_55;
  wire memory_reg_bram_8_n_56;
  wire memory_reg_bram_8_n_57;
  wire memory_reg_bram_8_n_58;
  wire memory_reg_bram_8_n_59;
  wire memory_reg_bram_8_n_6;
  wire memory_reg_bram_8_n_60;
  wire memory_reg_bram_8_n_61;
  wire memory_reg_bram_8_n_62;
  wire memory_reg_bram_8_n_63;
  wire memory_reg_bram_8_n_64;
  wire memory_reg_bram_8_n_65;
  wire memory_reg_bram_8_n_66;
  wire memory_reg_bram_8_n_67;
  wire memory_reg_bram_8_n_7;
  wire memory_reg_bram_8_n_8;
  wire memory_reg_bram_8_n_9;
  wire memory_reg_bram_9_0;
  wire memory_reg_bram_9_i_1_n_0;
  wire memory_reg_bram_9_i_3_n_0;
  wire memory_reg_bram_9_i_4_n_0;
  wire memory_reg_bram_9_i_5_n_0;
  wire memory_reg_bram_9_i_6_n_0;
  wire memory_reg_bram_9_n_10;
  wire memory_reg_bram_9_n_11;
  wire memory_reg_bram_9_n_12;
  wire memory_reg_bram_9_n_13;
  wire memory_reg_bram_9_n_14;
  wire memory_reg_bram_9_n_15;
  wire memory_reg_bram_9_n_16;
  wire memory_reg_bram_9_n_17;
  wire memory_reg_bram_9_n_18;
  wire memory_reg_bram_9_n_19;
  wire memory_reg_bram_9_n_20;
  wire memory_reg_bram_9_n_21;
  wire memory_reg_bram_9_n_22;
  wire memory_reg_bram_9_n_23;
  wire memory_reg_bram_9_n_24;
  wire memory_reg_bram_9_n_25;
  wire memory_reg_bram_9_n_26;
  wire memory_reg_bram_9_n_27;
  wire memory_reg_bram_9_n_28;
  wire memory_reg_bram_9_n_29;
  wire memory_reg_bram_9_n_30;
  wire memory_reg_bram_9_n_31;
  wire memory_reg_bram_9_n_32;
  wire memory_reg_bram_9_n_33;
  wire memory_reg_bram_9_n_34;
  wire memory_reg_bram_9_n_35;
  wire memory_reg_bram_9_n_36;
  wire memory_reg_bram_9_n_37;
  wire memory_reg_bram_9_n_38;
  wire memory_reg_bram_9_n_39;
  wire memory_reg_bram_9_n_4;
  wire memory_reg_bram_9_n_40;
  wire memory_reg_bram_9_n_41;
  wire memory_reg_bram_9_n_42;
  wire memory_reg_bram_9_n_43;
  wire memory_reg_bram_9_n_44;
  wire memory_reg_bram_9_n_45;
  wire memory_reg_bram_9_n_46;
  wire memory_reg_bram_9_n_47;
  wire memory_reg_bram_9_n_48;
  wire memory_reg_bram_9_n_49;
  wire memory_reg_bram_9_n_5;
  wire memory_reg_bram_9_n_50;
  wire memory_reg_bram_9_n_51;
  wire memory_reg_bram_9_n_52;
  wire memory_reg_bram_9_n_53;
  wire memory_reg_bram_9_n_54;
  wire memory_reg_bram_9_n_55;
  wire memory_reg_bram_9_n_56;
  wire memory_reg_bram_9_n_57;
  wire memory_reg_bram_9_n_58;
  wire memory_reg_bram_9_n_59;
  wire memory_reg_bram_9_n_6;
  wire memory_reg_bram_9_n_60;
  wire memory_reg_bram_9_n_61;
  wire memory_reg_bram_9_n_62;
  wire memory_reg_bram_9_n_63;
  wire memory_reg_bram_9_n_64;
  wire memory_reg_bram_9_n_65;
  wire memory_reg_bram_9_n_66;
  wire memory_reg_bram_9_n_67;
  wire memory_reg_bram_9_n_7;
  wire memory_reg_bram_9_n_8;
  wire memory_reg_bram_9_n_9;
  wire memory_reg_mux_sel_a_pos_0_0;
  wire memory_reg_mux_sel_a_pos_0_1;
  wire memory_reg_mux_sel_a_pos_0_10;
  wire memory_reg_mux_sel_a_pos_0_11;
  wire memory_reg_mux_sel_a_pos_0_12;
  wire memory_reg_mux_sel_a_pos_0_13;
  wire memory_reg_mux_sel_a_pos_0_14;
  wire memory_reg_mux_sel_a_pos_0_15;
  wire memory_reg_mux_sel_a_pos_0_16;
  wire memory_reg_mux_sel_a_pos_0_17;
  wire memory_reg_mux_sel_a_pos_0_18;
  wire memory_reg_mux_sel_a_pos_0_19;
  wire memory_reg_mux_sel_a_pos_0_2;
  wire memory_reg_mux_sel_a_pos_0_20;
  wire memory_reg_mux_sel_a_pos_0_21;
  wire memory_reg_mux_sel_a_pos_0_22;
  wire memory_reg_mux_sel_a_pos_0_23;
  wire memory_reg_mux_sel_a_pos_0_24;
  wire memory_reg_mux_sel_a_pos_0_25;
  wire memory_reg_mux_sel_a_pos_0_26;
  wire memory_reg_mux_sel_a_pos_0_27;
  wire memory_reg_mux_sel_a_pos_0_28;
  wire memory_reg_mux_sel_a_pos_0_29;
  wire memory_reg_mux_sel_a_pos_0_3;
  wire memory_reg_mux_sel_a_pos_0_30;
  wire memory_reg_mux_sel_a_pos_0_31;
  wire memory_reg_mux_sel_a_pos_0_4;
  wire memory_reg_mux_sel_a_pos_0_5;
  wire memory_reg_mux_sel_a_pos_0_6;
  wire memory_reg_mux_sel_a_pos_0_7;
  wire memory_reg_mux_sel_a_pos_0_8;
  wire memory_reg_mux_sel_a_pos_0_9;
  wire memory_reg_mux_sel_a_pos_0_n_0;
  wire memory_reg_mux_sel_a_pos_1_n_0;
  wire memory_reg_mux_sel_a_pos_2_0;
  wire memory_reg_mux_sel_a_pos_2_n_0;
  wire memory_reg_mux_sel_a_pos_3_n_0;
  wire [24:0]memory_reg_mux_sel_b_pos_0_0;
  wire [0:0]memory_reg_mux_sel_b_pos_0_1;
  wire [3:0]memory_reg_mux_sel_b_pos_0_10;
  wire [3:0]memory_reg_mux_sel_b_pos_0_11;
  wire memory_reg_mux_sel_b_pos_0_2;
  wire memory_reg_mux_sel_b_pos_0_3;
  wire [3:0]memory_reg_mux_sel_b_pos_0_4;
  wire [3:0]memory_reg_mux_sel_b_pos_0_5;
  wire [3:0]memory_reg_mux_sel_b_pos_0_6;
  wire [3:0]memory_reg_mux_sel_b_pos_0_7;
  wire [3:0]memory_reg_mux_sel_b_pos_0_8;
  wire [3:0]memory_reg_mux_sel_b_pos_0_9;
  wire memory_reg_mux_sel_b_pos_0_n_0;
  wire memory_reg_mux_sel_b_pos_1_n_0;
  wire memory_reg_mux_sel_b_pos_2_n_0;
  wire memory_reg_mux_sel_b_pos_3_n_0;
  wire p_0_in;
  wire p_0_in0_out;
  wire [24:0]p_0_in_0;
  wire [31:16]p_1_in;
  wire [7:0]p_5_in;
  wire [7:0]p_6_in;
  wire [7:0]p_7_in;
  wire [30:0]pc_out_inc;
  wire [1:0]pc_source;
  wire ram_reg_r1_0_31_0_5_i_100_n_0;
  wire ram_reg_r1_0_31_0_5_i_101_n_0;
  wire ram_reg_r1_0_31_0_5_i_102_n_0;
  wire ram_reg_r1_0_31_0_5_i_103_n_0;
  wire ram_reg_r1_0_31_0_5_i_104_n_0;
  wire ram_reg_r1_0_31_0_5_i_105_n_0;
  wire ram_reg_r1_0_31_0_5_i_106_n_0;
  wire ram_reg_r1_0_31_0_5_i_107_n_0;
  wire ram_reg_r1_0_31_0_5_i_108_n_0;
  wire ram_reg_r1_0_31_0_5_i_109_n_0;
  wire ram_reg_r1_0_31_0_5_i_110_n_0;
  wire ram_reg_r1_0_31_0_5_i_111_n_0;
  wire ram_reg_r1_0_31_0_5_i_112_n_0;
  wire ram_reg_r1_0_31_0_5_i_113_n_0;
  wire ram_reg_r1_0_31_0_5_i_114_n_0;
  wire ram_reg_r1_0_31_0_5_i_115_n_0;
  wire ram_reg_r1_0_31_0_5_i_116_n_0;
  wire ram_reg_r1_0_31_0_5_i_117_n_0;
  wire ram_reg_r1_0_31_0_5_i_118_n_0;
  wire ram_reg_r1_0_31_0_5_i_119_n_0;
  wire ram_reg_r1_0_31_0_5_i_145_n_0;
  wire ram_reg_r1_0_31_0_5_i_146_n_0;
  wire ram_reg_r1_0_31_0_5_i_147_n_0;
  wire ram_reg_r1_0_31_0_5_i_148_n_0;
  wire ram_reg_r1_0_31_0_5_i_149_n_0;
  wire ram_reg_r1_0_31_0_5_i_150_n_0;
  wire ram_reg_r1_0_31_0_5_i_151_n_0;
  wire ram_reg_r1_0_31_0_5_i_152_n_0;
  wire ram_reg_r1_0_31_0_5_i_153_n_0;
  wire ram_reg_r1_0_31_0_5_i_154_n_0;
  wire ram_reg_r1_0_31_0_5_i_155_n_0;
  wire ram_reg_r1_0_31_0_5_i_156_n_0;
  wire ram_reg_r1_0_31_0_5_i_157_n_0;
  wire ram_reg_r1_0_31_0_5_i_158_n_0;
  wire ram_reg_r1_0_31_0_5_i_159_n_0;
  wire ram_reg_r1_0_31_0_5_i_160_n_0;
  wire ram_reg_r1_0_31_0_5_i_161_n_0;
  wire ram_reg_r1_0_31_0_5_i_162_n_0;
  wire ram_reg_r1_0_31_0_5_i_163_n_0;
  wire ram_reg_r1_0_31_0_5_i_164_n_0;
  wire ram_reg_r1_0_31_0_5_i_165_n_0;
  wire ram_reg_r1_0_31_0_5_i_166_n_0;
  wire ram_reg_r1_0_31_0_5_i_167_n_0;
  wire ram_reg_r1_0_31_0_5_i_168_n_0;
  wire ram_reg_r1_0_31_0_5_i_169_n_0;
  wire ram_reg_r1_0_31_0_5_i_170_n_0;
  wire ram_reg_r1_0_31_0_5_i_171_n_0;
  wire ram_reg_r1_0_31_0_5_i_172_n_0;
  wire ram_reg_r1_0_31_0_5_i_173_n_0;
  wire ram_reg_r1_0_31_0_5_i_174_n_0;
  wire ram_reg_r1_0_31_0_5_i_175_n_0;
  wire ram_reg_r1_0_31_0_5_i_176_n_0;
  wire ram_reg_r1_0_31_0_5_i_177_n_0;
  wire ram_reg_r1_0_31_0_5_i_178_n_0;
  wire ram_reg_r1_0_31_0_5_i_179_n_0;
  wire ram_reg_r1_0_31_0_5_i_180_n_0;
  wire ram_reg_r1_0_31_0_5_i_181_n_0;
  wire ram_reg_r1_0_31_0_5_i_182_n_0;
  wire ram_reg_r1_0_31_0_5_i_183_n_0;
  wire ram_reg_r1_0_31_0_5_i_184_n_0;
  wire ram_reg_r1_0_31_0_5_i_185_n_0;
  wire ram_reg_r1_0_31_0_5_i_186_n_0;
  wire ram_reg_r1_0_31_0_5_i_187_n_0;
  wire ram_reg_r1_0_31_0_5_i_188_n_0;
  wire ram_reg_r1_0_31_0_5_i_189_n_0;
  wire ram_reg_r1_0_31_0_5_i_190_n_0;
  wire ram_reg_r1_0_31_0_5_i_191_n_0;
  wire ram_reg_r1_0_31_0_5_i_192_n_0;
  wire ram_reg_r1_0_31_0_5_i_193_n_0;
  wire ram_reg_r1_0_31_0_5_i_194_n_0;
  wire ram_reg_r1_0_31_0_5_i_195_n_0;
  wire ram_reg_r1_0_31_0_5_i_196_n_0;
  wire ram_reg_r1_0_31_0_5_i_197_n_0;
  wire ram_reg_r1_0_31_0_5_i_198_n_0;
  wire ram_reg_r1_0_31_0_5_i_199_n_0;
  wire ram_reg_r1_0_31_0_5_i_19_0;
  wire ram_reg_r1_0_31_0_5_i_19_1;
  wire ram_reg_r1_0_31_0_5_i_200_n_0;
  wire ram_reg_r1_0_31_0_5_i_201_n_0;
  wire ram_reg_r1_0_31_0_5_i_202_n_0;
  wire ram_reg_r1_0_31_0_5_i_203_n_0;
  wire ram_reg_r1_0_31_0_5_i_204_n_0;
  wire ram_reg_r1_0_31_0_5_i_205_n_0;
  wire ram_reg_r1_0_31_0_5_i_206_n_0;
  wire ram_reg_r1_0_31_0_5_i_207_n_0;
  wire ram_reg_r1_0_31_0_5_i_208_n_0;
  wire ram_reg_r1_0_31_0_5_i_209_n_0;
  wire ram_reg_r1_0_31_0_5_i_20_n_0;
  wire ram_reg_r1_0_31_0_5_i_210_n_0;
  wire ram_reg_r1_0_31_0_5_i_211_n_0;
  wire ram_reg_r1_0_31_0_5_i_212_n_0;
  wire ram_reg_r1_0_31_0_5_i_213_n_0;
  wire ram_reg_r1_0_31_0_5_i_214_n_0;
  wire ram_reg_r1_0_31_0_5_i_215_n_0;
  wire ram_reg_r1_0_31_0_5_i_216_n_0;
  wire ram_reg_r1_0_31_0_5_i_21_n_0;
  wire ram_reg_r1_0_31_0_5_i_22_n_0;
  wire ram_reg_r1_0_31_0_5_i_23_n_0;
  wire ram_reg_r1_0_31_0_5_i_24_0;
  wire ram_reg_r1_0_31_0_5_i_24_1;
  wire ram_reg_r1_0_31_0_5_i_24_2;
  wire ram_reg_r1_0_31_0_5_i_25_n_0;
  wire ram_reg_r1_0_31_0_5_i_26_n_0;
  wire ram_reg_r1_0_31_0_5_i_27_0;
  wire ram_reg_r1_0_31_0_5_i_27_1;
  wire ram_reg_r1_0_31_0_5_i_28_n_0;
  wire ram_reg_r1_0_31_0_5_i_29_n_0;
  wire ram_reg_r1_0_31_0_5_i_30_0;
  wire ram_reg_r1_0_31_0_5_i_30_1;
  wire ram_reg_r1_0_31_0_5_i_31_n_0;
  wire ram_reg_r1_0_31_0_5_i_32_n_0;
  wire ram_reg_r1_0_31_0_5_i_33_0;
  wire ram_reg_r1_0_31_0_5_i_33_1;
  wire ram_reg_r1_0_31_0_5_i_34_n_0;
  wire ram_reg_r1_0_31_0_5_i_35_n_0;
  wire ram_reg_r1_0_31_0_5_i_36_0;
  wire ram_reg_r1_0_31_0_5_i_36_1;
  wire ram_reg_r1_0_31_0_5_i_37_n_0;
  wire ram_reg_r1_0_31_0_5_i_38_n_0;
  wire ram_reg_r1_0_31_0_5_i_39_n_0;
  wire ram_reg_r1_0_31_0_5_i_40_n_0;
  wire ram_reg_r1_0_31_0_5_i_41_n_0;
  wire ram_reg_r1_0_31_0_5_i_42_n_0;
  wire ram_reg_r1_0_31_0_5_i_43_n_0;
  wire ram_reg_r1_0_31_0_5_i_44_n_0;
  wire ram_reg_r1_0_31_0_5_i_45_n_0;
  wire ram_reg_r1_0_31_0_5_i_46_n_0;
  wire ram_reg_r1_0_31_0_5_i_47_n_0;
  wire ram_reg_r1_0_31_0_5_i_48_n_0;
  wire ram_reg_r1_0_31_0_5_i_49_n_0;
  wire ram_reg_r1_0_31_0_5_i_50_n_0;
  wire ram_reg_r1_0_31_0_5_i_51_n_0;
  wire ram_reg_r1_0_31_0_5_i_52_n_0;
  wire ram_reg_r1_0_31_0_5_i_53_n_0;
  wire ram_reg_r1_0_31_0_5_i_54_n_0;
  wire ram_reg_r1_0_31_0_5_i_55_n_0;
  wire ram_reg_r1_0_31_0_5_i_56_n_0;
  wire ram_reg_r1_0_31_0_5_i_57_n_0;
  wire ram_reg_r1_0_31_0_5_i_58_n_0;
  wire ram_reg_r1_0_31_0_5_i_59_n_0;
  wire ram_reg_r1_0_31_0_5_i_60_n_0;
  wire ram_reg_r1_0_31_0_5_i_61_n_0;
  wire ram_reg_r1_0_31_0_5_i_62_n_0;
  wire ram_reg_r1_0_31_0_5_i_65_n_0;
  wire ram_reg_r1_0_31_0_5_i_66_n_0;
  wire ram_reg_r1_0_31_0_5_i_68_n_0;
  wire ram_reg_r1_0_31_0_5_i_69_n_0;
  wire ram_reg_r1_0_31_0_5_i_71_n_0;
  wire ram_reg_r1_0_31_0_5_i_72_n_0;
  wire ram_reg_r1_0_31_0_5_i_74_n_0;
  wire ram_reg_r1_0_31_0_5_i_75_n_0;
  wire ram_reg_r1_0_31_0_5_i_77_n_0;
  wire ram_reg_r1_0_31_0_5_i_78_n_0;
  wire ram_reg_r1_0_31_0_5_i_80_n_0;
  wire ram_reg_r1_0_31_0_5_i_81_n_0;
  wire ram_reg_r1_0_31_0_5_i_82_n_0;
  wire ram_reg_r1_0_31_0_5_i_83_n_0;
  wire ram_reg_r1_0_31_0_5_i_84_n_0;
  wire ram_reg_r1_0_31_0_5_i_85_n_0;
  wire ram_reg_r1_0_31_0_5_i_86_n_0;
  wire ram_reg_r1_0_31_0_5_i_87_n_0;
  wire ram_reg_r1_0_31_0_5_i_88_n_0;
  wire ram_reg_r1_0_31_0_5_i_89_n_0;
  wire ram_reg_r1_0_31_0_5_i_90_n_0;
  wire ram_reg_r1_0_31_0_5_i_91_n_0;
  wire ram_reg_r1_0_31_0_5_i_92_n_0;
  wire ram_reg_r1_0_31_0_5_i_93_n_0;
  wire ram_reg_r1_0_31_0_5_i_94_n_0;
  wire ram_reg_r1_0_31_0_5_i_95_n_0;
  wire ram_reg_r1_0_31_0_5_i_96_n_0;
  wire ram_reg_r1_0_31_0_5_i_97_n_0;
  wire ram_reg_r1_0_31_0_5_i_98_n_0;
  wire ram_reg_r1_0_31_0_5_i_99_n_0;
  wire ram_reg_r1_0_31_12_17_i_10_n_0;
  wire ram_reg_r1_0_31_12_17_i_11_n_0;
  wire ram_reg_r1_0_31_12_17_i_12_n_0;
  wire ram_reg_r1_0_31_12_17_i_13_n_0;
  wire ram_reg_r1_0_31_12_17_i_14_n_0;
  wire ram_reg_r1_0_31_12_17_i_15_n_0;
  wire ram_reg_r1_0_31_12_17_i_16_n_0;
  wire ram_reg_r1_0_31_12_17_i_17_n_0;
  wire ram_reg_r1_0_31_12_17_i_18_n_0;
  wire ram_reg_r1_0_31_12_17_i_19_n_0;
  wire ram_reg_r1_0_31_12_17_i_20_n_0;
  wire ram_reg_r1_0_31_12_17_i_23_n_0;
  wire ram_reg_r1_0_31_12_17_i_26_0;
  wire ram_reg_r1_0_31_12_17_i_26_n_0;
  wire ram_reg_r1_0_31_12_17_i_27_0;
  wire ram_reg_r1_0_31_12_17_i_27_n_0;
  wire ram_reg_r1_0_31_12_17_i_28_0;
  wire ram_reg_r1_0_31_12_17_i_28_n_0;
  wire ram_reg_r1_0_31_12_17_i_29_0;
  wire ram_reg_r1_0_31_12_17_i_29_n_0;
  wire ram_reg_r1_0_31_12_17_i_30_0;
  wire ram_reg_r1_0_31_12_17_i_30_n_0;
  wire ram_reg_r1_0_31_12_17_i_31_0;
  wire ram_reg_r1_0_31_12_17_i_31_n_0;
  wire ram_reg_r1_0_31_12_17_i_32_0;
  wire ram_reg_r1_0_31_12_17_i_32_n_0;
  wire ram_reg_r1_0_31_12_17_i_33_0;
  wire ram_reg_r1_0_31_12_17_i_33_n_0;
  wire ram_reg_r1_0_31_12_17_i_34_n_0;
  wire ram_reg_r1_0_31_12_17_i_35_n_0;
  wire ram_reg_r1_0_31_12_17_i_36_n_0;
  wire ram_reg_r1_0_31_12_17_i_37_n_0;
  wire ram_reg_r1_0_31_12_17_i_39_n_0;
  wire ram_reg_r1_0_31_12_17_i_40_n_0;
  wire ram_reg_r1_0_31_12_17_i_41_n_0;
  wire ram_reg_r1_0_31_12_17_i_42_n_0;
  wire ram_reg_r1_0_31_12_17_i_43_n_0;
  wire ram_reg_r1_0_31_12_17_i_44_n_0;
  wire ram_reg_r1_0_31_12_17_i_45_n_0;
  wire ram_reg_r1_0_31_12_17_i_47_n_0;
  wire ram_reg_r1_0_31_12_17_i_48_n_0;
  wire ram_reg_r1_0_31_12_17_i_49_n_0;
  wire ram_reg_r1_0_31_12_17_i_50_n_0;
  wire ram_reg_r1_0_31_12_17_i_51_n_0;
  wire ram_reg_r1_0_31_12_17_i_52_n_0;
  wire ram_reg_r1_0_31_12_17_i_53_n_0;
  wire ram_reg_r1_0_31_12_17_i_54_n_0;
  wire ram_reg_r1_0_31_12_17_i_55_n_0;
  wire ram_reg_r1_0_31_12_17_i_56_n_0;
  wire ram_reg_r1_0_31_12_17_i_57_n_0;
  wire ram_reg_r1_0_31_12_17_i_60_n_0;
  wire ram_reg_r1_0_31_12_17_i_61_n_0;
  wire ram_reg_r1_0_31_12_17_i_62_n_0;
  wire ram_reg_r1_0_31_12_17_i_63_n_0;
  wire ram_reg_r1_0_31_12_17_i_64_n_0;
  wire ram_reg_r1_0_31_12_17_i_67_n_0;
  wire ram_reg_r1_0_31_12_17_i_68_n_0;
  wire ram_reg_r1_0_31_12_17_i_69_n_0;
  wire ram_reg_r1_0_31_12_17_i_70_n_0;
  wire ram_reg_r1_0_31_12_17_i_71_n_0;
  wire ram_reg_r1_0_31_12_17_i_72_n_0;
  wire ram_reg_r1_0_31_12_17_i_73_n_0;
  wire ram_reg_r1_0_31_12_17_i_74_n_0;
  wire ram_reg_r1_0_31_12_17_i_75_n_0;
  wire ram_reg_r1_0_31_12_17_i_76_n_0;
  wire ram_reg_r1_0_31_12_17_i_77_n_0;
  wire ram_reg_r1_0_31_12_17_i_78_n_0;
  wire ram_reg_r1_0_31_12_17_i_79_n_0;
  wire ram_reg_r1_0_31_12_17_i_7_n_0;
  wire ram_reg_r1_0_31_12_17_i_80_n_0;
  wire ram_reg_r1_0_31_12_17_i_81_n_0;
  wire ram_reg_r1_0_31_12_17_i_82_n_0;
  wire ram_reg_r1_0_31_12_17_i_83_n_0;
  wire ram_reg_r1_0_31_12_17_i_84_n_0;
  wire ram_reg_r1_0_31_12_17_i_85_n_0;
  wire ram_reg_r1_0_31_12_17_i_86_n_0;
  wire ram_reg_r1_0_31_12_17_i_87_n_0;
  wire ram_reg_r1_0_31_12_17_i_88_n_0;
  wire ram_reg_r1_0_31_12_17_i_8_n_0;
  wire ram_reg_r1_0_31_12_17_i_9_n_0;
  wire ram_reg_r1_0_31_18_23_i_100_n_0;
  wire ram_reg_r1_0_31_18_23_i_101_n_0;
  wire ram_reg_r1_0_31_18_23_i_102_n_0;
  wire ram_reg_r1_0_31_18_23_i_103_n_0;
  wire ram_reg_r1_0_31_18_23_i_104_n_0;
  wire ram_reg_r1_0_31_18_23_i_105_n_0;
  wire ram_reg_r1_0_31_18_23_i_106_n_0;
  wire ram_reg_r1_0_31_18_23_i_107_n_0;
  wire ram_reg_r1_0_31_18_23_i_108_n_0;
  wire ram_reg_r1_0_31_18_23_i_109_n_0;
  wire ram_reg_r1_0_31_18_23_i_110_n_0;
  wire ram_reg_r1_0_31_18_23_i_111_n_0;
  wire ram_reg_r1_0_31_18_23_i_112_n_0;
  wire ram_reg_r1_0_31_18_23_i_113_n_0;
  wire ram_reg_r1_0_31_18_23_i_114_n_0;
  wire ram_reg_r1_0_31_18_23_i_115_n_0;
  wire ram_reg_r1_0_31_18_23_i_116_n_0;
  wire ram_reg_r1_0_31_18_23_i_117_n_0;
  wire ram_reg_r1_0_31_18_23_i_118_n_0;
  wire ram_reg_r1_0_31_18_23_i_119_n_0;
  wire ram_reg_r1_0_31_18_23_i_120_n_0;
  wire ram_reg_r1_0_31_18_23_i_121_n_0;
  wire ram_reg_r1_0_31_18_23_i_122_n_0;
  wire ram_reg_r1_0_31_18_23_i_123_n_0;
  wire ram_reg_r1_0_31_18_23_i_124_n_0;
  wire ram_reg_r1_0_31_18_23_i_125_n_0;
  wire ram_reg_r1_0_31_18_23_i_126_n_0;
  wire ram_reg_r1_0_31_18_23_i_127_n_0;
  wire ram_reg_r1_0_31_18_23_i_128_n_0;
  wire ram_reg_r1_0_31_18_23_i_129_n_0;
  wire ram_reg_r1_0_31_18_23_i_130_n_0;
  wire ram_reg_r1_0_31_18_23_i_131_n_0;
  wire ram_reg_r1_0_31_18_23_i_132_n_0;
  wire ram_reg_r1_0_31_18_23_i_133_n_0;
  wire ram_reg_r1_0_31_18_23_i_134_n_0;
  wire ram_reg_r1_0_31_18_23_i_135_n_0;
  wire ram_reg_r1_0_31_18_23_i_136_n_0;
  wire ram_reg_r1_0_31_18_23_i_19_n_0;
  wire ram_reg_r1_0_31_18_23_i_20_n_0;
  wire ram_reg_r1_0_31_18_23_i_21_n_0;
  wire ram_reg_r1_0_31_18_23_i_22_n_0;
  wire ram_reg_r1_0_31_18_23_i_24_n_0;
  wire ram_reg_r1_0_31_18_23_i_25_n_0;
  wire ram_reg_r1_0_31_18_23_i_26_n_0;
  wire ram_reg_r1_0_31_18_23_i_27_n_0;
  wire ram_reg_r1_0_31_18_23_i_29_n_0;
  wire ram_reg_r1_0_31_18_23_i_30_n_0;
  wire ram_reg_r1_0_31_18_23_i_31_n_0;
  wire ram_reg_r1_0_31_18_23_i_32_n_0;
  wire ram_reg_r1_0_31_18_23_i_34_n_0;
  wire ram_reg_r1_0_31_18_23_i_35_n_0;
  wire ram_reg_r1_0_31_18_23_i_36_n_0;
  wire ram_reg_r1_0_31_18_23_i_37_n_0;
  wire ram_reg_r1_0_31_18_23_i_39_n_0;
  wire ram_reg_r1_0_31_18_23_i_40_n_0;
  wire ram_reg_r1_0_31_18_23_i_41_n_0;
  wire ram_reg_r1_0_31_18_23_i_42_n_0;
  wire ram_reg_r1_0_31_18_23_i_44_n_0;
  wire ram_reg_r1_0_31_18_23_i_45_n_0;
  wire ram_reg_r1_0_31_18_23_i_46_n_0;
  wire ram_reg_r1_0_31_18_23_i_47_n_0;
  wire ram_reg_r1_0_31_18_23_i_49_n_0;
  wire ram_reg_r1_0_31_18_23_i_50_n_0;
  wire ram_reg_r1_0_31_18_23_i_51_n_0;
  wire ram_reg_r1_0_31_18_23_i_52_n_0;
  wire ram_reg_r1_0_31_18_23_i_53_n_0;
  wire ram_reg_r1_0_31_18_23_i_54_n_0;
  wire ram_reg_r1_0_31_18_23_i_55_n_0;
  wire ram_reg_r1_0_31_18_23_i_58_n_0;
  wire ram_reg_r1_0_31_18_23_i_61_n_0;
  wire ram_reg_r1_0_31_18_23_i_62_n_0;
  wire ram_reg_r1_0_31_18_23_i_63_n_0;
  wire ram_reg_r1_0_31_18_23_i_64_n_0;
  wire ram_reg_r1_0_31_18_23_i_65_n_0;
  wire ram_reg_r1_0_31_18_23_i_66_n_0;
  wire ram_reg_r1_0_31_18_23_i_67_n_0;
  wire ram_reg_r1_0_31_18_23_i_70_n_0;
  wire ram_reg_r1_0_31_18_23_i_73_n_0;
  wire ram_reg_r1_0_31_18_23_i_74_n_0;
  wire ram_reg_r1_0_31_18_23_i_75_n_0;
  wire ram_reg_r1_0_31_18_23_i_76_n_0;
  wire ram_reg_r1_0_31_18_23_i_77_n_0;
  wire ram_reg_r1_0_31_18_23_i_78_n_0;
  wire ram_reg_r1_0_31_18_23_i_79_n_0;
  wire ram_reg_r1_0_31_18_23_i_82_n_0;
  wire ram_reg_r1_0_31_18_23_i_85_n_0;
  wire ram_reg_r1_0_31_18_23_i_86_n_0;
  wire ram_reg_r1_0_31_18_23_i_87_n_0;
  wire ram_reg_r1_0_31_18_23_i_88_n_0;
  wire ram_reg_r1_0_31_18_23_i_89_n_0;
  wire ram_reg_r1_0_31_18_23_i_90_n_0;
  wire ram_reg_r1_0_31_18_23_i_91_n_0;
  wire ram_reg_r1_0_31_18_23_i_92_n_0;
  wire ram_reg_r1_0_31_18_23_i_93_n_0;
  wire ram_reg_r1_0_31_18_23_i_94_n_0;
  wire ram_reg_r1_0_31_18_23_i_95_n_0;
  wire ram_reg_r1_0_31_18_23_i_96_n_0;
  wire ram_reg_r1_0_31_18_23_i_97_n_0;
  wire ram_reg_r1_0_31_18_23_i_98_n_0;
  wire ram_reg_r1_0_31_18_23_i_99_n_0;
  wire ram_reg_r1_0_31_24_29_i_100_n_0;
  wire ram_reg_r1_0_31_24_29_i_101_n_0;
  wire ram_reg_r1_0_31_24_29_i_102_n_0;
  wire ram_reg_r1_0_31_24_29_i_103_n_0;
  wire ram_reg_r1_0_31_24_29_i_104_n_0;
  wire ram_reg_r1_0_31_24_29_i_105_n_0;
  wire ram_reg_r1_0_31_24_29_i_106_n_0;
  wire ram_reg_r1_0_31_24_29_i_107_n_0;
  wire ram_reg_r1_0_31_24_29_i_108_n_0;
  wire ram_reg_r1_0_31_24_29_i_109_n_0;
  wire ram_reg_r1_0_31_24_29_i_110_n_0;
  wire ram_reg_r1_0_31_24_29_i_111_n_0;
  wire ram_reg_r1_0_31_24_29_i_112_n_0;
  wire ram_reg_r1_0_31_24_29_i_113_n_0;
  wire ram_reg_r1_0_31_24_29_i_114_n_0;
  wire ram_reg_r1_0_31_24_29_i_115_n_0;
  wire ram_reg_r1_0_31_24_29_i_116_n_0;
  wire ram_reg_r1_0_31_24_29_i_117_n_0;
  wire ram_reg_r1_0_31_24_29_i_118_n_0;
  wire ram_reg_r1_0_31_24_29_i_119_n_0;
  wire ram_reg_r1_0_31_24_29_i_120_n_0;
  wire ram_reg_r1_0_31_24_29_i_121_n_0;
  wire ram_reg_r1_0_31_24_29_i_122_n_0;
  wire ram_reg_r1_0_31_24_29_i_123_n_0;
  wire ram_reg_r1_0_31_24_29_i_124_n_0;
  wire ram_reg_r1_0_31_24_29_i_125_n_0;
  wire ram_reg_r1_0_31_24_29_i_126_n_0;
  wire ram_reg_r1_0_31_24_29_i_127_n_0;
  wire ram_reg_r1_0_31_24_29_i_128_n_0;
  wire ram_reg_r1_0_31_24_29_i_129_n_0;
  wire ram_reg_r1_0_31_24_29_i_130_n_0;
  wire ram_reg_r1_0_31_24_29_i_131_n_0;
  wire ram_reg_r1_0_31_24_29_i_19_n_0;
  wire ram_reg_r1_0_31_24_29_i_20_n_0;
  wire ram_reg_r1_0_31_24_29_i_21_n_0;
  wire ram_reg_r1_0_31_24_29_i_22_n_0;
  wire ram_reg_r1_0_31_24_29_i_24_n_0;
  wire ram_reg_r1_0_31_24_29_i_25_n_0;
  wire ram_reg_r1_0_31_24_29_i_26_n_0;
  wire ram_reg_r1_0_31_24_29_i_27_n_0;
  wire ram_reg_r1_0_31_24_29_i_29_n_0;
  wire ram_reg_r1_0_31_24_29_i_30_n_0;
  wire ram_reg_r1_0_31_24_29_i_31_n_0;
  wire ram_reg_r1_0_31_24_29_i_32_n_0;
  wire ram_reg_r1_0_31_24_29_i_34_n_0;
  wire ram_reg_r1_0_31_24_29_i_35_n_0;
  wire ram_reg_r1_0_31_24_29_i_36_n_0;
  wire ram_reg_r1_0_31_24_29_i_37_n_0;
  wire ram_reg_r1_0_31_24_29_i_39_n_0;
  wire ram_reg_r1_0_31_24_29_i_40_n_0;
  wire ram_reg_r1_0_31_24_29_i_41_n_0;
  wire ram_reg_r1_0_31_24_29_i_42_n_0;
  wire ram_reg_r1_0_31_24_29_i_44_n_0;
  wire ram_reg_r1_0_31_24_29_i_45_n_0;
  wire ram_reg_r1_0_31_24_29_i_46_n_0;
  wire ram_reg_r1_0_31_24_29_i_47_n_0;
  wire ram_reg_r1_0_31_24_29_i_49_n_0;
  wire ram_reg_r1_0_31_24_29_i_50_n_0;
  wire ram_reg_r1_0_31_24_29_i_51_n_0;
  wire ram_reg_r1_0_31_24_29_i_52_n_0;
  wire ram_reg_r1_0_31_24_29_i_53_n_0;
  wire ram_reg_r1_0_31_24_29_i_54_n_0;
  wire ram_reg_r1_0_31_24_29_i_55_n_0;
  wire ram_reg_r1_0_31_24_29_i_58_n_0;
  wire ram_reg_r1_0_31_24_29_i_61_n_0;
  wire ram_reg_r1_0_31_24_29_i_62_n_0;
  wire ram_reg_r1_0_31_24_29_i_63_n_0;
  wire ram_reg_r1_0_31_24_29_i_64_n_0;
  wire ram_reg_r1_0_31_24_29_i_65_n_0;
  wire ram_reg_r1_0_31_24_29_i_66_n_0;
  wire ram_reg_r1_0_31_24_29_i_67_n_0;
  wire ram_reg_r1_0_31_24_29_i_70_n_0;
  wire ram_reg_r1_0_31_24_29_i_73_n_0;
  wire ram_reg_r1_0_31_24_29_i_74_n_0;
  wire ram_reg_r1_0_31_24_29_i_75_n_0;
  wire ram_reg_r1_0_31_24_29_i_76_n_0;
  wire ram_reg_r1_0_31_24_29_i_78_n_0;
  wire ram_reg_r1_0_31_24_29_i_79_n_0;
  wire ram_reg_r1_0_31_24_29_i_82_n_0;
  wire ram_reg_r1_0_31_24_29_i_85_n_0;
  wire ram_reg_r1_0_31_24_29_i_86_n_0;
  wire ram_reg_r1_0_31_24_29_i_87_n_0;
  wire ram_reg_r1_0_31_24_29_i_88_n_0;
  wire ram_reg_r1_0_31_24_29_i_89_n_0;
  wire ram_reg_r1_0_31_24_29_i_90_n_0;
  wire ram_reg_r1_0_31_24_29_i_91_n_0;
  wire ram_reg_r1_0_31_24_29_i_92_n_0;
  wire ram_reg_r1_0_31_24_29_i_93_n_0;
  wire ram_reg_r1_0_31_24_29_i_94_n_0;
  wire ram_reg_r1_0_31_24_29_i_95_n_0;
  wire ram_reg_r1_0_31_24_29_i_96_n_0;
  wire ram_reg_r1_0_31_24_29_i_97_n_0;
  wire ram_reg_r1_0_31_24_29_i_98_n_0;
  wire ram_reg_r1_0_31_24_29_i_99_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_10_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_11_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_14_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_15_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_16_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_17_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_18_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_19_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_20_n_0;
  wire [29:0]ram_reg_r1_0_31_30_31__0_i_2_0;
  wire ram_reg_r1_0_31_30_31__0_i_4_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_5_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_6_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_7_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_8_n_0;
  wire ram_reg_r1_0_31_30_31_i_11_n_0;
  wire ram_reg_r1_0_31_30_31_i_14_n_0;
  wire ram_reg_r1_0_31_30_31_i_15_n_0;
  wire ram_reg_r1_0_31_30_31_i_16_n_0;
  wire ram_reg_r1_0_31_30_31_i_17_n_0;
  wire ram_reg_r1_0_31_30_31_i_18_n_0;
  wire ram_reg_r1_0_31_30_31_i_19_n_0;
  wire ram_reg_r1_0_31_30_31_i_1_0;
  wire ram_reg_r1_0_31_30_31_i_20_n_0;
  wire ram_reg_r1_0_31_30_31_i_4_n_0;
  wire ram_reg_r1_0_31_30_31_i_6_n_0;
  wire ram_reg_r1_0_31_30_31_i_7_n_0;
  wire ram_reg_r1_0_31_30_31_i_9_n_0;
  wire ram_reg_r1_0_31_6_11_i_10_0;
  wire ram_reg_r1_0_31_6_11_i_10_1;
  wire ram_reg_r1_0_31_6_11_i_11_n_0;
  wire ram_reg_r1_0_31_6_11_i_12_n_0;
  wire ram_reg_r1_0_31_6_11_i_13_n_0;
  wire ram_reg_r1_0_31_6_11_i_14_n_0;
  wire ram_reg_r1_0_31_6_11_i_15_n_0;
  wire ram_reg_r1_0_31_6_11_i_16_n_0;
  wire ram_reg_r1_0_31_6_11_i_17_n_0;
  wire ram_reg_r1_0_31_6_11_i_18_n_0;
  wire ram_reg_r1_0_31_6_11_i_19_n_0;
  wire ram_reg_r1_0_31_6_11_i_20_n_0;
  wire ram_reg_r1_0_31_6_11_i_21_n_0;
  wire ram_reg_r1_0_31_6_11_i_22_n_0;
  wire ram_reg_r1_0_31_6_11_i_23_n_0;
  wire ram_reg_r1_0_31_6_11_i_24_n_0;
  wire ram_reg_r1_0_31_6_11_i_25_n_0;
  wire ram_reg_r1_0_31_6_11_i_26_n_0;
  wire ram_reg_r1_0_31_6_11_i_28_n_0;
  wire ram_reg_r1_0_31_6_11_i_29_n_0;
  wire ram_reg_r1_0_31_6_11_i_31_0;
  wire ram_reg_r1_0_31_6_11_i_31_n_0;
  wire ram_reg_r1_0_31_6_11_i_32_0;
  wire ram_reg_r1_0_31_6_11_i_32_n_0;
  wire ram_reg_r1_0_31_6_11_i_33_0;
  wire ram_reg_r1_0_31_6_11_i_33_n_0;
  wire ram_reg_r1_0_31_6_11_i_34_0;
  wire ram_reg_r1_0_31_6_11_i_34_n_0;
  wire ram_reg_r1_0_31_6_11_i_35_0;
  wire ram_reg_r1_0_31_6_11_i_35_n_0;
  wire ram_reg_r1_0_31_6_11_i_36_0;
  wire ram_reg_r1_0_31_6_11_i_36_n_0;
  wire ram_reg_r1_0_31_6_11_i_37_0;
  wire ram_reg_r1_0_31_6_11_i_37_n_0;
  wire ram_reg_r1_0_31_6_11_i_38_0;
  wire ram_reg_r1_0_31_6_11_i_38_n_0;
  wire ram_reg_r1_0_31_6_11_i_47_n_0;
  wire ram_reg_r1_0_31_6_11_i_48_n_0;
  wire ram_reg_r1_0_31_6_11_i_49_n_0;
  wire ram_reg_r1_0_31_6_11_i_50_n_0;
  wire ram_reg_r1_0_31_6_11_i_51_n_0;
  wire ram_reg_r1_0_31_6_11_i_52_n_0;
  wire ram_reg_r1_0_31_6_11_i_53_n_0;
  wire ram_reg_r1_0_31_6_11_i_54_n_0;
  wire ram_reg_r1_0_31_6_11_i_55_n_0;
  wire ram_reg_r1_0_31_6_11_i_56_n_0;
  wire ram_reg_r1_0_31_6_11_i_57_n_0;
  wire ram_reg_r1_0_31_6_11_i_58_n_0;
  wire ram_reg_r1_0_31_6_11_i_59_n_0;
  wire ram_reg_r1_0_31_6_11_i_60_n_0;
  wire ram_reg_r1_0_31_6_11_i_61_n_0;
  wire ram_reg_r1_0_31_6_11_i_62_n_0;
  wire ram_reg_r1_0_31_6_11_i_63_n_0;
  wire ram_reg_r1_0_31_6_11_i_64_n_0;
  wire ram_reg_r1_0_31_6_11_i_65_n_0;
  wire ram_reg_r1_0_31_6_11_i_66_n_0;
  wire ram_reg_r1_0_31_6_11_i_67_n_0;
  wire ram_reg_r1_0_31_6_11_i_68_n_0;
  wire ram_reg_r1_0_31_6_11_i_69_n_0;
  wire ram_reg_r1_0_31_6_11_i_70_n_0;
  wire ram_reg_r1_0_31_6_11_i_71_n_0;
  wire ram_reg_r1_0_31_6_11_i_72_n_0;
  wire ram_reg_r1_0_31_6_11_i_73_n_0;
  wire ram_reg_r1_0_31_6_11_i_74_n_0;
  wire ram_reg_r1_0_31_6_11_i_75_n_0;
  wire ram_reg_r1_0_31_6_11_i_76_n_0;
  wire ram_reg_r1_0_31_6_11_i_77_n_0;
  wire ram_reg_r1_0_31_6_11_i_7_0;
  wire ram_reg_r1_0_31_6_11_i_7_1;
  wire ram_reg_r1_0_31_6_11_i_8_n_0;
  wire ram_reg_r1_0_31_6_11_i_9_n_0;
  wire ram_reg_r2_0_31_0_5_i_10_n_0;
  wire ram_reg_r2_0_31_0_5_i_11_n_0;
  wire ram_reg_r2_0_31_0_5_i_12_n_0;
  wire ram_reg_r2_0_31_0_5_i_13_n_0;
  wire ram_reg_r2_0_31_0_5_i_14_n_0;
  wire ram_reg_r2_0_31_0_5_i_15_n_0;
  wire ram_reg_r2_0_31_0_5_i_16_n_0;
  wire ram_reg_r2_0_31_0_5_i_17_n_0;
  wire ram_reg_r2_0_31_0_5_i_18_n_0;
  wire ram_reg_r2_0_31_0_5_i_19_n_0;
  wire ram_reg_r2_0_31_0_5_i_20_n_0;
  wire ram_reg_r2_0_31_0_5_i_21_n_0;
  wire ram_reg_r2_0_31_0_5_i_22_n_0;
  wire ram_reg_r2_0_31_0_5_i_23_n_0;
  wire ram_reg_r2_0_31_0_5_i_24_n_0;
  wire ram_reg_r2_0_31_0_5_i_25_n_0;
  wire ram_reg_r2_0_31_0_5_i_6_n_0;
  wire ram_reg_r2_0_31_0_5_i_7_n_0;
  wire ram_reg_r2_0_31_0_5_i_8_n_0;
  wire ram_reg_r2_0_31_0_5_i_9_n_0;
  wire [1:1]rf_wr_sel;
  wire [31:0]rs1;
  wire [18:0]srcA;
  wire [31:31]srcA__0;
  wire [30:12]srcB;
  wire [31:31]srcB__0;
  wire [31:0]wd;
  wire NLW_memory_reg_bram_0_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_0_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_0_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_1_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_1_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_1_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_1_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_10_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_10_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_10_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_10_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_10_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_11_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_11_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_11_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_11_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_11_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_12_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_12_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_12_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_12_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_12_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_13_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_13_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_13_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_13_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_13_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_14_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_14_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_14_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_14_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_14_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_15_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_15_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_15_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_15_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_15_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_2_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_2_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_2_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_2_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_3_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_3_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_3_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_3_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_3_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_4_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_4_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_4_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_4_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_4_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_5_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_5_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_5_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_5_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_5_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_6_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_6_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_6_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_6_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_6_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_7_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_7_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_7_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_7_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_7_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_8_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_8_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_8_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_8_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_8_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_bram_9_CASCADEINA_UNCONNECTED;
  wire NLW_memory_reg_bram_9_CASCADEINB_UNCONNECTED;
  wire NLW_memory_reg_bram_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_bram_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_bram_9_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_bram_9_SBITERR_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_bram_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_bram_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_bram_9_RDADDRECC_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_PS[1]_i_2 
       (.I0(ir[5]),
        .I1(ir[2]),
        .I2(ir[4]),
        .O(memory_reg_mux_sel_b_pos_0_3));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_PS[1]_i_3 
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(\OUT[31]_i_3_n_0 ),
        .O(memory_reg_mux_sel_b_pos_0_2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_1
       (.I0(JALR_carry__0_i_8_n_0),
        .I1(JALR_carry__0_i_9_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__0_i_10_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__0_i_11_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_10
       (.I0(memory_reg_bram_7_n_40),
        .I1(memory_reg_bram_6_n_40),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_40),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_40),
        .O(JALR_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_11
       (.I0(memory_reg_bram_3_n_40),
        .I1(memory_reg_bram_2_n_40),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_40),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_40),
        .O(JALR_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_12
       (.I0(memory_reg_bram_15_n_41),
        .I1(memory_reg_bram_14_n_41),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_41),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_41),
        .O(JALR_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_13
       (.I0(memory_reg_bram_11_n_41),
        .I1(memory_reg_bram_10_n_41),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_41),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_41),
        .O(JALR_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_14
       (.I0(memory_reg_bram_7_n_41),
        .I1(memory_reg_bram_6_n_41),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_41),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_41),
        .O(JALR_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_15
       (.I0(memory_reg_bram_3_n_41),
        .I1(memory_reg_bram_2_n_41),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_41),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_41),
        .O(JALR_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_16
       (.I0(memory_reg_bram_15_n_42),
        .I1(memory_reg_bram_14_n_42),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_42),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_42),
        .O(JALR_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_17
       (.I0(memory_reg_bram_11_n_42),
        .I1(memory_reg_bram_10_n_42),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_42),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_42),
        .O(JALR_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_18
       (.I0(memory_reg_bram_7_n_42),
        .I1(memory_reg_bram_6_n_42),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_42),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_42),
        .O(JALR_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_19
       (.I0(memory_reg_bram_3_n_42),
        .I1(memory_reg_bram_2_n_42),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_42),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_42),
        .O(JALR_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_2
       (.I0(JALR_carry__0_i_12_n_0),
        .I1(JALR_carry__0_i_13_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__0_i_14_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__0_i_15_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_3
       (.I0(JALR_carry__0_i_16_n_0),
        .I1(JALR_carry__0_i_17_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__0_i_18_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__0_i_19_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[18]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__0_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[20]),
        .I1(rs1[7]),
        .O(memory_reg_mux_sel_b_pos_0_6[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__0_i_5
       (.I0(memory_reg_mux_sel_b_pos_0_0[19]),
        .I1(rs1[6]),
        .O(memory_reg_mux_sel_b_pos_0_6[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__0_i_6
       (.I0(memory_reg_mux_sel_b_pos_0_0[18]),
        .I1(rs1[5]),
        .O(memory_reg_mux_sel_b_pos_0_6[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__0_i_7
       (.I0(memory_reg_mux_sel_b_pos_0_0[17]),
        .I1(rs1[4]),
        .O(memory_reg_mux_sel_b_pos_0_6[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_8
       (.I0(memory_reg_bram_15_n_40),
        .I1(memory_reg_bram_14_n_40),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_40),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_40),
        .O(JALR_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__0_i_9
       (.I0(memory_reg_bram_11_n_40),
        .I1(memory_reg_bram_10_n_40),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_40),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_40),
        .O(JALR_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_1
       (.I0(JALR_carry__1_i_9_n_0),
        .I1(JALR_carry__1_i_10_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__1_i_11_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__1_i_12_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_10
       (.I0(memory_reg_bram_11_n_36),
        .I1(memory_reg_bram_10_n_36),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_36),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_36),
        .O(JALR_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_11
       (.I0(memory_reg_bram_7_n_36),
        .I1(memory_reg_bram_6_n_36),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_36),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_36),
        .O(JALR_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_12
       (.I0(memory_reg_bram_3_n_36),
        .I1(memory_reg_bram_2_n_36),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_36),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_36),
        .O(JALR_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_13
       (.I0(memory_reg_bram_15_n_37),
        .I1(memory_reg_bram_14_n_37),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_37),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_37),
        .O(JALR_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_14
       (.I0(memory_reg_bram_11_n_37),
        .I1(memory_reg_bram_10_n_37),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_37),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_37),
        .O(JALR_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_15
       (.I0(memory_reg_bram_7_n_37),
        .I1(memory_reg_bram_6_n_37),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_37),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_37),
        .O(JALR_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_16
       (.I0(memory_reg_bram_3_n_37),
        .I1(memory_reg_bram_2_n_37),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_37),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_37),
        .O(JALR_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_17
       (.I0(memory_reg_bram_15_n_38),
        .I1(memory_reg_bram_14_n_38),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_38),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_38),
        .O(JALR_carry__1_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_18
       (.I0(memory_reg_bram_11_n_38),
        .I1(memory_reg_bram_10_n_38),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_38),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_38),
        .O(JALR_carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_19
       (.I0(memory_reg_bram_7_n_38),
        .I1(memory_reg_bram_6_n_38),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_38),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_38),
        .O(JALR_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_2
       (.I0(JALR_carry__1_i_13_n_0),
        .I1(JALR_carry__1_i_14_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__1_i_15_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__1_i_16_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_20
       (.I0(memory_reg_bram_3_n_38),
        .I1(memory_reg_bram_2_n_38),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_38),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_38),
        .O(JALR_carry__1_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_21
       (.I0(memory_reg_bram_15_n_39),
        .I1(memory_reg_bram_14_n_39),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_39),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_39),
        .O(JALR_carry__1_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_22
       (.I0(memory_reg_bram_11_n_39),
        .I1(memory_reg_bram_10_n_39),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_39),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_39),
        .O(JALR_carry__1_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_23
       (.I0(memory_reg_bram_7_n_39),
        .I1(memory_reg_bram_6_n_39),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_39),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_39),
        .O(JALR_carry__1_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_24
       (.I0(memory_reg_bram_3_n_39),
        .I1(memory_reg_bram_2_n_39),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_39),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_39),
        .O(JALR_carry__1_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_3
       (.I0(JALR_carry__1_i_17_n_0),
        .I1(JALR_carry__1_i_18_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__1_i_19_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__1_i_20_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_4
       (.I0(JALR_carry__1_i_21_n_0),
        .I1(JALR_carry__1_i_22_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(JALR_carry__1_i_23_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(JALR_carry__1_i_24_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[21]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__1_i_5
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[11]),
        .O(memory_reg_mux_sel_b_pos_0_7[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__1_i_6
       (.I0(memory_reg_mux_sel_b_pos_0_0[23]),
        .I1(rs1[10]),
        .O(memory_reg_mux_sel_b_pos_0_7[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__1_i_7
       (.I0(memory_reg_mux_sel_b_pos_0_0[22]),
        .I1(rs1[9]),
        .O(memory_reg_mux_sel_b_pos_0_7[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__1_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_0[21]),
        .I1(rs1[8]),
        .O(memory_reg_mux_sel_b_pos_0_7[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    JALR_carry__1_i_9
       (.I0(memory_reg_bram_15_n_36),
        .I1(memory_reg_bram_14_n_36),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_36),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_36),
        .O(JALR_carry__1_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__2_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[15]),
        .O(memory_reg_mux_sel_b_pos_0_8[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__2_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[14]),
        .O(memory_reg_mux_sel_b_pos_0_8[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__2_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[13]),
        .O(memory_reg_mux_sel_b_pos_0_8[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__2_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[12]),
        .O(memory_reg_mux_sel_b_pos_0_8[0]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__3_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[19]),
        .O(memory_reg_mux_sel_b_pos_0_9[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__3_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[18]),
        .O(memory_reg_mux_sel_b_pos_0_9[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__3_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[17]),
        .O(memory_reg_mux_sel_b_pos_0_9[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__3_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[16]),
        .O(memory_reg_mux_sel_b_pos_0_9[0]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__4_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[23]),
        .O(memory_reg_mux_sel_b_pos_0_10[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__4_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[22]),
        .O(memory_reg_mux_sel_b_pos_0_10[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__4_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[21]),
        .O(memory_reg_mux_sel_b_pos_0_10[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__4_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[20]),
        .O(memory_reg_mux_sel_b_pos_0_10[0]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__5_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[27]),
        .O(memory_reg_mux_sel_b_pos_0_11[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__5_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[26]),
        .O(memory_reg_mux_sel_b_pos_0_11[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__5_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[25]),
        .O(memory_reg_mux_sel_b_pos_0_11[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__5_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[24]),
        .O(memory_reg_mux_sel_b_pos_0_11[0]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__6_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[31]),
        .O(memory_reg_mux_sel_b_pos_0_4[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__6_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[30]),
        .O(memory_reg_mux_sel_b_pos_0_4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__6_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[29]),
        .O(memory_reg_mux_sel_b_pos_0_4[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry__6_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(rs1[28]),
        .O(memory_reg_mux_sel_b_pos_0_4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[16]),
        .I1(rs1[3]),
        .O(memory_reg_mux_sel_b_pos_0_5[3]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[15]),
        .I1(rs1[2]),
        .O(memory_reg_mux_sel_b_pos_0_5[2]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[14]),
        .I1(rs1[1]),
        .O(memory_reg_mux_sel_b_pos_0_5[1]));
  LUT2 #(
    .INIT(4'h6)) 
    JALR_carry_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[13]),
        .I1(rs1[0]),
        .O(memory_reg_mux_sel_b_pos_0_5[0]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \LEDS[15]_i_1 
       (.I0(IOBUS_addr[5]),
        .I1(mem_we2),
        .I2(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I3(IOBUS_addr[6]),
        .I4(\ioBuffer[15]_i_3_n_0 ),
        .I5(\LEDS[15]_i_3_n_0 ),
        .O(\FSM_onehot_PS_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \LEDS[15]_i_2 
       (.I0(\OUT[31]_i_3_n_0 ),
        .I1(\ioBuffer[15]_i_6_n_0 ),
        .I2(Q[1]),
        .I3(ir[6]),
        .I4(ir[5]),
        .I5(ir[2]),
        .O(mem_we2));
  LUT5 #(
    .INIT(32'h80000000)) 
    \LEDS[15]_i_3 
       (.I0(\LEDS[15]_i_4_n_0 ),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(memory_reg_bram_0_i_41_n_0),
        .I3(\ioBuffer[15]_i_13_n_0 ),
        .I4(\LEDS[15]_i_5_n_0 ),
        .O(\LEDS[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \LEDS[15]_i_4 
       (.I0(IOBUS_addr[19]),
        .I1(IOBUS_addr[18]),
        .I2(IOBUS_addr[17]),
        .I3(IOBUS_addr[16]),
        .O(\LEDS[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \LEDS[15]_i_5 
       (.I0(IOBUS_addr[7]),
        .I1(IOBUS_addr[4]),
        .I2(IOBUS_addr[3]),
        .I3(IOBUS_addr[2]),
        .O(\LEDS[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF4B0)) 
    \OUT[0]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(RESULT0_carry__6[0]),
        .I3(jalr[0]),
        .O(\OUT_reg[30] [0]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[28]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[0]),
        .I3(pc_out_inc[27]),
        .I4(jalr[1]),
        .I5(jal[0]),
        .O(\OUT_reg[30] [1]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[29]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[1]),
        .I3(pc_out_inc[28]),
        .I4(jalr[2]),
        .I5(jal[1]),
        .O(\OUT_reg[30] [2]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[30]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[2]),
        .I3(pc_out_inc[29]),
        .I4(jalr[3]),
        .I5(jal[2]),
        .O(\OUT_reg[30] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222000)) 
    \OUT[31]_i_1 
       (.I0(Q[1]),
        .I1(\OUT[31]_i_3_n_0 ),
        .I2(\OUT[31]_i_4_n_0 ),
        .I3(\OUT[31]_i_5_n_0 ),
        .I4(\OUT[31]_i_6_n_0 ),
        .I5(Q[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[31]_i_2 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[3]),
        .I3(pc_out_inc[30]),
        .I4(jalr[4]),
        .I5(jal[3]),
        .O(\OUT_reg[30] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_25 
       (.I0(memory_reg_bram_3_n_66),
        .I1(memory_reg_bram_2_n_66),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_66),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_66),
        .O(\OUT[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_26 
       (.I0(memory_reg_bram_7_n_66),
        .I1(memory_reg_bram_6_n_66),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_66),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_66),
        .O(\OUT[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_27 
       (.I0(memory_reg_bram_11_n_66),
        .I1(memory_reg_bram_10_n_66),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_66),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_66),
        .O(\OUT[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_28 
       (.I0(memory_reg_bram_15_n_66),
        .I1(memory_reg_bram_14_n_66),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_66),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_66),
        .O(\OUT[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_29 
       (.I0(memory_reg_bram_3_n_67),
        .I1(memory_reg_bram_2_n_67),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_67),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_67),
        .O(\OUT[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \OUT[31]_i_3 
       (.I0(\OUT_reg[31]_i_11_n_0 ),
        .I1(\OUT_reg[31]_i_12_n_0 ),
        .I2(\OUT_reg[31]_i_13_n_0 ),
        .I3(memory_reg_mux_sel_b_pos_0_n_0),
        .I4(\OUT_reg[31]_i_14_n_0 ),
        .O(\OUT[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_30 
       (.I0(memory_reg_bram_7_n_67),
        .I1(memory_reg_bram_6_n_67),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_67),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_67),
        .O(\OUT[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_31 
       (.I0(memory_reg_bram_11_n_67),
        .I1(memory_reg_bram_10_n_67),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_67),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_67),
        .O(\OUT[31]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_32 
       (.I0(memory_reg_bram_15_n_67),
        .I1(memory_reg_bram_14_n_67),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_67),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_67),
        .O(\OUT[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_39 
       (.I0(memory_reg_bram_3_n_62),
        .I1(memory_reg_bram_2_n_62),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_62),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_62),
        .O(\OUT[31]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \OUT[31]_i_4 
       (.I0(ir[5]),
        .I1(ir[4]),
        .O(\OUT[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_40 
       (.I0(memory_reg_bram_7_n_62),
        .I1(memory_reg_bram_6_n_62),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_62),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_62),
        .O(\OUT[31]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_41 
       (.I0(memory_reg_bram_11_n_62),
        .I1(memory_reg_bram_10_n_62),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_62),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_62),
        .O(\OUT[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_42 
       (.I0(memory_reg_bram_15_n_62),
        .I1(memory_reg_bram_14_n_62),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_62),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_62),
        .O(\OUT[31]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_43 
       (.I0(memory_reg_bram_3_n_64),
        .I1(memory_reg_bram_2_n_64),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_64),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_64),
        .O(\OUT[31]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_44 
       (.I0(memory_reg_bram_7_n_64),
        .I1(memory_reg_bram_6_n_64),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_64),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_64),
        .O(\OUT[31]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_45 
       (.I0(memory_reg_bram_11_n_64),
        .I1(memory_reg_bram_10_n_64),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_64),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_64),
        .O(\OUT[31]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_46 
       (.I0(memory_reg_bram_15_n_64),
        .I1(memory_reg_bram_14_n_64),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_64),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_64),
        .O(\OUT[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_47 
       (.I0(memory_reg_bram_3_n_61),
        .I1(memory_reg_bram_2_n_61),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_61),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_61),
        .O(\OUT[31]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_48 
       (.I0(memory_reg_bram_7_n_61),
        .I1(memory_reg_bram_6_n_61),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_61),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_61),
        .O(\OUT[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_49 
       (.I0(memory_reg_bram_11_n_61),
        .I1(memory_reg_bram_10_n_61),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_61),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_61),
        .O(\OUT[31]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \OUT[31]_i_5 
       (.I0(ir[2]),
        .I1(ir[3]),
        .O(\OUT[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \OUT[31]_i_50 
       (.I0(memory_reg_bram_15_n_61),
        .I1(memory_reg_bram_14_n_61),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_61),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_61),
        .O(\OUT[31]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h1111A000)) 
    \OUT[31]_i_6 
       (.I0(ir[6]),
        .I1(ir[3]),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(ir[4]),
        .O(\OUT[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0808000000000800)) 
    \OUT[31]_i_7 
       (.I0(ir[6]),
        .I1(\OUT[31]_i_4_n_0 ),
        .I2(\OUT[31]_i_3_n_0 ),
        .I3(\OUT_reg[0]_1 ),
        .I4(ir[3]),
        .I5(ir[2]),
        .O(pc_source[1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \OUT[31]_i_8 
       (.I0(\OUT[31]_i_3_n_0 ),
        .I1(ir[2]),
        .I2(ir[6]),
        .I3(\OUT[31]_i_4_n_0 ),
        .O(pc_source[0]));
  MUXF7 \OUT_reg[31]_i_11 
       (.I0(\OUT[31]_i_25_n_0 ),
        .I1(\OUT[31]_i_26_n_0 ),
        .O(\OUT_reg[31]_i_11_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_12 
       (.I0(\OUT[31]_i_27_n_0 ),
        .I1(\OUT[31]_i_28_n_0 ),
        .O(\OUT_reg[31]_i_12_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_13 
       (.I0(\OUT[31]_i_29_n_0 ),
        .I1(\OUT[31]_i_30_n_0 ),
        .O(\OUT_reg[31]_i_13_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_14 
       (.I0(\OUT[31]_i_31_n_0 ),
        .I1(\OUT[31]_i_32_n_0 ),
        .O(\OUT_reg[31]_i_14_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF8 \OUT_reg[31]_i_15 
       (.I0(\OUT_reg[31]_i_33_n_0 ),
        .I1(\OUT_reg[31]_i_34_n_0 ),
        .O(ir[5]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 \OUT_reg[31]_i_16 
       (.I0(\OUT_reg[31]_i_35_n_0 ),
        .I1(\OUT_reg[31]_i_36_n_0 ),
        .O(ir[3]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 \OUT_reg[31]_i_17 
       (.I0(\OUT_reg[31]_i_37_n_0 ),
        .I1(\OUT_reg[31]_i_38_n_0 ),
        .O(ir[6]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF7 \OUT_reg[31]_i_33 
       (.I0(\OUT[31]_i_39_n_0 ),
        .I1(\OUT[31]_i_40_n_0 ),
        .O(\OUT_reg[31]_i_33_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_34 
       (.I0(\OUT[31]_i_41_n_0 ),
        .I1(\OUT[31]_i_42_n_0 ),
        .O(\OUT_reg[31]_i_34_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_35 
       (.I0(\OUT[31]_i_43_n_0 ),
        .I1(\OUT[31]_i_44_n_0 ),
        .O(\OUT_reg[31]_i_35_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_36 
       (.I0(\OUT[31]_i_45_n_0 ),
        .I1(\OUT[31]_i_46_n_0 ),
        .O(\OUT_reg[31]_i_36_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_37 
       (.I0(\OUT[31]_i_47_n_0 ),
        .I1(\OUT[31]_i_48_n_0 ),
        .O(\OUT_reg[31]_i_37_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \OUT_reg[31]_i_38 
       (.I0(\OUT[31]_i_49_n_0 ),
        .I1(\OUT[31]_i_50_n_0 ),
        .O(\OUT_reg[31]_i_38_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__0_i_1
       (.I0(DIADI[7]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[7]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[20]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    RESULT0_carry__0_i_10
       (.I0(alu_src_b[0]),
        .I1(alu_src_b[1]),
        .O(RESULT0_carry_i_9_0));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__0_i_11
       (.I0(alu_src_b[0]),
        .I1(alu_src_b[1]),
        .O(RESULT0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__0_i_2
       (.I0(DIADI[6]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[6]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[19]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__0_i_3
       (.I0(DIADI[5]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[5]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[18]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    RESULT0_carry__0_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[4]),
        .I1(RESULT0_carry__6[4]),
        .I2(DIADI[4]),
        .I3(alu_src_b[1]),
        .I4(alu_src_b[0]),
        .I5(memory_reg_mux_sel_b_pos_0_0[17]),
        .O(\OUT_reg[11] [4]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__0_i_5
       (.I0(rs1[7]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [7]),
        .O(\OUT_reg[7] [3]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__0_i_6
       (.I0(rs1[6]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [6]),
        .O(\OUT_reg[7] [2]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__0_i_7
       (.I0(rs1[5]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [5]),
        .O(\OUT_reg[7] [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__0_i_8
       (.I0(rs1[4]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [4]),
        .O(\OUT_reg[7] [0]));
  LUT2 #(
    .INIT(4'h1)) 
    RESULT0_carry__0_i_9
       (.I0(alu_src_b[0]),
        .I1(alu_src_b[1]),
        .O(RESULT0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__1_i_1
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[3]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[11]),
        .O(\OUT_reg[11] [11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__1_i_2
       (.I0(RS2[2]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[10]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[23]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__1_i_3
       (.I0(RS2[1]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[9]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[22]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    RESULT0_carry__1_i_4
       (.I0(RS2[0]),
        .I1(RESULT0_carry__0_i_9_n_0),
        .I2(RESULT0_carry__6[8]),
        .I3(RESULT0_carry_i_9_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[21]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(\OUT_reg[11] [8]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__1_i_5
       (.I0(rs1[11]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [11]),
        .O(\OUT_reg[11]_1 [3]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__1_i_6
       (.I0(rs1[10]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [10]),
        .O(\OUT_reg[11]_1 [2]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__1_i_7
       (.I0(rs1[9]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [9]),
        .O(\OUT_reg[11]_1 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry__1_i_8
       (.I0(rs1[8]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [8]),
        .O(\OUT_reg[11]_1 [0]));
  LUT3 #(
    .INIT(8'h60)) 
    RESULT0_carry__1_i_9
       (.I0(alu_src_b[0]),
        .I1(alu_src_b[1]),
        .I2(memory_reg_mux_sel_b_pos_0_0[24]),
        .O(RESULT0_carry__1_i_9_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__2_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[8]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[15]),
        .O(srcA[3]));
  MUXF8 RESULT0_carry__2_i_10
       (.I0(RESULT0_carry__2_i_18_n_0),
        .I1(RESULT0_carry__2_i_19_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[7]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 RESULT0_carry__2_i_11
       (.I0(RESULT0_carry__2_i_20_n_0),
        .I1(RESULT0_carry__2_i_21_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[5]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__2_i_12
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[7]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[15]),
        .O(srcB[15]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__2_i_13
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[6]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[14]),
        .O(srcB[14]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__2_i_14
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[5]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[13]),
        .O(srcB[13]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__2_i_15
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[4]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[12]),
        .O(srcB[12]));
  MUXF7 RESULT0_carry__2_i_16
       (.I0(RESULT0_carry__2_i_22_n_0),
        .I1(RESULT0_carry__2_i_23_n_0),
        .O(RESULT0_carry__2_i_16_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 RESULT0_carry__2_i_17
       (.I0(RESULT0_carry__2_i_24_n_0),
        .I1(RESULT0_carry__2_i_25_n_0),
        .O(RESULT0_carry__2_i_17_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 RESULT0_carry__2_i_18
       (.I0(RESULT0_carry__2_i_26_n_0),
        .I1(RESULT0_carry__2_i_27_n_0),
        .O(RESULT0_carry__2_i_18_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 RESULT0_carry__2_i_19
       (.I0(RESULT0_carry__2_i_28_n_0),
        .I1(RESULT0_carry__2_i_29_n_0),
        .O(RESULT0_carry__2_i_19_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__2_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[7]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[14]),
        .O(srcA[2]));
  MUXF7 RESULT0_carry__2_i_20
       (.I0(RESULT0_carry__2_i_30_n_0),
        .I1(RESULT0_carry__2_i_31_n_0),
        .O(RESULT0_carry__2_i_20_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 RESULT0_carry__2_i_21
       (.I0(RESULT0_carry__2_i_32_n_0),
        .I1(RESULT0_carry__2_i_33_n_0),
        .O(RESULT0_carry__2_i_21_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_22
       (.I0(memory_reg_bram_3_n_63),
        .I1(memory_reg_bram_2_n_63),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_63),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_63),
        .O(RESULT0_carry__2_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_23
       (.I0(memory_reg_bram_7_n_63),
        .I1(memory_reg_bram_6_n_63),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_63),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_63),
        .O(RESULT0_carry__2_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_24
       (.I0(memory_reg_bram_11_n_63),
        .I1(memory_reg_bram_10_n_63),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_63),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_63),
        .O(RESULT0_carry__2_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_25
       (.I0(memory_reg_bram_15_n_63),
        .I1(memory_reg_bram_14_n_63),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_63),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_63),
        .O(RESULT0_carry__2_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_26
       (.I0(memory_reg_bram_3_n_53),
        .I1(memory_reg_bram_2_n_53),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_53),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_53),
        .O(RESULT0_carry__2_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_27
       (.I0(memory_reg_bram_7_n_53),
        .I1(memory_reg_bram_6_n_53),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_53),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_53),
        .O(RESULT0_carry__2_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_28
       (.I0(memory_reg_bram_11_n_53),
        .I1(memory_reg_bram_10_n_53),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_53),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_53),
        .O(RESULT0_carry__2_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_29
       (.I0(memory_reg_bram_15_n_53),
        .I1(memory_reg_bram_14_n_53),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_53),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_53),
        .O(RESULT0_carry__2_i_29_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__2_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[13]),
        .O(srcA[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_30
       (.I0(memory_reg_bram_3_n_55),
        .I1(memory_reg_bram_2_n_55),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_55),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_55),
        .O(RESULT0_carry__2_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_31
       (.I0(memory_reg_bram_7_n_55),
        .I1(memory_reg_bram_6_n_55),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_55),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_55),
        .O(RESULT0_carry__2_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_32
       (.I0(memory_reg_bram_11_n_55),
        .I1(memory_reg_bram_10_n_55),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_55),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_55),
        .O(RESULT0_carry__2_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RESULT0_carry__2_i_33
       (.I0(memory_reg_bram_15_n_55),
        .I1(memory_reg_bram_14_n_55),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_55),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_55),
        .O(RESULT0_carry__2_i_33_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__2_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[12]),
        .O(srcA[0]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__2_i_5
       (.I0(srcA[3]),
        .I1(srcB[15]),
        .O(\OUT_reg[15]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__2_i_6
       (.I0(srcA[2]),
        .I1(srcB[14]),
        .O(\OUT_reg[15]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__2_i_7
       (.I0(srcA[1]),
        .I1(srcB[13]),
        .O(\OUT_reg[15]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__2_i_8
       (.I0(srcA[0]),
        .I1(srcB[12]),
        .O(\OUT_reg[15]_2 [0]));
  MUXF8 RESULT0_carry__2_i_9
       (.I0(RESULT0_carry__2_i_16_n_0),
        .I1(RESULT0_carry__2_i_17_n_0),
        .O(ir[4]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__3_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[12]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[19]),
        .O(srcA[7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__3_i_10
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[10]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[18]),
        .O(srcB[18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__3_i_11
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[9]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[17]),
        .O(srcB[17]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__3_i_12
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[8]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[16]),
        .O(srcB[16]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__3_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[11]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[18]),
        .O(srcA[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__3_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[10]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[17]),
        .O(srcA[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__3_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[9]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[16]),
        .O(srcA[4]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__3_i_5
       (.I0(srcA[7]),
        .I1(srcB[19]),
        .O(\OUT_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__3_i_6
       (.I0(srcA[6]),
        .I1(srcB[18]),
        .O(\OUT_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__3_i_7
       (.I0(srcA[5]),
        .I1(srcB[17]),
        .O(\OUT_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__3_i_8
       (.I0(srcA[4]),
        .I1(srcB[16]),
        .O(\OUT_reg[19]_0 [0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__3_i_9
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[11]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[19]),
        .O(srcB[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__4_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[16]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[23]),
        .O(srcA[11]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__4_i_10
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[14]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[22]),
        .O(srcB[22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__4_i_11
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[13]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[21]),
        .O(srcB[21]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__4_i_12
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[12]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[20]),
        .O(srcB[20]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__4_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[15]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[22]),
        .O(srcA[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__4_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[14]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[21]),
        .O(srcA[9]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__4_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[13]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[20]),
        .O(srcA[8]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__4_i_5
       (.I0(srcA[11]),
        .I1(srcB[23]),
        .O(\OUT_reg[23]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__4_i_6
       (.I0(srcA[10]),
        .I1(srcB[22]),
        .O(\OUT_reg[23]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__4_i_7
       (.I0(srcA[9]),
        .I1(srcB[21]),
        .O(\OUT_reg[23]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__4_i_8
       (.I0(srcA[8]),
        .I1(srcB[20]),
        .O(\OUT_reg[23]_2 [0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__4_i_9
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[15]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[23]),
        .O(srcB[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__5_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[20]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[27]),
        .O(srcA[15]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__5_i_10
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[18]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[26]),
        .O(srcB[26]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__5_i_11
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[17]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[25]),
        .O(srcB[25]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__5_i_12
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[16]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[24]),
        .O(srcB[24]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__5_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[19]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[26]),
        .O(srcA[14]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__5_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[18]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[25]),
        .O(srcA[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__5_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[17]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[24]),
        .O(srcA[12]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__5_i_5
       (.I0(srcA[15]),
        .I1(srcB[27]),
        .O(\OUT_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__5_i_6
       (.I0(srcA[14]),
        .I1(srcB[26]),
        .O(\OUT_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__5_i_7
       (.I0(srcA[13]),
        .I1(srcB[25]),
        .O(\OUT_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__5_i_8
       (.I0(srcA[12]),
        .I1(srcB[24]),
        .O(\OUT_reg[27]_0 [0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__5_i_9
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[19]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[27]),
        .O(srcB[27]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__6_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[23]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[30]),
        .O(srcA[18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__6_i_10
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[21]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[29]),
        .O(srcB[29]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__6_i_11
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(RS2[20]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[28]),
        .O(srcB[28]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__6_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[22]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[29]),
        .O(srcA[17]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__6_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[21]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[28]),
        .O(srcA[16]));
  LUT6 #(
    .INIT(64'h00000777FFFFF888)) 
    RESULT0_carry__6_i_4
       (.I0(RESULT0_carry__6[31]),
        .I1(RESULT0_carry_i_9_0),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(memory_reg_bram_0_1),
        .I4(RESULT0_carry__1_i_9_n_0),
        .I5(srcA__0),
        .O(\OUT_reg[31]_4 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__6_i_5
       (.I0(srcA[18]),
        .I1(srcB[30]),
        .O(\OUT_reg[31]_4 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__6_i_6
       (.I0(srcA[17]),
        .I1(srcB[29]),
        .O(\OUT_reg[31]_4 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    RESULT0_carry__6_i_7
       (.I0(srcA[16]),
        .I1(srcB[28]),
        .O(\OUT_reg[31]_4 [0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    RESULT0_carry__6_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(ir[4]),
        .I2(ir[2]),
        .I3(memory_reg_mux_sel_b_pos_0_2),
        .I4(rs1[31]),
        .O(srcA__0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    RESULT0_carry__6_i_9
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(memory_reg_bram_0_2),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[30]),
        .O(srcB[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    RESULT0_carry_i_1
       (.I0(memory_reg_mux_sel_b_pos_0_0[3]),
        .I1(RESULT0_carry__6[3]),
        .I2(DIADI[3]),
        .I3(alu_src_b[1]),
        .I4(alu_src_b[0]),
        .I5(memory_reg_mux_sel_b_pos_0_0[16]),
        .O(\OUT_reg[11] [3]));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    RESULT0_carry_i_10
       (.I0(\OUT[31]_i_3_n_0 ),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(ir[3]),
        .I4(ir[6]),
        .I5(ir[5]),
        .O(alu_src_b[0]));
  LUT3 #(
    .INIT(8'h80)) 
    RESULT0_carry_i_11
       (.I0(ir[4]),
        .I1(ir[2]),
        .I2(memory_reg_mux_sel_b_pos_0_2),
        .O(alu_src_a));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    RESULT0_carry_i_2
       (.I0(memory_reg_mux_sel_b_pos_0_0[2]),
        .I1(RESULT0_carry__6[2]),
        .I2(DIADI[2]),
        .I3(alu_src_b[1]),
        .I4(alu_src_b[0]),
        .I5(memory_reg_mux_sel_b_pos_0_0[15]),
        .O(\OUT_reg[11] [2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    RESULT0_carry_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[1]),
        .I1(RESULT0_carry__6[1]),
        .I2(DIADI[1]),
        .I3(alu_src_b[1]),
        .I4(alu_src_b[0]),
        .I5(memory_reg_mux_sel_b_pos_0_0[14]),
        .O(\OUT_reg[11] [1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    RESULT0_carry_i_4
       (.I0(memory_reg_mux_sel_b_pos_0_0[0]),
        .I1(RESULT0_carry__6[0]),
        .I2(DIADI[0]),
        .I3(alu_src_b[1]),
        .I4(alu_src_b[0]),
        .I5(memory_reg_mux_sel_b_pos_0_0[13]),
        .O(\OUT_reg[11] [0]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry_i_5
       (.I0(rs1[3]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry_i_6
       (.I0(rs1[2]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry_i_7
       (.I0(rs1[1]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hD2)) 
    RESULT0_carry_i_8
       (.I0(rs1[0]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000010000010000)) 
    RESULT0_carry_i_9
       (.I0(ir[3]),
        .I1(ir[6]),
        .I2(\OUT[31]_i_3_n_0 ),
        .I3(ir[4]),
        .I4(ir[5]),
        .I5(ir[2]),
        .O(alu_src_b[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(srcB[14]),
        .I1(srcA[2]),
        .I2(srcA[3]),
        .I3(srcB[15]),
        .O(\OUT_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__1
       (.I0(srcB[14]),
        .I1(srcA[2]),
        .I2(srcA[3]),
        .I3(srcB[15]),
        .O(\OUT_reg[14] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(srcB[12]),
        .I1(srcA[0]),
        .I2(srcA[1]),
        .I3(srcB[13]),
        .O(\OUT_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__1
       (.I0(srcB[12]),
        .I1(srcA[0]),
        .I2(srcA[1]),
        .I3(srcB[13]),
        .O(\OUT_reg[14] [2]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry__0_i_3
       (.I0(\OUT_reg[11] [10]),
        .I1(rs1[10]),
        .I2(\OUT_reg[11] [11]),
        .I3(alu_src_a),
        .I4(rs1[11]),
        .O(\OUT_reg[14]_0 [0]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry__0_i_3__1
       (.I0(\OUT_reg[11] [10]),
        .I1(rs1[10]),
        .I2(\OUT_reg[11] [11]),
        .I3(alu_src_a),
        .I4(rs1[11]),
        .O(\OUT_reg[14] [1]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry__0_i_4
       (.I0(\OUT_reg[11] [8]),
        .I1(rs1[8]),
        .I2(\OUT_reg[11] [9]),
        .I3(alu_src_a),
        .I4(rs1[9]),
        .O(\OUT_reg[14] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__1
       (.I0(srcA[3]),
        .I1(srcB[15]),
        .I2(srcB[14]),
        .I3(srcA[2]),
        .O(\OUT_reg[15]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(srcA[1]),
        .I1(srcB[13]),
        .I2(srcB[12]),
        .I3(srcA[0]),
        .O(\OUT_reg[15]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(srcA[3]),
        .I1(srcB[15]),
        .I2(srcB[14]),
        .I3(srcA[2]),
        .O(\OUT_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry__0_i_6
       (.I0(\OUT_reg[11] [11]),
        .I1(rs1[11]),
        .I2(\OUT_reg[11] [10]),
        .I3(alu_src_a),
        .I4(rs1[10]),
        .O(\OUT_reg[15]_1 [1]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__0_i_6__0
       (.I0(\OUT_reg[11] [6]),
        .I1(alu_src_a),
        .I2(rs1[6]),
        .O(\OUT_reg[6] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__1
       (.I0(srcA[1]),
        .I1(srcB[13]),
        .I2(srcB[12]),
        .I3(srcA[0]),
        .O(\OUT_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry__0_i_7
       (.I0(\OUT_reg[11] [11]),
        .I1(rs1[11]),
        .I2(\OUT_reg[11] [10]),
        .I3(alu_src_a),
        .I4(rs1[10]),
        .O(\OUT_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry__0_i_7__0
       (.I0(rs1[5]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [5]),
        .O(\OUT_reg[6] [1]));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry__0_i_7__1
       (.I0(rs1[9]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [9]),
        .I3(\OUT_reg[11] [8]),
        .I4(rs1[8]),
        .O(\OUT_reg[15]_1 [0]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__0_i_8
       (.I0(\OUT_reg[11] [4]),
        .I1(alu_src_a),
        .I2(rs1[4]),
        .O(\OUT_reg[6] [0]));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry__0_i_8__0
       (.I0(rs1[9]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [9]),
        .I3(\OUT_reg[11] [8]),
        .I4(rs1[8]),
        .O(\OUT_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(srcB[22]),
        .I1(srcA[10]),
        .I2(srcA[11]),
        .I3(srcB[23]),
        .O(\OUT_reg[22] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__1
       (.I0(srcB[22]),
        .I1(srcA[10]),
        .I2(srcA[11]),
        .I3(srcB[23]),
        .O(\OUT_reg[22]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(srcB[20]),
        .I1(srcA[8]),
        .I2(srcA[9]),
        .I3(srcB[21]),
        .O(\OUT_reg[22] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__1
       (.I0(srcB[20]),
        .I1(srcA[8]),
        .I2(srcA[9]),
        .I3(srcB[21]),
        .O(\OUT_reg[22]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(srcB[18]),
        .I1(srcA[6]),
        .I2(srcA[7]),
        .I3(srcB[19]),
        .O(\OUT_reg[22] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__1
       (.I0(srcB[18]),
        .I1(srcA[6]),
        .I2(srcA[7]),
        .I3(srcB[19]),
        .O(\OUT_reg[22]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(srcB[16]),
        .I1(srcA[4]),
        .I2(srcA[5]),
        .I3(srcB[17]),
        .O(\OUT_reg[22] [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__1
       (.I0(srcB[16]),
        .I1(srcA[4]),
        .I2(srcA[5]),
        .I3(srcB[17]),
        .O(\OUT_reg[22]_0 [0]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__1_i_5
       (.I0(\OUT_reg[11] [11]),
        .I1(alu_src_a),
        .I2(rs1[11]),
        .O(\OUT_reg[11]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__0
       (.I0(srcA[11]),
        .I1(srcB[23]),
        .I2(srcB[22]),
        .I3(srcA[10]),
        .O(\OUT_reg[23]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__1
       (.I0(srcA[11]),
        .I1(srcB[23]),
        .I2(srcB[22]),
        .I3(srcA[10]),
        .O(\OUT_reg[23]_1 [3]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__1_i_6
       (.I0(\OUT_reg[11] [10]),
        .I1(alu_src_a),
        .I2(rs1[10]),
        .O(\OUT_reg[11]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(srcA[9]),
        .I1(srcB[21]),
        .I2(srcB[20]),
        .I3(srcA[8]),
        .O(\OUT_reg[23]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__1
       (.I0(srcA[9]),
        .I1(srcB[21]),
        .I2(srcB[20]),
        .I3(srcA[8]),
        .O(\OUT_reg[23]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(srcA[7]),
        .I1(srcB[19]),
        .I2(srcB[18]),
        .I3(srcA[6]),
        .O(\OUT_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(srcA[7]),
        .I1(srcB[19]),
        .I2(srcB[18]),
        .I3(srcA[6]),
        .O(\OUT_reg[23]_1 [1]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry__1_i_7__1
       (.I0(rs1[9]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [9]),
        .O(\OUT_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__1_i_8
       (.I0(\OUT_reg[11] [8]),
        .I1(alu_src_a),
        .I2(rs1[8]),
        .O(\OUT_reg[11]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(srcA[5]),
        .I1(srcB[17]),
        .I2(srcB[16]),
        .I3(srcA[4]),
        .O(\OUT_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__1
       (.I0(srcA[5]),
        .I1(srcB[17]),
        .I2(srcB[16]),
        .I3(srcA[4]),
        .O(\OUT_reg[23]_1 [0]));
  LUT6 #(
    .INIT(64'h02A202A2ABFB02A2)) 
    i__carry__2_i_1
       (.I0(srcB__0),
        .I1(rs1[31]),
        .I2(alu_src_a),
        .I3(memory_reg_mux_sel_b_pos_0_0[24]),
        .I4(srcB[30]),
        .I5(srcA[18]),
        .O(\OUT_reg[31]_2 [3]));
  LUT6 #(
    .INIT(64'h54045404FD5D5404)) 
    i__carry__2_i_1__0
       (.I0(srcB__0),
        .I1(rs1[31]),
        .I2(alu_src_a),
        .I3(memory_reg_mux_sel_b_pos_0_0[24]),
        .I4(srcB[30]),
        .I5(srcA[18]),
        .O(\OUT_reg[31]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__1
       (.I0(srcA[3]),
        .I1(srcB[15]),
        .O(\OUT_reg[15] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(srcB[28]),
        .I1(srcA[16]),
        .I2(srcA[17]),
        .I3(srcB[29]),
        .O(\OUT_reg[31]_2 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__0
       (.I0(srcB[28]),
        .I1(srcA[16]),
        .I2(srcA[17]),
        .I3(srcB[29]),
        .O(\OUT_reg[31]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__1
       (.I0(srcB[14]),
        .I1(srcA[2]),
        .O(\OUT_reg[15] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(srcB[26]),
        .I1(srcA[14]),
        .I2(srcA[15]),
        .I3(srcB[27]),
        .O(\OUT_reg[31]_2 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__0
       (.I0(srcB[26]),
        .I1(srcA[14]),
        .I2(srcA[15]),
        .I3(srcB[27]),
        .O(\OUT_reg[31]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__1
       (.I0(srcA[1]),
        .I1(srcB[13]),
        .O(\OUT_reg[15] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(srcB[24]),
        .I1(srcA[12]),
        .I2(srcA[13]),
        .I3(srcB[25]),
        .O(\OUT_reg[31]_2 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__0
       (.I0(srcB[24]),
        .I1(srcA[12]),
        .I2(srcA[13]),
        .I3(srcB[25]),
        .O(\OUT_reg[31]_3 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__1
       (.I0(srcB[12]),
        .I1(srcA[0]),
        .O(\OUT_reg[15] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h82)) 
    i__carry__2_i_5
       (.I0(\OUT_reg[31] [3]),
        .I1(srcB[30]),
        .I2(srcA[18]),
        .O(\OUT_reg[31]_1 [3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h82)) 
    i__carry__2_i_5__0
       (.I0(\OUT_reg[31] [3]),
        .I1(srcB[30]),
        .I2(srcA[18]),
        .O(\OUT_reg[31]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(srcA[17]),
        .I1(srcB[29]),
        .I2(srcB[28]),
        .I3(srcA[16]),
        .O(\OUT_reg[31]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__0
       (.I0(srcA[17]),
        .I1(srcB[29]),
        .I2(srcB[28]),
        .I3(srcA[16]),
        .O(\OUT_reg[31]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(srcA[15]),
        .I1(srcB[27]),
        .I2(srcB[26]),
        .I3(srcA[14]),
        .O(\OUT_reg[31]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__0
       (.I0(srcA[15]),
        .I1(srcB[27]),
        .I2(srcB[26]),
        .I3(srcA[14]),
        .O(\OUT_reg[31]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(srcA[13]),
        .I1(srcB[25]),
        .I2(srcB[24]),
        .I3(srcA[12]),
        .O(\OUT_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__0
       (.I0(srcA[13]),
        .I1(srcB[25]),
        .I2(srcB[24]),
        .I3(srcA[12]),
        .O(\OUT_reg[31]_1 [0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    i__carry__2_i_9
       (.I0(RESULT0_carry__1_i_9_n_0),
        .I1(memory_reg_bram_0_1),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RESULT0_carry_i_9_0),
        .I4(RESULT0_carry__6[31]),
        .O(srcB__0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(srcA[7]),
        .I1(srcB[19]),
        .O(\OUT_reg[19] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(srcB[18]),
        .I1(srcA[6]),
        .O(\OUT_reg[19] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(srcA[5]),
        .I1(srcB[17]),
        .O(\OUT_reg[19] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(srcB[16]),
        .I1(srcA[4]),
        .O(\OUT_reg[19] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(srcA[11]),
        .I1(srcB[23]),
        .O(\OUT_reg[23] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(srcB[22]),
        .I1(srcA[10]),
        .O(\OUT_reg[23] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(srcA[9]),
        .I1(srcB[21]),
        .O(\OUT_reg[23] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(srcB[20]),
        .I1(srcA[8]),
        .O(\OUT_reg[23] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(srcA[15]),
        .I1(srcB[27]),
        .O(\OUT_reg[27] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(srcB[26]),
        .I1(srcA[14]),
        .O(\OUT_reg[27] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(srcA[13]),
        .I1(srcB[25]),
        .O(\OUT_reg[27] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(srcB[24]),
        .I1(srcA[12]),
        .O(\OUT_reg[27] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(srcB[30]),
        .I1(srcA[18]),
        .O(\OUT_reg[31] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(srcA[17]),
        .I1(srcB[29]),
        .O(\OUT_reg[31] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(srcB[28]),
        .I1(srcA[16]),
        .O(\OUT_reg[31] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFF88800000777)) 
    i__carry__6_i_5
       (.I0(RESULT0_carry__6[31]),
        .I1(RESULT0_carry_i_9_0),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(memory_reg_bram_0_1),
        .I4(RESULT0_carry__1_i_9_n_0),
        .I5(srcA__0),
        .O(\OUT_reg[31] [3]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_1
       (.I0(\OUT_reg[11] [6]),
        .I1(rs1[6]),
        .I2(\OUT_reg[11] [7]),
        .I3(alu_src_a),
        .I4(rs1[7]),
        .O(\OUT_reg[6]_0 [3]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_1__0
       (.I0(\OUT_reg[11] [2]),
        .I1(rs1[2]),
        .I2(\OUT_reg[11] [3]),
        .I3(alu_src_a),
        .I4(rs1[3]),
        .O(\OUT_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_2
       (.I0(\OUT_reg[11] [4]),
        .I1(rs1[4]),
        .I2(\OUT_reg[11] [5]),
        .I3(alu_src_a),
        .I4(rs1[5]),
        .O(\OUT_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_2__0
       (.I0(\OUT_reg[11] [0]),
        .I1(rs1[0]),
        .I2(\OUT_reg[11] [1]),
        .I3(alu_src_a),
        .I4(rs1[1]),
        .O(\OUT_reg[6]_0 [0]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_3__0
       (.I0(\OUT_reg[11] [2]),
        .I1(rs1[2]),
        .I2(\OUT_reg[11] [3]),
        .I3(alu_src_a),
        .I4(rs1[3]),
        .O(\OUT_reg[2] ));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry_i_3__1
       (.I0(rs1[7]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [7]),
        .I3(\OUT_reg[11] [6]),
        .I4(rs1[6]),
        .O(\OUT_reg[7]_1 [3]));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry_i_4__1
       (.I0(rs1[5]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [5]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[4]),
        .O(\OUT_reg[7]_1 [2]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry_i_5
       (.I0(\OUT_reg[11] [3]),
        .I1(rs1[3]),
        .I2(\OUT_reg[11] [2]),
        .I3(alu_src_a),
        .I4(rs1[2]),
        .O(\OUT_reg[7]_1 [1]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry_i_5__0
       (.I0(\OUT_reg[11] [3]),
        .I1(alu_src_a),
        .I2(rs1[3]),
        .O(\OUT_reg[3] [3]));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry_i_5__1
       (.I0(rs1[7]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [7]),
        .I3(\OUT_reg[11] [6]),
        .I4(rs1[6]),
        .O(\OUT_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry_i_6
       (.I0(\OUT_reg[11] [1]),
        .I1(rs1[1]),
        .I2(\OUT_reg[11] [0]),
        .I3(alu_src_a),
        .I4(rs1[0]),
        .O(\OUT_reg[7]_1 [0]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry_i_6__0
       (.I0(\OUT_reg[11] [2]),
        .I1(alu_src_a),
        .I2(rs1[2]),
        .O(\OUT_reg[3] [2]));
  LUT5 #(
    .INIT(32'h210C002D)) 
    i__carry_i_6__1
       (.I0(rs1[5]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [5]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[4]),
        .O(\OUT_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry_i_7
       (.I0(\OUT_reg[11] [3]),
        .I1(rs1[3]),
        .I2(\OUT_reg[11] [2]),
        .I3(alu_src_a),
        .I4(rs1[2]),
        .O(\OUT_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry_i_7__0
       (.I0(\OUT_reg[11] [1]),
        .I1(alu_src_a),
        .I2(rs1[1]),
        .O(\OUT_reg[3] [1]));
  LUT5 #(
    .INIT(32'h05900509)) 
    i__carry_i_8
       (.I0(\OUT_reg[11] [1]),
        .I1(rs1[1]),
        .I2(\OUT_reg[11] [0]),
        .I3(alu_src_a),
        .I4(rs1[0]),
        .O(\OUT_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry_i_8__0
       (.I0(rs1[0]),
        .I1(alu_src_a),
        .I2(\OUT_reg[11] [0]),
        .O(\OUT_reg[3] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    \ioBuffer[15]_i_1 
       (.I0(D),
        .I1(IOBUS_addr[6]),
        .I2(\ioBuffer[15]_i_3_n_0 ),
        .I3(\ioBuffer[15]_i_4_n_0 ),
        .I4(\ioBuffer[15]_i_5_n_0 ),
        .I5(IOBUS_addr[5]),
        .O(\ioBuffer[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \ioBuffer[15]_i_10 
       (.I0(IOBUS_addr[31]),
        .I1(IOBUS_addr[30]),
        .I2(IOBUS_addr[29]),
        .I3(IOBUS_addr[28]),
        .O(\ioBuffer[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \ioBuffer[15]_i_11 
       (.I0(IOBUS_addr[27]),
        .I1(IOBUS_addr[26]),
        .I2(IOBUS_addr[25]),
        .I3(IOBUS_addr[24]),
        .O(\ioBuffer[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ioBuffer[15]_i_12 
       (.I0(IOBUS_addr[23]),
        .I1(IOBUS_addr[22]),
        .I2(IOBUS_addr[21]),
        .I3(IOBUS_addr[20]),
        .O(\ioBuffer[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ioBuffer[15]_i_13 
       (.I0(IOBUS_addr[11]),
        .I1(IOBUS_addr[10]),
        .I2(IOBUS_addr[9]),
        .I3(IOBUS_addr[8]),
        .O(\ioBuffer[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ioBuffer[15]_i_17 
       (.I0(memory_reg_bram_3_n_65),
        .I1(memory_reg_bram_2_n_65),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_65),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_65),
        .O(\ioBuffer[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ioBuffer[15]_i_18 
       (.I0(memory_reg_bram_7_n_65),
        .I1(memory_reg_bram_6_n_65),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_65),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_65),
        .O(\ioBuffer[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ioBuffer[15]_i_19 
       (.I0(memory_reg_bram_11_n_65),
        .I1(memory_reg_bram_10_n_65),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_65),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_65),
        .O(\ioBuffer[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \ioBuffer[15]_i_2 
       (.I0(\ioBuffer[15]_i_6_n_0 ),
        .I1(ir[2]),
        .I2(Q[1]),
        .I3(ir[1]),
        .I4(\ioBuffer[15]_i_9_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ioBuffer[15]_i_20 
       (.I0(memory_reg_bram_15_n_65),
        .I1(memory_reg_bram_14_n_65),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_65),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_65),
        .O(\ioBuffer[15]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ioBuffer[15]_i_3 
       (.I0(memory_reg_bram_0_i_81_n_0),
        .I1(\ioBuffer[15]_i_10_n_0 ),
        .I2(\ioBuffer[15]_i_11_n_0 ),
        .I3(\ioBuffer[15]_i_12_n_0 ),
        .O(\ioBuffer[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ioBuffer[15]_i_4 
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(IOBUS_addr[16]),
        .I3(IOBUS_addr[17]),
        .I4(IOBUS_addr[18]),
        .I5(IOBUS_addr[19]),
        .O(\ioBuffer[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ioBuffer[15]_i_5 
       (.I0(IOBUS_addr[2]),
        .I1(IOBUS_addr[3]),
        .I2(IOBUS_addr[4]),
        .I3(IOBUS_addr[7]),
        .I4(\ioBuffer[15]_i_13_n_0 ),
        .O(\ioBuffer[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ioBuffer[15]_i_6 
       (.I0(ir[4]),
        .I1(ir[3]),
        .O(\ioBuffer[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ioBuffer[15]_i_9 
       (.I0(ir[5]),
        .I1(ir[6]),
        .I2(ir[0]),
        .O(\ioBuffer[15]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[0] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[0]),
        .Q(ioBuffer[0]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[10] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[10]),
        .Q(ioBuffer[10]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[11] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[11]),
        .Q(ioBuffer[11]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[12] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[12]),
        .Q(ioBuffer[12]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[13] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[13]),
        .Q(ioBuffer[13]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[14] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[14]),
        .Q(ioBuffer[14]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[15] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[15]),
        .Q(ioBuffer[15]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  MUXF7 \ioBuffer_reg[15]_i_14 
       (.I0(\ioBuffer[15]_i_17_n_0 ),
        .I1(\ioBuffer[15]_i_18_n_0 ),
        .O(\ioBuffer_reg[15]_i_14_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 \ioBuffer_reg[15]_i_15 
       (.I0(\ioBuffer[15]_i_19_n_0 ),
        .I1(\ioBuffer[15]_i_20_n_0 ),
        .O(\ioBuffer_reg[15]_i_15_n_0 ),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF8 \ioBuffer_reg[15]_i_16 
       (.I0(\OUT_reg[31]_i_13_n_0 ),
        .I1(\OUT_reg[31]_i_14_n_0 ),
        .O(ir[0]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 \ioBuffer_reg[15]_i_7 
       (.I0(\ioBuffer_reg[15]_i_14_n_0 ),
        .I1(\ioBuffer_reg[15]_i_15_n_0 ),
        .O(ir[2]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 \ioBuffer_reg[15]_i_8 
       (.I0(\OUT_reg[31]_i_11_n_0 ),
        .I1(\OUT_reg[31]_i_12_n_0 ),
        .O(ir[1]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[1] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[1]),
        .Q(ioBuffer[1]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[2] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[2]),
        .Q(ioBuffer[2]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[3] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[3]),
        .Q(ioBuffer[3]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[4] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[4]),
        .Q(ioBuffer[4]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[5] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[5]),
        .Q(ioBuffer[5]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[6] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[6]),
        .Q(ioBuffer[6]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[7] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[7]),
        .Q(ioBuffer[7]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[8] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[8]),
        .Q(ioBuffer[8]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ioBuffer_reg[9] 
       (.C(clk_50_BUFG),
        .CE(D),
        .D(SWITCHES_IBUF[9]),
        .Q(ioBuffer[9]),
        .R(\ioBuffer[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
    memory_mux_sel_a_pos_0_i_1
       (.I0(memory_mux_sel_a_pos_0_i_2_n_0),
        .I1(alu_fun[3]),
        .I2(memory_mux_sel_a_pos_0_i_3_n_0),
        .I3(memory_mux_sel_a_pos_0_i_4_n_0),
        .I4(memory_mux_sel_a_pos_0_i_5_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[15]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_0_i_10
       (.I0(srcA[18]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[10]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_0_i_10_n_0));
  LUT5 #(
    .INIT(32'h00002230)) 
    memory_mux_sel_a_pos_0_i_11
       (.I0(rs1[3]),
        .I1(alu_src_a),
        .I2(rs1[11]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000000A0ACFC0)) 
    memory_mux_sel_a_pos_0_i_12
       (.I0(rs1[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[8]),
        .I2(alu_src_a),
        .I3(rs1[15]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_0_i_12_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_0_i_13
       (.I0(srcA[18]),
        .I1(srcA[10]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_mux_sel_a_pos_0_i_2
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_mux_sel_a_pos_0_i_6_n_0),
        .I2(memory_mux_sel_a_pos_0_i_7_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_mux_sel_a_pos_1_i_7_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_mux_sel_a_pos_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_mux_sel_a_pos_0_i_3
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_mux_sel_a_pos_1_i_9_n_0),
        .I4(memory_mux_sel_a_pos_0_i_8_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[14]),
        .O(memory_mux_sel_a_pos_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    memory_mux_sel_a_pos_0_i_4
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[3]),
        .I2(srcB[15]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE200E2FFE2FFE200)) 
    memory_mux_sel_a_pos_0_i_5
       (.I0(memory_mux_sel_a_pos_1_i_10_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_mux_sel_a_pos_0_i_9_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(srcA[3]),
        .I5(srcB[15]),
        .O(memory_mux_sel_a_pos_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    memory_mux_sel_a_pos_0_i_6
       (.I0(srcA[3]),
        .I1(data1[15]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_0_i_7
       (.I0(memory_mux_sel_a_pos_0_i_10_n_0),
        .I1(memory_mux_sel_a_pos_3_i_28_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_2_i_13_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_30_n_0),
        .O(memory_mux_sel_a_pos_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_0_i_8
       (.I0(memory_mux_sel_a_pos_3_i_34_n_0),
        .I1(memory_mux_sel_a_pos_2_i_15_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_0_i_11_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_0_i_12_n_0),
        .O(memory_mux_sel_a_pos_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_0_i_9
       (.I0(memory_mux_sel_a_pos_0_i_13_n_0),
        .I1(memory_mux_sel_a_pos_3_i_39_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_2_i_16_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_41_n_0),
        .O(memory_mux_sel_a_pos_0_i_9_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_mux_sel_a_pos_1_i_1
       (.I0(memory_mux_sel_a_pos_1_i_2_n_0),
        .I1(alu_fun[3]),
        .I2(memory_mux_sel_a_pos_1_i_3_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_mux_sel_a_pos_1_i_4_n_0),
        .I5(memory_mux_sel_a_pos_1_i_5_n_0),
        .O(IOBUS_addr[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_1_i_10
       (.I0(memory_mux_sel_a_pos_1_i_14_n_0),
        .I1(memory_mux_sel_a_pos_3_i_45_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_43_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_44_n_0),
        .O(memory_mux_sel_a_pos_1_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_1_i_11
       (.I0(srcA[17]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[9]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_1_i_11_n_0));
  LUT5 #(
    .INIT(32'h00002230)) 
    memory_mux_sel_a_pos_1_i_12
       (.I0(rs1[2]),
        .I1(alu_src_a),
        .I2(rs1[10]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_1_i_12_n_0));
  LUT5 #(
    .INIT(32'h000044F0)) 
    memory_mux_sel_a_pos_1_i_13
       (.I0(alu_src_a),
        .I1(rs1[6]),
        .I2(srcA[2]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_1_i_13_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_1_i_14
       (.I0(srcA[17]),
        .I1(srcA[9]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_1_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_mux_sel_a_pos_1_i_2
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_mux_sel_a_pos_1_i_6_n_0),
        .I2(memory_mux_sel_a_pos_1_i_7_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_mux_sel_a_pos_2_i_6_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_mux_sel_a_pos_1_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_mux_sel_a_pos_1_i_3
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_mux_sel_a_pos_1_i_8_n_0),
        .I4(memory_mux_sel_a_pos_1_i_9_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[13]),
        .O(memory_mux_sel_a_pos_1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF003C3CAAAA3C3C)) 
    memory_mux_sel_a_pos_1_i_4
       (.I0(memory_mux_sel_a_pos_2_i_12_n_0),
        .I1(srcB[14]),
        .I2(srcA[2]),
        .I3(memory_mux_sel_a_pos_1_i_10_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_mux_sel_a_pos_1_i_4_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    memory_mux_sel_a_pos_1_i_5
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[2]),
        .I2(srcB[14]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    memory_mux_sel_a_pos_1_i_6
       (.I0(srcA[2]),
        .I1(data1[14]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_1_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_1_i_7
       (.I0(memory_mux_sel_a_pos_1_i_11_n_0),
        .I1(memory_mux_sel_a_pos_3_i_26_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_24_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_25_n_0),
        .O(memory_mux_sel_a_pos_1_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_mux_sel_a_pos_1_i_8
       (.I0(memory_mux_sel_a_pos_3_i_35_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_mux_sel_a_pos_3_i_34_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_2_i_15_n_0),
        .O(memory_mux_sel_a_pos_1_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_1_i_9
       (.I0(memory_mux_sel_a_pos_3_i_37_n_0),
        .I1(memory_mux_sel_a_pos_3_i_38_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_1_i_12_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_1_i_13_n_0),
        .O(memory_mux_sel_a_pos_1_i_9_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    memory_mux_sel_a_pos_2_i_1
       (.I0(memory_mux_sel_a_pos_2_i_2_n_0),
        .I1(memory_mux_sel_a_pos_2_i_3_n_0),
        .I2(alu_fun[3]),
        .I3(memory_mux_sel_a_pos_2_i_4_n_0),
        .I4(memory_mux_sel_a_pos_2_i_5_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[13]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    memory_mux_sel_a_pos_2_i_10
       (.I0(memory_mux_sel_a_pos_2_i_15_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_mux_sel_a_pos_3_i_34_n_0),
        .I3(\OUT_reg[11] [1]),
        .I4(memory_mux_sel_a_pos_3_i_35_n_0),
        .I5(\OUT_reg[0]_0 ),
        .O(memory_mux_sel_a_pos_2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    memory_mux_sel_a_pos_2_i_11
       (.I0(\OUT_reg[0] ),
        .I1(memory_mux_sel_a_pos_3_i_38_n_0),
        .I2(\OUT_reg[11] [2]),
        .I3(memory_mux_sel_a_pos_3_i_37_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_mux_sel_a_pos_3_i_36_n_0),
        .O(memory_mux_sel_a_pos_2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_2_i_12
       (.I0(memory_mux_sel_a_pos_2_i_16_n_0),
        .I1(memory_mux_sel_a_pos_3_i_41_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_39_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_40_n_0),
        .O(memory_mux_sel_a_pos_2_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_2_i_13
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[8]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_2_i_13_n_0));
  LUT5 #(
    .INIT(32'h000044F0)) 
    memory_mux_sel_a_pos_2_i_15
       (.I0(alu_src_a),
        .I1(rs1[5]),
        .I2(srcA[1]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_2_i_15_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_2_i_16
       (.I0(srcA[16]),
        .I1(srcA[8]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_2_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    memory_mux_sel_a_pos_2_i_2
       (.I0(memory_mux_sel_a_pos_3_i_12_n_0),
        .I1(memory_mux_sel_a_pos_3_i_9_n_0),
        .I2(memory_mux_sel_a_pos_3_i_10_n_0),
        .I3(memory_mux_sel_a_pos_2_i_6_n_0),
        .I4(memory_mux_sel_a_pos_2_i_7_n_0),
        .O(memory_mux_sel_a_pos_2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_mux_sel_a_pos_2_i_3
       (.I0(alu_fun[3]),
        .I1(alu_fun[1]),
        .O(memory_mux_sel_a_pos_2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    memory_mux_sel_a_pos_2_i_4
       (.I0(memory_mux_sel_a_pos_2_i_8_n_0),
        .I1(memory_mux_sel_a_pos_3_i_23_n_0),
        .I2(memory_reg_mux_sel_a_pos_2_0),
        .I3(memory_mux_sel_a_pos_2_i_10_n_0),
        .I4(memory_mux_sel_a_pos_2_i_11_n_0),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_mux_sel_a_pos_2_i_4_n_0));
  LUT6 #(
    .INIT(64'hE200E2FFE2FFE200)) 
    memory_mux_sel_a_pos_2_i_5
       (.I0(memory_mux_sel_a_pos_3_i_22_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_mux_sel_a_pos_2_i_12_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(srcA[1]),
        .I5(srcB[13]),
        .O(memory_mux_sel_a_pos_2_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_2_i_6
       (.I0(memory_mux_sel_a_pos_2_i_13_n_0),
        .I1(memory_mux_sel_a_pos_3_i_30_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_28_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_29_n_0),
        .O(memory_mux_sel_a_pos_2_i_6_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    memory_mux_sel_a_pos_2_i_7
       (.I0(srcA[1]),
        .I1(data1[13]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_2_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDDD55555444)) 
    memory_mux_sel_a_pos_2_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(RESULT0_carry__1_i_9_n_0),
        .I2(RS2[5]),
        .I3(RESULT0_carry__0_i_9_n_0),
        .I4(memory_mux_sel_a_pos_2_i_4_0),
        .I5(srcA[1]),
        .O(memory_mux_sel_a_pos_2_i_8_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_mux_sel_a_pos_3_i_1
       (.I0(memory_mux_sel_a_pos_3_i_2_n_0),
        .I1(alu_fun[3]),
        .I2(memory_mux_sel_a_pos_3_i_4_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_mux_sel_a_pos_3_i_6_n_0),
        .I5(memory_mux_sel_a_pos_3_i_7_n_0),
        .O(IOBUS_addr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    memory_mux_sel_a_pos_3_i_10
       (.I0(\OUT_reg[0] ),
        .I1(alu_fun[2]),
        .O(memory_mux_sel_a_pos_3_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_3_i_11
       (.I0(memory_mux_sel_a_pos_3_i_28_n_0),
        .I1(memory_mux_sel_a_pos_3_i_29_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_30_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_31_n_0),
        .O(memory_mux_sel_a_pos_3_i_11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_mux_sel_a_pos_3_i_12
       (.I0(alu_fun[2]),
        .I1(\OUT_reg[0]_0 ),
        .O(memory_mux_sel_a_pos_3_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    memory_mux_sel_a_pos_3_i_13
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[4]),
        .O(memory_mux_sel_a_pos_3_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_mux_sel_a_pos_3_i_14
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(memory_mux_sel_a_pos_3_i_14_n_0));
  LUT5 #(
    .INIT(32'hBFBFBFFF)) 
    memory_mux_sel_a_pos_3_i_15
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(memory_reg_mux_sel_b_pos_0_2),
        .I3(memory_reg_mux_sel_b_pos_0_0[6]),
        .I4(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(memory_mux_sel_a_pos_3_i_15_n_0));
  LUT5 #(
    .INIT(32'h88088000)) 
    memory_mux_sel_a_pos_3_i_16
       (.I0(ir[4]),
        .I1(memory_reg_mux_sel_b_pos_0_2),
        .I2(ir[2]),
        .I3(ir[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[5]),
        .O(memory_reg_mux_sel_b_pos_0_1));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    memory_mux_sel_a_pos_3_i_17
       (.I0(memory_mux_sel_a_pos_3_i_33_n_0),
        .I1(memory_reg_bram_0_i_128_n_0),
        .I2(\OUT_reg[11] [2]),
        .I3(memory_mux_sel_a_pos_3_i_34_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_mux_sel_a_pos_3_i_35_n_0),
        .O(memory_mux_sel_a_pos_3_i_17_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_mux_sel_a_pos_3_i_18
       (.I0(memory_mux_sel_a_pos_3_i_36_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_mux_sel_a_pos_3_i_37_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_38_n_0),
        .O(memory_mux_sel_a_pos_3_i_18_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_mux_sel_a_pos_3_i_19
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(memory_reg_mux_sel_b_pos_0_2),
        .I3(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(alu_fun[2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_mux_sel_a_pos_3_i_2
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_mux_sel_a_pos_3_i_8_n_0),
        .I2(memory_mux_sel_a_pos_3_i_9_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_mux_sel_a_pos_3_i_11_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_mux_sel_a_pos_3_i_2_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_mux_sel_a_pos_3_i_20
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(memory_reg_mux_sel_b_pos_0_2),
        .I3(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(alu_fun[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_3_i_21
       (.I0(memory_mux_sel_a_pos_3_i_39_n_0),
        .I1(memory_mux_sel_a_pos_3_i_40_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_41_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_42_n_0),
        .O(memory_mux_sel_a_pos_3_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_3_i_22
       (.I0(memory_mux_sel_a_pos_3_i_43_n_0),
        .I1(memory_mux_sel_a_pos_3_i_44_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_45_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_46_n_0),
        .O(memory_mux_sel_a_pos_3_i_22_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_mux_sel_a_pos_3_i_23
       (.I0(ir[2]),
        .I1(ir[4]),
        .I2(memory_reg_mux_sel_b_pos_0_2),
        .I3(memory_reg_mux_sel_b_pos_0_0[6]),
        .I4(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(memory_mux_sel_a_pos_3_i_23_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_3_i_24
       (.I0(srcA[15]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[7]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_24_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_3_i_25
       (.I0(srcA[11]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[3]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_25_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_3_i_26
       (.I0(srcA[13]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[5]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_26_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    memory_mux_sel_a_pos_3_i_27
       (.I0(srcA[9]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[17]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[1]),
        .O(memory_mux_sel_a_pos_3_i_27_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_3_i_28
       (.I0(srcA[14]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[6]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_28_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    memory_mux_sel_a_pos_3_i_29
       (.I0(srcA[10]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[18]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[2]),
        .O(memory_mux_sel_a_pos_3_i_29_n_0));
  LUT6 #(
    .INIT(64'h8A88888880808080)) 
    memory_mux_sel_a_pos_3_i_3
       (.I0(memory_mux_sel_a_pos_3_i_13_n_0),
        .I1(ir[5]),
        .I2(ir[2]),
        .I3(memory_mux_sel_a_pos_3_i_14_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[7]),
        .I5(memory_reg_mux_sel_b_pos_0_0[23]),
        .O(alu_fun[3]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    memory_mux_sel_a_pos_3_i_30
       (.I0(srcA[12]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[4]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_30_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    memory_mux_sel_a_pos_3_i_31
       (.I0(srcA[8]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[16]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[0]),
        .O(memory_mux_sel_a_pos_3_i_31_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    memory_mux_sel_a_pos_3_i_32
       (.I0(\OUT_reg[11] [0]),
        .I1(memory_reg_mux_sel_b_pos_0_1),
        .O(\OUT_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    memory_mux_sel_a_pos_3_i_33
       (.I0(\OUT_reg[11] [3]),
        .I1(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_33_n_0));
  LUT5 #(
    .INIT(32'h00002230)) 
    memory_mux_sel_a_pos_3_i_34
       (.I0(rs1[1]),
        .I1(alu_src_a),
        .I2(rs1[9]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000003034477)) 
    memory_mux_sel_a_pos_3_i_35
       (.I0(memory_reg_bram_0_i_118_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_reg_bram_0_i_136_n_0),
        .I3(memory_reg_bram_0_i_94_n_0),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_35_n_0));
  LUT6 #(
    .INIT(64'h0000000003034477)) 
    memory_mux_sel_a_pos_3_i_36
       (.I0(memory_reg_bram_0_i_123_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_reg_bram_0_i_144_n_0),
        .I3(memory_reg_bram_0_i_99_n_0),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_36_n_0));
  LUT5 #(
    .INIT(32'h00002230)) 
    memory_mux_sel_a_pos_3_i_37
       (.I0(rs1[0]),
        .I1(alu_src_a),
        .I2(rs1[8]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_37_n_0));
  LUT5 #(
    .INIT(32'h000044F0)) 
    memory_mux_sel_a_pos_3_i_38
       (.I0(alu_src_a),
        .I1(rs1[4]),
        .I2(srcA[0]),
        .I3(\OUT_reg[11] [3]),
        .I4(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_38_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_3_i_39
       (.I0(srcA[14]),
        .I1(srcA[6]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_39_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_mux_sel_a_pos_3_i_4
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_mux_sel_a_pos_3_i_17_n_0),
        .I4(memory_mux_sel_a_pos_3_i_18_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[12]),
        .O(memory_mux_sel_a_pos_3_i_4_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    memory_mux_sel_a_pos_3_i_40
       (.I0(srcA[10]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[18]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA[2]),
        .O(memory_mux_sel_a_pos_3_i_40_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_3_i_41
       (.I0(srcA[12]),
        .I1(srcA[4]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_41_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    memory_mux_sel_a_pos_3_i_42
       (.I0(srcA[8]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[16]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA[0]),
        .O(memory_mux_sel_a_pos_3_i_42_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_3_i_43
       (.I0(srcA[15]),
        .I1(srcA[7]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_43_n_0));
  LUT5 #(
    .INIT(32'h33B800B8)) 
    memory_mux_sel_a_pos_3_i_44
       (.I0(srcA[11]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[3]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .O(memory_mux_sel_a_pos_3_i_44_n_0));
  LUT4 #(
    .INIT(16'h00AC)) 
    memory_mux_sel_a_pos_3_i_45
       (.I0(srcA[13]),
        .I1(srcA[5]),
        .I2(\OUT_reg[11] [3]),
        .I3(\OUT_reg[11] [4]),
        .O(memory_mux_sel_a_pos_3_i_45_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    memory_mux_sel_a_pos_3_i_46
       (.I0(srcA[9]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[17]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA[1]),
        .O(memory_mux_sel_a_pos_3_i_46_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    memory_mux_sel_a_pos_3_i_5
       (.I0(alu_fun[2]),
        .I1(alu_fun[1]),
        .O(memory_mux_sel_a_pos_3_i_5_n_0));
  LUT6 #(
    .INIT(64'hFF003C3CAAAA3C3C)) 
    memory_mux_sel_a_pos_3_i_6
       (.I0(memory_mux_sel_a_pos_3_i_21_n_0),
        .I1(srcB[12]),
        .I2(srcA[0]),
        .I3(memory_mux_sel_a_pos_3_i_22_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_mux_sel_a_pos_3_i_6_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    memory_mux_sel_a_pos_3_i_7
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[0]),
        .I2(srcB[12]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_3_i_7_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    memory_mux_sel_a_pos_3_i_8
       (.I0(srcA[0]),
        .I1(data1[12]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_mux_sel_a_pos_3_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_mux_sel_a_pos_3_i_9
       (.I0(memory_mux_sel_a_pos_3_i_24_n_0),
        .I1(memory_mux_sel_a_pos_3_i_25_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_26_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_27_n_0),
        .O(memory_mux_sel_a_pos_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFF00713020606131100063704058593110005B7110008370001011300010117),
    .INIT_01(256'h1B0080E70000009748C00FEF1BC080E70000009723C00FEF1C8080E700000097),
    .INIT_02(256'h0000009710900FEF198080E7000000977DC00FEF1A4080E7000000976B400FEF),
    .INIT_03(256'h73100FEF174080E7000000974CD00FEF180080E70000009723100FEF18C080E7),
    .INIT_04(256'h150080E70000009748401FEF15C080E70000009722C01FEF168080E700000097),
    .INIT_05(256'h000000971B901FEF138080E70000009710101FEF144080E7000000976DC01FEF),
    .INIT_06(256'h54501FEF114080E70000009734501FEF120080E70000009727D01FEF12C080E7),
    .INIT_07(256'h0F0080E7000000971C402FEF0FC080E70000009777901FEF108080E700000097),
    .INIT_08(256'h0000009774802FEF0D8080E7000000975DC02FEF0E4080E7000000973D002FEF),
    .INIT_09(256'h38902FEF0B4080E70000009725102FEF0C0080E70000009712102FEF0CC080E7),
    .INIT_0A(256'h090080E70000009767902FEF09C080E7000000974B902FEF0A8080E700000097),
    .INIT_0B(256'h000000971D003FEF078080E70000009717003FEF084080E7000000977AD02FEF),
    .INIT_0C(256'h39C03FEF054080E7000000972D003FEF060080E70000009726803FEF06C080E7),
    .INIT_0D(256'h030080E70000009701103FEF03C080E70000009751C03FEF048080E700000097),
    .INIT_0E(256'h000000973A103FEF018080E70000009719503FEF024080E70000009768403FEF),
    .INIT_0F(256'h0000806700E5A02300170713FE069CE30016F69300082683E39FF06F00C080E7),
    .INIT_10(256'h24088893000F48B700068A630046F6930008268300A620230015051300151513),
    .INIT_11(256'h000694630046F6930008268300F5A023FFF0079300008067FE089EE3FFF88893),
    .INIT_12(256'hFE069CE30026F69300082683FE089EE3FFF8889324088893000F48B70290206F),
    .INIT_13(256'h0020019300000E9300208F33000001130000009300A6202300000513000F8067),
    .INIT_14(256'h0030019300200E9300208F330010011300100093F7C080E700000097FBDF16E3),
    .INIT_15(256'h0040019300A00E9300208F330070011300300093F5C080E700000097F9DF16E3),
    .INIT_16(256'h00500193FFFF8EB700208F33FFFF813700000093F3C080E700000097F7DF16E3),
    .INIT_17(256'h0060019380000EB700208F3300000113800000B7F1C080E700000097F5DF16E3),
    .INIT_18(256'h007001937FFF8EB700208F33FFFF8137800000B7EFC080E700000097F3DF16E3),
    .INIT_19(256'h00008EB700208F33FFF101130000813700000093EDC080E700000097F1DF16E3),
    .INIT_1A(256'h00000113FFF08093800000B7EB4080E700000097EFDF12E300800193FFFE8E93),
    .INIT_1B(256'h800000B7E8C080E700000097EBDF1EE300900193FFFE8E9380000EB700208F33),
    .INIT_1C(256'hE9DF18E300A00193FFEE8E9380008EB700208F33FFF1011300008137FFF08093),
    .INIT_1D(256'hFFFE8E9380008EB700208F33FFF1011300008137800000B7E60080E700000097),
    .INIT_1E(256'h00208F33FFFF8137FFF08093800000B7E38080E700000097E7DF14E300B00193),
    .INIT_1F(256'hFFF0011300000093E10080E700000097E5DF10E300C00193FFFE8E937FFF8EB7),
    .INIT_20(256'h00100113FFF00093DF0080E700000097E3DF10E300D00193FFF00E9300208F33),
    .INIT_21(256'hFFF00113FFF00093DD0080E700000097E1DF10E300E0019300000E9300208F33),
    .INIT_22(256'h8000013700100093DB0080E700000097DFDF10E300F00193FFE00E9300208F33),
    .INIT_23(256'h00D00093D8C080E700000097DBDF1EE30100019380000EB700208F33FFF10113),
    .INIT_24(256'h00E00093D6C080E700000097D9D09EE30110019301800E93002080B300B00113),
    .INIT_25(256'h000F8067D4C080E700000097D7D11EE30120019301900E930020813300B00113),
    .INIT_26(256'hD5DF18E30020019300000E9340208F33000001130000009300A6202300000513),
    .INIT_27(256'hD3DF18E30030019300000E9340208F330010011300100093D20080E700000097),
    .INIT_28(256'hD1DF18E300400193FFC00E9340208F330070011300300093D00080E700000097),
    .INIT_29(256'hCFDF18E30050019300008EB740208F33FFFF813700000093CE0080E700000097),
    .INIT_2A(256'hCDDF18E30060019380000EB740208F3300000113800000B7CC0080E700000097),
    .INIT_2B(256'hCBDF18E30070019380008EB740208F33FFFF8137800000B7CA0080E700000097),
    .INIT_2C(256'h001E8E93FFFF8EB740208F33FFF101130000813700000093C80080E700000097),
    .INIT_2D(256'h40208F3300000113FFF08093800000B7C58080E700000097C9DF14E300800193),
    .INIT_2E(256'hFFF08093800000B7C30080E700000097C7DF10E300900193FFFE8E9380000EB7),
    .INIT_2F(256'hC08080E700000097C3DF1CE300A001937FFF8EB740208F33FFF1011300008137),
    .INIT_30(256'hC1DF18E300B00193001E8E937FFF8EB740208F33FFF1011300008137800000B7),
    .INIT_31(256'hFFFE8E9380008EB740208F33FFFF8137FFF08093800000B7BE0080E700000097),
    .INIT_32(256'h00100E9340208F33FFF0011300000093BB8080E700000097BFDF14E300C00193),
    .INIT_33(256'hFFE00E9340208F3300100113FFF00093B98080E700000097BDDF14E300D00193),
    .INIT_34(256'h00000E9340208F33FFF00113FFF00093B78080E700000097BBDF14E300E00193),
    .INIT_35(256'h00200E93402080B300B0011300D00093B58080E700000097B9DF14E300F00193),
    .INIT_36(256'h00300E934020813300B0011300E00093B38080E700000097B7D094E301000193),
    .INIT_37(256'hFF0100B700A6202300000513000F8067B18080E700000097B5D114E301100193),
    .INIT_38(256'hB1DF18E300200193F00E8E930F001EB70020FF33F0F101130F0F1137F0008093),
    .INIT_39(256'h00F00EB70020FF330F010113F0F0F137FF0080930FF010B7AE0080E700000097),
    .INIT_3A(256'h0F0F11370FF0809300FF00B7AB4080E700000097AFDF12E3003001930F0E8E93),
    .INIT_3B(256'hA88080E700000097ABDF1CE30040019300FE8E93000F0EB70020FF33F0F10113),
    .INIT_3C(256'hA9DF18E300500193F000FEB70020FF330F010113F0F0F13700F08093F00FF0B7),
    .INIT_3D(256'h0F001EB70020F0B3F0F101130F0F1137F0008093FF0100B7A60080E700000097),
    .INIT_3E(256'hF0F0F137FF0080930FF010B7A34080E700000097A7D092E300600193F00E8E93),
    .INIT_3F(256'hA08080E700000097A3D11CE3007001930F0E8E9300F00EB70020F1330F010113),
    .INIT_40(256'h00000097A1D09AE300800193F00E8E93FF010EB70010F0B3F0008093FF0100B7),
    .INIT_41(256'hF0F101130F0F1137F0008093FF0100B700A6202300000513000F80679E4080E7),
    .INIT_42(256'h0FF010B79AC080E7000000979DDF1EE300200193F0FE8E93FF100EB70020EF33),
    .INIT_43(256'h9BDF18E300300193FF0E8E93FFF10EB70020EF330F010113F0F0F137FF008093),
    .INIT_44(256'h0FFF1EB70020EF33F0F101130F0F11370FF0809300FF00B7980080E700000097),
    .INIT_45(256'hF0F0F13700F08093F00FF0B7954080E70000009799DF12E300400193FFFE8E93),
    .INIT_46(256'h928080E70000009795DF1CE3005001930FFE8E93F0FFFEB70020EF330F010113),
    .INIT_47(256'h00600193F0FE8E93FF100EB70020E0B3F0F101130F0F1137F0008093FF0100B7),
    .INIT_48(256'h0020E133F0F101130F0F1137F0008093FF0100B78FC080E70000009793D096E3),
    .INIT_49(256'hF0008093FF0100B78D0080E70000009791D110E300700193F0FE8E93FF100EB7),
    .INIT_4A(256'h000F80678AC080E7000000978DD09EE300800193F00E8E93FF010EB70010E0B3),
    .INIT_4B(256'hF00FFEB70020CF33F0F101130F0F1137F0008093FF0100B700A6202300000513),
    .INIT_4C(256'hF0F0F137FF0080930FF010B7874080E7000000978BDF12E30020019300FE8E93),
    .INIT_4D(256'h848080E70000009787DF1CE300300193F00E8E93FF010EB70020CF330F010113),
    .INIT_4E(256'h00400193FF0E8E930FF01EB70020CF33F0F101130F0F11370FF0809300FF00B7),
    .INIT_4F(256'h0020CF330F010113F0F0F13700F08093F00FF0B781C080E70000009785DF16E3),
    .INIT_50(256'hF0008093FF0100B77F0080E7FFFFF09783DF10E3005001930FFE8E9300FF0EB7),
    .INIT_51(256'hFFFFF097FFD09A630060019300FE8E93F00FFEB70020C0B3F0F101130F0F1137),
    .INIT_52(256'h00FE8E93F00FFEB70020C133F0F101130F0F1137F0008093FF0100B77C4080E7),
    .INIT_53(256'h00000E930010C0B3F0008093FF0100B7798080E7FFFFF097FDD1146300700193),
    .INIT_54(256'h0010009300A6202300000513000F8067778080E7FFFFF097FBD0946300800193),
    .INIT_55(256'h0010009374C080E7FFFFF097F7DF1E630020019300100E9300209F3300000113),
    .INIT_56(256'h0010009372C080E7FFFFF097F5DF1E630030019300200E9300209F3300100113),
    .INIT_57(256'h0010009370C080E7FFFFF097F3DF1E630040019308000E9300209F3300700113),
    .INIT_58(256'h001000936EC080E7FFFFF097F1DF1E630050019300004EB700209F3300E00113),
    .INIT_59(256'hFFF000936CC080E7FFFFF097EFDF1E630060019380000EB700209F3301F00113),
    .INIT_5A(256'hFFF000936AC080E7FFFFF097EDDF1E6300700193FFF00E9300209F3300000113),
    .INIT_5B(256'hFFF0009368C080E7FFFFF097EBDF1E6300800193FFE00E9300209F3300100113),
    .INIT_5C(256'hFFF0009366C080E7FFFFF097E9DF1E6300900193F8000E9300209F3300700113),
    .INIT_5D(256'hFFF0009364C080E7FFFFF097E7DF1E6300A00193FFFFCEB700209F3300E00113),
    .INIT_5E(256'h212120B762C080E7FFFFF097E5DF1E6300B0019380000EB700209F3301F00113),
    .INIT_5F(256'hFFFFF097E3DF1A6300C00193121E8E9321212EB700209F330000011312108093),
    .INIT_60(256'h00D00193242E8E9342424EB700209F330010011312108093212120B7604080E7),
    .INIT_61(256'h90909EB700209F330070011312108093212120B75DC080E7FFFFF097E1DF1663),
    .INIT_62(256'h00E0011312108093212120B75B4080E7FFFFF097DFDF126300E00193080E8E93),
    .INIT_63(256'h12108093212120B7590080E7FFFFF097DDDF106300F0019348484EB700209F33),
    .INIT_64(256'h212120B756C080E7FFFFF097D9DF1E630100019380000EB700209F3301F00113),
    .INIT_65(256'hFFFFF097D7DF1A6301100193121E8E9321212EB700209F33FC00011312108093),
    .INIT_66(256'h01200193242E8E9342424EB700209F33FC10011312108093212120B7544080E7),
    .INIT_67(256'h90909EB700209F33FC70011312108093212120B751C080E7FFFFF097D5DF1663),
    .INIT_68(256'hFCE0011312108093212120B74F4080E7FFFFF097D3DF126301300193080E8E93),
    .INIT_69(256'h00000513000F80674D0080E7FFFFF097D1DF10630140019348484EB700209F33),
    .INIT_6A(256'hFFFFF097CDDF1A630020019380000EB70020DF3300000113800000B700A62023),
    .INIT_6B(256'hFFFFF097CBDF1A630030019340000EB70020DF3300100113800000B74A4080E7),
    .INIT_6C(256'hFFFFF097C9DF1A630040019301000EB70020DF3300700113800000B7484080E7),
    .INIT_6D(256'hFFFFF097C7DF1A630050019300020EB70020DF3300E00113800000B7464080E7),
    .INIT_6E(256'hC5DF18630060019300100E930020DF3301F0011300108093800000B7444080E7),
    .INIT_6F(256'hC3DF186300700193FFF00E930020DF3300000113FFF00093420080E7FFFFF097),
    .INIT_70(256'h00800193FFFE8E9380000EB70020DF3300100113FFF00093400080E7FFFFF097),
    .INIT_71(256'hFFFE8E9302000EB70020DF3300700113FFF000933DC080E7FFFFF097C1DF1663),
    .INIT_72(256'h00040EB70020DF3300E00113FFF000933B8080E7FFFFF097BFDF146300900193),
    .INIT_73(256'h0020DF3301F00113FFF00093394080E7FFFFF097BDDF126300A00193FFFE8E93),
    .INIT_74(256'h0000011312108093212120B7374080E7FFFFF097BBDF126300B0019300100E93),
    .INIT_75(256'h212120B734C080E7FFFFF097B7DF1E6300C00193121E8E9321212EB70020DF33),
    .INIT_76(256'hFFFFF097B5DF1A6300D00193090E8E9310909EB70020DF330010011312108093),
    .INIT_77(256'h00E00193242E8E9300424EB70020DF330070011312108093212120B7324080E7),
    .INIT_78(256'h00008EB70020DF3300E0011312108093212120B72FC080E7FFFFF097B3DF1663),
    .INIT_79(256'h01F0011312108093212120B72D4080E7FFFFF097B1DF126300F00193484E8E93),
    .INIT_7A(256'h12108093212120B72B0080E7FFFFF097AFDF10630100019300000E930020DF33),
    .INIT_7B(256'h288080E7FFFFF097ABDF1C6301100193121E8E9321212EB70020DF33FC000113),
    .INIT_7C(256'hA9DF186301200193090E8E9310909EB70020DF33FC10011312108093212120B7),
    .INIT_7D(256'h4020DF3300000113800000B700A6202300000513000F8067260080E7FFFFF097),
    .INIT_7E(256'h4020DF3300100113800000B7234080E7FFFFF097A7DF12630020019380000EB7),
    .INIT_7F(256'h4020DF3300700113800000B7214080E7FFFFF097A5DF126300300193C0000EB7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_0
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_0_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_0_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_0_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_0_n_4,memory_reg_bram_0_n_5,memory_reg_bram_0_n_6,memory_reg_bram_0_n_7,memory_reg_bram_0_n_8,memory_reg_bram_0_n_9,memory_reg_bram_0_n_10,memory_reg_bram_0_n_11,memory_reg_bram_0_n_12,memory_reg_bram_0_n_13,memory_reg_bram_0_n_14,memory_reg_bram_0_n_15,memory_reg_bram_0_n_16,memory_reg_bram_0_n_17,memory_reg_bram_0_n_18,memory_reg_bram_0_n_19,memory_reg_bram_0_n_20,memory_reg_bram_0_n_21,memory_reg_bram_0_n_22,memory_reg_bram_0_n_23,memory_reg_bram_0_n_24,memory_reg_bram_0_n_25,memory_reg_bram_0_n_26,memory_reg_bram_0_n_27,memory_reg_bram_0_n_28,memory_reg_bram_0_n_29,memory_reg_bram_0_n_30,memory_reg_bram_0_n_31,memory_reg_bram_0_n_32,memory_reg_bram_0_n_33,memory_reg_bram_0_n_34,memory_reg_bram_0_n_35}),
        .DOBDO({memory_reg_bram_0_n_36,memory_reg_bram_0_n_37,memory_reg_bram_0_n_38,memory_reg_bram_0_n_39,memory_reg_bram_0_n_40,memory_reg_bram_0_n_41,memory_reg_bram_0_n_42,memory_reg_bram_0_n_43,memory_reg_bram_0_n_44,memory_reg_bram_0_n_45,memory_reg_bram_0_n_46,memory_reg_bram_0_n_47,memory_reg_bram_0_n_48,memory_reg_bram_0_n_49,memory_reg_bram_0_n_50,memory_reg_bram_0_n_51,memory_reg_bram_0_n_52,memory_reg_bram_0_n_53,memory_reg_bram_0_n_54,memory_reg_bram_0_n_55,memory_reg_bram_0_n_56,memory_reg_bram_0_n_57,memory_reg_bram_0_n_58,memory_reg_bram_0_n_59,memory_reg_bram_0_n_60,memory_reg_bram_0_n_61,memory_reg_bram_0_n_62,memory_reg_bram_0_n_63,memory_reg_bram_0_n_64,memory_reg_bram_0_n_65,memory_reg_bram_0_n_66,memory_reg_bram_0_n_67}),
        .DOPADOP(NLW_memory_reg_bram_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_0_i_1_n_0),
        .ENBWREN(memory_reg_bram_0_0),
        .INJECTDBITERR(NLW_memory_reg_bram_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_0_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_0_i_37_n_0,memory_reg_bram_0_i_38_n_0,memory_reg_bram_0_i_39_n_0,memory_reg_bram_0_i_40_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    memory_reg_bram_0_i_1
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .O(memory_reg_bram_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_reg_bram_0_i_10
       (.I0(memory_reg_bram_0_i_68_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_69_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_reg_bram_0_i_70_n_0),
        .I5(memory_reg_bram_0_i_71_n_0),
        .O(IOBUS_addr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_100
       (.I0(memory_mux_sel_a_pos_3_i_25_n_0),
        .I1(memory_reg_bram_0_i_162_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_27_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_168_n_0),
        .O(memory_reg_bram_0_i_100_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_101
       (.I0(alu_src_a),
        .I1(rs1[9]),
        .I2(data1[9]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_101_n_0));
  LUT6 #(
    .INIT(64'h7575751075107510)) 
    memory_reg_bram_0_i_102
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(alu_src_a),
        .I2(rs1[9]),
        .I3(memory_reg_bram_0_i_169_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[22]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(memory_reg_bram_0_i_102_n_0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    memory_reg_bram_0_i_103
       (.I0(\OUT_reg[0]_0 ),
        .I1(memory_reg_bram_0_i_170_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_164_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[9]),
        .O(memory_reg_bram_0_i_103_n_0));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    memory_reg_bram_0_i_104
       (.I0(memory_reg_bram_0_i_171_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_mux_sel_a_pos_3_i_33_n_0),
        .I3(memory_reg_bram_0_i_133_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_37_n_0),
        .O(memory_reg_bram_0_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_105
       (.I0(memory_mux_sel_a_pos_3_i_44_n_0),
        .I1(memory_reg_bram_0_i_165_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_46_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_172_n_0),
        .O(memory_reg_bram_0_i_105_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_106
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[9]),
        .O(memory_reg_bram_0_i_106_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_107
       (.I0(alu_src_a),
        .I1(rs1[8]),
        .I2(data1[8]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_108
       (.I0(memory_mux_sel_a_pos_3_i_29_n_0),
        .I1(memory_reg_bram_0_i_166_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_31_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_173_n_0),
        .O(memory_reg_bram_0_i_108_n_0));
  LUT6 #(
    .INIT(64'h4070FFFF40700000)) 
    memory_reg_bram_0_i_109
       (.I0(memory_reg_bram_0_i_174_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_mux_sel_a_pos_3_i_33_n_0),
        .I3(memory_reg_bram_0_i_128_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_reg_bram_0_i_170_n_0),
        .O(memory_reg_bram_0_i_109_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    memory_reg_bram_0_i_11
       (.I0(memory_reg_bram_0_i_72_n_0),
        .I1(memory_mux_sel_a_pos_2_i_3_n_0),
        .I2(alu_fun[3]),
        .I3(memory_reg_bram_0_i_73_n_0),
        .I4(memory_reg_bram_0_i_74_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_110
       (.I0(memory_mux_sel_a_pos_3_i_40_n_0),
        .I1(memory_reg_bram_0_i_167_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_42_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_175_n_0),
        .O(memory_reg_bram_0_i_110_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_111
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[8]),
        .O(memory_reg_bram_0_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_112
       (.I0(memory_mux_sel_a_pos_3_i_27_n_0),
        .I1(memory_reg_bram_0_i_168_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_162_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_176_n_0),
        .O(memory_reg_bram_0_i_112_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_113
       (.I0(alu_src_a),
        .I1(rs1[7]),
        .I2(data1[7]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_113_n_0));
  LUT6 #(
    .INIT(64'h7575751075107510)) 
    memory_reg_bram_0_i_114
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(alu_src_a),
        .I2(rs1[7]),
        .I3(memory_reg_bram_0_i_177_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_0[20]),
        .I5(RESULT0_carry__0_i_11_n_0),
        .O(memory_reg_bram_0_i_114_n_0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    memory_reg_bram_0_i_115
       (.I0(\OUT_reg[0]_0 ),
        .I1(memory_reg_bram_0_i_178_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_170_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[7]),
        .O(memory_reg_bram_0_i_115_n_0));
  LUT6 #(
    .INIT(64'h8B8888888BBB8888)) 
    memory_reg_bram_0_i_116
       (.I0(memory_reg_bram_0_i_179_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_reg_bram_0_i_144_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(memory_reg_bram_0_i_123_n_0),
        .O(memory_reg_bram_0_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_117
       (.I0(memory_mux_sel_a_pos_3_i_46_n_0),
        .I1(memory_reg_bram_0_i_172_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_165_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_176_n_0),
        .O(memory_reg_bram_0_i_117_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_118
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[7]),
        .O(memory_reg_bram_0_i_118_n_0));
  LUT5 #(
    .INIT(32'h15110400)) 
    memory_reg_bram_0_i_119
       (.I0(alu_fun[2]),
        .I1(memory_reg_mux_sel_b_pos_0_1),
        .I2(alu_src_a),
        .I3(rs1[6]),
        .I4(data1[6]),
        .O(memory_reg_bram_0_i_119_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
    memory_reg_bram_0_i_12
       (.I0(memory_reg_bram_0_i_75_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_76_n_0),
        .I3(memory_reg_bram_0_i_77_n_0),
        .I4(memory_reg_bram_0_i_78_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    memory_reg_bram_0_i_120
       (.I0(memory_mux_sel_a_pos_3_i_31_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_reg_bram_0_i_173_n_0),
        .I3(memory_reg_bram_0_i_166_n_0),
        .I4(memory_reg_bram_0_i_180_n_0),
        .I5(\OUT_reg[11] [1]),
        .O(memory_reg_bram_0_i_120_n_0));
  LUT6 #(
    .INIT(64'h0344000003770000)) 
    memory_reg_bram_0_i_121
       (.I0(memory_reg_bram_0_i_136_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_reg_bram_0_i_174_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(memory_reg_bram_0_i_128_n_0),
        .O(memory_reg_bram_0_i_121_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_122
       (.I0(memory_reg_bram_0_i_181_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_reg_bram_0_i_182_n_0),
        .O(memory_reg_bram_0_i_122_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_123
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[6]),
        .O(memory_reg_bram_0_i_123_n_0));
  LUT5 #(
    .INIT(32'h15110400)) 
    memory_reg_bram_0_i_124
       (.I0(alu_fun[2]),
        .I1(memory_reg_mux_sel_b_pos_0_1),
        .I2(alu_src_a),
        .I3(rs1[5]),
        .I4(data1[5]),
        .O(memory_reg_bram_0_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_125
       (.I0(memory_reg_bram_0_i_162_n_0),
        .I1(memory_reg_bram_0_i_176_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_168_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_183_n_0),
        .O(memory_reg_bram_0_i_125_n_0));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    memory_reg_bram_0_i_126
       (.I0(memory_mux_sel_a_pos_3_i_33_n_0),
        .I1(rs1[2]),
        .I2(alu_src_a),
        .I3(\OUT_reg[11] [2]),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_reg_bram_0_i_179_n_0),
        .O(memory_reg_bram_0_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_127
       (.I0(memory_reg_bram_0_i_165_n_0),
        .I1(memory_reg_bram_0_i_176_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_172_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_183_n_0),
        .O(memory_reg_bram_0_i_127_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_128
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[5]),
        .O(memory_reg_bram_0_i_128_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_129
       (.I0(alu_src_a),
        .I1(rs1[4]),
        .I2(data1[4]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_129_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_13
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(memory_reg_bram_0_1),
        .I4(RS2[7]),
        .I5(DIADI[7]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_130
       (.I0(memory_reg_bram_0_i_166_n_0),
        .I1(memory_reg_bram_0_i_180_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_173_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_184_n_0),
        .O(memory_reg_bram_0_i_130_n_0));
  LUT6 #(
    .INIT(64'h0000000001010003)) 
    memory_reg_bram_0_i_131
       (.I0(memory_reg_bram_0_i_174_n_0),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_136_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(\OUT_reg[11] [2]),
        .O(memory_reg_bram_0_i_131_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_132
       (.I0(memory_reg_bram_0_i_167_n_0),
        .I1(memory_reg_bram_0_i_180_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_175_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_184_n_0),
        .O(memory_reg_bram_0_i_132_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_133
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[4]),
        .O(memory_reg_bram_0_i_133_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_134
       (.I0(memory_reg_bram_0_i_168_n_0),
        .I1(memory_reg_bram_0_i_183_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_176_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_185_n_0),
        .O(memory_reg_bram_0_i_134_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_135
       (.I0(alu_src_a),
        .I1(rs1[3]),
        .I2(data1[3]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_135_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_136
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[3]),
        .O(memory_reg_bram_0_i_136_n_0));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    memory_reg_bram_0_i_137
       (.I0(ram_reg_r1_0_31_30_31__0_i_2_0[3]),
        .I1(memory_reg_mux_sel_b_pos_0_1),
        .I2(memory_reg_bram_0_i_131_n_0),
        .I3(\OUT_reg[0]_0 ),
        .I4(memory_reg_bram_0_i_141_n_0),
        .I5(\OUT_reg[0] ),
        .O(memory_reg_bram_0_i_137_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_138
       (.I0(memory_reg_bram_0_i_172_n_0),
        .I1(memory_reg_bram_0_i_183_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_176_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_185_n_0),
        .O(memory_reg_bram_0_i_138_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_139
       (.I0(alu_src_a),
        .I1(rs1[2]),
        .I2(data1[2]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_139_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_14
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(memory_reg_bram_0_2),
        .I4(RS2[6]),
        .I5(DIADI[6]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_140
       (.I0(memory_reg_bram_0_i_173_n_0),
        .I1(memory_reg_bram_0_i_184_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_180_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_186_n_0),
        .O(memory_reg_bram_0_i_140_n_0));
  LUT6 #(
    .INIT(64'h0000000001010003)) 
    memory_reg_bram_0_i_141
       (.I0(memory_reg_bram_0_i_187_n_0),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_144_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(\OUT_reg[11] [2]),
        .O(memory_reg_bram_0_i_141_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    memory_reg_bram_0_i_142
       (.I0(\OUT_reg[11] [2]),
        .I1(\OUT_reg[11] [1]),
        .I2(alu_src_a),
        .I3(rs1[1]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .O(memory_reg_bram_0_i_142_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_143
       (.I0(memory_reg_bram_0_i_175_n_0),
        .I1(memory_reg_bram_0_i_184_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_180_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_186_n_0),
        .O(memory_reg_bram_0_i_143_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_144
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[2]),
        .O(memory_reg_bram_0_i_144_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_145
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_188_n_0),
        .I2(memory_reg_bram_0_i_140_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_189_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_145_n_0));
  LUT6 #(
    .INIT(64'hFFFF710071007100)) 
    memory_reg_bram_0_i_146
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(memory_reg_bram_0_i_174_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_23_n_0),
        .I4(memory_reg_bram_0_i_190_n_0),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_reg_bram_0_i_146_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_147
       (.I0(memory_reg_bram_0_i_189_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_143_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_174_n_0),
        .I5(\OUT_reg[11] [1]),
        .O(memory_reg_bram_0_i_147_n_0));
  LUT6 #(
    .INIT(64'hE2CCE23300000000)) 
    memory_reg_bram_0_i_148
       (.I0(memory_reg_bram_0_i_191_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_189_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_187_n_0),
        .I5(alu_fun[2]),
        .O(memory_reg_bram_0_i_148_n_0));
  LUT6 #(
    .INIT(64'h000008080000FF08)) 
    memory_reg_bram_0_i_149
       (.I0(memory_reg_bram_0_i_192_n_0),
        .I1(memory_reg_bram_0_i_193_n_0),
        .I2(\OUT_reg[0]_0 ),
        .I3(ram_reg_r1_0_31_30_31__0_i_2_0[0]),
        .I4(alu_fun[2]),
        .I5(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_149_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_15
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[21]),
        .I4(RS2[5]),
        .I5(DIADI[5]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hEFEAAAAAAAAAAAAA)) 
    memory_reg_bram_0_i_150
       (.I0(memory_reg_bram_0_i_194_n_0),
        .I1(memory_reg_bram_0_i_189_n_0),
        .I2(\OUT_reg[11] [0]),
        .I3(memory_reg_bram_0_i_191_n_0),
        .I4(alu_fun[2]),
        .I5(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_150_n_0));
  LUT6 #(
    .INIT(64'h0CFC0C0CFAFA0AFA)) 
    memory_reg_bram_0_i_151
       (.I0(CO),
        .I1(memory_reg_bram_0_i_80_0),
        .I2(alu_fun[2]),
        .I3(memory_reg_bram_0_i_187_n_0),
        .I4(\OUT_reg[11] [0]),
        .I5(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_151_n_0));
  MUXF7 memory_reg_bram_0_i_152
       (.I0(memory_reg_bram_0_i_195_n_0),
        .I1(memory_reg_bram_0_i_196_n_0),
        .O(memory_reg_bram_0_i_152_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 memory_reg_bram_0_i_153
       (.I0(memory_reg_bram_0_i_197_n_0),
        .I1(memory_reg_bram_0_i_198_n_0),
        .O(memory_reg_bram_0_i_153_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    memory_reg_bram_0_i_154
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_mux_sel_b_pos_0_0[5]),
        .I3(IOBUS_addr[1]),
        .O(memory_reg_bram_0_i_154_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    memory_reg_bram_0_i_155
       (.I0(IOBUS_addr[28]),
        .I1(IOBUS_addr[27]),
        .I2(IOBUS_addr[26]),
        .I3(IOBUS_addr[25]),
        .O(memory_reg_bram_0_i_155_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    memory_reg_bram_0_i_156
       (.I0(IOBUS_addr[16]),
        .I1(IOBUS_addr[17]),
        .I2(IOBUS_addr[18]),
        .I3(IOBUS_addr[30]),
        .I4(IOBUS_addr[29]),
        .O(memory_reg_bram_0_i_156_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    memory_reg_bram_0_i_157
       (.I0(IOBUS_addr[20]),
        .I1(IOBUS_addr[19]),
        .I2(IOBUS_addr[31]),
        .O(memory_reg_bram_0_i_157_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    memory_reg_bram_0_i_158
       (.I0(IOBUS_addr[24]),
        .I1(IOBUS_addr[23]),
        .I2(IOBUS_addr[22]),
        .I3(IOBUS_addr[21]),
        .O(memory_reg_bram_0_i_158_n_0));
  LUT5 #(
    .INIT(32'h017F0000)) 
    memory_reg_bram_0_i_159
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_mux_sel_b_pos_0_0[5]),
        .I3(memory_reg_mux_sel_b_pos_0_0[6]),
        .I4(mem_we2),
        .O(memory_reg_bram_0_i_159_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_16
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[20]),
        .I4(RS2[4]),
        .I5(DIADI[4]),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'hFCEE)) 
    memory_reg_bram_0_i_160
       (.I0(IOBUS_addr[1]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[5]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .O(memory_reg_bram_0_i_160_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    memory_reg_bram_0_i_161
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_mux_sel_a_pos_3_i_3_0),
        .I3(IOBUS_addr[1]),
        .O(memory_reg_bram_0_i_161_n_0));
  LUT6 #(
    .INIT(64'hCFC0A0A0CFC0AFAF)) 
    memory_reg_bram_0_i_162
       (.I0(srcA[7]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[15]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_94_n_0),
        .O(memory_reg_bram_0_i_162_n_0));
  LUT6 #(
    .INIT(64'h0000000003034477)) 
    memory_reg_bram_0_i_164
       (.I0(memory_reg_bram_0_i_128_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_reg_bram_0_i_174_n_0),
        .I3(memory_reg_bram_0_i_106_n_0),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(memory_reg_bram_0_i_164_n_0));
  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    memory_reg_bram_0_i_165
       (.I0(srcA[7]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[15]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[11]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_165_n_0));
  LUT6 #(
    .INIT(64'hCFC0A0A0CFC0AFAF)) 
    memory_reg_bram_0_i_166
       (.I0(srcA[6]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[14]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_99_n_0),
        .O(memory_reg_bram_0_i_166_n_0));
  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    memory_reg_bram_0_i_167
       (.I0(srcA[6]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[14]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[10]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_167_n_0));
  LUT6 #(
    .INIT(64'hCFC0A0A0CFC0AFAF)) 
    memory_reg_bram_0_i_168
       (.I0(srcA[5]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[13]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_106_n_0),
        .O(memory_reg_bram_0_i_168_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    memory_reg_bram_0_i_169
       (.I0(RESULT0_carry_i_9_0),
        .I1(RESULT0_carry__6[9]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(RS2[1]),
        .O(memory_reg_bram_0_i_169_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_17
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[19]),
        .I4(RS2[3]),
        .I5(DIADI[3]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    memory_reg_bram_0_i_170
       (.I0(rs1[3]),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(rs1[7]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_170_n_0));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    memory_reg_bram_0_i_171
       (.I0(rs1[2]),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(rs1[6]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_171_n_0));
  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    memory_reg_bram_0_i_172
       (.I0(srcA[5]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[13]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[9]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_172_n_0));
  LUT6 #(
    .INIT(64'hCFC0A0A0CFC0AFAF)) 
    memory_reg_bram_0_i_173
       (.I0(srcA[4]),
        .I1(srcA__0),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[12]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_111_n_0),
        .O(memory_reg_bram_0_i_173_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_174
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[1]),
        .O(memory_reg_bram_0_i_174_n_0));
  LUT6 #(
    .INIT(64'h3088308830BB3088)) 
    memory_reg_bram_0_i_175
       (.I0(srcA[4]),
        .I1(\OUT_reg[11] [3]),
        .I2(srcA[12]),
        .I3(\OUT_reg[11] [4]),
        .I4(rs1[8]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_175_n_0));
  LUT6 #(
    .INIT(64'hFCFCF5050C0CF505)) 
    memory_reg_bram_0_i_176
       (.I0(memory_reg_bram_0_i_118_n_0),
        .I1(srcA[11]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[3]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA__0),
        .O(memory_reg_bram_0_i_176_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    memory_reg_bram_0_i_177
       (.I0(RESULT0_carry_i_9_0),
        .I1(RESULT0_carry__6[7]),
        .I2(RESULT0_carry__0_i_9_n_0),
        .I3(DIADI[7]),
        .O(memory_reg_bram_0_i_177_n_0));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    memory_reg_bram_0_i_178
       (.I0(rs1[1]),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(rs1[5]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_178_n_0));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    memory_reg_bram_0_i_179
       (.I0(rs1[0]),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(rs1[4]),
        .I5(alu_src_a),
        .O(memory_reg_bram_0_i_179_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_18
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[18]),
        .I4(RS2[2]),
        .I5(DIADI[2]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFC0CF5F5FC0C0505)) 
    memory_reg_bram_0_i_180
       (.I0(memory_reg_bram_0_i_123_n_0),
        .I1(srcA[10]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[18]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[2]),
        .O(memory_reg_bram_0_i_180_n_0));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    memory_reg_bram_0_i_181
       (.I0(\OUT_reg[11] [3]),
        .I1(\OUT_reg[11] [4]),
        .I2(srcA[8]),
        .I3(memory_reg_bram_0_i_199_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_175_n_0),
        .O(memory_reg_bram_0_i_181_n_0));
  LUT6 #(
    .INIT(64'h7520FFFF75200000)) 
    memory_reg_bram_0_i_182
       (.I0(\OUT_reg[11] [3]),
        .I1(\OUT_reg[11] [4]),
        .I2(srcA[6]),
        .I3(memory_reg_bram_0_i_200_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_180_n_0),
        .O(memory_reg_bram_0_i_182_n_0));
  LUT6 #(
    .INIT(64'hFC0CF5F5FC0C0505)) 
    memory_reg_bram_0_i_183
       (.I0(memory_reg_bram_0_i_128_n_0),
        .I1(srcA[9]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[17]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[1]),
        .O(memory_reg_bram_0_i_183_n_0));
  LUT6 #(
    .INIT(64'hFC0CF5F5FC0C0505)) 
    memory_reg_bram_0_i_184
       (.I0(memory_reg_bram_0_i_133_n_0),
        .I1(srcA[8]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[16]),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[0]),
        .O(memory_reg_bram_0_i_184_n_0));
  LUT6 #(
    .INIT(64'hFC0C0505FC0CF5F5)) 
    memory_reg_bram_0_i_185
       (.I0(memory_reg_bram_0_i_136_n_0),
        .I1(srcA[7]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[15]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_94_n_0),
        .O(memory_reg_bram_0_i_185_n_0));
  LUT6 #(
    .INIT(64'hFC0C0505FC0CF5F5)) 
    memory_reg_bram_0_i_186
       (.I0(memory_reg_bram_0_i_144_n_0),
        .I1(srcA[6]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[14]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_99_n_0),
        .O(memory_reg_bram_0_i_186_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_187
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[0]),
        .O(memory_reg_bram_0_i_187_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_188
       (.I0(alu_src_a),
        .I1(rs1[1]),
        .I2(data1[1]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_188_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    memory_reg_bram_0_i_189
       (.I0(memory_reg_bram_0_i_201_n_0),
        .I1(memory_reg_bram_0_i_183_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_176_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_185_n_0),
        .O(memory_reg_bram_0_i_189_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_19
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[17]),
        .I4(RS2[1]),
        .I5(DIADI[1]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hF000AAAAC0C0AAAA)) 
    memory_reg_bram_0_i_190
       (.I0(ram_reg_r1_0_31_30_31__0_i_2_0[1]),
        .I1(memory_reg_bram_0_i_202_n_0),
        .I2(memory_reg_bram_0_i_192_n_0),
        .I3(memory_reg_bram_0_i_193_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_190_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    memory_reg_bram_0_i_191
       (.I0(memory_reg_bram_0_i_203_n_0),
        .I1(memory_reg_bram_0_i_184_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_reg_bram_0_i_180_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_186_n_0),
        .O(memory_reg_bram_0_i_191_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_bram_0_i_192
       (.I0(\OUT_reg[11] [1]),
        .I1(\OUT_reg[11] [2]),
        .O(memory_reg_bram_0_i_192_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    memory_reg_bram_0_i_193
       (.I0(\OUT_reg[11] [4]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[0]),
        .I3(alu_src_a),
        .O(memory_reg_bram_0_i_193_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_194
       (.I0(alu_src_a),
        .I1(rs1[0]),
        .I2(data1[0]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_194_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_195
       (.I0(memory_reg_bram_3_n_54),
        .I1(memory_reg_bram_2_n_54),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_54),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_54),
        .O(memory_reg_bram_0_i_195_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_196
       (.I0(memory_reg_bram_7_n_54),
        .I1(memory_reg_bram_6_n_54),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_54),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_54),
        .O(memory_reg_bram_0_i_196_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_197
       (.I0(memory_reg_bram_11_n_54),
        .I1(memory_reg_bram_10_n_54),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_54),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_54),
        .O(memory_reg_bram_0_i_197_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_198
       (.I0(memory_reg_bram_15_n_54),
        .I1(memory_reg_bram_14_n_54),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_54),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_54),
        .O(memory_reg_bram_0_i_198_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_199
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [4]),
        .I2(srcA[0]),
        .O(memory_reg_bram_0_i_199_n_0));
  LUT6 #(
    .INIT(64'hFEEEFCCCF222F000)) 
    memory_reg_bram_0_i_20
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[16]),
        .I4(RS2[0]),
        .I5(DIADI[0]),
        .O(p_1_in[24]));
  LUT4 #(
    .INIT(16'h88B8)) 
    memory_reg_bram_0_i_200
       (.I0(srcA[14]),
        .I1(\OUT_reg[11] [4]),
        .I2(rs1[10]),
        .I3(alu_src_a),
        .O(memory_reg_bram_0_i_200_n_0));
  LUT6 #(
    .INIT(64'hFC0C0505FC0CF5F5)) 
    memory_reg_bram_0_i_201
       (.I0(memory_reg_bram_0_i_174_n_0),
        .I1(srcA[5]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[13]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_106_n_0),
        .O(memory_reg_bram_0_i_201_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    memory_reg_bram_0_i_202
       (.I0(\OUT_reg[11] [4]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[1]),
        .I3(alu_src_a),
        .O(memory_reg_bram_0_i_202_n_0));
  LUT6 #(
    .INIT(64'hFC0C0505FC0CF5F5)) 
    memory_reg_bram_0_i_203
       (.I0(memory_reg_bram_0_i_187_n_0),
        .I1(srcA[4]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA[12]),
        .I4(\OUT_reg[11] [4]),
        .I5(memory_reg_bram_0_i_111_n_0),
        .O(memory_reg_bram_0_i_203_n_0));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_21
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[15]),
        .I4(DIADI[7]),
        .I5(RS2[7]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_22
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[14]),
        .I4(DIADI[6]),
        .I5(RS2[6]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_23
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[13]),
        .I4(DIADI[5]),
        .I5(RS2[5]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_24
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[12]),
        .I4(DIADI[4]),
        .I5(RS2[4]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_25
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[11]),
        .I4(DIADI[3]),
        .I5(RS2[3]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_26
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[10]),
        .I4(DIADI[2]),
        .I5(RS2[2]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_27
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[9]),
        .I4(DIADI[1]),
        .I5(RS2[1]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFBBBFAAAF111F000)) 
    memory_reg_bram_0_i_28
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_bram_0_i_81_n_0),
        .I3(RS2[8]),
        .I4(DIADI[0]),
        .I5(RS2[0]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    memory_reg_bram_0_i_3
       (.I0(memory_reg_bram_0_i_43_n_0),
        .I1(memory_mux_sel_a_pos_2_i_3_n_0),
        .I2(alu_fun[3]),
        .I3(memory_reg_bram_0_i_44_n_0),
        .I4(memory_reg_bram_0_i_45_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[11]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_0_i_37
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(p_0_in_0[24]),
        .O(memory_reg_bram_0_i_37_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_0_i_38
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(p_0_in_0[16]),
        .O(memory_reg_bram_0_i_38_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_0_i_39
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(p_0_in_0[8]),
        .O(memory_reg_bram_0_i_39_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_reg_bram_0_i_4
       (.I0(memory_reg_bram_0_i_46_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_47_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_reg_bram_0_i_48_n_0),
        .I5(memory_reg_bram_0_i_49_n_0),
        .O(IOBUS_addr[10]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_0_i_40
       (.I0(memory_reg_bram_0_i_41_n_0),
        .I1(memory_reg_bram_0_i_42_n_0),
        .I2(p_0_in_0[0]),
        .O(memory_reg_bram_0_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_bram_0_i_41
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .O(memory_reg_bram_0_i_41_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_bram_0_i_42
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .O(memory_reg_bram_0_i_42_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    memory_reg_bram_0_i_43
       (.I0(memory_mux_sel_a_pos_3_i_12_n_0),
        .I1(memory_reg_bram_0_i_87_n_0),
        .I2(memory_mux_sel_a_pos_3_i_10_n_0),
        .I3(memory_mux_sel_a_pos_3_i_11_n_0),
        .I4(memory_reg_bram_0_i_88_n_0),
        .O(memory_reg_bram_0_i_43_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    memory_reg_bram_0_i_44
       (.I0(memory_reg_bram_0_i_89_n_0),
        .I1(memory_mux_sel_a_pos_3_i_23_n_0),
        .I2(memory_reg_bram_0_i_90_n_0),
        .I3(memory_reg_bram_0_i_91_n_0),
        .I4(\OUT_reg[0] ),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_reg_bram_0_i_44_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_45
       (.I0(memory_reg_bram_0_i_93_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_mux_sel_a_pos_3_i_21_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_94_n_0),
        .I5(\OUT_reg[11] [11]),
        .O(memory_reg_bram_0_i_45_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_46
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_95_n_0),
        .I2(memory_reg_bram_0_i_87_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_96_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_46_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_reg_bram_0_i_47
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_reg_bram_0_i_97_n_0),
        .I4(memory_reg_bram_0_i_91_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[10]),
        .O(memory_reg_bram_0_i_47_n_0));
  LUT6 #(
    .INIT(64'hFF00C3C3AAAAC3C3)) 
    memory_reg_bram_0_i_48
       (.I0(memory_reg_bram_0_i_98_n_0),
        .I1(\OUT_reg[11] [10]),
        .I2(memory_reg_bram_0_i_99_n_0),
        .I3(memory_reg_bram_0_i_93_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_48_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_49
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [10]),
        .I2(rs1[10]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_49_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    memory_reg_bram_0_i_5
       (.I0(memory_reg_bram_0_i_50_n_0),
        .I1(memory_mux_sel_a_pos_2_i_3_n_0),
        .I2(alu_fun[3]),
        .I3(memory_reg_bram_0_i_51_n_0),
        .I4(memory_reg_bram_0_i_52_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[9]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    memory_reg_bram_0_i_50
       (.I0(memory_mux_sel_a_pos_3_i_12_n_0),
        .I1(memory_reg_bram_0_i_100_n_0),
        .I2(memory_mux_sel_a_pos_3_i_10_n_0),
        .I3(memory_reg_bram_0_i_96_n_0),
        .I4(memory_reg_bram_0_i_101_n_0),
        .O(memory_reg_bram_0_i_50_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    memory_reg_bram_0_i_51
       (.I0(memory_reg_bram_0_i_102_n_0),
        .I1(memory_mux_sel_a_pos_3_i_23_n_0),
        .I2(memory_reg_bram_0_i_103_n_0),
        .I3(memory_reg_bram_0_i_104_n_0),
        .I4(\OUT_reg[0] ),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_reg_bram_0_i_51_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_52
       (.I0(memory_reg_bram_0_i_105_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_98_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_106_n_0),
        .I5(\OUT_reg[11] [9]),
        .O(memory_reg_bram_0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_53
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_107_n_0),
        .I2(memory_reg_bram_0_i_100_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_108_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_reg_bram_0_i_54
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_reg_bram_0_i_109_n_0),
        .I4(memory_reg_bram_0_i_104_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[8]),
        .O(memory_reg_bram_0_i_54_n_0));
  LUT6 #(
    .INIT(64'hFF00C3C3AAAAC3C3)) 
    memory_reg_bram_0_i_55
       (.I0(memory_reg_bram_0_i_110_n_0),
        .I1(\OUT_reg[11] [8]),
        .I2(memory_reg_bram_0_i_111_n_0),
        .I3(memory_reg_bram_0_i_105_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_55_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_56
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [8]),
        .I2(rs1[8]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_56_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    memory_reg_bram_0_i_57
       (.I0(memory_mux_sel_a_pos_3_i_12_n_0),
        .I1(memory_reg_bram_0_i_112_n_0),
        .I2(memory_mux_sel_a_pos_3_i_10_n_0),
        .I3(memory_reg_bram_0_i_108_n_0),
        .I4(memory_reg_bram_0_i_113_n_0),
        .O(memory_reg_bram_0_i_57_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    memory_reg_bram_0_i_58
       (.I0(memory_reg_bram_0_i_114_n_0),
        .I1(memory_mux_sel_a_pos_3_i_23_n_0),
        .I2(memory_reg_bram_0_i_115_n_0),
        .I3(memory_reg_bram_0_i_116_n_0),
        .I4(\OUT_reg[0] ),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_reg_bram_0_i_58_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_59
       (.I0(memory_reg_bram_0_i_117_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_110_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_118_n_0),
        .I5(\OUT_reg[11] [7]),
        .O(memory_reg_bram_0_i_59_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_reg_bram_0_i_6
       (.I0(memory_reg_bram_0_i_53_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_54_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_reg_bram_0_i_55_n_0),
        .I5(memory_reg_bram_0_i_56_n_0),
        .O(IOBUS_addr[8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_60
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_119_n_0),
        .I2(memory_reg_bram_0_i_112_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_120_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_reg_bram_0_i_61
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_reg_bram_0_i_121_n_0),
        .I4(memory_reg_bram_0_i_116_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[6]),
        .O(memory_reg_bram_0_i_61_n_0));
  LUT6 #(
    .INIT(64'hFF00C3C3AAAAC3C3)) 
    memory_reg_bram_0_i_62
       (.I0(memory_reg_bram_0_i_122_n_0),
        .I1(\OUT_reg[11] [6]),
        .I2(memory_reg_bram_0_i_123_n_0),
        .I3(memory_reg_bram_0_i_117_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_62_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_63
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [6]),
        .I2(rs1[6]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_64
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_124_n_0),
        .I2(memory_reg_bram_0_i_120_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_125_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    memory_reg_bram_0_i_65
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_reg_bram_0_i_126_n_0),
        .I4(memory_reg_bram_0_i_121_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[5]),
        .O(memory_reg_bram_0_i_65_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_66
       (.I0(memory_reg_bram_0_i_127_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_122_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_128_n_0),
        .I5(\OUT_reg[11] [5]),
        .O(memory_reg_bram_0_i_66_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_67
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [5]),
        .I2(rs1[5]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_68
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_129_n_0),
        .I2(memory_reg_bram_0_i_125_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_130_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAA8A0A8AA0800080)) 
    memory_reg_bram_0_i_69
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(memory_reg_bram_0_i_126_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(\OUT_reg[11] [0]),
        .I4(memory_reg_bram_0_i_131_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[4]),
        .O(memory_reg_bram_0_i_69_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    memory_reg_bram_0_i_7
       (.I0(memory_reg_bram_0_i_57_n_0),
        .I1(memory_mux_sel_a_pos_2_i_3_n_0),
        .I2(alu_fun[3]),
        .I3(memory_reg_bram_0_i_58_n_0),
        .I4(memory_reg_bram_0_i_59_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[7]));
  LUT6 #(
    .INIT(64'hFF00C3C3AAAAC3C3)) 
    memory_reg_bram_0_i_70
       (.I0(memory_reg_bram_0_i_132_n_0),
        .I1(\OUT_reg[11] [4]),
        .I2(memory_reg_bram_0_i_133_n_0),
        .I3(memory_reg_bram_0_i_127_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_70_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_71
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [4]),
        .I2(rs1[4]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_71_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    memory_reg_bram_0_i_72
       (.I0(memory_mux_sel_a_pos_3_i_12_n_0),
        .I1(memory_reg_bram_0_i_134_n_0),
        .I2(memory_mux_sel_a_pos_3_i_10_n_0),
        .I3(memory_reg_bram_0_i_130_n_0),
        .I4(memory_reg_bram_0_i_135_n_0),
        .O(memory_reg_bram_0_i_72_n_0));
  LUT6 #(
    .INIT(64'hFFFF710071007100)) 
    memory_reg_bram_0_i_73
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(memory_reg_bram_0_i_136_n_0),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_mux_sel_a_pos_3_i_23_n_0),
        .I4(memory_reg_bram_0_i_137_n_0),
        .I5(memory_mux_sel_a_pos_3_i_15_n_0),
        .O(memory_reg_bram_0_i_73_n_0));
  LUT6 #(
    .INIT(64'hE2FFE200E200E2FF)) 
    memory_reg_bram_0_i_74
       (.I0(memory_reg_bram_0_i_138_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_bram_0_i_132_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_reg_bram_0_i_136_n_0),
        .I5(\OUT_reg[11] [3]),
        .O(memory_reg_bram_0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    memory_reg_bram_0_i_75
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(memory_reg_bram_0_i_139_n_0),
        .I2(memory_reg_bram_0_i_134_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_reg_bram_0_i_140_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(memory_reg_bram_0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAA8A0A8AA0800080)) 
    memory_reg_bram_0_i_76
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(memory_reg_bram_0_i_141_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(\OUT_reg[11] [0]),
        .I4(memory_reg_bram_0_i_142_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[2]),
        .O(memory_reg_bram_0_i_76_n_0));
  LUT5 #(
    .INIT(32'h008088A8)) 
    memory_reg_bram_0_i_77
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(rs1[2]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_77_n_0));
  LUT6 #(
    .INIT(64'hFF00C3C3AAAAC3C3)) 
    memory_reg_bram_0_i_78
       (.I0(memory_reg_bram_0_i_143_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_reg_bram_0_i_144_n_0),
        .I3(memory_reg_bram_0_i_138_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(memory_reg_bram_0_i_78_n_0));
  LUT5 #(
    .INIT(32'hBBBABABA)) 
    memory_reg_bram_0_i_79
       (.I0(memory_reg_bram_0_i_145_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_146_n_0),
        .I3(memory_reg_bram_0_i_147_n_0),
        .I4(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[1]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_reg_bram_0_i_8
       (.I0(memory_reg_bram_0_i_60_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_61_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_reg_bram_0_i_62_n_0),
        .I5(memory_reg_bram_0_i_63_n_0),
        .O(IOBUS_addr[6]));
  LUT6 #(
    .INIT(64'h0000F0F0FF00EEEE)) 
    memory_reg_bram_0_i_80
       (.I0(memory_reg_bram_0_i_148_n_0),
        .I1(memory_reg_bram_0_i_149_n_0),
        .I2(memory_reg_bram_0_i_150_n_0),
        .I3(memory_reg_bram_0_i_151_n_0),
        .I4(alu_fun[1]),
        .I5(alu_fun[3]),
        .O(memory_mux_sel_a_pos_3_i_3_0));
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_bram_0_i_81
       (.I0(memory_mux_sel_a_pos_3_i_3_0),
        .I1(IOBUS_addr[1]),
        .O(memory_reg_bram_0_i_81_n_0));
  MUXF8 memory_reg_bram_0_i_82
       (.I0(memory_reg_bram_0_i_152_n_0),
        .I1(memory_reg_bram_0_i_153_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[6]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    memory_reg_bram_0_i_83
       (.I0(memory_reg_bram_0_i_154_n_0),
        .I1(memory_reg_bram_0_i_155_n_0),
        .I2(memory_reg_bram_0_i_156_n_0),
        .I3(memory_reg_bram_0_i_157_n_0),
        .I4(memory_reg_bram_0_i_158_n_0),
        .I5(memory_reg_bram_0_i_159_n_0),
        .O(p_0_in_0[24]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    memory_reg_bram_0_i_84
       (.I0(memory_reg_bram_0_i_160_n_0),
        .I1(memory_reg_bram_0_i_155_n_0),
        .I2(memory_reg_bram_0_i_156_n_0),
        .I3(memory_reg_bram_0_i_157_n_0),
        .I4(memory_reg_bram_0_i_158_n_0),
        .I5(memory_reg_bram_0_i_159_n_0),
        .O(p_0_in_0[16]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    memory_reg_bram_0_i_85
       (.I0(memory_reg_bram_0_i_161_n_0),
        .I1(memory_reg_bram_0_i_155_n_0),
        .I2(memory_reg_bram_0_i_156_n_0),
        .I3(memory_reg_bram_0_i_157_n_0),
        .I4(memory_reg_bram_0_i_158_n_0),
        .I5(memory_reg_bram_0_i_159_n_0),
        .O(p_0_in_0[8]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    memory_reg_bram_0_i_86
       (.I0(memory_reg_bram_0_i_81_n_0),
        .I1(memory_reg_bram_0_i_155_n_0),
        .I2(memory_reg_bram_0_i_156_n_0),
        .I3(memory_reg_bram_0_i_157_n_0),
        .I4(memory_reg_bram_0_i_158_n_0),
        .I5(memory_reg_bram_0_i_159_n_0),
        .O(p_0_in_0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_87
       (.I0(memory_mux_sel_a_pos_3_i_26_n_0),
        .I1(memory_mux_sel_a_pos_3_i_27_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_25_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_162_n_0),
        .O(memory_reg_bram_0_i_87_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_88
       (.I0(alu_src_a),
        .I1(rs1[11]),
        .I2(data1[11]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_88_n_0));
  LUT6 #(
    .INIT(64'h7777777777717171)) 
    memory_reg_bram_0_i_89
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(memory_reg_bram_0_i_94_n_0),
        .I2(RESULT0_carry__1_i_9_n_0),
        .I3(RS2[3]),
        .I4(RESULT0_carry__0_i_9_n_0),
        .I5(memory_reg_bram_0_i_44_0),
        .O(memory_reg_bram_0_i_89_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    memory_reg_bram_0_i_9
       (.I0(memory_reg_bram_0_i_64_n_0),
        .I1(alu_fun[3]),
        .I2(memory_reg_bram_0_i_65_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(memory_reg_bram_0_i_66_n_0),
        .I5(memory_reg_bram_0_i_67_n_0),
        .O(IOBUS_addr[5]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    memory_reg_bram_0_i_90
       (.I0(\OUT_reg[0]_0 ),
        .I1(memory_reg_bram_0_i_164_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_35_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[11]),
        .O(memory_reg_bram_0_i_90_n_0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    memory_reg_bram_0_i_91
       (.I0(memory_mux_sel_a_pos_3_i_33_n_0),
        .I1(memory_reg_bram_0_i_133_n_0),
        .I2(\OUT_reg[11] [2]),
        .I3(memory_mux_sel_a_pos_3_i_37_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_mux_sel_a_pos_3_i_36_n_0),
        .O(memory_reg_bram_0_i_91_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    memory_reg_bram_0_i_92
       (.I0(memory_reg_mux_sel_b_pos_0_1),
        .I1(\OUT_reg[11] [0]),
        .O(\OUT_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_93
       (.I0(memory_mux_sel_a_pos_3_i_45_n_0),
        .I1(memory_mux_sel_a_pos_3_i_46_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_44_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_165_n_0),
        .O(memory_reg_bram_0_i_93_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_94
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[11]),
        .O(memory_reg_bram_0_i_94_n_0));
  LUT5 #(
    .INIT(32'h004400F0)) 
    memory_reg_bram_0_i_95
       (.I0(alu_src_a),
        .I1(rs1[10]),
        .I2(data1[10]),
        .I3(alu_fun[2]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .O(memory_reg_bram_0_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_96
       (.I0(memory_mux_sel_a_pos_3_i_30_n_0),
        .I1(memory_mux_sel_a_pos_3_i_31_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_29_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_166_n_0),
        .O(memory_reg_bram_0_i_96_n_0));
  LUT6 #(
    .INIT(64'h4070FFFF40700000)) 
    memory_reg_bram_0_i_97
       (.I0(memory_reg_bram_0_i_136_n_0),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_mux_sel_a_pos_3_i_33_n_0),
        .I3(memory_reg_bram_0_i_118_n_0),
        .I4(\OUT_reg[11] [1]),
        .I5(memory_reg_bram_0_i_164_n_0),
        .O(memory_reg_bram_0_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    memory_reg_bram_0_i_98
       (.I0(memory_mux_sel_a_pos_3_i_41_n_0),
        .I1(memory_mux_sel_a_pos_3_i_42_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_40_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_reg_bram_0_i_167_n_0),
        .O(memory_reg_bram_0_i_98_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_bram_0_i_99
       (.I0(memory_reg_mux_sel_b_pos_0_2),
        .I1(ir[2]),
        .I2(ir[4]),
        .I3(rs1[10]),
        .O(memory_reg_bram_0_i_99_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4020DF3300E00113800000B71F4080E7FFFFF097A3DF126300400193FF000EB7),
    .INIT_01(256'h01F0011300108093800000B71D4080E7FFFFF097A1DF126300500193FFFE0EB7),
    .INIT_02(256'hFFF08093800000B71B0080E7FFFFF0979FDF106300600193FFF00E934020DF33),
    .INIT_03(256'h188080E7FFFFF0979BDF1C6300700193FFFE8E9380000EB74020DF3300000113),
    .INIT_04(256'h99DF186300800193FFFE8E9340000EB74020DF3300100113FFF08093800000B7),
    .INIT_05(256'hFFFE8E9301000EB74020DF3300700113FFF08093800000B7160080E7FFFFF097),
    .INIT_06(256'h4020DF3300E00113FFF08093800000B7138080E7FFFFF09797DF146300900193),
    .INIT_07(256'hFFF08093800000B7110080E7FFFFF09795DF106300A00193FFFE8E9300020EB7),
    .INIT_08(256'h818180B70EC080E7FFFFF09791DF1E6300B0019300000E934020DF3301F00113),
    .INIT_09(256'hFFFFF0978FDF1A6300C00193181E8E9381818EB74020DF330000011318108093),
    .INIT_0A(256'h00D001930C0E8E93C0C0CEB74020DF330010011318108093818180B70C4080E7),
    .INIT_0B(256'hFF030EB74020DF330070011318108093818180B709C080E7FFFFF0978DDF1663),
    .INIT_0C(256'h00E0011318108093818180B7074080E7FFFFF0978BDF126300E00193303E8E93),
    .INIT_0D(256'h818180B704C080E7FFFFF09787DF1E6300F00193606E8E93FFFE0EB74020DF33),
    .INIT_0E(256'h028080E7FFFFF09785DF1C6301000193FFF00E934020DF3301F0011318108093),
    .INIT_0F(256'h83DF186301100193181E8E9381818EB74020DF33FC00011318108093818180B7),
    .INIT_10(256'h0C0E8E93C0C0CEB74020DF33FC10011318108093818180B7000080E7FFFFF097),
    .INIT_11(256'h4020DF33FC70011318108093818180B7FD8080E7FFFFF09781DF146301200193),
    .INIT_12(256'h818180B7FAC080E7FFFFF097FDDFE06F01DF046301300193303E8E93FF030EB7),
    .INIT_13(256'hFB1FE06F01DF046301400193606E8E93FFFE0EB74020DF33FCE0011318108093),
    .INIT_14(256'h01500193FFF00E934020DF33FFF0011318108093818180B7F80080E7FFFFF097),
    .INIT_15(256'h0000009300A6202300000513000F8067F58080E7FFFFF097F89FE06F01DF0463),
    .INIT_16(256'hF28080E7FFFFF097F59FE06F01DF04630020019300000E930020AF3300000113),
    .INIT_17(256'hFFFFF097F35FE06F01DF04630030019300000E930020AF330010011300100093),
    .INIT_18(256'hF11FE06F01DF04630040019300100E930020AF330070011300300093F04080E7),
    .INIT_19(256'h01DF04630050019300000E930020AF330030011300700093EE0080E7FFFFF097),
    .INIT_1A(256'h0060019300000E930020AF33FFFF813700000093EBC080E7FFFFF097EEDFE06F),
    .INIT_1B(256'h00100E930020AF3300000113800000B7E98080E7FFFFF097EC9FE06F01DF0463),
    .INIT_1C(256'h0020AF33FFFF8137800000B7E74080E7FFFFF097EA5FE06F01DF046300700193),
    .INIT_1D(256'h0000813700000093E50080E7FFFFF097E81FE06F01DF04630080019300100E93),
    .INIT_1E(256'hE28080E7FFFFF097E59FE06F01DF04630090019300100E930020AF33FFF10113),
    .INIT_1F(256'hE31FE06F01DF046300A0019300000E930020AF3300000113FFF08093800000B7),
    .INIT_20(256'h00000E930020AF33FFF1011300008137FFF08093800000B7E00080E7FFFFF097),
    .INIT_21(256'hFFF1011300008137800000B7DD4080E7FFFFF097E05FE06F01DF046300B00193),
    .INIT_22(256'h800000B7DAC080E7FFFFF097DDDFE06F01DF046300C0019300100E930020AF33),
    .INIT_23(256'hFFFFF097DB5FE06F01DF046300D0019300000E930020AF33FFFF8137FFF08093),
    .INIT_24(256'hD91FE06F01DF046300E0019300000E930020AF33FFF0011300000093D84080E7),
    .INIT_25(256'h01DF046300F0019300100E930020AF3300100113FFF00093D60080E7FFFFF097),
    .INIT_26(256'h0100019300000E930020AF33FFF00113FFF00093D3C080E7FFFFF097D6DFE06F),
    .INIT_27(256'h00000E930020A0B300D0011300E00093D18080E7FFFFF097D49FE06F01DF0463),
    .INIT_28(256'h00A6202300000513000F8067CF4080E7FFFFF097D25FE06F01D0846301100193),
    .INIT_29(256'hFFFFF097CF5FE06F01DF04630020019300000E930020BF330000011300000093),
    .INIT_2A(256'hCD1FE06F01DF04630030019300000E930020BF330010011300100093CC4080E7),
    .INIT_2B(256'h01DF04630040019300100E930020BF330070011300300093CA0080E7FFFFF097),
    .INIT_2C(256'h0050019300000E930020BF330030011300700093C7C080E7FFFFF097CADFE06F),
    .INIT_2D(256'h00100E930020BF33FFFF813700000093C58080E7FFFFF097C89FE06F01DF0463),
    .INIT_2E(256'h0020BF3300000113800000B7C34080E7FFFFF097C65FE06F01DF046300600193),
    .INIT_2F(256'hFFFF8137800000B7C10080E7FFFFF097C41FE06F01DF04630070019300000E93),
    .INIT_30(256'h00000093BEC080E7FFFFF097C1DFE06F01DF04630080019300100E930020BF33),
    .INIT_31(256'hFFFFF097BF5FE06F01DF04630090019300100E930020BF33FFF1011300008137),
    .INIT_32(256'h01DF046300A0019300000E930020BF3300000113FFF08093800000B7BC4080E7),
    .INIT_33(256'h0020BF33FFF1011300008137FFF08093800000B7B9C080E7FFFFF097BCDFE06F),
    .INIT_34(256'h00008137800000B7B70080E7FFFFF097BA1FE06F01DF046300B0019300000E93),
    .INIT_35(256'hB48080E7FFFFF097B79FE06F01DF046300C0019300000E930020BF33FFF10113),
    .INIT_36(256'hB51FE06F01DF046300D0019300100E930020BF33FFFF8137FFF08093800000B7),
    .INIT_37(256'h01DF046300E0019300100E930020BF33FFF0011300000093B20080E7FFFFF097),
    .INIT_38(256'h00F0019300000E930020BF3300100113FFF00093AFC080E7FFFFF097B2DFE06F),
    .INIT_39(256'h00000E930020BF33FFF00113FFF00093AD8080E7FFFFF097B09FE06F01DF0463),
    .INIT_3A(256'h0020B0B300D0011300E00093AB4080E7FFFFF097AE5FE06F01DF046301000193),
    .INIT_3B(256'h00000513000F8067A90080E7FFFFF097AC1FE06F01D084630110019300000E93),
    .INIT_3C(256'hFFFFF097A95FE06F01DF04630020019300000E9300008F130000009300A62023),
    .INIT_3D(256'hFFFFF097A75FE06F01DF04630030019300200E9300108F1300100093A64080E7),
    .INIT_3E(256'hFFFFF097A55FE06F01DF04630040019300A00E9300708F1300300093A44080E7),
    .INIT_3F(256'hFFFFF097A35FE06F01DF04630050019380000E9380008F1300000093A24080E7),
    .INIT_40(256'hFFFFF097A15FE06F01DF04630060019380000EB700008F13800000B7A04080E7),
    .INIT_41(256'h9F1FE06F01DF046300700193800E8E9380000EB780008F13800000B79E4080E7),
    .INIT_42(256'h9D1FE06F01DF0463008001937FF00E937FF08F13000000939C0080E7FFFFF097),
    .INIT_43(256'h00900193FFFE8E9380000EB700008F13FFF08093800000B79A0080E7FFFFF097),
    .INIT_44(256'h80000EB77FF08F13FFF08093800000B7978080E7FFFFF0979A9FE06F01DF0463),
    .INIT_45(256'h7FF08F13800000B7950080E7FFFFF097981FE06F01DF046300A001937FEE8E93),
    .INIT_46(256'h800000B792C080E7FFFFF09795DFE06F01DF046300B001937FFE8E9380000EB7),
    .INIT_47(256'hFFFFF097935FE06F01DF046300C001937FFE8E937FFFFEB780008F13FFF08093),
    .INIT_48(256'hFFFFF097915FE06F01DF046300D00193FFF00E93FFF08F1300000093904080E7),
    .INIT_49(256'hFFFFF0978F5FE06F01DF046300E0019300000E9300108F13FFF000938E4080E7),
    .INIT_4A(256'hFFFFF0978D5FE06F01DF046300F00193FFE00E93FFF08F13FFF000938C4080E7),
    .INIT_4B(256'h8B1FE06F01DF04630100019380000EB700108F13FFF08093800000B78A4080E7),
    .INIT_4C(256'h891FE06F01D084630110019301800E9300B0809300D00093880080E7FFFFF097),
    .INIT_4D(256'hF0F0FF13F0008093FF0100B700A6202300000513000F8067860080E7FFFFF097),
    .INIT_4E(256'h0FF010B782C080E7FFFFF09785DFE06F01DF046300200193F00E8E93FF010EB7),
    .INIT_4F(256'h808080E7FFFFF097839FE06F01DF0463003001930F000E930F00FF13FF008093),
    .INIT_50(256'hFFFFE097815FE06F01DF04630040019300F00E9370F0FF130FF0809300FF00B7),
    .INIT_51(256'hFF0FE06F01DF04630050019300000E930F00FF1300F08093F00FF0B77E4080E7),
    .INIT_52(256'h01D084630060019300000E930F00F093F0008093FF0100B77C0080E7FFFFE097),
    .INIT_53(256'hF0008093FF0100B700A6202300000513000F806779C080E7FFFFE097FCCFE06F),
    .INIT_54(256'h0FF010B776C080E7FFFFE097F9CFE06F01DF046300200193F0F00E93F0F0EF13),
    .INIT_55(256'hFFFFE097F74FE06F01DF046300300193FF0E8E930FF01EB70F00EF13FF008093),
    .INIT_56(256'h01DF0463004001937FFE8E9300FF0EB770F0EF130FF0809300FF00B7744080E7),
    .INIT_57(256'h0FFE8E93F00FFEB70F00EF1300F08093F00FF0B771C080E7FFFFE097F4CFE06F),
    .INIT_58(256'h0F00E093F0008093FF0100B76F4080E7FFFFE097F24FE06F01DF046300500193),
    .INIT_59(256'h000F80676CC080E7FFFFE097EFCFE06F01D0846300600193FF0E8E93FF010EB7),
    .INIT_5A(256'h0020019300FE8E93FF00FEB7F0F0CF13F000809300FF10B700A6202300000513),
    .INIT_5B(256'h0FF01EB70F00CF13FF0080930FF010B7698080E7FFFFE097EC8FE06F01DF0463),
    .INIT_5C(256'h8FF0809300FF10B7670080E7FFFFE097EA0FE06F01DF046300300193F00E8E93),
    .INIT_5D(256'h648080E7FFFFE097E78FE06F01DF046300400193FF0E8E9300FF1EB770F0CF13),
    .INIT_5E(256'hE50FE06F01DF0463005001930FFE8E93F00FFEB70F00CF1300F08093F00FF0B7),
    .INIT_5F(256'h0060019300FE8E93FF00FEB770F0C09370008093FF00F0B7620080E7FFFFE097),
    .INIT_60(256'h0010009300A6202300000513000F80675F8080E7FFFFE097E28FE06F01D08463),
    .INIT_61(256'h001000935CC080E7FFFFE097DFCFE06F01DF04630020019300100E9300009F13),
    .INIT_62(256'h001000935AC080E7FFFFE097DDCFE06F01DF04630030019300200E9300109F13),
    .INIT_63(256'h0010009358C080E7FFFFE097DBCFE06F01DF04630040019308000E9300709F13),
    .INIT_64(256'h0010009356C080E7FFFFE097D9CFE06F01DF04630050019300004EB700E09F13),
    .INIT_65(256'hFFF0009354C080E7FFFFE097D7CFE06F01DF04630060019380000EB701F09F13),
    .INIT_66(256'hFFF0009352C080E7FFFFE097D5CFE06F01DF046300700193FFF00E9300009F13),
    .INIT_67(256'hFFF0009350C080E7FFFFE097D3CFE06F01DF046300800193FFE00E9300109F13),
    .INIT_68(256'hFFF000934EC080E7FFFFE097D1CFE06F01DF046300900193F8000E9300709F13),
    .INIT_69(256'hFFF000934CC080E7FFFFE097CFCFE06F01DF046300A00193FFFFCEB700E09F13),
    .INIT_6A(256'h212120B74AC080E7FFFFE097CDCFE06F01DF046300B0019380000EB701F09F13),
    .INIT_6B(256'hFFFFE097CB4FE06F01DF046300C00193121E8E9321212EB700009F1312108093),
    .INIT_6C(256'h01DF046300D00193242E8E9342424EB700109F1312108093212120B7484080E7),
    .INIT_6D(256'h080E8E9390909EB700709F1312108093212120B745C080E7FFFFE097C8CFE06F),
    .INIT_6E(256'h00E09F1312108093212120B7434080E7FFFFE097C64FE06F01DF046300E00193),
    .INIT_6F(256'h12108093212120B7410080E7FFFFE097C40FE06F01DF046300F0019348484EB7),
    .INIT_70(256'h000F80673EC080E7FFFFE097C1CFE06F01DF04630100019380000EB701F09F13),
    .INIT_71(256'hBF0FE06F01DF04630020019380000EB70000DF13800000B700A6202300000513),
    .INIT_72(256'hBD0FE06F01DF04630030019340000EB70010DF13800000B73C0080E7FFFFE097),
    .INIT_73(256'hBB0FE06F01DF04630040019301000EB70070DF13800000B73A0080E7FFFFE097),
    .INIT_74(256'hB90FE06F01DF04630050019300020EB700E0DF13800000B7380080E7FFFFE097),
    .INIT_75(256'h01DF04630060019300100E9301F0DF1300108093800000B7360080E7FFFFE097),
    .INIT_76(256'h01DF046300700193FFF00E930000DF13FFF0009333C080E7FFFFE097B6CFE06F),
    .INIT_77(256'h00800193FFFE8E9380000EB70010DF13FFF0009331C080E7FFFFE097B4CFE06F),
    .INIT_78(256'hFFFE8E9302000EB70070DF13FFF000932F8080E7FFFFE097B28FE06F01DF0463),
    .INIT_79(256'h00040EB700E0DF13FFF000932D4080E7FFFFE097B04FE06F01DF046300900193),
    .INIT_7A(256'h01F0DF13FFF000932B0080E7FFFFE097AE0FE06F01DF046300A00193FFFE8E93),
    .INIT_7B(256'h12108093212120B7290080E7FFFFE097AC0FE06F01DF046300B0019300100E93),
    .INIT_7C(256'h268080E7FFFFE097A98FE06F01DF046300C00193121E8E9321212EB70000DF13),
    .INIT_7D(256'hA70FE06F01DF046300D00193090E8E9310909EB70010DF1312108093212120B7),
    .INIT_7E(256'h00E00193242E8E9300424EB70070DF1312108093212120B7240080E7FFFFE097),
    .INIT_7F(256'h00008EB700E0DF1312108093212120B7218080E7FFFFE097A48FE06F01DF0463),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_1
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_1_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_1_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_1_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_1_n_4,memory_reg_bram_1_n_5,memory_reg_bram_1_n_6,memory_reg_bram_1_n_7,memory_reg_bram_1_n_8,memory_reg_bram_1_n_9,memory_reg_bram_1_n_10,memory_reg_bram_1_n_11,memory_reg_bram_1_n_12,memory_reg_bram_1_n_13,memory_reg_bram_1_n_14,memory_reg_bram_1_n_15,memory_reg_bram_1_n_16,memory_reg_bram_1_n_17,memory_reg_bram_1_n_18,memory_reg_bram_1_n_19,memory_reg_bram_1_n_20,memory_reg_bram_1_n_21,memory_reg_bram_1_n_22,memory_reg_bram_1_n_23,memory_reg_bram_1_n_24,memory_reg_bram_1_n_25,memory_reg_bram_1_n_26,memory_reg_bram_1_n_27,memory_reg_bram_1_n_28,memory_reg_bram_1_n_29,memory_reg_bram_1_n_30,memory_reg_bram_1_n_31,memory_reg_bram_1_n_32,memory_reg_bram_1_n_33,memory_reg_bram_1_n_34,memory_reg_bram_1_n_35}),
        .DOBDO({memory_reg_bram_1_n_36,memory_reg_bram_1_n_37,memory_reg_bram_1_n_38,memory_reg_bram_1_n_39,memory_reg_bram_1_n_40,memory_reg_bram_1_n_41,memory_reg_bram_1_n_42,memory_reg_bram_1_n_43,memory_reg_bram_1_n_44,memory_reg_bram_1_n_45,memory_reg_bram_1_n_46,memory_reg_bram_1_n_47,memory_reg_bram_1_n_48,memory_reg_bram_1_n_49,memory_reg_bram_1_n_50,memory_reg_bram_1_n_51,memory_reg_bram_1_n_52,memory_reg_bram_1_n_53,memory_reg_bram_1_n_54,memory_reg_bram_1_n_55,memory_reg_bram_1_n_56,memory_reg_bram_1_n_57,memory_reg_bram_1_n_58,memory_reg_bram_1_n_59,memory_reg_bram_1_n_60,memory_reg_bram_1_n_61,memory_reg_bram_1_n_62,memory_reg_bram_1_n_63,memory_reg_bram_1_n_64,memory_reg_bram_1_n_65,memory_reg_bram_1_n_66,memory_reg_bram_1_n_67}),
        .DOPADOP(NLW_memory_reg_bram_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_1_i_1_n_0),
        .ENBWREN(memory_reg_bram_1_0),
        .INJECTDBITERR(NLW_memory_reg_bram_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_1_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_1_i_3_n_0,memory_reg_bram_1_i_4_n_0,memory_reg_bram_1_i_5_n_0,memory_reg_bram_1_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "10240" *) 
  (* ram_addr_end = "11263" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_10
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_10_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_10_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_10_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_10_n_4,memory_reg_bram_10_n_5,memory_reg_bram_10_n_6,memory_reg_bram_10_n_7,memory_reg_bram_10_n_8,memory_reg_bram_10_n_9,memory_reg_bram_10_n_10,memory_reg_bram_10_n_11,memory_reg_bram_10_n_12,memory_reg_bram_10_n_13,memory_reg_bram_10_n_14,memory_reg_bram_10_n_15,memory_reg_bram_10_n_16,memory_reg_bram_10_n_17,memory_reg_bram_10_n_18,memory_reg_bram_10_n_19,memory_reg_bram_10_n_20,memory_reg_bram_10_n_21,memory_reg_bram_10_n_22,memory_reg_bram_10_n_23,memory_reg_bram_10_n_24,memory_reg_bram_10_n_25,memory_reg_bram_10_n_26,memory_reg_bram_10_n_27,memory_reg_bram_10_n_28,memory_reg_bram_10_n_29,memory_reg_bram_10_n_30,memory_reg_bram_10_n_31,memory_reg_bram_10_n_32,memory_reg_bram_10_n_33,memory_reg_bram_10_n_34,memory_reg_bram_10_n_35}),
        .DOBDO({memory_reg_bram_10_n_36,memory_reg_bram_10_n_37,memory_reg_bram_10_n_38,memory_reg_bram_10_n_39,memory_reg_bram_10_n_40,memory_reg_bram_10_n_41,memory_reg_bram_10_n_42,memory_reg_bram_10_n_43,memory_reg_bram_10_n_44,memory_reg_bram_10_n_45,memory_reg_bram_10_n_46,memory_reg_bram_10_n_47,memory_reg_bram_10_n_48,memory_reg_bram_10_n_49,memory_reg_bram_10_n_50,memory_reg_bram_10_n_51,memory_reg_bram_10_n_52,memory_reg_bram_10_n_53,memory_reg_bram_10_n_54,memory_reg_bram_10_n_55,memory_reg_bram_10_n_56,memory_reg_bram_10_n_57,memory_reg_bram_10_n_58,memory_reg_bram_10_n_59,memory_reg_bram_10_n_60,memory_reg_bram_10_n_61,memory_reg_bram_10_n_62,memory_reg_bram_10_n_63,memory_reg_bram_10_n_64,memory_reg_bram_10_n_65,memory_reg_bram_10_n_66,memory_reg_bram_10_n_67}),
        .DOPADOP(NLW_memory_reg_bram_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_10_i_1_n_0),
        .ENBWREN(memory_reg_bram_10_0),
        .INJECTDBITERR(NLW_memory_reg_bram_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_10_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_10_i_3_n_0,memory_reg_bram_10_i_4_n_0,memory_reg_bram_10_i_5_n_0,memory_reg_bram_10_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0008)) 
    memory_reg_bram_10_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_10_i_1_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_10_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_10_i_3_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_10_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_10_i_4_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_10_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_10_i_5_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_10_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_10_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "11264" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_11
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_11_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_11_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_11_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_11_n_4,memory_reg_bram_11_n_5,memory_reg_bram_11_n_6,memory_reg_bram_11_n_7,memory_reg_bram_11_n_8,memory_reg_bram_11_n_9,memory_reg_bram_11_n_10,memory_reg_bram_11_n_11,memory_reg_bram_11_n_12,memory_reg_bram_11_n_13,memory_reg_bram_11_n_14,memory_reg_bram_11_n_15,memory_reg_bram_11_n_16,memory_reg_bram_11_n_17,memory_reg_bram_11_n_18,memory_reg_bram_11_n_19,memory_reg_bram_11_n_20,memory_reg_bram_11_n_21,memory_reg_bram_11_n_22,memory_reg_bram_11_n_23,memory_reg_bram_11_n_24,memory_reg_bram_11_n_25,memory_reg_bram_11_n_26,memory_reg_bram_11_n_27,memory_reg_bram_11_n_28,memory_reg_bram_11_n_29,memory_reg_bram_11_n_30,memory_reg_bram_11_n_31,memory_reg_bram_11_n_32,memory_reg_bram_11_n_33,memory_reg_bram_11_n_34,memory_reg_bram_11_n_35}),
        .DOBDO({memory_reg_bram_11_n_36,memory_reg_bram_11_n_37,memory_reg_bram_11_n_38,memory_reg_bram_11_n_39,memory_reg_bram_11_n_40,memory_reg_bram_11_n_41,memory_reg_bram_11_n_42,memory_reg_bram_11_n_43,memory_reg_bram_11_n_44,memory_reg_bram_11_n_45,memory_reg_bram_11_n_46,memory_reg_bram_11_n_47,memory_reg_bram_11_n_48,memory_reg_bram_11_n_49,memory_reg_bram_11_n_50,memory_reg_bram_11_n_51,memory_reg_bram_11_n_52,memory_reg_bram_11_n_53,memory_reg_bram_11_n_54,memory_reg_bram_11_n_55,memory_reg_bram_11_n_56,memory_reg_bram_11_n_57,memory_reg_bram_11_n_58,memory_reg_bram_11_n_59,memory_reg_bram_11_n_60,memory_reg_bram_11_n_61,memory_reg_bram_11_n_62,memory_reg_bram_11_n_63,memory_reg_bram_11_n_64,memory_reg_bram_11_n_65,memory_reg_bram_11_n_66,memory_reg_bram_11_n_67}),
        .DOPADOP(NLW_memory_reg_bram_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_11_i_1_n_0),
        .ENBWREN(memory_reg_bram_11_0),
        .INJECTDBITERR(NLW_memory_reg_bram_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_11_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_11_i_3_n_0,memory_reg_bram_11_i_4_n_0,memory_reg_bram_11_i_5_n_0,memory_reg_bram_11_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0080)) 
    memory_reg_bram_11_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[14]),
        .O(memory_reg_bram_11_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_11_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[14]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_11_i_3_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_11_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[14]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_11_i_4_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_11_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[14]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_11_i_5_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_11_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[14]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_11_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "13311" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_12
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_12_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_12_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_12_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_12_n_4,memory_reg_bram_12_n_5,memory_reg_bram_12_n_6,memory_reg_bram_12_n_7,memory_reg_bram_12_n_8,memory_reg_bram_12_n_9,memory_reg_bram_12_n_10,memory_reg_bram_12_n_11,memory_reg_bram_12_n_12,memory_reg_bram_12_n_13,memory_reg_bram_12_n_14,memory_reg_bram_12_n_15,memory_reg_bram_12_n_16,memory_reg_bram_12_n_17,memory_reg_bram_12_n_18,memory_reg_bram_12_n_19,memory_reg_bram_12_n_20,memory_reg_bram_12_n_21,memory_reg_bram_12_n_22,memory_reg_bram_12_n_23,memory_reg_bram_12_n_24,memory_reg_bram_12_n_25,memory_reg_bram_12_n_26,memory_reg_bram_12_n_27,memory_reg_bram_12_n_28,memory_reg_bram_12_n_29,memory_reg_bram_12_n_30,memory_reg_bram_12_n_31,memory_reg_bram_12_n_32,memory_reg_bram_12_n_33,memory_reg_bram_12_n_34,memory_reg_bram_12_n_35}),
        .DOBDO({memory_reg_bram_12_n_36,memory_reg_bram_12_n_37,memory_reg_bram_12_n_38,memory_reg_bram_12_n_39,memory_reg_bram_12_n_40,memory_reg_bram_12_n_41,memory_reg_bram_12_n_42,memory_reg_bram_12_n_43,memory_reg_bram_12_n_44,memory_reg_bram_12_n_45,memory_reg_bram_12_n_46,memory_reg_bram_12_n_47,memory_reg_bram_12_n_48,memory_reg_bram_12_n_49,memory_reg_bram_12_n_50,memory_reg_bram_12_n_51,memory_reg_bram_12_n_52,memory_reg_bram_12_n_53,memory_reg_bram_12_n_54,memory_reg_bram_12_n_55,memory_reg_bram_12_n_56,memory_reg_bram_12_n_57,memory_reg_bram_12_n_58,memory_reg_bram_12_n_59,memory_reg_bram_12_n_60,memory_reg_bram_12_n_61,memory_reg_bram_12_n_62,memory_reg_bram_12_n_63,memory_reg_bram_12_n_64,memory_reg_bram_12_n_65,memory_reg_bram_12_n_66,memory_reg_bram_12_n_67}),
        .DOPADOP(NLW_memory_reg_bram_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_12_i_1_n_0),
        .ENBWREN(memory_reg_bram_12_0),
        .INJECTDBITERR(NLW_memory_reg_bram_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_12_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_12_i_3_n_0,memory_reg_bram_12_i_4_n_0,memory_reg_bram_12_i_5_n_0,memory_reg_bram_12_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_12_i_1
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(memory_reg_bram_0_i_41_n_0),
        .O(memory_reg_bram_12_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_12_i_3
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(memory_reg_bram_0_i_41_n_0),
        .I3(p_0_in_0[24]),
        .O(memory_reg_bram_12_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_12_i_4
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(memory_reg_bram_0_i_41_n_0),
        .I3(p_0_in_0[16]),
        .O(memory_reg_bram_12_i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_12_i_5
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(memory_reg_bram_0_i_41_n_0),
        .I3(p_0_in_0[8]),
        .O(memory_reg_bram_12_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_12_i_6
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(memory_reg_bram_0_i_41_n_0),
        .I3(p_0_in_0[0]),
        .O(memory_reg_bram_12_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "13312" *) 
  (* ram_addr_end = "14335" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_13
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_13_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_13_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_13_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_13_n_4,memory_reg_bram_13_n_5,memory_reg_bram_13_n_6,memory_reg_bram_13_n_7,memory_reg_bram_13_n_8,memory_reg_bram_13_n_9,memory_reg_bram_13_n_10,memory_reg_bram_13_n_11,memory_reg_bram_13_n_12,memory_reg_bram_13_n_13,memory_reg_bram_13_n_14,memory_reg_bram_13_n_15,memory_reg_bram_13_n_16,memory_reg_bram_13_n_17,memory_reg_bram_13_n_18,memory_reg_bram_13_n_19,memory_reg_bram_13_n_20,memory_reg_bram_13_n_21,memory_reg_bram_13_n_22,memory_reg_bram_13_n_23,memory_reg_bram_13_n_24,memory_reg_bram_13_n_25,memory_reg_bram_13_n_26,memory_reg_bram_13_n_27,memory_reg_bram_13_n_28,memory_reg_bram_13_n_29,memory_reg_bram_13_n_30,memory_reg_bram_13_n_31,memory_reg_bram_13_n_32,memory_reg_bram_13_n_33,memory_reg_bram_13_n_34,memory_reg_bram_13_n_35}),
        .DOBDO({memory_reg_bram_13_n_36,memory_reg_bram_13_n_37,memory_reg_bram_13_n_38,memory_reg_bram_13_n_39,memory_reg_bram_13_n_40,memory_reg_bram_13_n_41,memory_reg_bram_13_n_42,memory_reg_bram_13_n_43,memory_reg_bram_13_n_44,memory_reg_bram_13_n_45,memory_reg_bram_13_n_46,memory_reg_bram_13_n_47,memory_reg_bram_13_n_48,memory_reg_bram_13_n_49,memory_reg_bram_13_n_50,memory_reg_bram_13_n_51,memory_reg_bram_13_n_52,memory_reg_bram_13_n_53,memory_reg_bram_13_n_54,memory_reg_bram_13_n_55,memory_reg_bram_13_n_56,memory_reg_bram_13_n_57,memory_reg_bram_13_n_58,memory_reg_bram_13_n_59,memory_reg_bram_13_n_60,memory_reg_bram_13_n_61,memory_reg_bram_13_n_62,memory_reg_bram_13_n_63,memory_reg_bram_13_n_64,memory_reg_bram_13_n_65,memory_reg_bram_13_n_66,memory_reg_bram_13_n_67}),
        .DOPADOP(NLW_memory_reg_bram_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_13_i_1_n_0),
        .ENBWREN(memory_reg_bram_13_0),
        .INJECTDBITERR(NLW_memory_reg_bram_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_13_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_13_i_3_n_0,memory_reg_bram_13_i_4_n_0,memory_reg_bram_13_i_5_n_0,memory_reg_bram_13_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_13_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .O(memory_reg_bram_13_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_13_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_13_i_3_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_13_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_13_i_4_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_13_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_13_i_5_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_13_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_13_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "14336" *) 
  (* ram_addr_end = "15359" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_14
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_14_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_14_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_14_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_14_n_4,memory_reg_bram_14_n_5,memory_reg_bram_14_n_6,memory_reg_bram_14_n_7,memory_reg_bram_14_n_8,memory_reg_bram_14_n_9,memory_reg_bram_14_n_10,memory_reg_bram_14_n_11,memory_reg_bram_14_n_12,memory_reg_bram_14_n_13,memory_reg_bram_14_n_14,memory_reg_bram_14_n_15,memory_reg_bram_14_n_16,memory_reg_bram_14_n_17,memory_reg_bram_14_n_18,memory_reg_bram_14_n_19,memory_reg_bram_14_n_20,memory_reg_bram_14_n_21,memory_reg_bram_14_n_22,memory_reg_bram_14_n_23,memory_reg_bram_14_n_24,memory_reg_bram_14_n_25,memory_reg_bram_14_n_26,memory_reg_bram_14_n_27,memory_reg_bram_14_n_28,memory_reg_bram_14_n_29,memory_reg_bram_14_n_30,memory_reg_bram_14_n_31,memory_reg_bram_14_n_32,memory_reg_bram_14_n_33,memory_reg_bram_14_n_34,memory_reg_bram_14_n_35}),
        .DOBDO({memory_reg_bram_14_n_36,memory_reg_bram_14_n_37,memory_reg_bram_14_n_38,memory_reg_bram_14_n_39,memory_reg_bram_14_n_40,memory_reg_bram_14_n_41,memory_reg_bram_14_n_42,memory_reg_bram_14_n_43,memory_reg_bram_14_n_44,memory_reg_bram_14_n_45,memory_reg_bram_14_n_46,memory_reg_bram_14_n_47,memory_reg_bram_14_n_48,memory_reg_bram_14_n_49,memory_reg_bram_14_n_50,memory_reg_bram_14_n_51,memory_reg_bram_14_n_52,memory_reg_bram_14_n_53,memory_reg_bram_14_n_54,memory_reg_bram_14_n_55,memory_reg_bram_14_n_56,memory_reg_bram_14_n_57,memory_reg_bram_14_n_58,memory_reg_bram_14_n_59,memory_reg_bram_14_n_60,memory_reg_bram_14_n_61,memory_reg_bram_14_n_62,memory_reg_bram_14_n_63,memory_reg_bram_14_n_64,memory_reg_bram_14_n_65,memory_reg_bram_14_n_66,memory_reg_bram_14_n_67}),
        .DOPADOP(NLW_memory_reg_bram_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_14_i_1_n_0),
        .ENBWREN(memory_reg_bram_14_0),
        .INJECTDBITERR(NLW_memory_reg_bram_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_14_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_14_i_3_n_0,memory_reg_bram_14_i_4_n_0,memory_reg_bram_14_i_5_n_0,memory_reg_bram_14_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_14_i_1
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .O(memory_reg_bram_14_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_14_i_3
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_14_i_3_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_14_i_4
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_14_i_4_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_14_i_5
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_14_i_5_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_bram_14_i_6
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_14_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "15360" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_15
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_15_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_15_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_15_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_15_n_4,memory_reg_bram_15_n_5,memory_reg_bram_15_n_6,memory_reg_bram_15_n_7,memory_reg_bram_15_n_8,memory_reg_bram_15_n_9,memory_reg_bram_15_n_10,memory_reg_bram_15_n_11,memory_reg_bram_15_n_12,memory_reg_bram_15_n_13,memory_reg_bram_15_n_14,memory_reg_bram_15_n_15,memory_reg_bram_15_n_16,memory_reg_bram_15_n_17,memory_reg_bram_15_n_18,memory_reg_bram_15_n_19,memory_reg_bram_15_n_20,memory_reg_bram_15_n_21,memory_reg_bram_15_n_22,memory_reg_bram_15_n_23,memory_reg_bram_15_n_24,memory_reg_bram_15_n_25,memory_reg_bram_15_n_26,memory_reg_bram_15_n_27,memory_reg_bram_15_n_28,memory_reg_bram_15_n_29,memory_reg_bram_15_n_30,memory_reg_bram_15_n_31,memory_reg_bram_15_n_32,memory_reg_bram_15_n_33,memory_reg_bram_15_n_34,memory_reg_bram_15_n_35}),
        .DOBDO({memory_reg_bram_15_n_36,memory_reg_bram_15_n_37,memory_reg_bram_15_n_38,memory_reg_bram_15_n_39,memory_reg_bram_15_n_40,memory_reg_bram_15_n_41,memory_reg_bram_15_n_42,memory_reg_bram_15_n_43,memory_reg_bram_15_n_44,memory_reg_bram_15_n_45,memory_reg_bram_15_n_46,memory_reg_bram_15_n_47,memory_reg_bram_15_n_48,memory_reg_bram_15_n_49,memory_reg_bram_15_n_50,memory_reg_bram_15_n_51,memory_reg_bram_15_n_52,memory_reg_bram_15_n_53,memory_reg_bram_15_n_54,memory_reg_bram_15_n_55,memory_reg_bram_15_n_56,memory_reg_bram_15_n_57,memory_reg_bram_15_n_58,memory_reg_bram_15_n_59,memory_reg_bram_15_n_60,memory_reg_bram_15_n_61,memory_reg_bram_15_n_62,memory_reg_bram_15_n_63,memory_reg_bram_15_n_64,memory_reg_bram_15_n_65,memory_reg_bram_15_n_66,memory_reg_bram_15_n_67}),
        .DOPADOP(NLW_memory_reg_bram_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_15_i_1_n_0),
        .ENBWREN(memory_reg_bram_15_0),
        .INJECTDBITERR(NLW_memory_reg_bram_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_15_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_15_i_3_n_0,memory_reg_bram_15_i_4_n_0,memory_reg_bram_15_i_5_n_0,memory_reg_bram_15_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_15_i_1
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[13]),
        .O(memory_reg_bram_15_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_bram_15_i_3
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[13]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_15_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_bram_15_i_4
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[13]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_15_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_bram_15_i_5
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[13]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_15_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_bram_15_i_6
       (.I0(IOBUS_addr[14]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[13]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_15_i_6_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    memory_reg_bram_1_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .O(memory_reg_bram_1_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_1_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[24]),
        .O(memory_reg_bram_1_i_3_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_1_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[16]),
        .O(memory_reg_bram_1_i_4_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_1_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[8]),
        .O(memory_reg_bram_1_i_5_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_1_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[12]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[0]),
        .O(memory_reg_bram_1_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "3071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h12108093212120B71F0080E7FFFFE097A20FE06F01DF046300F00193484E8E93),
    .INIT_01(256'h800000B71CC080E7FFFFE0979FCFE06F01DF04630100019300000E9301F0DF13),
    .INIT_02(256'h000F80671AC080E7FFFFE0979DCFE06F01D084630110019301000EB70070D093),
    .INIT_03(256'h9B0FE06F01DF04630020019300000E934000DF130000009300A6202300000513),
    .INIT_04(256'h990FE06F01DF046300300193C0000EB74010DF13800000B7180080E7FFFFE097),
    .INIT_05(256'h970FE06F01DF046300400193FF000EB74070DF13800000B7160080E7FFFFE097),
    .INIT_06(256'h950FE06F01DF046300500193FFFE0EB740E0DF13800000B7140080E7FFFFE097),
    .INIT_07(256'h01DF046300600193FFF00E9341F0DF1300108093800000B7120080E7FFFFE097),
    .INIT_08(256'hFFFE8E9380000EB74000DF13FFF08093800000B70FC080E7FFFFE09792CFE06F),
    .INIT_09(256'h4010DF13FFF08093800000B70D4080E7FFFFE097904FE06F01DF046300700193),
    .INIT_0A(256'h800000B70AC080E7FFFFE0978DCFE06F01DF046300800193FFFE8E9340000EB7),
    .INIT_0B(256'hFFFFE0978B4FE06F01DF046300900193FFFE8E9301000EB74070DF13FFF08093),
    .INIT_0C(256'h01DF046300A00193FFFE8E9300020EB740E0DF13FFF08093800000B7084080E7),
    .INIT_0D(256'h00B0019300000E9341F0DF13FFF08093800000B705C080E7FFFFE09788CFE06F),
    .INIT_0E(256'h81818EB74000DF1318108093818180B7038080E7FFFFE097868FE06F01DF0463),
    .INIT_0F(256'h18108093818180B7010080E7FFFFE097840FE06F01DF046300C00193181E8E93),
    .INIT_10(256'hFE8080E7FFFFE097818FE06F01DF046300D001930C0E8E93C0C0CEB74010DF13),
    .INIT_11(256'hFF1FD06F01DF046300E00193303E8E93FF030EB74070DF1318108093818180B7),
    .INIT_12(256'h00F00193606E8E93FFFE0EB740E0DF1318108093818180B7FC0080E7FFFFE097),
    .INIT_13(256'hFFF00E9341F0DF1318108093818180B7F98080E7FFFFE097FC9FD06F01DF0463),
    .INIT_14(256'hFF000EB74070D093800000B7F74080E7FFFFE097FA5FD06F01DF046301000193),
    .INIT_15(256'h00A6202300000513000F8067F54080E7FFFFE097F85FD06F01D0846301100193),
    .INIT_16(256'hF28080E7FFFFE097F59FD06F01DF04630020019300000E930000BF1300000093),
    .INIT_17(256'hF08080E7FFFFE097F39FD06F01DF04630030019300000E930010BF1300100093),
    .INIT_18(256'hEE8080E7FFFFE097F19FD06F01DF04630040019300100E930070BF1300300093),
    .INIT_19(256'hEC8080E7FFFFE097EF9FD06F01DF04630050019300000E930030BF1300700093),
    .INIT_1A(256'hEA8080E7FFFFE097ED9FD06F01DF04630060019300100E938000BF1300000093),
    .INIT_1B(256'hE88080E7FFFFE097EB9FD06F01DF04630070019300000E930000BF13800000B7),
    .INIT_1C(256'hE68080E7FFFFE097E99FD06F01DF04630080019300100E938000BF13800000B7),
    .INIT_1D(256'hE48080E7FFFFE097E79FD06F01DF04630090019300100E937FF0BF1300000093),
    .INIT_1E(256'hFFFFE097E55FD06F01DF046300A0019300000E930000BF13FFF08093800000B7),
    .INIT_1F(256'hE31FD06F01DF046300B0019300000E937FF0BF13FFF08093800000B7E24080E7),
    .INIT_20(256'hE11FD06F01DF046300C0019300000E937FF0BF13800000B7E00080E7FFFFE097),
    .INIT_21(256'h01DF046300D0019300100E938000BF13FFF08093800000B7DE0080E7FFFFE097),
    .INIT_22(256'h01DF046300E0019300100E93FFF0BF1300000093DBC080E7FFFFE097DEDFD06F),
    .INIT_23(256'h01DF046300F0019300000E930010BF13FFF00093D9C080E7FFFFE097DCDFD06F),
    .INIT_24(256'h01DF04630100019300000E93FFF0BF13FFF00093D7C080E7FFFFE097DADFD06F),
    .INIT_25(256'h01D084630110019300100E9300D0B09300B00093D5C080E7FFFFE097D8DFD06F),
    .INIT_26(256'h0000AF130000009300A6202300000513000F8067D3C080E7FFFFE097D6DFD06F),
    .INIT_27(256'h0010AF1300100093D10080E7FFFFE097D41FD06F01DF04630020019300000E93),
    .INIT_28(256'h0070AF1300300093CF0080E7FFFFE097D21FD06F01DF04630030019300000E93),
    .INIT_29(256'h0030AF1300700093CD0080E7FFFFE097D01FD06F01DF04630040019300100E93),
    .INIT_2A(256'h8000AF1300000093CB0080E7FFFFE097CE1FD06F01DF04630050019300000E93),
    .INIT_2B(256'h0000AF13800000B7C90080E7FFFFE097CC1FD06F01DF04630060019300000E93),
    .INIT_2C(256'h8000AF13800000B7C70080E7FFFFE097CA1FD06F01DF04630070019300100E93),
    .INIT_2D(256'h7FF0AF1300000093C50080E7FFFFE097C81FD06F01DF04630080019300100E93),
    .INIT_2E(256'hFFF08093800000B7C30080E7FFFFE097C61FD06F01DF04630090019300100E93),
    .INIT_2F(256'h800000B7C0C080E7FFFFE097C3DFD06F01DF046300A0019300000E930000AF13),
    .INIT_30(256'hBE8080E7FFFFE097C19FD06F01DF046300B0019300000E937FF0AF13FFF08093),
    .INIT_31(256'hBC8080E7FFFFE097BF9FD06F01DF046300C0019300100E937FF0AF13800000B7),
    .INIT_32(256'hFFFFE097BD5FD06F01DF046300D0019300000E938000AF13FFF08093800000B7),
    .INIT_33(256'hFFFFE097BB5FD06F01DF046300E0019300000E93FFF0AF1300000093BA4080E7),
    .INIT_34(256'hFFFFE097B95FD06F01DF046300F0019300100E930010AF13FFF00093B84080E7),
    .INIT_35(256'hFFFFE097B75FD06F01DF04630100019300000E93FFF0AF13FFF00093B64080E7),
    .INIT_36(256'hFFFFE097B55FD06F01D084630110019300100E9300D0A09300B00093B44080E7),
    .INIT_37(256'h00FF0EB70000AF03870080930000209700A6202300000513000F8067B24080E7),
    .INIT_38(256'h8480809300002097AF0080E7FFFFE097B21FD06F01DF0463002001930FFE8E93),
    .INIT_39(256'hAC8080E7FFFFE097AF9FD06F01DF046300300193F00E8E93FF010EB70040AF03),
    .INIT_3A(256'hAD1FD06F01DF046300400193FF0E8E930FF01EB70080AF038200809300002097),
    .INIT_3B(256'h0050019300FE8E93F00FFEB700C0AF037F80809300001097AA0080E7FFFFE097),
    .INIT_3C(256'h00FF0EB7FF40AF037DC0809300001097A78080E7FFFFE097AA9FD06F01DF0463),
    .INIT_3D(256'h7B40809300001097A50080E7FFFFE097A81FD06F01DF0463006001930FFE8E93),
    .INIT_3E(256'hA28080E7FFFFE097A59FD06F01DF046300700193F00E8E93FF010EB7FF80AF03),
    .INIT_3F(256'hA31FD06F01DF046300800193FF0E8E930FF01EB7FFC0AF0378C0809300001097),
    .INIT_40(256'h0090019300FE8E93F00FFEB70000AF037640809300001097A00080E7FFFFE097),
    .INIT_41(256'h0200A283FE00809373008093000010979D8080E7FFFFE097A09FD06F01DF0463),
    .INIT_42(256'h000F80679AC080E7FFFFE0979DDFD06F01D2846300A001930FFE8E9300FF0EB7),
    .INIT_43(256'h0000AF030020A0230AA1011300AA0137708080930000109700A6202300000513),
    .INIT_44(256'h0000109796C080E7FFFFE09799DFD06F01DF0463002001930AAE8E9300AA0EB7),
    .INIT_45(256'h00300193A00E8E93AA00BEB70040AF030020A223A0010113AA00B1376D408093),
    .INIT_46(256'hAA0101130AA011376A00809300001097938080E7FFFFE097969FD06F01DF0463),
    .INIT_47(256'hFFFFE097935FD06F01DF046300400193AA0E8E930AA01EB70080AF030020A423),
    .INIT_48(256'hA00AAEB700C0AF030020A62300A10113A00AA13766C0809300001097904080E7),
    .INIT_49(256'h65408093000010978D0080E7FFFFE097901FD06F01DF04630050019300AE8E93),
    .INIT_4A(256'h01DF0463006001930AAE8E9300AA0EB7FF40AF03FE20AA230AA1011300AA0137),
    .INIT_4B(256'hFE20AC23A0010113AA00B137620080930000109789C080E7FFFFE0978CDFD06F),
    .INIT_4C(256'h868080E7FFFFE097899FD06F01DF046300700193A00E8E93AA00BEB7FF80AF03),
    .INIT_4D(256'hAA0E8E930AA01EB7FFC0AF03FE20AE23AA0101130AA011375EC0809300001097),
    .INIT_4E(256'hA00AA1375B80809300001097834080E7FFFFE097865FD06F01DF046300800193),
    .INIT_4F(256'h831FD06F01DF04630090019300AE8E93A00AAEB70000AF030020A02300A10113),
    .INIT_50(256'h02222023FE00821367810113123451375880809300001097800080E7FFFFE097),
    .INIT_51(256'h7C8080E7FFFFD097FF8FD06F01D2846300A00193678E8E9312345EB70000A283),
    .INIT_52(256'h003004630020886300000113000000930020019300A6202300000513000F8067),
    .INIT_53(256'h0030019378C080E7FFFFD097FBCFD06F00300463FE208EE300301863FCCFD06F),
    .INIT_54(256'h00300463FE208EE300301863F9CFD06F00300463002088630010011300100093),
    .INIT_55(256'h0030046300208863FFF00113FFF000930040019375C080E7FFFFD097F8CFD06F),
    .INIT_56(256'h0050019372C080E7FFFFD097F5CFD06F00300463FE208EE300301863F6CFD06F),
    .INIT_57(256'hFFFFD097FE208CE3F38FD06F0030046300301663002084630010011300000093),
    .INIT_58(256'hF10FD06F003004630030166300208463000001130010009300600193704080E7),
    .INIT_59(256'h003016630020846300100113FFF00093007001936DC080E7FFFFD097FE208CE3),
    .INIT_5A(256'hFFF0011300100093008001936B4080E7FFFFD097FE208CE3EE8FD06F00300463),
    .INIT_5B(256'h000F806768C080E7FFFFD097FE208CE3EC0FD06F003004630030166300208463),
    .INIT_5C(256'hE90FD06F003004630020986300100113000000930020019300A6202300000513),
    .INIT_5D(256'h0010009300300193650080E7FFFFD097E80FD06F00300463FE209EE300301863),
    .INIT_5E(256'hE50FD06F00300463FE209EE300301863E60FD06F003004630020986300000113),
    .INIT_5F(256'hE30FD06F003004630020986300100113FFF0009300400193620080E7FFFFD097),
    .INIT_60(256'h00100093005001935F0080E7FFFFD097E20FD06F00300463FE209EE300301863),
    .INIT_61(256'hDF0FD06F00300463FE209EE300301863E00FD06F0030046300209863FFF00113),
    .INIT_62(256'h0030046300301663002094630000011300000093006001935C0080E7FFFFD097),
    .INIT_63(256'h00209463001001130010009300700193598080E7FFFFD097FE209CE3DCCFD06F),
    .INIT_64(256'hFFF0009300800193570080E7FFFFD097FE209CE3DA4FD06F0030046300301663),
    .INIT_65(256'h548080E7FFFFD097FE209CE3D7CFD06F003004630030166300209463FFF00113),
    .INIT_66(256'h003004630020C86300100113000000930020019300A6202300000513000F8067),
    .INIT_67(256'h0030019350C080E7FFFFD097D3CFD06F00300463FE20CEE300301863D4CFD06F),
    .INIT_68(256'h00300463FE20CEE300301863D1CFD06F003004630020C86300100113FFF00093),
    .INIT_69(256'h003004630020C863FFF00113FFE00093004001934DC080E7FFFFD097D0CFD06F),
    .INIT_6A(256'h005001934AC080E7FFFFD097CDCFD06F00300463FE20CEE300301863CECFD06F),
    .INIT_6B(256'hFFFFD097FE20CCE3CB8FD06F00300463003016630020C4630000011300100093),
    .INIT_6C(256'hC90FD06F00300463003016630020C463FFF001130010009300600193484080E7),
    .INIT_6D(256'h003016630020C463FFE00113FFF000930070019345C080E7FFFFD097FE20CCE3),
    .INIT_6E(256'hFFE001130010009300800193434080E7FFFFD097FE20CCE3C68FD06F00300463),
    .INIT_6F(256'h000F806740C080E7FFFFD097FE20CCE3C40FD06F00300463003016630020C463),
    .INIT_70(256'hC10FD06F003004630020D86300000113000000930020019300A6202300000513),
    .INIT_71(256'h00100093003001933D0080E7FFFFD097C00FD06F00300463FE20DEE300301863),
    .INIT_72(256'hBD0FD06F00300463FE20DEE300301863BE0FD06F003004630020D86300100113),
    .INIT_73(256'hBB0FD06F003004630020D863FFF00113FFF00093004001933A0080E7FFFFD097),
    .INIT_74(256'h0010009300500193370080E7FFFFD097BA0FD06F00300463FE20DEE300301863),
    .INIT_75(256'hB70FD06F00300463FE20DEE300301863B80FD06F003004630020D86300000113),
    .INIT_76(256'hB50FD06F003004630020D863FFF001130010009300600193340080E7FFFFD097),
    .INIT_77(256'hFFF0009300700193310080E7FFFFD097B40FD06F00300463FE20DEE300301863),
    .INIT_78(256'hB10FD06F00300463FE20DEE300301863B20FD06F003004630020D863FFE00113),
    .INIT_79(256'h00300463003016630020D4630010011300000093008001932E0080E7FFFFD097),
    .INIT_7A(256'h0020D46300100113FFF00093009001932B8080E7FFFFD097FE20DCE3AECFD06F),
    .INIT_7B(256'hFFE0009300A00193290080E7FFFFD097FE20DCE3AC4FD06F0030046300301663),
    .INIT_7C(256'h268080E7FFFFD097FE20DCE3A9CFD06F00300463003016630020D463FFF00113),
    .INIT_7D(256'hFE20DCE3A74FD06F00300463003016630020D46300100113FFE0009300B00193),
    .INIT_7E(256'h00100113000000930020019300A6202300000513000F8067240080E7FFFFD097),
    .INIT_7F(256'hFFFFD097A34FD06F00300463FE20EEE300301863A44FD06F003004630020E863),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_2
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_2_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_2_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_2_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_2_n_4,memory_reg_bram_2_n_5,memory_reg_bram_2_n_6,memory_reg_bram_2_n_7,memory_reg_bram_2_n_8,memory_reg_bram_2_n_9,memory_reg_bram_2_n_10,memory_reg_bram_2_n_11,memory_reg_bram_2_n_12,memory_reg_bram_2_n_13,memory_reg_bram_2_n_14,memory_reg_bram_2_n_15,memory_reg_bram_2_n_16,memory_reg_bram_2_n_17,memory_reg_bram_2_n_18,memory_reg_bram_2_n_19,memory_reg_bram_2_n_20,memory_reg_bram_2_n_21,memory_reg_bram_2_n_22,memory_reg_bram_2_n_23,memory_reg_bram_2_n_24,memory_reg_bram_2_n_25,memory_reg_bram_2_n_26,memory_reg_bram_2_n_27,memory_reg_bram_2_n_28,memory_reg_bram_2_n_29,memory_reg_bram_2_n_30,memory_reg_bram_2_n_31,memory_reg_bram_2_n_32,memory_reg_bram_2_n_33,memory_reg_bram_2_n_34,memory_reg_bram_2_n_35}),
        .DOBDO({memory_reg_bram_2_n_36,memory_reg_bram_2_n_37,memory_reg_bram_2_n_38,memory_reg_bram_2_n_39,memory_reg_bram_2_n_40,memory_reg_bram_2_n_41,memory_reg_bram_2_n_42,memory_reg_bram_2_n_43,memory_reg_bram_2_n_44,memory_reg_bram_2_n_45,memory_reg_bram_2_n_46,memory_reg_bram_2_n_47,memory_reg_bram_2_n_48,memory_reg_bram_2_n_49,memory_reg_bram_2_n_50,memory_reg_bram_2_n_51,memory_reg_bram_2_n_52,memory_reg_bram_2_n_53,memory_reg_bram_2_n_54,memory_reg_bram_2_n_55,memory_reg_bram_2_n_56,memory_reg_bram_2_n_57,memory_reg_bram_2_n_58,memory_reg_bram_2_n_59,memory_reg_bram_2_n_60,memory_reg_bram_2_n_61,memory_reg_bram_2_n_62,memory_reg_bram_2_n_63,memory_reg_bram_2_n_64,memory_reg_bram_2_n_65,memory_reg_bram_2_n_66,memory_reg_bram_2_n_67}),
        .DOPADOP(NLW_memory_reg_bram_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_2_i_1_n_0),
        .ENBWREN(memory_reg_bram_2_0),
        .INJECTDBITERR(NLW_memory_reg_bram_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_2_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_2_i_3_n_0,memory_reg_bram_2_i_4_n_0,memory_reg_bram_2_i_5_n_0,memory_reg_bram_2_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h40)) 
    memory_reg_bram_2_i_1
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .O(memory_reg_bram_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_2_i_3
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[24]),
        .O(memory_reg_bram_2_i_3_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_2_i_4
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[16]),
        .O(memory_reg_bram_2_i_4_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_2_i_5
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[8]),
        .O(memory_reg_bram_2_i_5_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    memory_reg_bram_2_i_6
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[0]),
        .O(memory_reg_bram_2_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "3072" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00301863A14FD06F003004630020E863FFF00113FFE0009300300193204080E7),
    .INIT_01(256'hFFF0011300000093004001931D4080E7FFFFD097A04FD06F00300463FE20EEE3),
    .INIT_02(256'hFFFFD0979D4FD06F00300463FE20EEE3003018639E4FD06F003004630020E863),
    .INIT_03(256'h9B0FD06F00300463003016630020E4630000011300100093005001931A4080E7),
    .INIT_04(256'h003016630020E463FFE00113FFF000930060019317C080E7FFFFD097FE20ECE3),
    .INIT_05(256'h00000113FFF0009300700193154080E7FFFFD097FE20ECE3988FD06F00300463),
    .INIT_06(256'h0080019312C080E7FFFFD097FE20ECE3960FD06F00300463003016630020E463),
    .INIT_07(256'hFE20ECE3934FD06F00300463003016630020E463FFF1011380000137800000B7),
    .INIT_08(256'h00000113000000930020019300A6202300000513000F8067100080E7FFFFD097),
    .INIT_09(256'hFFFFD0978F4FD06F00300463FE20FEE300301863904FD06F003004630020F863),
    .INIT_0A(256'h003018638D4FD06F003004630020F8630010011300100093003001930C4080E7),
    .INIT_0B(256'hFFF00113FFF0009300400193094080E7FFFFD0978C4FD06F00300463FE20FEE3),
    .INIT_0C(256'hFFFFD097894FD06F00300463FE20FEE3003018638A4FD06F003004630020F863),
    .INIT_0D(256'h00301863874FD06F003004630020F863000001130010009300500193064080E7),
    .INIT_0E(256'hFFE00113FFF0009300600193034080E7FFFFD097864FD06F00300463FE20FEE3),
    .INIT_0F(256'hFFFFD097834FD06F00300463FE20FEE300301863844FD06F003004630020F863),
    .INIT_10(256'h00301863814FD06F003004630020F86300000113FFF0009300700193004080E7),
    .INIT_11(256'h001001130000009300800193FD4080E7FFFFD097804FD06F00300463FE20FEE3),
    .INIT_12(256'h00900193FAC080E7FFFFD097FE20FCE3FE1FC06F00300463003016630020F463),
    .INIT_13(256'hFFFFD097FE20FCE3FB9FC06F00300463003016630020F463FFF00113FFE00093),
    .INIT_14(256'hF91FC06F00300463003016630020F463FFF001130000009300A00193F84080E7),
    .INIT_15(256'h0020F46380000137FFF08093800000B700B00193F5C080E7FFFFD097FE20FCE3),
    .INIT_16(256'h00000513000F8067F30080E7FFFFD097FE20FCE3F65FC06F0030046300301663),
    .INIT_17(256'h710E8E9300002EB741BE0E3300400DEF71CE0E1300002E170000001300A62023),
    .INIT_18(256'h8FCE0E13FFFFEE1700000013EF4080E7FFFFD097F25FC06F01DE046300200193),
    .INIT_19(256'hFFFFD097EF5FC06F01DE0463003001938F0E8E93FFFFEEB741BE0E3300400DEF),
    .INIT_1A(256'h01D084630020019300000E93000000B700A6202300000513000F8067EC4080E7),
    .INIT_1B(256'h01D084630030019380000E934010D093FFFFF0B7E9C080E7FFFFD097ECDFC06F),
    .INIT_1C(256'h01D08463004001937FF00E934140D0937FFFF0B7E7C080E7FFFFD097EADFC06F),
    .INIT_1D(256'h01D084630050019380000E934140D093800000B7E5C080E7FFFFD097E8DFC06F),
    .INIT_1E(256'hE51FC06F01D004630060019300000E9380000037E3C080E7FFFFD097E6DFC06F),
    .INIT_1F(256'h0100026F000000930020019300A6202300000513000F8067E20080E7FFFFD097),
    .INIT_20(256'hFFFFD097E15FC06F00410463FF41011300000117E25FC06F0000001300000013),
    .INIT_21(256'h00108093001080930010809300108093001080930140006F00100093DE4080E7),
    .INIT_22(256'h000F8067DAC080E7FFFFD097DDDFC06F01D084630030019300300E9300108093),
    .INIT_23(256'hDB1FC06F000302E70103031300000317000002930020019300A6202300000513),
    .INIT_24(256'h0000021300400193D70080E7FFFFD097DA1FC06F00628463FFC3031300000317),
    .INIT_25(256'hFE5212E30020029300120213D7DFC06F00300463000309E70143031300000317),
    .INIT_26(256'h000309E70000001301830313000003170000021300500193D40080E7FFFFD097),
    .INIT_27(256'h00600193D0C080E7FFFFD097FE5210E30020029300120213D49FC06F00300463),
    .INIT_28(256'hD11FC06F00300463000309E7000000130000001301C303130000031700000213),
    .INIT_29(256'h00A6202300000513000F8067CD4080E7FFFFD097FC521EE30020029300120213),
    .INIT_2A(256'hFFFFD097CD5FC06F01DF0463002001930FF00E9300009F03A540809300001097),
    .INIT_2B(256'hCB1FC06F01DF046300300193F0000E9300209F03A300809300001097CA4080E7),
    .INIT_2C(256'h00400193FF0E8E9300001EB700409F03A0C0809300001097C80080E7FFFFD097),
    .INIT_2D(256'hFFFFFEB700609F039E40809300001097C58080E7FFFFD097C89FC06F01DF0463),
    .INIT_2E(256'h9C20809300001097C30080E7FFFFD097C61FC06F01DF04630050019300FE8E93),
    .INIT_2F(256'h00001097C0C080E7FFFFD097C3DFC06F01DF0463006001930FF00E93FFA09F03),
    .INIT_30(256'hBE8080E7FFFFD097C19FC06F01DF046300700193F0000E93FFC09F0399E08093),
    .INIT_31(256'hBF1FC06F01DF046300800193FF0E8E9300001EB7FFE09F0397A0809300001097),
    .INIT_32(256'h0090019300FE8E93FFFFFEB700009F039520809300001097BC0080E7FFFFD097),
    .INIT_33(256'h02009283FE0080939240809300001097B98080E7FFFFD097BC9FC06F01DF0463),
    .INIT_34(256'h8FC0809300001097B70080E7FFFFD097BA1FC06F01D2846300A001930FF00E93),
    .INIT_35(256'hB48080E7FFFFD097B79FC06F01D2846300B00193F0000E9300709283FFB08093),
    .INIT_36(256'hFFF00E9300008F038CC08093000010970015151300A6202300000513000F8067),
    .INIT_37(256'h00108F038A80809300001097B14080E7FFFFD097B45FC06F01DF046300200193),
    .INIT_38(256'h8840809300001097AF0080E7FFFFD097B21FC06F01DF04630030019300000E93),
    .INIT_39(256'h00001097ACC080E7FFFFD097AFDFC06F01DF046300400193FF000E9300208F03),
    .INIT_3A(256'hAA8080E7FFFFD097AD9FC06F01DF04630050019300F00E9300308F0386008093),
    .INIT_3B(256'hFFFFD097AB5FC06F01DF046300600193FFF00E93FFD08F0383F0809300001097),
    .INIT_3C(256'hA91FC06F01DF04630070019300000E93FFE08F0381B0809300001097A84080E7),
    .INIT_3D(256'h01DF046300800193FF000E93FFF08F037F70809300000097A60080E7FFFFD097),
    .INIT_3E(256'h0090019300F00E9300008F037D30809300000097A3C080E7FFFFD097A6DFC06F),
    .INIT_3F(256'h02008283FE0080937AC0809300000097A18080E7FFFFD097A49FC06F01DF0463),
    .INIT_40(256'h78408093000000979F0080E7FFFFD097A21FC06F01D2846300A00193FFF00E93),
    .INIT_41(256'h9C8080E7FFFFD0979F9FC06F01D2846300B0019300000E9300708283FFA08093),
    .INIT_42(256'h0FF00E930000CF0374C08093000000970015151300A6202300000513000F8067),
    .INIT_43(256'h0010CF037280809300000097994080E7FFFFD0979C5FC06F01DF046300200193),
    .INIT_44(256'h7040809300000097970080E7FFFFD0979A1FC06F01DF04630030019300000E93),
    .INIT_45(256'h0000009794C080E7FFFFD09797DFC06F01DF0463004001930F000E930020CF03),
    .INIT_46(256'h928080E7FFFFD097959FC06F01DF04630050019300F00E930030CF036E008093),
    .INIT_47(256'hFFFFD097935FC06F01DF0463006001930FF00E93FFD0CF036BF0809300000097),
    .INIT_48(256'h911FC06F01DF04630070019300000E93FFE0CF0369B0809300000097904080E7),
    .INIT_49(256'h01DF0463008001930F000E93FFF0CF0367708093000000978E0080E7FFFFD097),
    .INIT_4A(256'h0090019300F00E930000CF0365308093000000978BC080E7FFFFD0978EDFC06F),
    .INIT_4B(256'h0200C283FE00809362C0809300000097898080E7FFFFD0978C9FC06F01DF0463),
    .INIT_4C(256'h6040809300000097870080E7FFFFD0978A1FC06F01D2846300A001930FF00E93),
    .INIT_4D(256'h848080E7FFFFD097879FC06F01D2846300B0019300000E930070C283FFA08093),
    .INIT_4E(256'h0FF00E930000DF035C408093000000970015151300A6202300000513000F8067),
    .INIT_4F(256'h0020DF035A00809300000097814080E7FFFFD097845FC06F01DF046300200193),
    .INIT_50(256'h000000977EC080E7FFFFC09781DFC06F01DF046300300193F00E8E9300010EB7),
    .INIT_51(256'hFFFFC097FF4FC06F01DF046300400193FF0E8E9300001EB70040DF0357808093),
    .INIT_52(256'h01DF04630050019300FE8E930000FEB70060DF0355008093000000977C4080E7),
    .INIT_53(256'h006001930FF00E93FFA0DF0352E080930000009779C080E7FFFFC097FCCFC06F),
    .INIT_54(256'h00010EB7FFC0DF0350A0809300000097778080E7FFFFC097FA8FC06F01DF0463),
    .INIT_55(256'h4E20809300000097750080E7FFFFC097F80FC06F01DF046300700193F00E8E93),
    .INIT_56(256'h728080E7FFFFC097F58FC06F01DF046300800193FF0E8E9300001EB7FFE0DF03),
    .INIT_57(256'hF30FC06F01DF04630090019300FE8E930000FEB70000DF034BA0809300000097),
    .INIT_58(256'h00A001930FF00E930200D283FE00809348C0809300000097700080E7FFFFC097),
    .INIT_59(256'h0070D283FFB0809346408093000000976D8080E7FFFFC097F08FC06F01D28463),
    .INIT_5A(256'h000F80676AC080E7FFFFC097EDCFC06F01D2846300B00193F00E8E9300010EB7),
    .INIT_5B(256'h00009F03002090230AA0011343E08093000000970015151300A6202300000513),
    .INIT_5C(256'h4120809300000097670080E7FFFFC097EA0FC06F01DF0463002001930AA00E93),
    .INIT_5D(256'h01DF046300300193A00E8E93FFFFBEB700209F0300209123A0010113FFFFB137),
    .INIT_5E(256'h00209223AA010113BEEF11373DE080930000009763C080E7FFFFC097E6CFC06F),
    .INIT_5F(256'h608080E7FFFFC097E38FC06F01DF046300400193AA0E8E9300001EB700409F03),
    .INIT_60(256'h00AE8E93FFFFAEB700609F030020932300A10113FFFFA1373AA0809300000097),
    .INIT_61(256'h0AA0011338408093000000975D4080E7FFFFC097E04FC06F01DF046300500193),
    .INIT_62(256'h5A8080E7FFFFC097DD8FC06F01DF0463006001930AA00E93FFA09F03FE209D23),
    .INIT_63(256'hA00E8E93FFFFBEB7FFC09F03FE209E23A0010113FFFFB1373580809300000097),
    .INIT_64(256'h000011373240809300000097574080E7FFFFC097DA4FC06F01DF046300700193),
    .INIT_65(256'hD70FC06F01DF046300800193AA0E8E9300001EB7FFE09F03FE209F23AA010113),
    .INIT_66(256'h00009F030020902300A10113FFFFA1372F00809300000097540080E7FFFFC097),
    .INIT_67(256'h0000009750C080E7FFFFC097D3CFC06F01DF04630090019300AE8E93FFFFAEB7),
    .INIT_68(256'h678E8E9300005EB70000928302221023FE00821367810113123451372BE08093),
    .INIT_69(256'h0000313728608093000000974D4080E7FFFFC097D04FC06F01D2846300A00193),
    .INIT_6A(256'h098E8E9300003EB7000212832702021300000217002093A3FFB0809309810113),
    .INIT_6B(256'h00A6202300000513000F8067494080E7FFFFC097CC4FC06F01D2846300B00193),
    .INIT_6C(256'h00200193FAA00E9300008F0300208023FAA0011321C080930000009700151513),
    .INIT_6D(256'h002080A3000001131F00809300000097458080E7FFFFC097C88FC06F01DF0463),
    .INIT_6E(256'h0000009742C080E7FFFFC097C5CFC06F01DF04630030019300000E9300108F03),
    .INIT_6F(256'h01DF046300400193FA000E9300208F0300208123FA010113FFFFF1371C408093),
    .INIT_70(256'h00308F03002081A300A0011319408093000000973FC080E7FFFFC097C2CFC06F),
    .INIT_71(256'h16F08093000000973D0080E7FFFFC097C00FC06F01DF04630050019300A00E93),
    .INIT_72(256'hFFFFC097BD4FC06F01DF046300600193FAA00E93FFD08F03FE208EA3FAA00113),
    .INIT_73(256'h0070019300000E93FFE08F03FE208F230000011314308093000000973A4080E7),
    .INIT_74(256'hFE208FA3FA0001131170809300000097378080E7FFFFC097BA8FC06F01DF0463),
    .INIT_75(256'h0000009734C080E7FFFFC097B7CFC06F01DF046300800193FA000E93FFF08F03),
    .INIT_76(256'hB50FC06F01DF04630090019300A00E9300008F030020802300A001130EB08093),
    .INIT_77(256'h02220023FE00821367810113123451370C00809300000097320080E7FFFFC097),
    .INIT_78(256'h000000972EC080E7FFFFC097B1CFC06F01D2846300A0019307800E9300008283),
    .INIT_79(256'h000202830752021300000217002083A3FFA08093098101130000313708C08093),
    .INIT_7A(256'h0000006F000F80672B0080E7FFFFC097AE0FC06F01D2846300B00193F9800E93),
    .INIT_7B(256'hDEADBEEFDEADBEEFDEADBEEFDEADBEEFF00FF00F0FF00FF0FF00FF0000FF00FF),
    .INIT_7C(256'h0FF000FFF00F0FF0FF0000FFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF),
    .INIT_7D(256'h0000BEEFBEEFBEEFBEEFBEEFBEEFBEEFBEEFBEEFBEEFEFEFEFEFEFEFEFEFEFEF),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_3
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_3_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_3_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_3_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_3_n_4,memory_reg_bram_3_n_5,memory_reg_bram_3_n_6,memory_reg_bram_3_n_7,memory_reg_bram_3_n_8,memory_reg_bram_3_n_9,memory_reg_bram_3_n_10,memory_reg_bram_3_n_11,memory_reg_bram_3_n_12,memory_reg_bram_3_n_13,memory_reg_bram_3_n_14,memory_reg_bram_3_n_15,memory_reg_bram_3_n_16,memory_reg_bram_3_n_17,memory_reg_bram_3_n_18,memory_reg_bram_3_n_19,memory_reg_bram_3_n_20,memory_reg_bram_3_n_21,memory_reg_bram_3_n_22,memory_reg_bram_3_n_23,memory_reg_bram_3_n_24,memory_reg_bram_3_n_25,memory_reg_bram_3_n_26,memory_reg_bram_3_n_27,memory_reg_bram_3_n_28,memory_reg_bram_3_n_29,memory_reg_bram_3_n_30,memory_reg_bram_3_n_31,memory_reg_bram_3_n_32,memory_reg_bram_3_n_33,memory_reg_bram_3_n_34,memory_reg_bram_3_n_35}),
        .DOBDO({memory_reg_bram_3_n_36,memory_reg_bram_3_n_37,memory_reg_bram_3_n_38,memory_reg_bram_3_n_39,memory_reg_bram_3_n_40,memory_reg_bram_3_n_41,memory_reg_bram_3_n_42,memory_reg_bram_3_n_43,memory_reg_bram_3_n_44,memory_reg_bram_3_n_45,memory_reg_bram_3_n_46,memory_reg_bram_3_n_47,memory_reg_bram_3_n_48,memory_reg_bram_3_n_49,memory_reg_bram_3_n_50,memory_reg_bram_3_n_51,memory_reg_bram_3_n_52,memory_reg_bram_3_n_53,memory_reg_bram_3_n_54,memory_reg_bram_3_n_55,memory_reg_bram_3_n_56,memory_reg_bram_3_n_57,memory_reg_bram_3_n_58,memory_reg_bram_3_n_59,memory_reg_bram_3_n_60,memory_reg_bram_3_n_61,memory_reg_bram_3_n_62,memory_reg_bram_3_n_63,memory_reg_bram_3_n_64,memory_reg_bram_3_n_65,memory_reg_bram_3_n_66,memory_reg_bram_3_n_67}),
        .DOPADOP(NLW_memory_reg_bram_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_3_i_1_n_0),
        .ENBWREN(memory_reg_bram_3_0),
        .INJECTDBITERR(NLW_memory_reg_bram_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_3_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_3_i_3_n_0,memory_reg_bram_3_i_4_n_0,memory_reg_bram_3_i_5_n_0,memory_reg_bram_3_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_bram_3_i_1
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .O(memory_reg_bram_3_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_3_i_3
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[24]),
        .O(memory_reg_bram_3_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_3_i_4
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[16]),
        .O(memory_reg_bram_3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_3_i_5
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[8]),
        .O(memory_reg_bram_3_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    memory_reg_bram_3_i_6
       (.I0(IOBUS_addr[12]),
        .I1(IOBUS_addr[13]),
        .I2(memory_reg_bram_0_i_42_n_0),
        .I3(p_0_in_0[0]),
        .O(memory_reg_bram_3_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "5119" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_4
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_4_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_4_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_4_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_4_n_4,memory_reg_bram_4_n_5,memory_reg_bram_4_n_6,memory_reg_bram_4_n_7,memory_reg_bram_4_n_8,memory_reg_bram_4_n_9,memory_reg_bram_4_n_10,memory_reg_bram_4_n_11,memory_reg_bram_4_n_12,memory_reg_bram_4_n_13,memory_reg_bram_4_n_14,memory_reg_bram_4_n_15,memory_reg_bram_4_n_16,memory_reg_bram_4_n_17,memory_reg_bram_4_n_18,memory_reg_bram_4_n_19,memory_reg_bram_4_n_20,memory_reg_bram_4_n_21,memory_reg_bram_4_n_22,memory_reg_bram_4_n_23,memory_reg_bram_4_n_24,memory_reg_bram_4_n_25,memory_reg_bram_4_n_26,memory_reg_bram_4_n_27,memory_reg_bram_4_n_28,memory_reg_bram_4_n_29,memory_reg_bram_4_n_30,memory_reg_bram_4_n_31,memory_reg_bram_4_n_32,memory_reg_bram_4_n_33,memory_reg_bram_4_n_34,memory_reg_bram_4_n_35}),
        .DOBDO({memory_reg_bram_4_n_36,memory_reg_bram_4_n_37,memory_reg_bram_4_n_38,memory_reg_bram_4_n_39,memory_reg_bram_4_n_40,memory_reg_bram_4_n_41,memory_reg_bram_4_n_42,memory_reg_bram_4_n_43,memory_reg_bram_4_n_44,memory_reg_bram_4_n_45,memory_reg_bram_4_n_46,memory_reg_bram_4_n_47,memory_reg_bram_4_n_48,memory_reg_bram_4_n_49,memory_reg_bram_4_n_50,memory_reg_bram_4_n_51,memory_reg_bram_4_n_52,memory_reg_bram_4_n_53,memory_reg_bram_4_n_54,memory_reg_bram_4_n_55,memory_reg_bram_4_n_56,memory_reg_bram_4_n_57,memory_reg_bram_4_n_58,memory_reg_bram_4_n_59,memory_reg_bram_4_n_60,memory_reg_bram_4_n_61,memory_reg_bram_4_n_62,memory_reg_bram_4_n_63,memory_reg_bram_4_n_64,memory_reg_bram_4_n_65,memory_reg_bram_4_n_66,memory_reg_bram_4_n_67}),
        .DOPADOP(NLW_memory_reg_bram_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_4_i_1_n_0),
        .ENBWREN(memory_reg_bram_4_0),
        .INJECTDBITERR(NLW_memory_reg_bram_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_4_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_4_i_3_n_0,memory_reg_bram_4_i_4_n_0,memory_reg_bram_4_i_5_n_0,memory_reg_bram_4_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0010)) 
    memory_reg_bram_4_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_4_i_1_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_4_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_4_i_3_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_4_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_4_i_4_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_4_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_4_i_5_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_4_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_4_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "5120" *) 
  (* ram_addr_end = "6143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_5
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_5_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_5_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_5_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_5_n_4,memory_reg_bram_5_n_5,memory_reg_bram_5_n_6,memory_reg_bram_5_n_7,memory_reg_bram_5_n_8,memory_reg_bram_5_n_9,memory_reg_bram_5_n_10,memory_reg_bram_5_n_11,memory_reg_bram_5_n_12,memory_reg_bram_5_n_13,memory_reg_bram_5_n_14,memory_reg_bram_5_n_15,memory_reg_bram_5_n_16,memory_reg_bram_5_n_17,memory_reg_bram_5_n_18,memory_reg_bram_5_n_19,memory_reg_bram_5_n_20,memory_reg_bram_5_n_21,memory_reg_bram_5_n_22,memory_reg_bram_5_n_23,memory_reg_bram_5_n_24,memory_reg_bram_5_n_25,memory_reg_bram_5_n_26,memory_reg_bram_5_n_27,memory_reg_bram_5_n_28,memory_reg_bram_5_n_29,memory_reg_bram_5_n_30,memory_reg_bram_5_n_31,memory_reg_bram_5_n_32,memory_reg_bram_5_n_33,memory_reg_bram_5_n_34,memory_reg_bram_5_n_35}),
        .DOBDO({memory_reg_bram_5_n_36,memory_reg_bram_5_n_37,memory_reg_bram_5_n_38,memory_reg_bram_5_n_39,memory_reg_bram_5_n_40,memory_reg_bram_5_n_41,memory_reg_bram_5_n_42,memory_reg_bram_5_n_43,memory_reg_bram_5_n_44,memory_reg_bram_5_n_45,memory_reg_bram_5_n_46,memory_reg_bram_5_n_47,memory_reg_bram_5_n_48,memory_reg_bram_5_n_49,memory_reg_bram_5_n_50,memory_reg_bram_5_n_51,memory_reg_bram_5_n_52,memory_reg_bram_5_n_53,memory_reg_bram_5_n_54,memory_reg_bram_5_n_55,memory_reg_bram_5_n_56,memory_reg_bram_5_n_57,memory_reg_bram_5_n_58,memory_reg_bram_5_n_59,memory_reg_bram_5_n_60,memory_reg_bram_5_n_61,memory_reg_bram_5_n_62,memory_reg_bram_5_n_63,memory_reg_bram_5_n_64,memory_reg_bram_5_n_65,memory_reg_bram_5_n_66,memory_reg_bram_5_n_67}),
        .DOPADOP(NLW_memory_reg_bram_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_5_i_1_n_0),
        .ENBWREN(memory_reg_bram_5_0),
        .INJECTDBITERR(NLW_memory_reg_bram_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_5_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_5_i_3_n_0,memory_reg_bram_5_i_4_n_0,memory_reg_bram_5_i_5_n_0,memory_reg_bram_5_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    memory_reg_bram_5_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_5_i_1_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_5_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_5_i_3_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_5_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_5_i_4_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_5_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_5_i_5_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_5_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[15]),
        .I2(IOBUS_addr[14]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_5_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "6144" *) 
  (* ram_addr_end = "7167" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_6
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_6_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_6_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_6_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_6_n_4,memory_reg_bram_6_n_5,memory_reg_bram_6_n_6,memory_reg_bram_6_n_7,memory_reg_bram_6_n_8,memory_reg_bram_6_n_9,memory_reg_bram_6_n_10,memory_reg_bram_6_n_11,memory_reg_bram_6_n_12,memory_reg_bram_6_n_13,memory_reg_bram_6_n_14,memory_reg_bram_6_n_15,memory_reg_bram_6_n_16,memory_reg_bram_6_n_17,memory_reg_bram_6_n_18,memory_reg_bram_6_n_19,memory_reg_bram_6_n_20,memory_reg_bram_6_n_21,memory_reg_bram_6_n_22,memory_reg_bram_6_n_23,memory_reg_bram_6_n_24,memory_reg_bram_6_n_25,memory_reg_bram_6_n_26,memory_reg_bram_6_n_27,memory_reg_bram_6_n_28,memory_reg_bram_6_n_29,memory_reg_bram_6_n_30,memory_reg_bram_6_n_31,memory_reg_bram_6_n_32,memory_reg_bram_6_n_33,memory_reg_bram_6_n_34,memory_reg_bram_6_n_35}),
        .DOBDO({memory_reg_bram_6_n_36,memory_reg_bram_6_n_37,memory_reg_bram_6_n_38,memory_reg_bram_6_n_39,memory_reg_bram_6_n_40,memory_reg_bram_6_n_41,memory_reg_bram_6_n_42,memory_reg_bram_6_n_43,memory_reg_bram_6_n_44,memory_reg_bram_6_n_45,memory_reg_bram_6_n_46,memory_reg_bram_6_n_47,memory_reg_bram_6_n_48,memory_reg_bram_6_n_49,memory_reg_bram_6_n_50,memory_reg_bram_6_n_51,memory_reg_bram_6_n_52,memory_reg_bram_6_n_53,memory_reg_bram_6_n_54,memory_reg_bram_6_n_55,memory_reg_bram_6_n_56,memory_reg_bram_6_n_57,memory_reg_bram_6_n_58,memory_reg_bram_6_n_59,memory_reg_bram_6_n_60,memory_reg_bram_6_n_61,memory_reg_bram_6_n_62,memory_reg_bram_6_n_63,memory_reg_bram_6_n_64,memory_reg_bram_6_n_65,memory_reg_bram_6_n_66,memory_reg_bram_6_n_67}),
        .DOPADOP(NLW_memory_reg_bram_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_6_i_1_n_0),
        .ENBWREN(memory_reg_bram_6_0),
        .INJECTDBITERR(NLW_memory_reg_bram_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_6_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_6_i_3_n_0,memory_reg_bram_6_i_4_n_0,memory_reg_bram_6_i_5_n_0,memory_reg_bram_6_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0008)) 
    memory_reg_bram_6_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_6_i_1_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_6_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_6_i_3_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_6_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_6_i_4_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_6_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_6_i_5_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    memory_reg_bram_6_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_6_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "7168" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_7
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_7_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_7_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_7_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_7_n_4,memory_reg_bram_7_n_5,memory_reg_bram_7_n_6,memory_reg_bram_7_n_7,memory_reg_bram_7_n_8,memory_reg_bram_7_n_9,memory_reg_bram_7_n_10,memory_reg_bram_7_n_11,memory_reg_bram_7_n_12,memory_reg_bram_7_n_13,memory_reg_bram_7_n_14,memory_reg_bram_7_n_15,memory_reg_bram_7_n_16,memory_reg_bram_7_n_17,memory_reg_bram_7_n_18,memory_reg_bram_7_n_19,memory_reg_bram_7_n_20,memory_reg_bram_7_n_21,memory_reg_bram_7_n_22,memory_reg_bram_7_n_23,memory_reg_bram_7_n_24,memory_reg_bram_7_n_25,memory_reg_bram_7_n_26,memory_reg_bram_7_n_27,memory_reg_bram_7_n_28,memory_reg_bram_7_n_29,memory_reg_bram_7_n_30,memory_reg_bram_7_n_31,memory_reg_bram_7_n_32,memory_reg_bram_7_n_33,memory_reg_bram_7_n_34,memory_reg_bram_7_n_35}),
        .DOBDO({memory_reg_bram_7_n_36,memory_reg_bram_7_n_37,memory_reg_bram_7_n_38,memory_reg_bram_7_n_39,memory_reg_bram_7_n_40,memory_reg_bram_7_n_41,memory_reg_bram_7_n_42,memory_reg_bram_7_n_43,memory_reg_bram_7_n_44,memory_reg_bram_7_n_45,memory_reg_bram_7_n_46,memory_reg_bram_7_n_47,memory_reg_bram_7_n_48,memory_reg_bram_7_n_49,memory_reg_bram_7_n_50,memory_reg_bram_7_n_51,memory_reg_bram_7_n_52,memory_reg_bram_7_n_53,memory_reg_bram_7_n_54,memory_reg_bram_7_n_55,memory_reg_bram_7_n_56,memory_reg_bram_7_n_57,memory_reg_bram_7_n_58,memory_reg_bram_7_n_59,memory_reg_bram_7_n_60,memory_reg_bram_7_n_61,memory_reg_bram_7_n_62,memory_reg_bram_7_n_63,memory_reg_bram_7_n_64,memory_reg_bram_7_n_65,memory_reg_bram_7_n_66,memory_reg_bram_7_n_67}),
        .DOPADOP(NLW_memory_reg_bram_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_7_i_1_n_0),
        .ENBWREN(memory_reg_bram_7_0),
        .INJECTDBITERR(NLW_memory_reg_bram_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_7_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_7_i_3_n_0,memory_reg_bram_7_i_4_n_0,memory_reg_bram_7_i_5_n_0,memory_reg_bram_7_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0080)) 
    memory_reg_bram_7_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[15]),
        .O(memory_reg_bram_7_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_7_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_7_i_3_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_7_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_7_i_4_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_7_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_7_i_5_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_7_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[12]),
        .I3(IOBUS_addr[15]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_7_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "9215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_8
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_8_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_8_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_8_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_8_n_4,memory_reg_bram_8_n_5,memory_reg_bram_8_n_6,memory_reg_bram_8_n_7,memory_reg_bram_8_n_8,memory_reg_bram_8_n_9,memory_reg_bram_8_n_10,memory_reg_bram_8_n_11,memory_reg_bram_8_n_12,memory_reg_bram_8_n_13,memory_reg_bram_8_n_14,memory_reg_bram_8_n_15,memory_reg_bram_8_n_16,memory_reg_bram_8_n_17,memory_reg_bram_8_n_18,memory_reg_bram_8_n_19,memory_reg_bram_8_n_20,memory_reg_bram_8_n_21,memory_reg_bram_8_n_22,memory_reg_bram_8_n_23,memory_reg_bram_8_n_24,memory_reg_bram_8_n_25,memory_reg_bram_8_n_26,memory_reg_bram_8_n_27,memory_reg_bram_8_n_28,memory_reg_bram_8_n_29,memory_reg_bram_8_n_30,memory_reg_bram_8_n_31,memory_reg_bram_8_n_32,memory_reg_bram_8_n_33,memory_reg_bram_8_n_34,memory_reg_bram_8_n_35}),
        .DOBDO({memory_reg_bram_8_n_36,memory_reg_bram_8_n_37,memory_reg_bram_8_n_38,memory_reg_bram_8_n_39,memory_reg_bram_8_n_40,memory_reg_bram_8_n_41,memory_reg_bram_8_n_42,memory_reg_bram_8_n_43,memory_reg_bram_8_n_44,memory_reg_bram_8_n_45,memory_reg_bram_8_n_46,memory_reg_bram_8_n_47,memory_reg_bram_8_n_48,memory_reg_bram_8_n_49,memory_reg_bram_8_n_50,memory_reg_bram_8_n_51,memory_reg_bram_8_n_52,memory_reg_bram_8_n_53,memory_reg_bram_8_n_54,memory_reg_bram_8_n_55,memory_reg_bram_8_n_56,memory_reg_bram_8_n_57,memory_reg_bram_8_n_58,memory_reg_bram_8_n_59,memory_reg_bram_8_n_60,memory_reg_bram_8_n_61,memory_reg_bram_8_n_62,memory_reg_bram_8_n_63,memory_reg_bram_8_n_64,memory_reg_bram_8_n_65,memory_reg_bram_8_n_66,memory_reg_bram_8_n_67}),
        .DOPADOP(NLW_memory_reg_bram_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_8_i_1_n_0),
        .ENBWREN(memory_reg_bram_8_0),
        .INJECTDBITERR(NLW_memory_reg_bram_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_8_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_8_i_3_n_0,memory_reg_bram_8_i_4_n_0,memory_reg_bram_8_i_5_n_0,memory_reg_bram_8_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0010)) 
    memory_reg_bram_8_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_8_i_1_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_8_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_8_i_3_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_8_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_8_i_4_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_8_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_8_i_5_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    memory_reg_bram_8_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_8_i_6_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "524288" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_MEMORY/memory_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "9216" *) 
  (* ram_addr_end = "10239" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    memory_reg_bram_9
       (.ADDRARDADDR({1'b1,IOBUS_addr[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,RESULT0_carry__6[11:2],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_memory_reg_bram_9_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_memory_reg_bram_9_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_memory_reg_bram_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_bram_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_50_BUFG),
        .CLKBWRCLK(clk_50_BUFG),
        .DBITERR(NLW_memory_reg_bram_9_DBITERR_UNCONNECTED),
        .DIADI({p_1_in,DIADI}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({memory_reg_bram_9_n_4,memory_reg_bram_9_n_5,memory_reg_bram_9_n_6,memory_reg_bram_9_n_7,memory_reg_bram_9_n_8,memory_reg_bram_9_n_9,memory_reg_bram_9_n_10,memory_reg_bram_9_n_11,memory_reg_bram_9_n_12,memory_reg_bram_9_n_13,memory_reg_bram_9_n_14,memory_reg_bram_9_n_15,memory_reg_bram_9_n_16,memory_reg_bram_9_n_17,memory_reg_bram_9_n_18,memory_reg_bram_9_n_19,memory_reg_bram_9_n_20,memory_reg_bram_9_n_21,memory_reg_bram_9_n_22,memory_reg_bram_9_n_23,memory_reg_bram_9_n_24,memory_reg_bram_9_n_25,memory_reg_bram_9_n_26,memory_reg_bram_9_n_27,memory_reg_bram_9_n_28,memory_reg_bram_9_n_29,memory_reg_bram_9_n_30,memory_reg_bram_9_n_31,memory_reg_bram_9_n_32,memory_reg_bram_9_n_33,memory_reg_bram_9_n_34,memory_reg_bram_9_n_35}),
        .DOBDO({memory_reg_bram_9_n_36,memory_reg_bram_9_n_37,memory_reg_bram_9_n_38,memory_reg_bram_9_n_39,memory_reg_bram_9_n_40,memory_reg_bram_9_n_41,memory_reg_bram_9_n_42,memory_reg_bram_9_n_43,memory_reg_bram_9_n_44,memory_reg_bram_9_n_45,memory_reg_bram_9_n_46,memory_reg_bram_9_n_47,memory_reg_bram_9_n_48,memory_reg_bram_9_n_49,memory_reg_bram_9_n_50,memory_reg_bram_9_n_51,memory_reg_bram_9_n_52,memory_reg_bram_9_n_53,memory_reg_bram_9_n_54,memory_reg_bram_9_n_55,memory_reg_bram_9_n_56,memory_reg_bram_9_n_57,memory_reg_bram_9_n_58,memory_reg_bram_9_n_59,memory_reg_bram_9_n_60,memory_reg_bram_9_n_61,memory_reg_bram_9_n_62,memory_reg_bram_9_n_63,memory_reg_bram_9_n_64,memory_reg_bram_9_n_65,memory_reg_bram_9_n_66,memory_reg_bram_9_n_67}),
        .DOPADOP(NLW_memory_reg_bram_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_bram_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_bram_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_reg_bram_9_i_1_n_0),
        .ENBWREN(memory_reg_bram_9_0),
        .INJECTDBITERR(NLW_memory_reg_bram_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_bram_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_bram_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_bram_9_SBITERR_UNCONNECTED),
        .WEA({memory_reg_bram_9_i_3_n_0,memory_reg_bram_9_i_4_n_0,memory_reg_bram_9_i_5_n_0,memory_reg_bram_9_i_6_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    memory_reg_bram_9_i_1
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .O(memory_reg_bram_9_i_1_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_9_i_3
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[24]),
        .O(memory_reg_bram_9_i_3_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_9_i_4
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[16]),
        .O(memory_reg_bram_9_i_4_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_9_i_5
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[8]),
        .O(memory_reg_bram_9_i_5_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    memory_reg_bram_9_i_6
       (.I0(IOBUS_addr[13]),
        .I1(IOBUS_addr[14]),
        .I2(IOBUS_addr[15]),
        .I3(IOBUS_addr[12]),
        .I4(p_0_in_0[0]),
        .O(memory_reg_bram_9_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_a_pos_0
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(IOBUS_addr[15]),
        .Q(memory_reg_mux_sel_a_pos_0_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_a_pos_1
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(IOBUS_addr[14]),
        .Q(memory_reg_mux_sel_a_pos_1_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_a_pos_2
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(IOBUS_addr[13]),
        .Q(memory_reg_mux_sel_a_pos_2_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_a_pos_3
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(IOBUS_addr[12]),
        .Q(memory_reg_mux_sel_a_pos_3_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_b_pos_0
       (.C(clk_50_BUFG),
        .CE(Q[0]),
        .D(RESULT0_carry__6[15]),
        .Q(memory_reg_mux_sel_b_pos_0_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_b_pos_1
       (.C(clk_50_BUFG),
        .CE(Q[0]),
        .D(RESULT0_carry__6[14]),
        .Q(memory_reg_mux_sel_b_pos_1_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_b_pos_2
       (.C(clk_50_BUFG),
        .CE(Q[0]),
        .D(RESULT0_carry__6[13]),
        .Q(memory_reg_mux_sel_b_pos_2_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_reg_mux_sel_b_pos_3
       (.C(clk_50_BUFG),
        .CE(Q[0]),
        .D(RESULT0_carry__6[12]),
        .Q(memory_reg_mux_sel_b_pos_3_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \r_SSEG[15]_i_1 
       (.I0(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I1(mem_we2),
        .I2(IOBUS_addr[6]),
        .I3(IOBUS_addr[5]),
        .I4(\LEDS[15]_i_3_n_0 ),
        .I5(\ioBuffer[15]_i_3_n_0 ),
        .O(\FSM_onehot_PS_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h0000F2F0)) 
    ram_reg_r1_0_31_0_5_i_1
       (.I0(Q[1]),
        .I1(\OUT[31]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\OUT[31]_i_6_n_0 ),
        .I4(p_0_in),
        .O(p_0_in0_out));
  MUXF8 ram_reg_r1_0_31_0_5_i_10
       (.I0(ram_reg_r1_0_31_0_5_i_43_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_44_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[10]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_100
       (.I0(memory_reg_bram_3_n_56),
        .I1(memory_reg_bram_2_n_56),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_56),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_56),
        .O(ram_reg_r1_0_31_0_5_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_101
       (.I0(memory_reg_bram_7_n_56),
        .I1(memory_reg_bram_6_n_56),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_56),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_56),
        .O(ram_reg_r1_0_31_0_5_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_102
       (.I0(memory_reg_bram_11_n_56),
        .I1(memory_reg_bram_10_n_56),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_56),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_56),
        .O(ram_reg_r1_0_31_0_5_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_103
       (.I0(memory_reg_bram_15_n_56),
        .I1(memory_reg_bram_14_n_56),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_56),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_56),
        .O(ram_reg_r1_0_31_0_5_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_104
       (.I0(memory_reg_bram_3_n_57),
        .I1(memory_reg_bram_2_n_57),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_57),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_57),
        .O(ram_reg_r1_0_31_0_5_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_105
       (.I0(memory_reg_bram_7_n_57),
        .I1(memory_reg_bram_6_n_57),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_57),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_57),
        .O(ram_reg_r1_0_31_0_5_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_106
       (.I0(memory_reg_bram_11_n_57),
        .I1(memory_reg_bram_10_n_57),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_57),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_57),
        .O(ram_reg_r1_0_31_0_5_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_107
       (.I0(memory_reg_bram_15_n_57),
        .I1(memory_reg_bram_14_n_57),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_57),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_57),
        .O(ram_reg_r1_0_31_0_5_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_108
       (.I0(memory_reg_bram_3_n_58),
        .I1(memory_reg_bram_2_n_58),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_58),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_58),
        .O(ram_reg_r1_0_31_0_5_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_109
       (.I0(memory_reg_bram_7_n_58),
        .I1(memory_reg_bram_6_n_58),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_58),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_58),
        .O(ram_reg_r1_0_31_0_5_i_109_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_11
       (.I0(ram_reg_r1_0_31_0_5_i_45_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_46_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[9]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_110
       (.I0(memory_reg_bram_11_n_58),
        .I1(memory_reg_bram_10_n_58),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_58),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_58),
        .O(ram_reg_r1_0_31_0_5_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_111
       (.I0(memory_reg_bram_15_n_58),
        .I1(memory_reg_bram_14_n_58),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_58),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_58),
        .O(ram_reg_r1_0_31_0_5_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_112
       (.I0(memory_reg_bram_3_n_59),
        .I1(memory_reg_bram_2_n_59),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_59),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_59),
        .O(ram_reg_r1_0_31_0_5_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_113
       (.I0(memory_reg_bram_7_n_59),
        .I1(memory_reg_bram_6_n_59),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_59),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_59),
        .O(ram_reg_r1_0_31_0_5_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_114
       (.I0(memory_reg_bram_11_n_59),
        .I1(memory_reg_bram_10_n_59),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_59),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_59),
        .O(ram_reg_r1_0_31_0_5_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_115
       (.I0(memory_reg_bram_15_n_59),
        .I1(memory_reg_bram_14_n_59),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_59),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_59),
        .O(ram_reg_r1_0_31_0_5_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_116
       (.I0(memory_reg_bram_3_n_60),
        .I1(memory_reg_bram_2_n_60),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_60),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_60),
        .O(ram_reg_r1_0_31_0_5_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_117
       (.I0(memory_reg_bram_7_n_60),
        .I1(memory_reg_bram_6_n_60),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_60),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_60),
        .O(ram_reg_r1_0_31_0_5_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_118
       (.I0(memory_reg_bram_11_n_60),
        .I1(memory_reg_bram_10_n_60),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_60),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_60),
        .O(ram_reg_r1_0_31_0_5_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_119
       (.I0(memory_reg_bram_15_n_60),
        .I1(memory_reg_bram_14_n_60),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_60),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_60),
        .O(ram_reg_r1_0_31_0_5_i_119_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_12
       (.I0(ram_reg_r1_0_31_0_5_i_47_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_48_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[8]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_120
       (.I0(ram_reg_r1_0_31_0_5_i_145_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_146_n_0),
        .O(memory_reg_mux_sel_a_pos_0_1),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_123
       (.I0(ram_reg_r1_0_31_0_5_i_147_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_148_n_0),
        .O(memory_reg_mux_sel_a_pos_0_9),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_125
       (.I0(ram_reg_r1_0_31_0_5_i_149_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_150_n_0),
        .O(memory_reg_mux_sel_a_pos_0_0),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_127
       (.I0(ram_reg_r1_0_31_0_5_i_151_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_152_n_0),
        .O(memory_reg_mux_sel_a_pos_0_8),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_129
       (.I0(ram_reg_r1_0_31_0_5_i_153_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_154_n_0),
        .O(memory_reg_mux_sel_a_pos_0_3),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_13
       (.I0(ram_reg_r1_0_31_0_5_i_49_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_50_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[4]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_131
       (.I0(ram_reg_r1_0_31_0_5_i_155_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_156_n_0),
        .O(memory_reg_mux_sel_a_pos_0_11),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_133
       (.I0(ram_reg_r1_0_31_0_5_i_157_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_158_n_0),
        .O(memory_reg_mux_sel_a_pos_0_2),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_135
       (.I0(ram_reg_r1_0_31_0_5_i_159_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_160_n_0),
        .O(memory_reg_mux_sel_a_pos_0_10),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_137
       (.I0(ram_reg_r1_0_31_0_5_i_161_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_162_n_0),
        .O(memory_reg_mux_sel_a_pos_0_5),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_139
       (.I0(ram_reg_r1_0_31_0_5_i_163_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_164_n_0),
        .O(memory_reg_mux_sel_a_pos_0_13),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_14
       (.I0(ram_reg_r1_0_31_0_5_i_51_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_52_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[3]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_141
       (.I0(ram_reg_r1_0_31_0_5_i_165_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_166_n_0),
        .O(memory_reg_mux_sel_a_pos_0_4),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_143
       (.I0(ram_reg_r1_0_31_0_5_i_167_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_168_n_0),
        .O(memory_reg_mux_sel_a_pos_0_12),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_145
       (.I0(ram_reg_r1_0_31_0_5_i_169_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_170_n_0),
        .O(ram_reg_r1_0_31_0_5_i_145_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_146
       (.I0(ram_reg_r1_0_31_0_5_i_171_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_172_n_0),
        .O(ram_reg_r1_0_31_0_5_i_146_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_147
       (.I0(ram_reg_r1_0_31_0_5_i_173_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_174_n_0),
        .O(ram_reg_r1_0_31_0_5_i_147_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_148
       (.I0(ram_reg_r1_0_31_0_5_i_175_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_176_n_0),
        .O(ram_reg_r1_0_31_0_5_i_148_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_149
       (.I0(ram_reg_r1_0_31_0_5_i_177_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_178_n_0),
        .O(ram_reg_r1_0_31_0_5_i_149_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_15
       (.I0(ram_reg_r1_0_31_0_5_i_53_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_54_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[2]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_150
       (.I0(ram_reg_r1_0_31_0_5_i_179_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_180_n_0),
        .O(ram_reg_r1_0_31_0_5_i_150_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_151
       (.I0(ram_reg_r1_0_31_0_5_i_181_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_182_n_0),
        .O(ram_reg_r1_0_31_0_5_i_151_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_152
       (.I0(ram_reg_r1_0_31_0_5_i_183_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_184_n_0),
        .O(ram_reg_r1_0_31_0_5_i_152_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_153
       (.I0(ram_reg_r1_0_31_0_5_i_185_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_186_n_0),
        .O(ram_reg_r1_0_31_0_5_i_153_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_154
       (.I0(ram_reg_r1_0_31_0_5_i_187_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_188_n_0),
        .O(ram_reg_r1_0_31_0_5_i_154_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_155
       (.I0(ram_reg_r1_0_31_0_5_i_189_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_190_n_0),
        .O(ram_reg_r1_0_31_0_5_i_155_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_156
       (.I0(ram_reg_r1_0_31_0_5_i_191_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_192_n_0),
        .O(ram_reg_r1_0_31_0_5_i_156_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_157
       (.I0(ram_reg_r1_0_31_0_5_i_193_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_194_n_0),
        .O(ram_reg_r1_0_31_0_5_i_157_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_158
       (.I0(ram_reg_r1_0_31_0_5_i_195_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_196_n_0),
        .O(ram_reg_r1_0_31_0_5_i_158_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_159
       (.I0(ram_reg_r1_0_31_0_5_i_197_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_198_n_0),
        .O(ram_reg_r1_0_31_0_5_i_159_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_16
       (.I0(ram_reg_r1_0_31_0_5_i_55_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_56_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[1]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_160
       (.I0(ram_reg_r1_0_31_0_5_i_199_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_200_n_0),
        .O(ram_reg_r1_0_31_0_5_i_160_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_161
       (.I0(ram_reg_r1_0_31_0_5_i_201_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_202_n_0),
        .O(ram_reg_r1_0_31_0_5_i_161_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_162
       (.I0(ram_reg_r1_0_31_0_5_i_203_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_204_n_0),
        .O(ram_reg_r1_0_31_0_5_i_162_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_163
       (.I0(ram_reg_r1_0_31_0_5_i_205_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_206_n_0),
        .O(ram_reg_r1_0_31_0_5_i_163_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_164
       (.I0(ram_reg_r1_0_31_0_5_i_207_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_208_n_0),
        .O(ram_reg_r1_0_31_0_5_i_164_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_165
       (.I0(ram_reg_r1_0_31_0_5_i_209_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_210_n_0),
        .O(ram_reg_r1_0_31_0_5_i_165_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_166
       (.I0(ram_reg_r1_0_31_0_5_i_211_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_212_n_0),
        .O(ram_reg_r1_0_31_0_5_i_166_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_167
       (.I0(ram_reg_r1_0_31_0_5_i_213_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_214_n_0),
        .O(ram_reg_r1_0_31_0_5_i_167_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_168
       (.I0(ram_reg_r1_0_31_0_5_i_215_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_216_n_0),
        .O(ram_reg_r1_0_31_0_5_i_168_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_169
       (.I0(memory_reg_bram_3_n_34),
        .I1(memory_reg_bram_2_n_34),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_34),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_34),
        .O(ram_reg_r1_0_31_0_5_i_169_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_17
       (.I0(ram_reg_r1_0_31_0_5_i_57_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_58_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[0]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_170
       (.I0(memory_reg_bram_7_n_34),
        .I1(memory_reg_bram_6_n_34),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_34),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_34),
        .O(ram_reg_r1_0_31_0_5_i_170_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_171
       (.I0(memory_reg_bram_11_n_34),
        .I1(memory_reg_bram_10_n_34),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_34),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_34),
        .O(ram_reg_r1_0_31_0_5_i_171_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_172
       (.I0(memory_reg_bram_15_n_34),
        .I1(memory_reg_bram_14_n_34),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_34),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_34),
        .O(ram_reg_r1_0_31_0_5_i_172_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_173
       (.I0(memory_reg_bram_3_n_26),
        .I1(memory_reg_bram_2_n_26),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_26),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_26),
        .O(ram_reg_r1_0_31_0_5_i_173_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_174
       (.I0(memory_reg_bram_7_n_26),
        .I1(memory_reg_bram_6_n_26),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_26),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_26),
        .O(ram_reg_r1_0_31_0_5_i_174_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_175
       (.I0(memory_reg_bram_11_n_26),
        .I1(memory_reg_bram_10_n_26),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_26),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_26),
        .O(ram_reg_r1_0_31_0_5_i_175_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_176
       (.I0(memory_reg_bram_15_n_26),
        .I1(memory_reg_bram_14_n_26),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_26),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_26),
        .O(ram_reg_r1_0_31_0_5_i_176_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_177
       (.I0(memory_reg_bram_3_n_35),
        .I1(memory_reg_bram_2_n_35),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_35),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_35),
        .O(ram_reg_r1_0_31_0_5_i_177_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_178
       (.I0(memory_reg_bram_7_n_35),
        .I1(memory_reg_bram_6_n_35),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_35),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_35),
        .O(ram_reg_r1_0_31_0_5_i_178_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_179
       (.I0(memory_reg_bram_11_n_35),
        .I1(memory_reg_bram_10_n_35),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_35),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_35),
        .O(ram_reg_r1_0_31_0_5_i_179_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    ram_reg_r1_0_31_0_5_i_18
       (.I0(memory_reg_mux_sel_b_pos_0_0[0]),
        .I1(memory_reg_mux_sel_b_pos_0_0[1]),
        .I2(memory_reg_mux_sel_b_pos_0_0[2]),
        .I3(memory_reg_mux_sel_b_pos_0_0[4]),
        .I4(memory_reg_mux_sel_b_pos_0_0[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_180
       (.I0(memory_reg_bram_15_n_35),
        .I1(memory_reg_bram_14_n_35),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_35),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_35),
        .O(ram_reg_r1_0_31_0_5_i_180_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_181
       (.I0(memory_reg_bram_3_n_27),
        .I1(memory_reg_bram_2_n_27),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_27),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_27),
        .O(ram_reg_r1_0_31_0_5_i_181_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_182
       (.I0(memory_reg_bram_7_n_27),
        .I1(memory_reg_bram_6_n_27),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_27),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_27),
        .O(ram_reg_r1_0_31_0_5_i_182_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_183
       (.I0(memory_reg_bram_11_n_27),
        .I1(memory_reg_bram_10_n_27),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_27),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_27),
        .O(ram_reg_r1_0_31_0_5_i_183_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_184
       (.I0(memory_reg_bram_15_n_27),
        .I1(memory_reg_bram_14_n_27),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_27),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_27),
        .O(ram_reg_r1_0_31_0_5_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_185
       (.I0(memory_reg_bram_3_n_32),
        .I1(memory_reg_bram_2_n_32),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_32),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_32),
        .O(ram_reg_r1_0_31_0_5_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_186
       (.I0(memory_reg_bram_7_n_32),
        .I1(memory_reg_bram_6_n_32),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_32),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_32),
        .O(ram_reg_r1_0_31_0_5_i_186_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_187
       (.I0(memory_reg_bram_11_n_32),
        .I1(memory_reg_bram_10_n_32),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_32),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_32),
        .O(ram_reg_r1_0_31_0_5_i_187_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_188
       (.I0(memory_reg_bram_15_n_32),
        .I1(memory_reg_bram_14_n_32),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_32),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_32),
        .O(ram_reg_r1_0_31_0_5_i_188_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_189
       (.I0(memory_reg_bram_3_n_24),
        .I1(memory_reg_bram_2_n_24),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_24),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_24),
        .O(ram_reg_r1_0_31_0_5_i_189_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_19
       (.I0(ram_reg_r1_0_31_0_5_i_59_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_61_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[1]),
        .O(memReadSized__238[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_190
       (.I0(memory_reg_bram_7_n_24),
        .I1(memory_reg_bram_6_n_24),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_24),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_24),
        .O(ram_reg_r1_0_31_0_5_i_190_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_191
       (.I0(memory_reg_bram_11_n_24),
        .I1(memory_reg_bram_10_n_24),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_24),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_24),
        .O(ram_reg_r1_0_31_0_5_i_191_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_192
       (.I0(memory_reg_bram_15_n_24),
        .I1(memory_reg_bram_14_n_24),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_24),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_24),
        .O(ram_reg_r1_0_31_0_5_i_192_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_193
       (.I0(memory_reg_bram_3_n_33),
        .I1(memory_reg_bram_2_n_33),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_33),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_33),
        .O(ram_reg_r1_0_31_0_5_i_193_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_194
       (.I0(memory_reg_bram_7_n_33),
        .I1(memory_reg_bram_6_n_33),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_33),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_33),
        .O(ram_reg_r1_0_31_0_5_i_194_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_195
       (.I0(memory_reg_bram_11_n_33),
        .I1(memory_reg_bram_10_n_33),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_33),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_33),
        .O(ram_reg_r1_0_31_0_5_i_195_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_196
       (.I0(memory_reg_bram_15_n_33),
        .I1(memory_reg_bram_14_n_33),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_33),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_33),
        .O(ram_reg_r1_0_31_0_5_i_196_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_197
       (.I0(memory_reg_bram_3_n_25),
        .I1(memory_reg_bram_2_n_25),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_25),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_25),
        .O(ram_reg_r1_0_31_0_5_i_197_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_198
       (.I0(memory_reg_bram_7_n_25),
        .I1(memory_reg_bram_6_n_25),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_25),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_25),
        .O(ram_reg_r1_0_31_0_5_i_198_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_199
       (.I0(memory_reg_bram_11_n_25),
        .I1(memory_reg_bram_10_n_25),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_25),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_25),
        .O(ram_reg_r1_0_31_0_5_i_199_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_2
       (.I0(memReadSized__238[1]),
        .I1(ram_reg_r1_0_31_0_5_i_20_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_21_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[1]),
        .O(wd[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_20
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[1]),
        .O(ram_reg_r1_0_31_0_5_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_200
       (.I0(memory_reg_bram_15_n_25),
        .I1(memory_reg_bram_14_n_25),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_25),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_25),
        .O(ram_reg_r1_0_31_0_5_i_200_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_201
       (.I0(memory_reg_bram_3_n_30),
        .I1(memory_reg_bram_2_n_30),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_30),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_30),
        .O(ram_reg_r1_0_31_0_5_i_201_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_202
       (.I0(memory_reg_bram_7_n_30),
        .I1(memory_reg_bram_6_n_30),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_30),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_30),
        .O(ram_reg_r1_0_31_0_5_i_202_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_203
       (.I0(memory_reg_bram_11_n_30),
        .I1(memory_reg_bram_10_n_30),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_30),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_30),
        .O(ram_reg_r1_0_31_0_5_i_203_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_204
       (.I0(memory_reg_bram_15_n_30),
        .I1(memory_reg_bram_14_n_30),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_30),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_30),
        .O(ram_reg_r1_0_31_0_5_i_204_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_205
       (.I0(memory_reg_bram_3_n_22),
        .I1(memory_reg_bram_2_n_22),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_22),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_22),
        .O(ram_reg_r1_0_31_0_5_i_205_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_206
       (.I0(memory_reg_bram_7_n_22),
        .I1(memory_reg_bram_6_n_22),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_22),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_22),
        .O(ram_reg_r1_0_31_0_5_i_206_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_207
       (.I0(memory_reg_bram_11_n_22),
        .I1(memory_reg_bram_10_n_22),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_22),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_22),
        .O(ram_reg_r1_0_31_0_5_i_207_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_208
       (.I0(memory_reg_bram_15_n_22),
        .I1(memory_reg_bram_14_n_22),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_22),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_22),
        .O(ram_reg_r1_0_31_0_5_i_208_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_209
       (.I0(memory_reg_bram_3_n_31),
        .I1(memory_reg_bram_2_n_31),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_31),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_31),
        .O(ram_reg_r1_0_31_0_5_i_209_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_21
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[0]),
        .O(ram_reg_r1_0_31_0_5_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_210
       (.I0(memory_reg_bram_7_n_31),
        .I1(memory_reg_bram_6_n_31),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_31),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_31),
        .O(ram_reg_r1_0_31_0_5_i_210_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_211
       (.I0(memory_reg_bram_11_n_31),
        .I1(memory_reg_bram_10_n_31),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_31),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_31),
        .O(ram_reg_r1_0_31_0_5_i_211_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_212
       (.I0(memory_reg_bram_15_n_31),
        .I1(memory_reg_bram_14_n_31),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_31),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_31),
        .O(ram_reg_r1_0_31_0_5_i_212_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_213
       (.I0(memory_reg_bram_3_n_23),
        .I1(memory_reg_bram_2_n_23),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_23),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_23),
        .O(ram_reg_r1_0_31_0_5_i_213_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_214
       (.I0(memory_reg_bram_7_n_23),
        .I1(memory_reg_bram_6_n_23),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_23),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_23),
        .O(ram_reg_r1_0_31_0_5_i_214_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_215
       (.I0(memory_reg_bram_11_n_23),
        .I1(memory_reg_bram_10_n_23),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_23),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_23),
        .O(ram_reg_r1_0_31_0_5_i_215_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_216
       (.I0(memory_reg_bram_15_n_23),
        .I1(memory_reg_bram_14_n_23),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_23),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_23),
        .O(ram_reg_r1_0_31_0_5_i_216_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ram_reg_r1_0_31_0_5_i_22
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(IOBUS_addr[20]),
        .I3(IOBUS_addr[19]),
        .I4(IOBUS_addr[31]),
        .I5(memory_reg_bram_0_i_158_n_0),
        .O(ram_reg_r1_0_31_0_5_i_22_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_r1_0_31_0_5_i_23
       (.I0(rf_wr_sel),
        .I1(memory_mux_sel_a_pos_3_i_13_n_0),
        .O(ram_reg_r1_0_31_0_5_i_23_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_24
       (.I0(ram_reg_r1_0_31_0_5_i_65_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_66_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[0]),
        .O(memReadSized__238[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_25
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .O(ram_reg_r1_0_31_0_5_i_25_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_26
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(RESULT0_carry__6[0]),
        .O(ram_reg_r1_0_31_0_5_i_26_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_27
       (.I0(ram_reg_r1_0_31_0_5_i_68_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_69_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[3]),
        .O(memReadSized__238[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_28
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[3]),
        .O(ram_reg_r1_0_31_0_5_i_28_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_29
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[2]),
        .O(ram_reg_r1_0_31_0_5_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_3
       (.I0(memReadSized__238[0]),
        .I1(ram_reg_r1_0_31_0_5_i_25_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_26_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[0]),
        .O(wd[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_30
       (.I0(ram_reg_r1_0_31_0_5_i_71_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_72_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[2]),
        .O(memReadSized__238[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_31
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[2]),
        .O(ram_reg_r1_0_31_0_5_i_31_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_32
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[1]),
        .O(ram_reg_r1_0_31_0_5_i_32_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_33
       (.I0(ram_reg_r1_0_31_0_5_i_74_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_75_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[5]),
        .O(memReadSized__238[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_34
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[5]),
        .O(ram_reg_r1_0_31_0_5_i_34_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_35
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[4]),
        .O(ram_reg_r1_0_31_0_5_i_35_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_0_5_i_36
       (.I0(ram_reg_r1_0_31_0_5_i_77_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_78_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[4]),
        .O(memReadSized__238[4]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_37
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[4]),
        .O(ram_reg_r1_0_31_0_5_i_37_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_0_5_i_38
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[3]),
        .O(ram_reg_r1_0_31_0_5_i_38_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_39
       (.I0(ram_reg_r1_0_31_0_5_i_80_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_81_n_0),
        .O(ram_reg_r1_0_31_0_5_i_39_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_4
       (.I0(memReadSized__238[3]),
        .I1(ram_reg_r1_0_31_0_5_i_28_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_29_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[3]),
        .O(wd[3]));
  MUXF7 ram_reg_r1_0_31_0_5_i_40
       (.I0(ram_reg_r1_0_31_0_5_i_82_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_83_n_0),
        .O(ram_reg_r1_0_31_0_5_i_40_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_41
       (.I0(ram_reg_r1_0_31_0_5_i_84_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_85_n_0),
        .O(ram_reg_r1_0_31_0_5_i_41_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_42
       (.I0(ram_reg_r1_0_31_0_5_i_86_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_87_n_0),
        .O(ram_reg_r1_0_31_0_5_i_42_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_43
       (.I0(ram_reg_r1_0_31_0_5_i_88_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_89_n_0),
        .O(ram_reg_r1_0_31_0_5_i_43_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_44
       (.I0(ram_reg_r1_0_31_0_5_i_90_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_91_n_0),
        .O(ram_reg_r1_0_31_0_5_i_44_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_45
       (.I0(ram_reg_r1_0_31_0_5_i_92_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_93_n_0),
        .O(ram_reg_r1_0_31_0_5_i_45_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_46
       (.I0(ram_reg_r1_0_31_0_5_i_94_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_95_n_0),
        .O(ram_reg_r1_0_31_0_5_i_46_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_47
       (.I0(ram_reg_r1_0_31_0_5_i_96_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_97_n_0),
        .O(ram_reg_r1_0_31_0_5_i_47_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_48
       (.I0(ram_reg_r1_0_31_0_5_i_98_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_99_n_0),
        .O(ram_reg_r1_0_31_0_5_i_48_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_49
       (.I0(ram_reg_r1_0_31_0_5_i_100_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_101_n_0),
        .O(ram_reg_r1_0_31_0_5_i_49_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_5
       (.I0(memReadSized__238[2]),
        .I1(ram_reg_r1_0_31_0_5_i_31_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_32_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[2]),
        .O(wd[2]));
  MUXF7 ram_reg_r1_0_31_0_5_i_50
       (.I0(ram_reg_r1_0_31_0_5_i_102_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_103_n_0),
        .O(ram_reg_r1_0_31_0_5_i_50_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_51
       (.I0(ram_reg_r1_0_31_0_5_i_104_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_105_n_0),
        .O(ram_reg_r1_0_31_0_5_i_51_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_52
       (.I0(ram_reg_r1_0_31_0_5_i_106_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_107_n_0),
        .O(ram_reg_r1_0_31_0_5_i_52_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_53
       (.I0(ram_reg_r1_0_31_0_5_i_108_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_109_n_0),
        .O(ram_reg_r1_0_31_0_5_i_53_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_54
       (.I0(ram_reg_r1_0_31_0_5_i_110_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_111_n_0),
        .O(ram_reg_r1_0_31_0_5_i_54_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_55
       (.I0(ram_reg_r1_0_31_0_5_i_112_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_113_n_0),
        .O(ram_reg_r1_0_31_0_5_i_55_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_56
       (.I0(ram_reg_r1_0_31_0_5_i_114_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_115_n_0),
        .O(ram_reg_r1_0_31_0_5_i_56_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_57
       (.I0(ram_reg_r1_0_31_0_5_i_116_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_117_n_0),
        .O(ram_reg_r1_0_31_0_5_i_57_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_0_5_i_58
       (.I0(ram_reg_r1_0_31_0_5_i_118_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_119_n_0),
        .O(ram_reg_r1_0_31_0_5_i_58_n_0),
        .S(memory_reg_mux_sel_b_pos_1_n_0));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_59
       (.I0(p_7_in[1]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[1]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_59_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_6
       (.I0(memReadSized__238[5]),
        .I1(ram_reg_r1_0_31_0_5_i_34_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_35_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[5]),
        .O(wd[5]));
  LUT5 #(
    .INIT(32'h01010111)) 
    ram_reg_r1_0_31_0_5_i_60
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_mux_sel_b_pos_0_0[6]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(ram_reg_r1_0_31_0_5_i_60_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_61
       (.I0(memory_reg_mux_sel_a_pos_0_1),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_19_0),
        .O(ram_reg_r1_0_31_0_5_i_61_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    ram_reg_r1_0_31_0_5_i_62
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(IOBUS_addr[1]),
        .I2(memory_mux_sel_a_pos_3_i_3_0),
        .O(ram_reg_r1_0_31_0_5_i_62_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_63
       (.I0(memory_reg_mux_sel_a_pos_0_9),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_19_1),
        .O(p_5_in[1]));
  LUT6 #(
    .INIT(64'h0000000001000101)) 
    ram_reg_r1_0_31_0_5_i_64
       (.I0(ir[3]),
        .I1(\OUT[31]_i_3_n_0 ),
        .I2(ir[6]),
        .I3(ir[4]),
        .I4(ir[2]),
        .I5(\OUT[31]_i_4_n_0 ),
        .O(rf_wr_sel));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_65
       (.I0(p_7_in[0]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[0]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_65_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_66
       (.I0(memory_reg_mux_sel_a_pos_0_0),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_24_1),
        .O(ram_reg_r1_0_31_0_5_i_66_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_67
       (.I0(memory_reg_mux_sel_a_pos_0_8),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_24_2),
        .O(p_5_in[0]));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_68
       (.I0(p_7_in[3]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[3]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_68_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_69
       (.I0(memory_reg_mux_sel_a_pos_0_3),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_27_0),
        .O(ram_reg_r1_0_31_0_5_i_69_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_0_5_i_7
       (.I0(memReadSized__238[4]),
        .I1(ram_reg_r1_0_31_0_5_i_37_n_0),
        .I2(ram_reg_r1_0_31_0_5_i_38_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[4]),
        .O(wd[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_70
       (.I0(memory_reg_mux_sel_a_pos_0_11),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_27_1),
        .O(p_5_in[3]));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_71
       (.I0(p_7_in[2]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[2]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_71_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_72
       (.I0(memory_reg_mux_sel_a_pos_0_2),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_30_0),
        .O(ram_reg_r1_0_31_0_5_i_72_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_73
       (.I0(memory_reg_mux_sel_a_pos_0_10),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_30_1),
        .O(p_5_in[2]));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_74
       (.I0(p_7_in[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[5]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_74_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_75
       (.I0(memory_reg_mux_sel_a_pos_0_5),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_33_0),
        .O(ram_reg_r1_0_31_0_5_i_75_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_76
       (.I0(memory_reg_mux_sel_a_pos_0_13),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_33_1),
        .O(p_5_in[5]));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_0_5_i_77
       (.I0(p_7_in[4]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[4]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_0_5_i_77_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_78
       (.I0(memory_reg_mux_sel_a_pos_0_4),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_36_0),
        .O(ram_reg_r1_0_31_0_5_i_78_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_0_5_i_79
       (.I0(memory_reg_mux_sel_a_pos_0_12),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_0_5_i_36_1),
        .O(p_5_in[4]));
  MUXF8 ram_reg_r1_0_31_0_5_i_8
       (.I0(ram_reg_r1_0_31_0_5_i_39_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_40_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[12]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_80
       (.I0(memory_reg_bram_3_n_48),
        .I1(memory_reg_bram_2_n_48),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_48),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_48),
        .O(ram_reg_r1_0_31_0_5_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_81
       (.I0(memory_reg_bram_7_n_48),
        .I1(memory_reg_bram_6_n_48),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_48),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_48),
        .O(ram_reg_r1_0_31_0_5_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_82
       (.I0(memory_reg_bram_11_n_48),
        .I1(memory_reg_bram_10_n_48),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_48),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_48),
        .O(ram_reg_r1_0_31_0_5_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_83
       (.I0(memory_reg_bram_15_n_48),
        .I1(memory_reg_bram_14_n_48),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_48),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_48),
        .O(ram_reg_r1_0_31_0_5_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_84
       (.I0(memory_reg_bram_3_n_49),
        .I1(memory_reg_bram_2_n_49),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_49),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_49),
        .O(ram_reg_r1_0_31_0_5_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_85
       (.I0(memory_reg_bram_7_n_49),
        .I1(memory_reg_bram_6_n_49),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_49),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_49),
        .O(ram_reg_r1_0_31_0_5_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_86
       (.I0(memory_reg_bram_11_n_49),
        .I1(memory_reg_bram_10_n_49),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_49),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_49),
        .O(ram_reg_r1_0_31_0_5_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_87
       (.I0(memory_reg_bram_15_n_49),
        .I1(memory_reg_bram_14_n_49),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_49),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_49),
        .O(ram_reg_r1_0_31_0_5_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_88
       (.I0(memory_reg_bram_3_n_50),
        .I1(memory_reg_bram_2_n_50),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_50),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_50),
        .O(ram_reg_r1_0_31_0_5_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_89
       (.I0(memory_reg_bram_7_n_50),
        .I1(memory_reg_bram_6_n_50),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_50),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_50),
        .O(ram_reg_r1_0_31_0_5_i_89_n_0));
  MUXF8 ram_reg_r1_0_31_0_5_i_9
       (.I0(ram_reg_r1_0_31_0_5_i_41_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_42_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[11]),
        .S(memory_reg_mux_sel_b_pos_0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_90
       (.I0(memory_reg_bram_11_n_50),
        .I1(memory_reg_bram_10_n_50),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_50),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_50),
        .O(ram_reg_r1_0_31_0_5_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_91
       (.I0(memory_reg_bram_15_n_50),
        .I1(memory_reg_bram_14_n_50),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_50),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_50),
        .O(ram_reg_r1_0_31_0_5_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_92
       (.I0(memory_reg_bram_3_n_51),
        .I1(memory_reg_bram_2_n_51),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_51),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_51),
        .O(ram_reg_r1_0_31_0_5_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_93
       (.I0(memory_reg_bram_7_n_51),
        .I1(memory_reg_bram_6_n_51),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_51),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_51),
        .O(ram_reg_r1_0_31_0_5_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_94
       (.I0(memory_reg_bram_11_n_51),
        .I1(memory_reg_bram_10_n_51),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_51),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_51),
        .O(ram_reg_r1_0_31_0_5_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_95
       (.I0(memory_reg_bram_15_n_51),
        .I1(memory_reg_bram_14_n_51),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_51),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_51),
        .O(ram_reg_r1_0_31_0_5_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_96
       (.I0(memory_reg_bram_3_n_52),
        .I1(memory_reg_bram_2_n_52),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_52),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_52),
        .O(ram_reg_r1_0_31_0_5_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_97
       (.I0(memory_reg_bram_7_n_52),
        .I1(memory_reg_bram_6_n_52),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_52),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_52),
        .O(ram_reg_r1_0_31_0_5_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_98
       (.I0(memory_reg_bram_11_n_52),
        .I1(memory_reg_bram_10_n_52),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_52),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_52),
        .O(ram_reg_r1_0_31_0_5_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_0_5_i_99
       (.I0(memory_reg_bram_15_n_52),
        .I1(memory_reg_bram_14_n_52),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_52),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_52),
        .O(ram_reg_r1_0_31_0_5_i_99_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_12_17_i_1
       (.I0(ram_reg_r1_0_31_12_17_i_7_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_8_n_0),
        .I3(ram_reg_r1_0_31_12_17_i_9_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[13]),
        .O(wd[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_12_17_i_10
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[12]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[11]),
        .O(ram_reg_r1_0_31_12_17_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_12_17_i_11
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_28_n_0),
        .O(ram_reg_r1_0_31_12_17_i_11_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_12_17_i_12
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_29_n_0),
        .O(ram_reg_r1_0_31_12_17_i_12_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_12_17_i_13
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[15]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[14]),
        .O(ram_reg_r1_0_31_12_17_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_12_17_i_14
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_30_n_0),
        .O(ram_reg_r1_0_31_12_17_i_14_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_12_17_i_15
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_31_n_0),
        .O(ram_reg_r1_0_31_12_17_i_15_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_12_17_i_16
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[14]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[13]),
        .O(ram_reg_r1_0_31_12_17_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_12_17_i_17
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_32_n_0),
        .O(ram_reg_r1_0_31_12_17_i_17_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_12_17_i_18
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_33_n_0),
        .O(ram_reg_r1_0_31_12_17_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_r1_0_31_12_17_i_19
       (.I0(memory_mux_sel_a_pos_3_i_13_n_0),
        .I1(rf_wr_sel),
        .O(ram_reg_r1_0_31_12_17_i_19_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_12_17_i_2
       (.I0(ram_reg_r1_0_31_12_17_i_10_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_11_n_0),
        .I3(ram_reg_r1_0_31_12_17_i_12_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[12]),
        .O(wd[12]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_12_17_i_20
       (.I0(memory_mux_sel_a_pos_3_i_13_n_0),
        .I1(rf_wr_sel),
        .O(ram_reg_r1_0_31_12_17_i_20_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_12_17_i_21
       (.I0(ram_reg_r1_0_31_12_17_i_34_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_12_17_i_35_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_36_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_37_n_0),
        .O(IOBUS_addr[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_12_17_i_22
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[1]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[17]));
  LUT5 #(
    .INIT(32'h00000002)) 
    ram_reg_r1_0_31_12_17_i_23
       (.I0(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I1(memory_reg_bram_0_i_158_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_156_n_0),
        .I4(memory_reg_bram_0_i_155_n_0),
        .O(ram_reg_r1_0_31_12_17_i_23_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_12_17_i_24
       (.I0(ram_reg_r1_0_31_12_17_i_42_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_12_17_i_43_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_44_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_45_n_0),
        .O(IOBUS_addr[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_12_17_i_25
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[0]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[16]));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_12_17_i_26
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[5]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_12_17_i_47_n_0),
        .O(ram_reg_r1_0_31_12_17_i_26_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_12_17_i_27
       (.I0(p_6_in[5]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_12_17_i_27_n_0));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_12_17_i_28
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[4]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_12_17_i_48_n_0),
        .O(ram_reg_r1_0_31_12_17_i_28_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_12_17_i_29
       (.I0(p_6_in[4]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_12_17_i_29_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_12_17_i_3
       (.I0(ram_reg_r1_0_31_12_17_i_13_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_14_n_0),
        .I3(ram_reg_r1_0_31_12_17_i_15_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[15]),
        .O(wd[15]));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_12_17_i_30
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[7]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_12_17_i_49_n_0),
        .O(ram_reg_r1_0_31_12_17_i_30_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_12_17_i_31
       (.I0(p_6_in[7]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_12_17_i_31_n_0));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_12_17_i_32
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[6]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_12_17_i_50_n_0),
        .O(ram_reg_r1_0_31_12_17_i_32_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_12_17_i_33
       (.I0(p_6_in[6]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_12_17_i_33_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_12_17_i_34
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_51_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_52_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_53_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_12_17_i_34_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_12_17_i_35
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_12_17_i_54_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_55_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[16]),
        .O(ram_reg_r1_0_31_12_17_i_35_n_0));
  LUT6 #(
    .INIT(64'hE200E2FFE2FFE200)) 
    ram_reg_r1_0_31_12_17_i_36
       (.I0(ram_reg_r1_0_31_12_17_i_56_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_12_17_i_57_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(srcA[5]),
        .I5(srcB[17]),
        .O(ram_reg_r1_0_31_12_17_i_36_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_12_17_i_37
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[5]),
        .I2(srcB[17]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_12_17_i_37_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_12_17_i_38
       (.I0(memory_reg_mux_sel_a_pos_0_17),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_32_0),
        .O(p_6_in[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    ram_reg_r1_0_31_12_17_i_39
       (.I0(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_5_in[7]),
        .I3(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_12_17_i_39_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_12_17_i_4
       (.I0(ram_reg_r1_0_31_12_17_i_16_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_17_n_0),
        .I3(ram_reg_r1_0_31_12_17_i_18_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[14]),
        .O(wd[14]));
  LUT3 #(
    .INIT(8'h01)) 
    ram_reg_r1_0_31_12_17_i_40
       (.I0(IOBUS_addr[1]),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(ram_reg_r1_0_31_12_17_i_40_n_0));
  LUT6 #(
    .INIT(64'h22002200EECC22C0)) 
    ram_reg_r1_0_31_12_17_i_41
       (.I0(ram_reg_r1_0_31_12_17_i_60_n_0),
        .I1(memory_mux_sel_a_pos_3_i_3_0),
        .I2(ram_reg_r1_0_31_12_17_i_61_n_0),
        .I3(IOBUS_addr[1]),
        .I4(ram_reg_r1_0_31_12_17_i_62_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_63_n_0),
        .O(ram_reg_r1_0_31_12_17_i_41_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_12_17_i_42
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_64_n_0),
        .I2(ram_reg_r1_0_31_12_17_i_53_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(memory_mux_sel_a_pos_0_i_7_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_12_17_i_42_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_12_17_i_43
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(memory_mux_sel_a_pos_0_i_8_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_54_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[15]),
        .O(ram_reg_r1_0_31_12_17_i_43_n_0));
  LUT6 #(
    .INIT(64'hE200E2FFE2FFE200)) 
    ram_reg_r1_0_31_12_17_i_44
       (.I0(memory_mux_sel_a_pos_0_i_9_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_12_17_i_56_n_0),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(srcA[4]),
        .I5(srcB[16]),
        .O(ram_reg_r1_0_31_12_17_i_44_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_12_17_i_45
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[4]),
        .I2(srcB[16]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_12_17_i_45_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_12_17_i_46
       (.I0(memory_reg_mux_sel_a_pos_0_16),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_34_0),
        .O(p_6_in[0]));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_12_17_i_47
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[5]),
        .O(ram_reg_r1_0_31_12_17_i_47_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_12_17_i_48
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[4]),
        .O(ram_reg_r1_0_31_12_17_i_48_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_12_17_i_49
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[7]),
        .O(ram_reg_r1_0_31_12_17_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_12_17_i_5
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[16]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[17]),
        .I4(memReadSized__238[17]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[17]));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_12_17_i_50
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[6]),
        .O(ram_reg_r1_0_31_12_17_i_50_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_12_17_i_51
       (.I0(srcA[5]),
        .I1(data1[17]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_12_17_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_52
       (.I0(ram_reg_r1_0_31_12_17_i_67_n_0),
        .I1(memory_mux_sel_a_pos_2_i_13_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_0_i_10_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_28_n_0),
        .O(ram_reg_r1_0_31_12_17_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_53
       (.I0(ram_reg_r1_0_31_12_17_i_68_n_0),
        .I1(memory_mux_sel_a_pos_3_i_24_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_1_i_11_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_26_n_0),
        .O(ram_reg_r1_0_31_12_17_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_54
       (.I0(memory_mux_sel_a_pos_1_i_12_n_0),
        .I1(memory_mux_sel_a_pos_1_i_13_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_3_i_38_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_12_17_i_69_n_0),
        .O(ram_reg_r1_0_31_12_17_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_55
       (.I0(memory_mux_sel_a_pos_0_i_11_n_0),
        .I1(memory_mux_sel_a_pos_0_i_12_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_2_i_15_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_12_17_i_70_n_0),
        .O(ram_reg_r1_0_31_12_17_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_56
       (.I0(ram_reg_r1_0_31_12_17_i_71_n_0),
        .I1(memory_mux_sel_a_pos_3_i_43_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_1_i_14_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_45_n_0),
        .O(ram_reg_r1_0_31_12_17_i_56_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ram_reg_r1_0_31_12_17_i_57
       (.I0(ram_reg_r1_0_31_12_17_i_72_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(memory_mux_sel_a_pos_0_i_13_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_39_n_0),
        .O(ram_reg_r1_0_31_12_17_i_57_n_0));
  MUXF8 ram_reg_r1_0_31_12_17_i_58
       (.I0(ram_reg_r1_0_31_12_17_i_73_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_74_n_0),
        .O(memory_reg_mux_sel_a_pos_0_17),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_12_17_i_6
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[15]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[16]),
        .I4(memReadSized__238[16]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[16]));
  LUT4 #(
    .INIT(16'h2230)) 
    ram_reg_r1_0_31_12_17_i_60
       (.I0(p_7_in[7]),
        .I1(ram_reg_r1_0_31_12_17_i_63_n_0),
        .I2(p_6_in[7]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .O(ram_reg_r1_0_31_12_17_i_60_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_12_17_i_61
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(p_6_in[7]),
        .O(ram_reg_r1_0_31_12_17_i_61_n_0));
  LUT6 #(
    .INIT(64'hBABABABB8A8A8A88)) 
    ram_reg_r1_0_31_12_17_i_62
       (.I0(ram_reg_r1_0_31_12_17_i_75_n_0),
        .I1(memory_reg_bram_0_i_145_n_0),
        .I2(alu_fun[3]),
        .I3(memory_reg_bram_0_i_146_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_76_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_77_n_0),
        .O(ram_reg_r1_0_31_12_17_i_62_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_r1_0_31_12_17_i_63
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(ram_reg_r1_0_31_12_17_i_63_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_12_17_i_64
       (.I0(srcA[4]),
        .I1(data1[16]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_12_17_i_64_n_0));
  MUXF8 ram_reg_r1_0_31_12_17_i_65
       (.I0(ram_reg_r1_0_31_12_17_i_78_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_79_n_0),
        .O(memory_reg_mux_sel_a_pos_0_16),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000E2EEE222)) 
    ram_reg_r1_0_31_12_17_i_67
       (.I0(srcA[12]),
        .I1(\OUT_reg[11] [4]),
        .I2(memory_reg_mux_sel_b_pos_0_0[24]),
        .I3(alu_src_a),
        .I4(rs1[31]),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_12_17_i_67_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000E2EEE222)) 
    ram_reg_r1_0_31_12_17_i_68
       (.I0(srcA[11]),
        .I1(\OUT_reg[11] [4]),
        .I2(memory_reg_mux_sel_b_pos_0_0[24]),
        .I3(alu_src_a),
        .I4(rs1[31]),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_12_17_i_68_n_0));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    ram_reg_r1_0_31_12_17_i_69
       (.I0(rs1[8]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[0]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[4]),
        .O(ram_reg_r1_0_31_12_17_i_69_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_12_17_i_7
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[13]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[12]),
        .O(ram_reg_r1_0_31_12_17_i_7_n_0));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    ram_reg_r1_0_31_12_17_i_70
       (.I0(rs1[9]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[1]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[5]),
        .O(ram_reg_r1_0_31_12_17_i_70_n_0));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    ram_reg_r1_0_31_12_17_i_71
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(alu_src_a),
        .I2(rs1[31]),
        .I3(srcA[11]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(ram_reg_r1_0_31_12_17_i_71_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    ram_reg_r1_0_31_12_17_i_72
       (.I0(srcA[12]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[16]),
        .I3(srcA[8]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(ram_reg_r1_0_31_12_17_i_72_n_0));
  MUXF7 ram_reg_r1_0_31_12_17_i_73
       (.I0(ram_reg_r1_0_31_12_17_i_80_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_81_n_0),
        .O(ram_reg_r1_0_31_12_17_i_73_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_12_17_i_74
       (.I0(ram_reg_r1_0_31_12_17_i_82_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_83_n_0),
        .O(ram_reg_r1_0_31_12_17_i_74_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_r1_0_31_12_17_i_75
       (.I0(p_7_in[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .O(ram_reg_r1_0_31_12_17_i_75_n_0));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    ram_reg_r1_0_31_12_17_i_76
       (.I0(memory_mux_sel_a_pos_3_i_5_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_84_n_0),
        .I2(memory_reg_bram_0_i_143_n_0),
        .I3(\OUT_reg[0] ),
        .I4(\OUT_reg[0]_0 ),
        .I5(memory_reg_bram_0_i_189_n_0),
        .O(ram_reg_r1_0_31_12_17_i_76_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_r1_0_31_12_17_i_77
       (.I0(p_5_in[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .O(ram_reg_r1_0_31_12_17_i_77_n_0));
  MUXF7 ram_reg_r1_0_31_12_17_i_78
       (.I0(ram_reg_r1_0_31_12_17_i_85_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_86_n_0),
        .O(ram_reg_r1_0_31_12_17_i_78_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_12_17_i_79
       (.I0(ram_reg_r1_0_31_12_17_i_87_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_88_n_0),
        .O(ram_reg_r1_0_31_12_17_i_79_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_12_17_i_8
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_26_n_0),
        .O(ram_reg_r1_0_31_12_17_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_80
       (.I0(memory_reg_bram_3_n_18),
        .I1(memory_reg_bram_2_n_18),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_18),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_18),
        .O(ram_reg_r1_0_31_12_17_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_81
       (.I0(memory_reg_bram_7_n_18),
        .I1(memory_reg_bram_6_n_18),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_18),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_18),
        .O(ram_reg_r1_0_31_12_17_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_82
       (.I0(memory_reg_bram_11_n_18),
        .I1(memory_reg_bram_10_n_18),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_18),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_18),
        .O(ram_reg_r1_0_31_12_17_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_83
       (.I0(memory_reg_bram_15_n_18),
        .I1(memory_reg_bram_14_n_18),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_18),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_18),
        .O(ram_reg_r1_0_31_12_17_i_83_n_0));
  LUT4 #(
    .INIT(16'h00A6)) 
    ram_reg_r1_0_31_12_17_i_84
       (.I0(\OUT_reg[11] [1]),
        .I1(rs1[1]),
        .I2(alu_src_a),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_12_17_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_85
       (.I0(memory_reg_bram_3_n_19),
        .I1(memory_reg_bram_2_n_19),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_19),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_19),
        .O(ram_reg_r1_0_31_12_17_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_86
       (.I0(memory_reg_bram_7_n_19),
        .I1(memory_reg_bram_6_n_19),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_19),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_19),
        .O(ram_reg_r1_0_31_12_17_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_87
       (.I0(memory_reg_bram_11_n_19),
        .I1(memory_reg_bram_10_n_19),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_19),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_19),
        .O(ram_reg_r1_0_31_12_17_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_12_17_i_88
       (.I0(memory_reg_bram_15_n_19),
        .I1(memory_reg_bram_14_n_19),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_19),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_19),
        .O(ram_reg_r1_0_31_12_17_i_88_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_12_17_i_9
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_12_17_i_27_n_0),
        .O(ram_reg_r1_0_31_12_17_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_1
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[18]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[19]),
        .I4(memReadSized__238[19]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_10
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[2]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[18]));
  MUXF7 ram_reg_r1_0_31_18_23_i_100
       (.I0(ram_reg_r1_0_31_18_23_i_121_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_122_n_0),
        .O(ram_reg_r1_0_31_18_23_i_100_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_101
       (.I0(ram_reg_r1_0_31_18_23_i_123_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_124_n_0),
        .O(ram_reg_r1_0_31_18_23_i_101_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_102
       (.I0(ram_reg_r1_0_31_18_23_i_125_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_126_n_0),
        .O(ram_reg_r1_0_31_18_23_i_102_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_103
       (.I0(ram_reg_r1_0_31_18_23_i_127_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_128_n_0),
        .O(ram_reg_r1_0_31_18_23_i_103_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    ram_reg_r1_0_31_18_23_i_104
       (.I0(srcA[18]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[14]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_104_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    ram_reg_r1_0_31_18_23_i_105
       (.I0(srcA[17]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[13]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_105_n_0));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    ram_reg_r1_0_31_18_23_i_106
       (.I0(srcA[2]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[6]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[10]),
        .O(ram_reg_r1_0_31_18_23_i_106_n_0));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    ram_reg_r1_0_31_18_23_i_107
       (.I0(srcA[3]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[7]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[11]),
        .O(ram_reg_r1_0_31_18_23_i_107_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    ram_reg_r1_0_31_18_23_i_108
       (.I0(srcA[18]),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(srcA[14]),
        .O(ram_reg_r1_0_31_18_23_i_108_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_109
       (.I0(ram_reg_r1_0_31_18_23_i_129_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_130_n_0),
        .O(ram_reg_r1_0_31_18_23_i_109_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_11
       (.I0(ram_reg_r1_0_31_18_23_i_29_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_30_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_31_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_32_n_0),
        .O(IOBUS_addr[21]));
  MUXF7 ram_reg_r1_0_31_18_23_i_110
       (.I0(ram_reg_r1_0_31_18_23_i_131_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_132_n_0),
        .O(ram_reg_r1_0_31_18_23_i_110_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_111
       (.I0(ram_reg_r1_0_31_18_23_i_133_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_134_n_0),
        .O(ram_reg_r1_0_31_18_23_i_111_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_112
       (.I0(ram_reg_r1_0_31_18_23_i_135_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_136_n_0),
        .O(ram_reg_r1_0_31_18_23_i_112_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_113
       (.I0(memory_reg_bram_3_n_16),
        .I1(memory_reg_bram_2_n_16),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_16),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_16),
        .O(ram_reg_r1_0_31_18_23_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_114
       (.I0(memory_reg_bram_7_n_16),
        .I1(memory_reg_bram_6_n_16),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_16),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_16),
        .O(ram_reg_r1_0_31_18_23_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_115
       (.I0(memory_reg_bram_11_n_16),
        .I1(memory_reg_bram_10_n_16),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_16),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_16),
        .O(ram_reg_r1_0_31_18_23_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_116
       (.I0(memory_reg_bram_15_n_16),
        .I1(memory_reg_bram_14_n_16),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_16),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_16),
        .O(ram_reg_r1_0_31_18_23_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_117
       (.I0(memory_reg_bram_3_n_17),
        .I1(memory_reg_bram_2_n_17),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_17),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_17),
        .O(ram_reg_r1_0_31_18_23_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_118
       (.I0(memory_reg_bram_7_n_17),
        .I1(memory_reg_bram_6_n_17),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_17),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_17),
        .O(ram_reg_r1_0_31_18_23_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_119
       (.I0(memory_reg_bram_11_n_17),
        .I1(memory_reg_bram_10_n_17),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_17),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_17),
        .O(ram_reg_r1_0_31_18_23_i_119_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_12
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[5]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_120
       (.I0(memory_reg_bram_15_n_17),
        .I1(memory_reg_bram_14_n_17),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_17),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_17),
        .O(ram_reg_r1_0_31_18_23_i_120_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_121
       (.I0(memory_reg_bram_3_n_14),
        .I1(memory_reg_bram_2_n_14),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_14),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_14),
        .O(ram_reg_r1_0_31_18_23_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_122
       (.I0(memory_reg_bram_7_n_14),
        .I1(memory_reg_bram_6_n_14),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_14),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_14),
        .O(ram_reg_r1_0_31_18_23_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_123
       (.I0(memory_reg_bram_11_n_14),
        .I1(memory_reg_bram_10_n_14),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_14),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_14),
        .O(ram_reg_r1_0_31_18_23_i_123_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_124
       (.I0(memory_reg_bram_15_n_14),
        .I1(memory_reg_bram_14_n_14),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_14),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_14),
        .O(ram_reg_r1_0_31_18_23_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_125
       (.I0(memory_reg_bram_3_n_15),
        .I1(memory_reg_bram_2_n_15),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_15),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_15),
        .O(ram_reg_r1_0_31_18_23_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_126
       (.I0(memory_reg_bram_7_n_15),
        .I1(memory_reg_bram_6_n_15),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_15),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_15),
        .O(ram_reg_r1_0_31_18_23_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_127
       (.I0(memory_reg_bram_11_n_15),
        .I1(memory_reg_bram_10_n_15),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_15),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_15),
        .O(ram_reg_r1_0_31_18_23_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_128
       (.I0(memory_reg_bram_15_n_15),
        .I1(memory_reg_bram_14_n_15),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_15),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_15),
        .O(ram_reg_r1_0_31_18_23_i_128_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_129
       (.I0(memory_reg_bram_3_n_12),
        .I1(memory_reg_bram_2_n_12),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_12),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_12),
        .O(ram_reg_r1_0_31_18_23_i_129_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_13
       (.I0(ram_reg_r1_0_31_18_23_i_34_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_35_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_36_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_37_n_0),
        .O(IOBUS_addr[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_130
       (.I0(memory_reg_bram_7_n_12),
        .I1(memory_reg_bram_6_n_12),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_12),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_12),
        .O(ram_reg_r1_0_31_18_23_i_130_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_131
       (.I0(memory_reg_bram_11_n_12),
        .I1(memory_reg_bram_10_n_12),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_12),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_12),
        .O(ram_reg_r1_0_31_18_23_i_131_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_132
       (.I0(memory_reg_bram_15_n_12),
        .I1(memory_reg_bram_14_n_12),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_12),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_12),
        .O(ram_reg_r1_0_31_18_23_i_132_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_133
       (.I0(memory_reg_bram_3_n_13),
        .I1(memory_reg_bram_2_n_13),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_13),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_13),
        .O(ram_reg_r1_0_31_18_23_i_133_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_134
       (.I0(memory_reg_bram_7_n_13),
        .I1(memory_reg_bram_6_n_13),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_13),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_13),
        .O(ram_reg_r1_0_31_18_23_i_134_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_135
       (.I0(memory_reg_bram_11_n_13),
        .I1(memory_reg_bram_10_n_13),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_13),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_13),
        .O(ram_reg_r1_0_31_18_23_i_135_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_136
       (.I0(memory_reg_bram_15_n_13),
        .I1(memory_reg_bram_14_n_13),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_13),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_13),
        .O(ram_reg_r1_0_31_18_23_i_136_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_14
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[4]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[20]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_15
       (.I0(ram_reg_r1_0_31_18_23_i_39_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_40_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_41_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_42_n_0),
        .O(IOBUS_addr[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_16
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[7]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[23]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_17
       (.I0(ram_reg_r1_0_31_18_23_i_44_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_45_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_46_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_47_n_0),
        .O(IOBUS_addr[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_18
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[6]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[22]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_19
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_49_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_50_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_51_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_2
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[17]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[18]),
        .I4(memReadSized__238[18]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[18]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_20
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_52_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_53_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[18]),
        .O(ram_reg_r1_0_31_18_23_i_20_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_21
       (.I0(ram_reg_r1_0_31_18_23_i_54_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_55_n_0),
        .I3(srcA[7]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[19]),
        .O(ram_reg_r1_0_31_18_23_i_21_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_22
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[7]),
        .I2(srcB[19]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_22_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_23
       (.I0(memory_reg_mux_sel_a_pos_0_19),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_36_0),
        .O(p_6_in[3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_24
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_58_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_51_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_52_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_24_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_25
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_12_17_i_55_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_52_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[17]),
        .O(ram_reg_r1_0_31_18_23_i_25_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_26
       (.I0(ram_reg_r1_0_31_12_17_i_57_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_54_n_0),
        .I3(srcA[6]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[18]),
        .O(ram_reg_r1_0_31_18_23_i_26_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_27
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[6]),
        .I2(srcB[18]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_27_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_28
       (.I0(memory_reg_mux_sel_a_pos_0_18),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_38_0),
        .O(p_6_in[2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_29
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_61_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_62_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_63_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_3
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[20]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[21]),
        .I4(memReadSized__238[21]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[21]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_30
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_64_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_65_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[20]),
        .O(ram_reg_r1_0_31_18_23_i_30_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_31
       (.I0(ram_reg_r1_0_31_18_23_i_66_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_67_n_0),
        .I3(srcA[9]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[21]),
        .O(ram_reg_r1_0_31_18_23_i_31_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_32
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[9]),
        .I2(srcB[21]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_32_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_33
       (.I0(memory_reg_mux_sel_a_pos_0_21),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_27_0),
        .O(p_6_in[5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_34
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_70_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_63_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_50_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_34_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_35
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_53_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_64_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[19]),
        .O(ram_reg_r1_0_31_18_23_i_35_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_36
       (.I0(ram_reg_r1_0_31_18_23_i_55_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_66_n_0),
        .I3(srcA[8]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[20]),
        .O(ram_reg_r1_0_31_18_23_i_36_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_37
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[8]),
        .I2(srcB[20]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_37_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_38
       (.I0(memory_reg_mux_sel_a_pos_0_20),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_29_0),
        .O(p_6_in[4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_39
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_73_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_74_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_75_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_4
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[19]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[20]),
        .I4(memReadSized__238[20]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[20]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_40
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_76_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_77_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[22]),
        .O(ram_reg_r1_0_31_18_23_i_40_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_41
       (.I0(ram_reg_r1_0_31_18_23_i_78_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_79_n_0),
        .I3(srcA[11]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[23]),
        .O(ram_reg_r1_0_31_18_23_i_41_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_42
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[11]),
        .I2(srcB[23]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_42_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_43
       (.I0(memory_reg_mux_sel_a_pos_0_23),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_31_0),
        .O(p_6_in[7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_18_23_i_44
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_82_n_0),
        .I2(ram_reg_r1_0_31_18_23_i_75_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_62_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_18_23_i_44_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_18_23_i_45
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_65_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_76_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[21]),
        .O(ram_reg_r1_0_31_18_23_i_45_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_18_23_i_46
       (.I0(ram_reg_r1_0_31_18_23_i_67_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_18_23_i_78_n_0),
        .I3(srcA[10]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[22]),
        .O(ram_reg_r1_0_31_18_23_i_46_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_18_23_i_47
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[10]),
        .I2(srcB[22]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_47_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_48
       (.I0(memory_reg_mux_sel_a_pos_0_22),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_33_0),
        .O(p_6_in[6]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_49
       (.I0(srcA[7]),
        .I1(data1[19]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_5
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[22]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[23]),
        .I4(memReadSized__238[23]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_50
       (.I0(ram_reg_r1_0_31_18_23_i_85_n_0),
        .I1(memory_mux_sel_a_pos_0_i_10_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_12_17_i_67_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_2_i_13_n_0),
        .O(ram_reg_r1_0_31_18_23_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_51
       (.I0(ram_reg_r1_0_31_18_23_i_86_n_0),
        .I1(memory_mux_sel_a_pos_1_i_11_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_12_17_i_68_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(memory_mux_sel_a_pos_3_i_24_n_0),
        .O(ram_reg_r1_0_31_18_23_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_52
       (.I0(memory_mux_sel_a_pos_3_i_38_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_69_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_1_i_13_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_87_n_0),
        .O(ram_reg_r1_0_31_18_23_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_53
       (.I0(memory_mux_sel_a_pos_2_i_15_n_0),
        .I1(ram_reg_r1_0_31_12_17_i_70_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(memory_mux_sel_a_pos_0_i_12_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_88_n_0),
        .O(ram_reg_r1_0_31_18_23_i_53_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ram_reg_r1_0_31_18_23_i_54
       (.I0(ram_reg_r1_0_31_18_23_i_89_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_12_17_i_71_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_43_n_0),
        .O(ram_reg_r1_0_31_18_23_i_54_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_55
       (.I0(ram_reg_r1_0_31_18_23_i_90_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_12_17_i_72_n_0),
        .O(ram_reg_r1_0_31_18_23_i_55_n_0));
  MUXF8 ram_reg_r1_0_31_18_23_i_56
       (.I0(ram_reg_r1_0_31_18_23_i_91_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_92_n_0),
        .O(memory_reg_mux_sel_a_pos_0_19),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_58
       (.I0(srcA[6]),
        .I1(data1[18]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_58_n_0));
  MUXF8 ram_reg_r1_0_31_18_23_i_59
       (.I0(ram_reg_r1_0_31_18_23_i_93_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_94_n_0),
        .O(memory_reg_mux_sel_a_pos_0_18),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_18_23_i_6
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[21]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[22]),
        .I4(memReadSized__238[22]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[22]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_61
       (.I0(srcA[9]),
        .I1(data1[21]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_61_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ram_reg_r1_0_31_18_23_i_62
       (.I0(ram_reg_r1_0_31_18_23_i_95_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_85_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_0_i_10_n_0),
        .O(ram_reg_r1_0_31_18_23_i_62_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ram_reg_r1_0_31_18_23_i_63
       (.I0(ram_reg_r1_0_31_18_23_i_96_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_86_n_0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_1_i_11_n_0),
        .O(ram_reg_r1_0_31_18_23_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_64
       (.I0(memory_mux_sel_a_pos_1_i_13_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_87_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_12_17_i_69_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_97_n_0),
        .O(ram_reg_r1_0_31_18_23_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_65
       (.I0(memory_mux_sel_a_pos_0_i_12_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_88_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_12_17_i_70_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_98_n_0),
        .O(ram_reg_r1_0_31_18_23_i_65_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_66
       (.I0(ram_reg_r1_0_31_18_23_i_99_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_89_n_0),
        .O(ram_reg_r1_0_31_18_23_i_66_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    ram_reg_r1_0_31_18_23_i_67
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_mux_sel_a_pos_3_i_33_n_0),
        .I3(srcA[12]),
        .I4(\OUT_reg[11] [1]),
        .I5(ram_reg_r1_0_31_18_23_i_90_n_0),
        .O(ram_reg_r1_0_31_18_23_i_67_n_0));
  MUXF8 ram_reg_r1_0_31_18_23_i_68
       (.I0(ram_reg_r1_0_31_18_23_i_100_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_101_n_0),
        .O(memory_reg_mux_sel_a_pos_0_21),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_7
       (.I0(ram_reg_r1_0_31_18_23_i_19_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_20_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_21_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_22_n_0),
        .O(IOBUS_addr[19]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_70
       (.I0(srcA[8]),
        .I1(data1[20]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_70_n_0));
  MUXF8 ram_reg_r1_0_31_18_23_i_71
       (.I0(ram_reg_r1_0_31_18_23_i_102_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_103_n_0),
        .O(memory_reg_mux_sel_a_pos_0_20),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_73
       (.I0(srcA[11]),
        .I1(data1[23]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_73_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_74
       (.I0(ram_reg_r1_0_31_18_23_i_104_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_95_n_0),
        .O(ram_reg_r1_0_31_18_23_i_74_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_18_23_i_75
       (.I0(ram_reg_r1_0_31_18_23_i_105_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_96_n_0),
        .O(ram_reg_r1_0_31_18_23_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_76
       (.I0(ram_reg_r1_0_31_12_17_i_69_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_97_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_87_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_106_n_0),
        .O(ram_reg_r1_0_31_18_23_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_18_23_i_77
       (.I0(ram_reg_r1_0_31_12_17_i_70_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_98_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_88_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_18_23_i_107_n_0),
        .O(ram_reg_r1_0_31_18_23_i_77_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    ram_reg_r1_0_31_18_23_i_78
       (.I0(srcA[17]),
        .I1(\OUT_reg[11] [2]),
        .I2(memory_mux_sel_a_pos_3_i_33_n_0),
        .I3(srcA[13]),
        .I4(\OUT_reg[11] [1]),
        .I5(ram_reg_r1_0_31_18_23_i_99_n_0),
        .O(ram_reg_r1_0_31_18_23_i_78_n_0));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    ram_reg_r1_0_31_18_23_i_79
       (.I0(ram_reg_r1_0_31_18_23_i_108_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(srcA[16]),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(srcA[12]),
        .O(ram_reg_r1_0_31_18_23_i_79_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_18_23_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[3]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[19]));
  MUXF8 ram_reg_r1_0_31_18_23_i_80
       (.I0(ram_reg_r1_0_31_18_23_i_109_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_110_n_0),
        .O(memory_reg_mux_sel_a_pos_0_23),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_18_23_i_82
       (.I0(srcA[10]),
        .I1(data1[22]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_18_23_i_82_n_0));
  MUXF8 ram_reg_r1_0_31_18_23_i_83
       (.I0(ram_reg_r1_0_31_18_23_i_111_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_112_n_0),
        .O(memory_reg_mux_sel_a_pos_0_22),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000E2EEE222)) 
    ram_reg_r1_0_31_18_23_i_85
       (.I0(srcA[14]),
        .I1(\OUT_reg[11] [4]),
        .I2(memory_reg_mux_sel_b_pos_0_0[24]),
        .I3(alu_src_a),
        .I4(rs1[31]),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_85_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000E2EEE222)) 
    ram_reg_r1_0_31_18_23_i_86
       (.I0(srcA[13]),
        .I1(\OUT_reg[11] [4]),
        .I2(memory_reg_mux_sel_b_pos_0_0[24]),
        .I3(alu_src_a),
        .I4(rs1[31]),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_86_n_0));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    ram_reg_r1_0_31_18_23_i_87
       (.I0(rs1[10]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[2]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[6]),
        .O(ram_reg_r1_0_31_18_23_i_87_n_0));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    ram_reg_r1_0_31_18_23_i_88
       (.I0(rs1[11]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[3]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[7]),
        .O(ram_reg_r1_0_31_18_23_i_88_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    ram_reg_r1_0_31_18_23_i_89
       (.I0(srcA[13]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[17]),
        .I3(srcA[9]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(ram_reg_r1_0_31_18_23_i_89_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_18_23_i_9
       (.I0(ram_reg_r1_0_31_18_23_i_24_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_18_23_i_25_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_26_n_0),
        .I5(ram_reg_r1_0_31_18_23_i_27_n_0),
        .O(IOBUS_addr[18]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    ram_reg_r1_0_31_18_23_i_90
       (.I0(srcA[14]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[18]),
        .I3(srcA[10]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(ram_reg_r1_0_31_18_23_i_90_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_91
       (.I0(ram_reg_r1_0_31_18_23_i_113_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_114_n_0),
        .O(ram_reg_r1_0_31_18_23_i_91_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_92
       (.I0(ram_reg_r1_0_31_18_23_i_115_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_116_n_0),
        .O(ram_reg_r1_0_31_18_23_i_92_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_93
       (.I0(ram_reg_r1_0_31_18_23_i_117_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_118_n_0),
        .O(ram_reg_r1_0_31_18_23_i_93_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_18_23_i_94
       (.I0(ram_reg_r1_0_31_18_23_i_119_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_120_n_0),
        .O(ram_reg_r1_0_31_18_23_i_94_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    ram_reg_r1_0_31_18_23_i_95
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[12]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_95_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    ram_reg_r1_0_31_18_23_i_96
       (.I0(srcA[15]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA[11]),
        .I3(\OUT_reg[11] [4]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [3]),
        .O(ram_reg_r1_0_31_18_23_i_96_n_0));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    ram_reg_r1_0_31_18_23_i_97
       (.I0(srcA[0]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[4]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[8]),
        .O(ram_reg_r1_0_31_18_23_i_97_n_0));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    ram_reg_r1_0_31_18_23_i_98
       (.I0(srcA[1]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[5]),
        .I3(alu_src_a),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[9]),
        .O(ram_reg_r1_0_31_18_23_i_98_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    ram_reg_r1_0_31_18_23_i_99
       (.I0(srcA[15]),
        .I1(\OUT_reg[11] [2]),
        .I2(srcA__0),
        .I3(srcA[11]),
        .I4(\OUT_reg[11] [3]),
        .I5(\OUT_reg[11] [4]),
        .O(ram_reg_r1_0_31_18_23_i_99_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_1
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[24]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[25]),
        .I4(memReadSized__238[25]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_10
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[0]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[24]));
  MUXF7 ram_reg_r1_0_31_24_29_i_100
       (.I0(ram_reg_r1_0_31_24_29_i_120_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_121_n_0),
        .O(ram_reg_r1_0_31_24_29_i_100_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_101
       (.I0(ram_reg_r1_0_31_24_29_i_122_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_123_n_0),
        .O(ram_reg_r1_0_31_24_29_i_101_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'h0CFCFAFA0CFC0A0A)) 
    ram_reg_r1_0_31_24_29_i_102
       (.I0(srcA[16]),
        .I1(srcA[0]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_133_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[8]),
        .O(ram_reg_r1_0_31_24_29_i_102_n_0));
  LUT6 #(
    .INIT(64'h0CFCFAFA0CFC0A0A)) 
    ram_reg_r1_0_31_24_29_i_103
       (.I0(srcA[17]),
        .I1(srcA[1]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_128_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[9]),
        .O(ram_reg_r1_0_31_24_29_i_103_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_104
       (.I0(ram_reg_r1_0_31_24_29_i_124_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_125_n_0),
        .O(ram_reg_r1_0_31_24_29_i_104_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_105
       (.I0(ram_reg_r1_0_31_24_29_i_126_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_127_n_0),
        .O(ram_reg_r1_0_31_24_29_i_105_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_106
       (.I0(ram_reg_r1_0_31_24_29_i_128_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_129_n_0),
        .O(ram_reg_r1_0_31_24_29_i_106_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_107
       (.I0(ram_reg_r1_0_31_24_29_i_130_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_131_n_0),
        .O(ram_reg_r1_0_31_24_29_i_107_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_108
       (.I0(memory_reg_bram_3_n_10),
        .I1(memory_reg_bram_2_n_10),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_10),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_10),
        .O(ram_reg_r1_0_31_24_29_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_109
       (.I0(memory_reg_bram_7_n_10),
        .I1(memory_reg_bram_6_n_10),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_10),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_10),
        .O(ram_reg_r1_0_31_24_29_i_109_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
    ram_reg_r1_0_31_24_29_i_11
       (.I0(ram_reg_r1_0_31_24_29_i_29_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_30_n_0),
        .I3(ram_reg_r1_0_31_24_29_i_31_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_32_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_110
       (.I0(memory_reg_bram_11_n_10),
        .I1(memory_reg_bram_10_n_10),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_10),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_10),
        .O(ram_reg_r1_0_31_24_29_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_111
       (.I0(memory_reg_bram_15_n_10),
        .I1(memory_reg_bram_14_n_10),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_10),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_10),
        .O(ram_reg_r1_0_31_24_29_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_112
       (.I0(memory_reg_bram_3_n_11),
        .I1(memory_reg_bram_2_n_11),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_11),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_11),
        .O(ram_reg_r1_0_31_24_29_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_113
       (.I0(memory_reg_bram_7_n_11),
        .I1(memory_reg_bram_6_n_11),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_11),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_11),
        .O(ram_reg_r1_0_31_24_29_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_114
       (.I0(memory_reg_bram_11_n_11),
        .I1(memory_reg_bram_10_n_11),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_11),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_11),
        .O(ram_reg_r1_0_31_24_29_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_115
       (.I0(memory_reg_bram_15_n_11),
        .I1(memory_reg_bram_14_n_11),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_11),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_11),
        .O(ram_reg_r1_0_31_24_29_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_116
       (.I0(memory_reg_bram_3_n_8),
        .I1(memory_reg_bram_2_n_8),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_8),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_8),
        .O(ram_reg_r1_0_31_24_29_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_117
       (.I0(memory_reg_bram_7_n_8),
        .I1(memory_reg_bram_6_n_8),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_8),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_8),
        .O(ram_reg_r1_0_31_24_29_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_118
       (.I0(memory_reg_bram_11_n_8),
        .I1(memory_reg_bram_10_n_8),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_8),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_8),
        .O(ram_reg_r1_0_31_24_29_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_119
       (.I0(memory_reg_bram_15_n_8),
        .I1(memory_reg_bram_14_n_8),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_8),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_8),
        .O(ram_reg_r1_0_31_24_29_i_119_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_12
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[3]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_120
       (.I0(memory_reg_bram_3_n_9),
        .I1(memory_reg_bram_2_n_9),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_9),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_9),
        .O(ram_reg_r1_0_31_24_29_i_120_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_121
       (.I0(memory_reg_bram_7_n_9),
        .I1(memory_reg_bram_6_n_9),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_9),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_9),
        .O(ram_reg_r1_0_31_24_29_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_122
       (.I0(memory_reg_bram_11_n_9),
        .I1(memory_reg_bram_10_n_9),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_9),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_9),
        .O(ram_reg_r1_0_31_24_29_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_123
       (.I0(memory_reg_bram_15_n_9),
        .I1(memory_reg_bram_14_n_9),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_9),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_9),
        .O(ram_reg_r1_0_31_24_29_i_123_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_124
       (.I0(memory_reg_bram_3_n_6),
        .I1(memory_reg_bram_2_n_6),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_6),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_6),
        .O(ram_reg_r1_0_31_24_29_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_125
       (.I0(memory_reg_bram_7_n_6),
        .I1(memory_reg_bram_6_n_6),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_6),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_6),
        .O(ram_reg_r1_0_31_24_29_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_126
       (.I0(memory_reg_bram_11_n_6),
        .I1(memory_reg_bram_10_n_6),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_6),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_6),
        .O(ram_reg_r1_0_31_24_29_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_127
       (.I0(memory_reg_bram_15_n_6),
        .I1(memory_reg_bram_14_n_6),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_6),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_6),
        .O(ram_reg_r1_0_31_24_29_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_128
       (.I0(memory_reg_bram_3_n_7),
        .I1(memory_reg_bram_2_n_7),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_7),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_7),
        .O(ram_reg_r1_0_31_24_29_i_128_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_129
       (.I0(memory_reg_bram_7_n_7),
        .I1(memory_reg_bram_6_n_7),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_7),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_7),
        .O(ram_reg_r1_0_31_24_29_i_129_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
    ram_reg_r1_0_31_24_29_i_13
       (.I0(ram_reg_r1_0_31_24_29_i_34_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_35_n_0),
        .I3(ram_reg_r1_0_31_24_29_i_36_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_37_n_0),
        .I5(memory_mux_sel_a_pos_3_i_5_n_0),
        .O(IOBUS_addr[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_130
       (.I0(memory_reg_bram_11_n_7),
        .I1(memory_reg_bram_10_n_7),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_7),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_7),
        .O(ram_reg_r1_0_31_24_29_i_130_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_131
       (.I0(memory_reg_bram_15_n_7),
        .I1(memory_reg_bram_14_n_7),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_7),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_7),
        .O(ram_reg_r1_0_31_24_29_i_131_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_14
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[2]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[26]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_24_29_i_15
       (.I0(ram_reg_r1_0_31_24_29_i_39_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_40_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_41_n_0),
        .I5(ram_reg_r1_0_31_24_29_i_42_n_0),
        .O(IOBUS_addr[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_16
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[5]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[29]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_24_29_i_17
       (.I0(ram_reg_r1_0_31_24_29_i_44_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_45_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_46_n_0),
        .I5(ram_reg_r1_0_31_24_29_i_47_n_0),
        .O(IOBUS_addr[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_18
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[4]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[28]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_19
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_49_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_50_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_51_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_2
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[23]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[24]),
        .I4(memReadSized__238[24]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[24]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_20
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_24_29_i_52_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_53_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[24]),
        .O(ram_reg_r1_0_31_24_29_i_20_n_0));
  LUT6 #(
    .INIT(64'hFF003C3CAAAA3C3C)) 
    ram_reg_r1_0_31_24_29_i_21
       (.I0(ram_reg_r1_0_31_24_29_i_54_n_0),
        .I1(srcB[25]),
        .I2(srcA[13]),
        .I3(ram_reg_r1_0_31_24_29_i_55_n_0),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(\OUT_reg[11] [0]),
        .O(ram_reg_r1_0_31_24_29_i_21_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_22
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[13]),
        .I2(srcB[25]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_22_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_23
       (.I0(memory_reg_mux_sel_a_pos_0_25),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_31_0),
        .O(p_7_in[1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_24
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_58_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_51_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_18_23_i_74_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_24_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_25
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_18_23_i_77_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_52_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[23]),
        .O(ram_reg_r1_0_31_24_29_i_25_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_24_29_i_26
       (.I0(ram_reg_r1_0_31_18_23_i_79_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_24_29_i_54_n_0),
        .I3(srcA[12]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[24]),
        .O(ram_reg_r1_0_31_24_29_i_26_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_27
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[12]),
        .I2(srcB[24]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_27_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_28
       (.I0(memory_reg_mux_sel_a_pos_0_24),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_33_0),
        .O(p_7_in[0]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_29
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_61_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_62_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_63_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_3
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[26]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[27]),
        .I4(memReadSized__238[27]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[27]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_30
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_24_29_i_64_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_65_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[26]),
        .O(ram_reg_r1_0_31_24_29_i_30_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_31
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[15]),
        .I2(srcB[27]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_31_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_24_29_i_32
       (.I0(ram_reg_r1_0_31_24_29_i_66_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_24_29_i_67_n_0),
        .I3(srcA[15]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[27]),
        .O(ram_reg_r1_0_31_24_29_i_32_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_33
       (.I0(memory_reg_mux_sel_a_pos_0_27),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_35_0),
        .O(p_7_in[3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_34
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_70_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_63_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_50_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_34_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_35
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_24_29_i_53_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_64_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[25]),
        .O(ram_reg_r1_0_31_24_29_i_35_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_36
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[14]),
        .I2(srcB[26]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_36_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_24_29_i_37
       (.I0(ram_reg_r1_0_31_24_29_i_55_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_24_29_i_66_n_0),
        .I3(srcA[14]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[26]),
        .O(ram_reg_r1_0_31_24_29_i_37_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_38
       (.I0(memory_reg_mux_sel_a_pos_0_26),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_37_0),
        .O(p_7_in[2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_39
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_73_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_74_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_75_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_4
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[25]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[26]),
        .I4(memReadSized__238[26]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[26]));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_40
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_24_29_i_76_n_0),
        .I4(\OUT_reg[1] ),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[28]),
        .O(ram_reg_r1_0_31_24_29_i_40_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_24_29_i_41
       (.I0(ram_reg_r1_0_31_24_29_i_78_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_24_29_i_79_n_0),
        .I3(srcA[17]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[29]),
        .O(ram_reg_r1_0_31_24_29_i_41_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_42
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[17]),
        .I2(srcB[29]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_42_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_43
       (.I0(memory_reg_mux_sel_a_pos_0_29),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_26_0),
        .O(p_7_in[5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_24_29_i_44
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_82_n_0),
        .I2(ram_reg_r1_0_31_24_29_i_75_n_0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_62_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_24_29_i_44_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_24_29_i_45
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_24_29_i_65_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_76_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[27]),
        .O(ram_reg_r1_0_31_24_29_i_45_n_0));
  LUT6 #(
    .INIT(64'hE2E200FFE2E2FF00)) 
    ram_reg_r1_0_31_24_29_i_46
       (.I0(ram_reg_r1_0_31_24_29_i_67_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(ram_reg_r1_0_31_24_29_i_78_n_0),
        .I3(srcA[16]),
        .I4(memory_reg_mux_sel_b_pos_0_1),
        .I5(srcB[28]),
        .O(ram_reg_r1_0_31_24_29_i_46_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_24_29_i_47
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[16]),
        .I2(srcB[28]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_47_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_48
       (.I0(memory_reg_mux_sel_a_pos_0_28),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_28_0),
        .O(p_7_in[4]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_49
       (.I0(srcA[13]),
        .I1(data1[25]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_5
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[28]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[29]),
        .I4(memReadSized__238[29]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_50
       (.I0(ram_reg_r1_0_31_24_29_i_85_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_104_n_0),
        .O(ram_reg_r1_0_31_24_29_i_50_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_51
       (.I0(ram_reg_r1_0_31_24_29_i_86_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_18_23_i_105_n_0),
        .O(ram_reg_r1_0_31_24_29_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_52
       (.I0(ram_reg_r1_0_31_18_23_i_87_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_106_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_97_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_87_n_0),
        .O(ram_reg_r1_0_31_24_29_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_53
       (.I0(ram_reg_r1_0_31_18_23_i_88_n_0),
        .I1(ram_reg_r1_0_31_18_23_i_107_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_98_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_88_n_0),
        .O(ram_reg_r1_0_31_24_29_i_53_n_0));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    ram_reg_r1_0_31_24_29_i_54
       (.I0(ram_reg_r1_0_31_24_29_i_89_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(srcA[17]),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(srcA[13]),
        .O(ram_reg_r1_0_31_24_29_i_54_n_0));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    ram_reg_r1_0_31_24_29_i_55
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [1]),
        .I2(srcA[18]),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(srcA[14]),
        .O(ram_reg_r1_0_31_24_29_i_55_n_0));
  MUXF8 ram_reg_r1_0_31_24_29_i_56
       (.I0(ram_reg_r1_0_31_24_29_i_90_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_91_n_0),
        .O(memory_reg_mux_sel_a_pos_0_25),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_58
       (.I0(srcA[12]),
        .I1(data1[24]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_58_n_0));
  MUXF8 ram_reg_r1_0_31_24_29_i_59
       (.I0(ram_reg_r1_0_31_24_29_i_92_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_93_n_0),
        .O(memory_reg_mux_sel_a_pos_0_24),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_24_29_i_6
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[27]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[28]),
        .I4(memReadSized__238[28]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[28]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_61
       (.I0(srcA[15]),
        .I1(data1[27]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_61_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_62
       (.I0(ram_reg_r1_0_31_24_29_i_94_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_24_29_i_85_n_0),
        .O(ram_reg_r1_0_31_24_29_i_62_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_24_29_i_63
       (.I0(ram_reg_r1_0_31_24_29_i_95_n_0),
        .I1(\OUT_reg[11] [1]),
        .I2(ram_reg_r1_0_31_24_29_i_86_n_0),
        .O(ram_reg_r1_0_31_24_29_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_64
       (.I0(ram_reg_r1_0_31_18_23_i_97_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_87_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_106_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_96_n_0),
        .O(ram_reg_r1_0_31_24_29_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_65
       (.I0(ram_reg_r1_0_31_18_23_i_98_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_88_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_18_23_i_107_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_97_n_0),
        .O(ram_reg_r1_0_31_24_29_i_65_n_0));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    ram_reg_r1_0_31_24_29_i_66
       (.I0(srcA[17]),
        .I1(\OUT_reg[11] [1]),
        .I2(srcA__0),
        .I3(\OUT_reg[11] [2]),
        .I4(memory_mux_sel_a_pos_3_i_33_n_0),
        .I5(srcA[15]),
        .O(ram_reg_r1_0_31_24_29_i_66_n_0));
  LUT5 #(
    .INIT(32'h000088C0)) 
    ram_reg_r1_0_31_24_29_i_67
       (.I0(srcA[18]),
        .I1(memory_mux_sel_a_pos_3_i_33_n_0),
        .I2(srcA[16]),
        .I3(\OUT_reg[11] [1]),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_67_n_0));
  MUXF8 ram_reg_r1_0_31_24_29_i_68
       (.I0(ram_reg_r1_0_31_24_29_i_98_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_99_n_0),
        .O(memory_reg_mux_sel_a_pos_0_27),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_24_29_i_7
       (.I0(ram_reg_r1_0_31_24_29_i_19_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_20_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_21_n_0),
        .I5(ram_reg_r1_0_31_24_29_i_22_n_0),
        .O(IOBUS_addr[25]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_70
       (.I0(srcA[14]),
        .I1(data1[26]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_70_n_0));
  MUXF8 ram_reg_r1_0_31_24_29_i_71
       (.I0(ram_reg_r1_0_31_24_29_i_100_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_101_n_0),
        .O(memory_reg_mux_sel_a_pos_0_26),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_73
       (.I0(srcA[17]),
        .I1(data1[29]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_73_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    ram_reg_r1_0_31_24_29_i_74
       (.I0(\OUT_reg[11] [1]),
        .I1(srcA[18]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_74_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    ram_reg_r1_0_31_24_29_i_75
       (.I0(\OUT_reg[11] [1]),
        .I1(srcA[17]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(srcA__0),
        .I5(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_76
       (.I0(ram_reg_r1_0_31_18_23_i_106_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_96_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_24_29_i_87_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_102_n_0),
        .O(ram_reg_r1_0_31_24_29_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_24_29_i_77
       (.I0(ram_reg_r1_0_31_18_23_i_107_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_97_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_24_29_i_88_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_103_n_0),
        .O(\OUT_reg[1] ));
  LUT5 #(
    .INIT(32'h000088C0)) 
    ram_reg_r1_0_31_24_29_i_78
       (.I0(srcA__0),
        .I1(memory_mux_sel_a_pos_3_i_33_n_0),
        .I2(srcA[17]),
        .I3(\OUT_reg[11] [1]),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_78_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    ram_reg_r1_0_31_24_29_i_79
       (.I0(\OUT_reg[11] [2]),
        .I1(\OUT_reg[11] [1]),
        .I2(srcA[18]),
        .I3(memory_mux_sel_a_pos_3_i_33_n_0),
        .O(ram_reg_r1_0_31_24_29_i_79_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_24_29_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[1]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[25]));
  MUXF8 ram_reg_r1_0_31_24_29_i_80
       (.I0(ram_reg_r1_0_31_24_29_i_104_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_105_n_0),
        .O(memory_reg_mux_sel_a_pos_0_29),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_24_29_i_82
       (.I0(srcA[16]),
        .I1(data1[28]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_24_29_i_82_n_0));
  MUXF8 ram_reg_r1_0_31_24_29_i_83
       (.I0(ram_reg_r1_0_31_24_29_i_106_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_107_n_0),
        .O(memory_reg_mux_sel_a_pos_0_28),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    ram_reg_r1_0_31_24_29_i_85
       (.I0(srcA[16]),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA__0),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_85_n_0));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    ram_reg_r1_0_31_24_29_i_86
       (.I0(srcA[15]),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA__0),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_86_n_0));
  LUT6 #(
    .INIT(64'h03F3FAFA03F30A0A)) 
    ram_reg_r1_0_31_24_29_i_87
       (.I0(srcA[12]),
        .I1(memory_reg_bram_0_i_111_n_0),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_187_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[4]),
        .O(ram_reg_r1_0_31_24_29_i_87_n_0));
  LUT6 #(
    .INIT(64'h03F3FAFA03F30A0A)) 
    ram_reg_r1_0_31_24_29_i_88
       (.I0(srcA[13]),
        .I1(memory_reg_bram_0_i_106_n_0),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_174_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[5]),
        .O(ram_reg_r1_0_31_24_29_i_88_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    ram_reg_r1_0_31_24_29_i_89
       (.I0(srcA__0),
        .I1(\OUT_reg[11] [2]),
        .I2(\OUT_reg[11] [4]),
        .I3(\OUT_reg[11] [3]),
        .I4(srcA[15]),
        .O(ram_reg_r1_0_31_24_29_i_89_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABABA)) 
    ram_reg_r1_0_31_24_29_i_9
       (.I0(ram_reg_r1_0_31_24_29_i_24_n_0),
        .I1(alu_fun[3]),
        .I2(ram_reg_r1_0_31_24_29_i_25_n_0),
        .I3(memory_mux_sel_a_pos_3_i_5_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_26_n_0),
        .I5(ram_reg_r1_0_31_24_29_i_27_n_0),
        .O(IOBUS_addr[24]));
  MUXF7 ram_reg_r1_0_31_24_29_i_90
       (.I0(ram_reg_r1_0_31_24_29_i_108_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_109_n_0),
        .O(ram_reg_r1_0_31_24_29_i_90_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_91
       (.I0(ram_reg_r1_0_31_24_29_i_110_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_111_n_0),
        .O(ram_reg_r1_0_31_24_29_i_91_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_92
       (.I0(ram_reg_r1_0_31_24_29_i_112_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_113_n_0),
        .O(ram_reg_r1_0_31_24_29_i_92_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_93
       (.I0(ram_reg_r1_0_31_24_29_i_114_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_115_n_0),
        .O(ram_reg_r1_0_31_24_29_i_93_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    ram_reg_r1_0_31_24_29_i_94
       (.I0(srcA[18]),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA__0),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_94_n_0));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    ram_reg_r1_0_31_24_29_i_95
       (.I0(srcA[17]),
        .I1(\OUT_reg[11] [4]),
        .I2(\OUT_reg[11] [3]),
        .I3(srcA__0),
        .I4(\OUT_reg[11] [2]),
        .O(ram_reg_r1_0_31_24_29_i_95_n_0));
  LUT6 #(
    .INIT(64'h03F3FAFA03F30A0A)) 
    ram_reg_r1_0_31_24_29_i_96
       (.I0(srcA[14]),
        .I1(memory_reg_bram_0_i_99_n_0),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_144_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[6]),
        .O(ram_reg_r1_0_31_24_29_i_96_n_0));
  LUT6 #(
    .INIT(64'h03F3FAFA03F30A0A)) 
    ram_reg_r1_0_31_24_29_i_97
       (.I0(srcA[15]),
        .I1(memory_reg_bram_0_i_94_n_0),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_136_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[7]),
        .O(ram_reg_r1_0_31_24_29_i_97_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_98
       (.I0(ram_reg_r1_0_31_24_29_i_116_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_117_n_0),
        .O(ram_reg_r1_0_31_24_29_i_98_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_24_29_i_99
       (.I0(ram_reg_r1_0_31_24_29_i_118_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_119_n_0),
        .O(ram_reg_r1_0_31_24_29_i_99_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_30_31__0_i_1
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[30]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[31]),
        .I4(memReadSized__238[31]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[31]));
  LUT5 #(
    .INIT(32'h11100010)) 
    ram_reg_r1_0_31_30_31__0_i_10
       (.I0(\OUT_reg[11] [4]),
        .I1(\OUT_reg[11] [3]),
        .I2(rs1[31]),
        .I3(alu_src_a),
        .I4(memory_reg_mux_sel_b_pos_0_0[24]),
        .O(ram_reg_r1_0_31_30_31__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    ram_reg_r1_0_31_30_31__0_i_11
       (.I0(ram_reg_r1_0_31_30_31__0_i_14_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_97_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_24_29_i_88_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_103_n_0),
        .O(ram_reg_r1_0_31_30_31__0_i_11_n_0));
  MUXF8 ram_reg_r1_0_31_30_31__0_i_12
       (.I0(ram_reg_r1_0_31_30_31__0_i_15_n_0),
        .I1(ram_reg_r1_0_31_30_31__0_i_16_n_0),
        .O(memory_reg_mux_sel_a_pos_0_31),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'h0CFCFAFA0CFC0A0A)) 
    ram_reg_r1_0_31_30_31__0_i_14
       (.I0(srcA__0),
        .I1(srcA[3]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_118_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[11]),
        .O(ram_reg_r1_0_31_30_31__0_i_14_n_0));
  MUXF7 ram_reg_r1_0_31_30_31__0_i_15
       (.I0(ram_reg_r1_0_31_30_31__0_i_17_n_0),
        .I1(ram_reg_r1_0_31_30_31__0_i_18_n_0),
        .O(ram_reg_r1_0_31_30_31__0_i_15_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_30_31__0_i_16
       (.I0(ram_reg_r1_0_31_30_31__0_i_19_n_0),
        .I1(ram_reg_r1_0_31_30_31__0_i_20_n_0),
        .O(ram_reg_r1_0_31_30_31__0_i_16_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31__0_i_17
       (.I0(memory_reg_bram_3_n_4),
        .I1(memory_reg_bram_2_n_4),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_4),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_4),
        .O(ram_reg_r1_0_31_30_31__0_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31__0_i_18
       (.I0(memory_reg_bram_7_n_4),
        .I1(memory_reg_bram_6_n_4),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_4),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_4),
        .O(ram_reg_r1_0_31_30_31__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31__0_i_19
       (.I0(memory_reg_bram_11_n_4),
        .I1(memory_reg_bram_10_n_4),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_4),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_4),
        .O(ram_reg_r1_0_31_30_31__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    ram_reg_r1_0_31_30_31__0_i_2
       (.I0(ram_reg_r1_0_31_30_31__0_i_4_n_0),
        .I1(ram_reg_r1_0_31_30_31__0_i_5_n_0),
        .I2(ram_reg_r1_0_31_30_31__0_i_6_n_0),
        .I3(alu_fun[3]),
        .I4(ram_reg_r1_0_31_30_31__0_i_7_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_8_n_0),
        .O(IOBUS_addr[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31__0_i_20
       (.I0(memory_reg_bram_15_n_4),
        .I1(memory_reg_bram_14_n_4),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_4),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_4),
        .O(ram_reg_r1_0_31_30_31__0_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_30_31__0_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[7]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[31]));
  LUT6 #(
    .INIT(64'hA8080000AAAAA808)) 
    ram_reg_r1_0_31_30_31__0_i_4
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(rs1[31]),
        .I2(alu_src_a),
        .I3(memory_reg_mux_sel_b_pos_0_0[24]),
        .I4(srcB__0),
        .I5(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_30_31__0_i_4_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h02020202AA020202)) 
    ram_reg_r1_0_31_30_31__0_i_5
       (.I0(memory_mux_sel_a_pos_3_i_5_n_0),
        .I1(\OUT_reg[31] [3]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(ram_reg_r1_0_31_30_31__0_i_10_n_0),
        .I4(memory_reg_bram_0_i_192_n_0),
        .I5(\OUT_reg[0]_0 ),
        .O(ram_reg_r1_0_31_30_31__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    ram_reg_r1_0_31_30_31__0_i_6
       (.I0(memory_mux_sel_a_pos_3_i_15_n_0),
        .I1(\OUT_reg[11] [0]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(\OUT_reg[1]_0 ),
        .I4(ram_reg_r1_0_31_30_31__0_i_11_n_0),
        .I5(ram_reg_r1_0_31_30_31__0_i_2_0[29]),
        .O(ram_reg_r1_0_31_30_31__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    ram_reg_r1_0_31_30_31__0_i_7
       (.I0(alu_fun[2]),
        .I1(memory_reg_mux_sel_b_pos_0_1),
        .I2(data1[31]),
        .I3(memory_mux_sel_a_pos_2_i_3_n_0),
        .O(ram_reg_r1_0_31_30_31__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8000000)) 
    ram_reg_r1_0_31_30_31__0_i_8
       (.I0(memory_reg_mux_sel_b_pos_0_0[24]),
        .I1(alu_src_a),
        .I2(rs1[31]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .I4(memory_mux_sel_a_pos_2_i_3_n_0),
        .O(ram_reg_r1_0_31_30_31__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_30_31__0_i_9
       (.I0(memory_reg_mux_sel_a_pos_0_31),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_30_0),
        .O(p_7_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ram_reg_r1_0_31_30_31_i_1
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[29]),
        .I2(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I3(IOBUS_addr[30]),
        .I4(memReadSized__238[30]),
        .I5(ram_reg_r1_0_31_12_17_i_23_n_0),
        .O(wd[30]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    ram_reg_r1_0_31_30_31_i_10
       (.I0(ram_reg_r1_0_31_30_31_i_14_n_0),
        .I1(ram_reg_r1_0_31_24_29_i_96_n_0),
        .I2(\OUT_reg[11] [1]),
        .I3(ram_reg_r1_0_31_24_29_i_87_n_0),
        .I4(\OUT_reg[11] [2]),
        .I5(ram_reg_r1_0_31_24_29_i_102_n_0),
        .O(\OUT_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8F00880000000000)) 
    ram_reg_r1_0_31_30_31_i_11
       (.I0(srcA__0),
        .I1(\OUT_reg[0] ),
        .I2(\OUT_reg[0]_0 ),
        .I3(memory_reg_bram_0_i_192_n_0),
        .I4(srcA[18]),
        .I5(memory_mux_sel_a_pos_3_i_33_n_0),
        .O(ram_reg_r1_0_31_30_31_i_11_n_0));
  MUXF8 ram_reg_r1_0_31_30_31_i_12
       (.I0(ram_reg_r1_0_31_30_31_i_15_n_0),
        .I1(ram_reg_r1_0_31_30_31_i_16_n_0),
        .O(memory_reg_mux_sel_a_pos_0_30),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'h0CFCFAFA0CFC0A0A)) 
    ram_reg_r1_0_31_30_31_i_14
       (.I0(srcA[18]),
        .I1(srcA[2]),
        .I2(\OUT_reg[11] [3]),
        .I3(memory_reg_bram_0_i_123_n_0),
        .I4(\OUT_reg[11] [4]),
        .I5(srcA[10]),
        .O(ram_reg_r1_0_31_30_31_i_14_n_0));
  MUXF7 ram_reg_r1_0_31_30_31_i_15
       (.I0(ram_reg_r1_0_31_30_31_i_17_n_0),
        .I1(ram_reg_r1_0_31_30_31_i_18_n_0),
        .O(ram_reg_r1_0_31_30_31_i_15_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_30_31_i_16
       (.I0(ram_reg_r1_0_31_30_31_i_19_n_0),
        .I1(ram_reg_r1_0_31_30_31_i_20_n_0),
        .O(ram_reg_r1_0_31_30_31_i_16_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31_i_17
       (.I0(memory_reg_bram_3_n_5),
        .I1(memory_reg_bram_2_n_5),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_5),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_5),
        .O(ram_reg_r1_0_31_30_31_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31_i_18
       (.I0(memory_reg_bram_7_n_5),
        .I1(memory_reg_bram_6_n_5),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_5),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_5),
        .O(ram_reg_r1_0_31_30_31_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31_i_19
       (.I0(memory_reg_bram_11_n_5),
        .I1(memory_reg_bram_10_n_5),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_5),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_5),
        .O(ram_reg_r1_0_31_30_31_i_19_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
    ram_reg_r1_0_31_30_31_i_2
       (.I0(ram_reg_r1_0_31_30_31_i_4_n_0),
        .I1(alu_fun[3]),
        .I2(memory_mux_sel_a_pos_3_i_15_n_0),
        .I3(ram_reg_r1_0_31_30_31_i_1_0),
        .I4(ram_reg_r1_0_31_30_31_i_6_n_0),
        .I5(ram_reg_r1_0_31_30_31_i_7_n_0),
        .O(IOBUS_addr[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_30_31_i_20
       (.I0(memory_reg_bram_15_n_5),
        .I1(memory_reg_bram_14_n_5),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_5),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_5),
        .O(ram_reg_r1_0_31_30_31_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200000)) 
    ram_reg_r1_0_31_30_31_i_3
       (.I0(memory_reg_mux_sel_b_pos_0_0[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_7_in[6]),
        .I3(ram_reg_r1_0_31_12_17_i_39_n_0),
        .I4(ram_reg_r1_0_31_12_17_i_40_n_0),
        .I5(ram_reg_r1_0_31_12_17_i_41_n_0),
        .O(memReadSized__238[30]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    ram_reg_r1_0_31_30_31_i_4
       (.I0(memory_mux_sel_a_pos_2_i_3_n_0),
        .I1(ram_reg_r1_0_31_30_31_i_9_n_0),
        .I2(srcA__0),
        .I3(memory_mux_sel_a_pos_3_i_10_n_0),
        .I4(ram_reg_r1_0_31_24_29_i_74_n_0),
        .I5(memory_mux_sel_a_pos_3_i_12_n_0),
        .O(ram_reg_r1_0_31_30_31_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAAA0208)) 
    ram_reg_r1_0_31_30_31_i_6
       (.I0(memory_mux_sel_a_pos_3_i_5_n_0),
        .I1(srcB[30]),
        .I2(memory_reg_mux_sel_b_pos_0_1),
        .I3(srcA[18]),
        .I4(ram_reg_r1_0_31_30_31_i_11_n_0),
        .O(ram_reg_r1_0_31_30_31_i_6_n_0));
  LUT4 #(
    .INIT(16'h80A8)) 
    ram_reg_r1_0_31_30_31_i_7
       (.I0(memory_mux_sel_a_pos_3_i_23_n_0),
        .I1(srcA[18]),
        .I2(srcB[30]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_30_31_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_30_31_i_8
       (.I0(memory_reg_mux_sel_a_pos_0_30),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_12_17_i_32_0),
        .O(p_7_in[6]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    ram_reg_r1_0_31_30_31_i_9
       (.I0(srcA[18]),
        .I1(data1[30]),
        .I2(alu_fun[2]),
        .I3(memory_reg_mux_sel_b_pos_0_1),
        .O(ram_reg_r1_0_31_30_31_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_6_11_i_1
       (.I0(memReadSized__238[7]),
        .I1(ram_reg_r1_0_31_6_11_i_8_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_9_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[7]),
        .O(wd[7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_6_11_i_10
       (.I0(ram_reg_r1_0_31_6_11_i_28_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_29_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[6]),
        .O(memReadSized__238[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_6_11_i_11
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[6]),
        .O(ram_reg_r1_0_31_6_11_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_6_11_i_12
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[5]),
        .O(ram_reg_r1_0_31_6_11_i_12_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_6_11_i_13
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[9]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[8]),
        .O(ram_reg_r1_0_31_6_11_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_6_11_i_14
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_31_n_0),
        .O(ram_reg_r1_0_31_6_11_i_14_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_6_11_i_15
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_32_n_0),
        .O(ram_reg_r1_0_31_6_11_i_15_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_6_11_i_16
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[8]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[7]),
        .O(ram_reg_r1_0_31_6_11_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_6_11_i_17
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_33_n_0),
        .O(ram_reg_r1_0_31_6_11_i_17_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_6_11_i_18
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_34_n_0),
        .O(ram_reg_r1_0_31_6_11_i_18_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_6_11_i_19
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[11]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[10]),
        .O(ram_reg_r1_0_31_6_11_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFEFCFCFCFEFCFC)) 
    ram_reg_r1_0_31_6_11_i_2
       (.I0(memReadSized__238[6]),
        .I1(ram_reg_r1_0_31_6_11_i_11_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_12_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I5(ioBuffer[6]),
        .O(wd[6]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_6_11_i_20
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_35_n_0),
        .O(ram_reg_r1_0_31_6_11_i_20_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_6_11_i_21
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_36_n_0),
        .O(ram_reg_r1_0_31_6_11_i_21_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_reg_r1_0_31_6_11_i_22
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[10]),
        .I2(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I3(pc_out_inc[9]),
        .O(ram_reg_r1_0_31_6_11_i_22_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    ram_reg_r1_0_31_6_11_i_23
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_37_n_0),
        .O(ram_reg_r1_0_31_6_11_i_23_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    ram_reg_r1_0_31_6_11_i_24
       (.I0(memory_reg_bram_0_i_155_n_0),
        .I1(memory_reg_bram_0_i_156_n_0),
        .I2(memory_reg_bram_0_i_157_n_0),
        .I3(memory_reg_bram_0_i_158_n_0),
        .I4(memory_mux_sel_a_pos_3_i_3_0),
        .I5(ram_reg_r1_0_31_6_11_i_38_n_0),
        .O(ram_reg_r1_0_31_6_11_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_6_11_i_25
       (.I0(p_7_in[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[7]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_6_11_i_25_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_6_11_i_26
       (.I0(memory_reg_mux_sel_a_pos_0_7),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_7_0),
        .O(ram_reg_r1_0_31_6_11_i_26_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_6_11_i_27
       (.I0(memory_reg_mux_sel_a_pos_0_15),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_7_1),
        .O(p_5_in[7]));
  LUT6 #(
    .INIT(64'h0000000022F00000)) 
    ram_reg_r1_0_31_6_11_i_28
       (.I0(p_7_in[6]),
        .I1(memory_reg_mux_sel_b_pos_0_0[5]),
        .I2(p_6_in[6]),
        .I3(memory_mux_sel_a_pos_3_i_3_0),
        .I4(IOBUS_addr[1]),
        .I5(memory_reg_mux_sel_b_pos_0_0[6]),
        .O(ram_reg_r1_0_31_6_11_i_28_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_6_11_i_29
       (.I0(memory_reg_mux_sel_a_pos_0_6),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_10_0),
        .O(ram_reg_r1_0_31_6_11_i_29_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_6_11_i_3
       (.I0(ram_reg_r1_0_31_6_11_i_13_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_14_n_0),
        .I3(ram_reg_r1_0_31_6_11_i_15_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[9]),
        .O(wd[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_31_6_11_i_30
       (.I0(memory_reg_mux_sel_a_pos_0_14),
        .I1(ram_reg_r1_0_31_0_5_i_24_0),
        .I2(ram_reg_r1_0_31_6_11_i_10_1),
        .O(p_5_in[6]));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_6_11_i_31
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[1]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_6_11_i_48_n_0),
        .O(ram_reg_r1_0_31_6_11_i_31_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_6_11_i_32
       (.I0(p_6_in[1]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_6_11_i_32_n_0));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_6_11_i_33
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[0]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_6_11_i_51_n_0),
        .O(ram_reg_r1_0_31_6_11_i_33_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_6_11_i_34
       (.I0(p_6_in[0]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_6_11_i_34_n_0));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_6_11_i_35
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[3]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_6_11_i_52_n_0),
        .O(ram_reg_r1_0_31_6_11_i_35_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_6_11_i_36
       (.I0(p_6_in[3]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_6_11_i_36_n_0));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    ram_reg_r1_0_31_6_11_i_37
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(ram_reg_r1_0_31_6_11_i_47_n_0),
        .I3(p_7_in[2]),
        .I4(IOBUS_addr[1]),
        .I5(ram_reg_r1_0_31_6_11_i_53_n_0),
        .O(ram_reg_r1_0_31_6_11_i_37_n_0));
  LUT6 #(
    .INIT(64'hC0C0CACFC0C0CAC0)) 
    ram_reg_r1_0_31_6_11_i_38
       (.I0(p_6_in[2]),
        .I1(ram_reg_r1_0_31_6_11_i_49_n_0),
        .I2(IOBUS_addr[1]),
        .I3(memory_reg_mux_sel_b_pos_0_0[5]),
        .I4(memory_reg_mux_sel_b_pos_0_0[6]),
        .I5(ram_reg_r1_0_31_6_11_i_50_n_0),
        .O(ram_reg_r1_0_31_6_11_i_38_n_0));
  MUXF8 ram_reg_r1_0_31_6_11_i_39
       (.I0(ram_reg_r1_0_31_6_11_i_54_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_55_n_0),
        .O(memory_reg_mux_sel_a_pos_0_7),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_6_11_i_4
       (.I0(ram_reg_r1_0_31_6_11_i_16_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_17_n_0),
        .I3(ram_reg_r1_0_31_6_11_i_18_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[8]),
        .O(wd[8]));
  MUXF8 ram_reg_r1_0_31_6_11_i_41
       (.I0(ram_reg_r1_0_31_6_11_i_56_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_57_n_0),
        .O(memory_reg_mux_sel_a_pos_0_15),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_6_11_i_43
       (.I0(ram_reg_r1_0_31_6_11_i_58_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_59_n_0),
        .O(memory_reg_mux_sel_a_pos_0_6),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  MUXF8 ram_reg_r1_0_31_6_11_i_45
       (.I0(ram_reg_r1_0_31_6_11_i_60_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_61_n_0),
        .O(memory_reg_mux_sel_a_pos_0_14),
        .S(memory_reg_mux_sel_a_pos_0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_r1_0_31_6_11_i_47
       (.I0(p_6_in[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(ram_reg_r1_0_31_6_11_i_47_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_6_11_i_48
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[1]),
        .O(ram_reg_r1_0_31_6_11_i_48_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    ram_reg_r1_0_31_6_11_i_49
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(p_7_in[7]),
        .O(ram_reg_r1_0_31_6_11_i_49_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_6_11_i_5
       (.I0(ram_reg_r1_0_31_6_11_i_19_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_20_n_0),
        .I3(ram_reg_r1_0_31_6_11_i_21_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[11]),
        .O(wd[11]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_r1_0_31_6_11_i_50
       (.I0(p_5_in[7]),
        .I1(memory_reg_mux_sel_b_pos_0_0[7]),
        .O(ram_reg_r1_0_31_6_11_i_50_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_6_11_i_51
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[0]),
        .O(ram_reg_r1_0_31_6_11_i_51_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_6_11_i_52
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[3]),
        .O(ram_reg_r1_0_31_6_11_i_52_n_0));
  LUT5 #(
    .INIT(32'h27260100)) 
    ram_reg_r1_0_31_6_11_i_53
       (.I0(memory_reg_mux_sel_b_pos_0_0[5]),
        .I1(memory_reg_mux_sel_b_pos_0_0[6]),
        .I2(memory_reg_mux_sel_b_pos_0_0[7]),
        .I3(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I4(p_5_in[2]),
        .O(ram_reg_r1_0_31_6_11_i_53_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_54
       (.I0(ram_reg_r1_0_31_6_11_i_62_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_63_n_0),
        .O(ram_reg_r1_0_31_6_11_i_54_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_55
       (.I0(ram_reg_r1_0_31_6_11_i_64_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_65_n_0),
        .O(ram_reg_r1_0_31_6_11_i_55_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_56
       (.I0(ram_reg_r1_0_31_6_11_i_66_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_67_n_0),
        .O(ram_reg_r1_0_31_6_11_i_56_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_57
       (.I0(ram_reg_r1_0_31_6_11_i_68_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_69_n_0),
        .O(ram_reg_r1_0_31_6_11_i_57_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_58
       (.I0(ram_reg_r1_0_31_6_11_i_70_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_71_n_0),
        .O(ram_reg_r1_0_31_6_11_i_58_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_59
       (.I0(ram_reg_r1_0_31_6_11_i_72_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_73_n_0),
        .O(ram_reg_r1_0_31_6_11_i_59_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    ram_reg_r1_0_31_6_11_i_6
       (.I0(ram_reg_r1_0_31_6_11_i_22_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_23_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_23_n_0),
        .I3(ram_reg_r1_0_31_6_11_i_24_n_0),
        .I4(ram_reg_r1_0_31_0_5_i_22_n_0),
        .I5(ioBuffer[10]),
        .O(wd[10]));
  MUXF7 ram_reg_r1_0_31_6_11_i_60
       (.I0(ram_reg_r1_0_31_6_11_i_74_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_75_n_0),
        .O(ram_reg_r1_0_31_6_11_i_60_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  MUXF7 ram_reg_r1_0_31_6_11_i_61
       (.I0(ram_reg_r1_0_31_6_11_i_76_n_0),
        .I1(ram_reg_r1_0_31_6_11_i_77_n_0),
        .O(ram_reg_r1_0_31_6_11_i_61_n_0),
        .S(memory_reg_mux_sel_a_pos_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_62
       (.I0(memory_reg_bram_3_n_28),
        .I1(memory_reg_bram_2_n_28),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_28),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_28),
        .O(ram_reg_r1_0_31_6_11_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_63
       (.I0(memory_reg_bram_7_n_28),
        .I1(memory_reg_bram_6_n_28),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_28),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_28),
        .O(ram_reg_r1_0_31_6_11_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_64
       (.I0(memory_reg_bram_11_n_28),
        .I1(memory_reg_bram_10_n_28),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_28),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_28),
        .O(ram_reg_r1_0_31_6_11_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_65
       (.I0(memory_reg_bram_15_n_28),
        .I1(memory_reg_bram_14_n_28),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_28),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_28),
        .O(ram_reg_r1_0_31_6_11_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_66
       (.I0(memory_reg_bram_3_n_20),
        .I1(memory_reg_bram_2_n_20),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_20),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_20),
        .O(ram_reg_r1_0_31_6_11_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_67
       (.I0(memory_reg_bram_7_n_20),
        .I1(memory_reg_bram_6_n_20),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_20),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_20),
        .O(ram_reg_r1_0_31_6_11_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_68
       (.I0(memory_reg_bram_11_n_20),
        .I1(memory_reg_bram_10_n_20),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_20),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_20),
        .O(ram_reg_r1_0_31_6_11_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_69
       (.I0(memory_reg_bram_15_n_20),
        .I1(memory_reg_bram_14_n_20),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_20),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_20),
        .O(ram_reg_r1_0_31_6_11_i_69_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ram_reg_r1_0_31_6_11_i_7
       (.I0(ram_reg_r1_0_31_6_11_i_25_n_0),
        .I1(ram_reg_r1_0_31_0_5_i_60_n_0),
        .I2(ram_reg_r1_0_31_6_11_i_26_n_0),
        .I3(ram_reg_r1_0_31_0_5_i_62_n_0),
        .I4(p_5_in[7]),
        .O(memReadSized__238[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_70
       (.I0(memory_reg_bram_3_n_29),
        .I1(memory_reg_bram_2_n_29),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_29),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_29),
        .O(ram_reg_r1_0_31_6_11_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_71
       (.I0(memory_reg_bram_7_n_29),
        .I1(memory_reg_bram_6_n_29),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_29),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_29),
        .O(ram_reg_r1_0_31_6_11_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_72
       (.I0(memory_reg_bram_11_n_29),
        .I1(memory_reg_bram_10_n_29),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_29),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_29),
        .O(ram_reg_r1_0_31_6_11_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_73
       (.I0(memory_reg_bram_15_n_29),
        .I1(memory_reg_bram_14_n_29),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_29),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_29),
        .O(ram_reg_r1_0_31_6_11_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_74
       (.I0(memory_reg_bram_3_n_21),
        .I1(memory_reg_bram_2_n_21),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_1_n_21),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_0_n_21),
        .O(ram_reg_r1_0_31_6_11_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_75
       (.I0(memory_reg_bram_7_n_21),
        .I1(memory_reg_bram_6_n_21),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_5_n_21),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_4_n_21),
        .O(ram_reg_r1_0_31_6_11_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_76
       (.I0(memory_reg_bram_11_n_21),
        .I1(memory_reg_bram_10_n_21),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_9_n_21),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_8_n_21),
        .O(ram_reg_r1_0_31_6_11_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r1_0_31_6_11_i_77
       (.I0(memory_reg_bram_15_n_21),
        .I1(memory_reg_bram_14_n_21),
        .I2(memory_reg_mux_sel_a_pos_2_n_0),
        .I3(memory_reg_bram_13_n_21),
        .I4(memory_reg_mux_sel_a_pos_3_n_0),
        .I5(memory_reg_bram_12_n_21),
        .O(ram_reg_r1_0_31_6_11_i_77_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_6_11_i_8
       (.I0(ram_reg_r1_0_31_12_17_i_20_n_0),
        .I1(IOBUS_addr[7]),
        .O(ram_reg_r1_0_31_6_11_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_r1_0_31_6_11_i_9
       (.I0(ram_reg_r1_0_31_12_17_i_19_n_0),
        .I1(pc_out_inc[6]),
        .O(ram_reg_r1_0_31_6_11_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_1
       (.I0(ram_reg_r2_0_31_0_5_i_6_n_0),
        .I1(ram_reg_r2_0_31_0_5_i_7_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(ram_reg_r2_0_31_0_5_i_8_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(ram_reg_r2_0_31_0_5_i_9_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_10
       (.I0(memory_reg_bram_15_n_44),
        .I1(memory_reg_bram_14_n_44),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_44),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_44),
        .O(ram_reg_r2_0_31_0_5_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_11
       (.I0(memory_reg_bram_11_n_44),
        .I1(memory_reg_bram_10_n_44),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_44),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_44),
        .O(ram_reg_r2_0_31_0_5_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_12
       (.I0(memory_reg_bram_7_n_44),
        .I1(memory_reg_bram_6_n_44),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_44),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_44),
        .O(ram_reg_r2_0_31_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_13
       (.I0(memory_reg_bram_3_n_44),
        .I1(memory_reg_bram_2_n_44),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_44),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_44),
        .O(ram_reg_r2_0_31_0_5_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_14
       (.I0(memory_reg_bram_15_n_45),
        .I1(memory_reg_bram_14_n_45),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_45),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_45),
        .O(ram_reg_r2_0_31_0_5_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_15
       (.I0(memory_reg_bram_11_n_45),
        .I1(memory_reg_bram_10_n_45),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_45),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_45),
        .O(ram_reg_r2_0_31_0_5_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_16
       (.I0(memory_reg_bram_7_n_45),
        .I1(memory_reg_bram_6_n_45),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_45),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_45),
        .O(ram_reg_r2_0_31_0_5_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_17
       (.I0(memory_reg_bram_3_n_45),
        .I1(memory_reg_bram_2_n_45),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_45),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_45),
        .O(ram_reg_r2_0_31_0_5_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_18
       (.I0(memory_reg_bram_15_n_46),
        .I1(memory_reg_bram_14_n_46),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_46),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_46),
        .O(ram_reg_r2_0_31_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_19
       (.I0(memory_reg_bram_11_n_46),
        .I1(memory_reg_bram_10_n_46),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_46),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_46),
        .O(ram_reg_r2_0_31_0_5_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_2
       (.I0(ram_reg_r2_0_31_0_5_i_10_n_0),
        .I1(ram_reg_r2_0_31_0_5_i_11_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(ram_reg_r2_0_31_0_5_i_12_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(ram_reg_r2_0_31_0_5_i_13_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_20
       (.I0(memory_reg_bram_7_n_46),
        .I1(memory_reg_bram_6_n_46),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_46),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_46),
        .O(ram_reg_r2_0_31_0_5_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_21
       (.I0(memory_reg_bram_3_n_46),
        .I1(memory_reg_bram_2_n_46),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_46),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_46),
        .O(ram_reg_r2_0_31_0_5_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_22
       (.I0(memory_reg_bram_15_n_47),
        .I1(memory_reg_bram_14_n_47),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_47),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_47),
        .O(ram_reg_r2_0_31_0_5_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_23
       (.I0(memory_reg_bram_11_n_47),
        .I1(memory_reg_bram_10_n_47),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_47),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_47),
        .O(ram_reg_r2_0_31_0_5_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_24
       (.I0(memory_reg_bram_7_n_47),
        .I1(memory_reg_bram_6_n_47),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_47),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_47),
        .O(ram_reg_r2_0_31_0_5_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_25
       (.I0(memory_reg_bram_3_n_47),
        .I1(memory_reg_bram_2_n_47),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_47),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_47),
        .O(ram_reg_r2_0_31_0_5_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_3
       (.I0(ram_reg_r2_0_31_0_5_i_14_n_0),
        .I1(ram_reg_r2_0_31_0_5_i_15_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(ram_reg_r2_0_31_0_5_i_16_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(ram_reg_r2_0_31_0_5_i_17_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_4
       (.I0(ram_reg_r2_0_31_0_5_i_18_n_0),
        .I1(ram_reg_r2_0_31_0_5_i_19_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(ram_reg_r2_0_31_0_5_i_20_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(ram_reg_r2_0_31_0_5_i_21_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_5
       (.I0(ram_reg_r2_0_31_0_5_i_22_n_0),
        .I1(ram_reg_r2_0_31_0_5_i_23_n_0),
        .I2(memory_reg_mux_sel_b_pos_0_n_0),
        .I3(ram_reg_r2_0_31_0_5_i_24_n_0),
        .I4(memory_reg_mux_sel_b_pos_1_n_0),
        .I5(ram_reg_r2_0_31_0_5_i_25_n_0),
        .O(memory_reg_mux_sel_b_pos_0_0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_6
       (.I0(memory_reg_bram_15_n_43),
        .I1(memory_reg_bram_14_n_43),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_13_n_43),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_12_n_43),
        .O(ram_reg_r2_0_31_0_5_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_7
       (.I0(memory_reg_bram_11_n_43),
        .I1(memory_reg_bram_10_n_43),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_9_n_43),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_8_n_43),
        .O(ram_reg_r2_0_31_0_5_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_8
       (.I0(memory_reg_bram_7_n_43),
        .I1(memory_reg_bram_6_n_43),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_5_n_43),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_4_n_43),
        .O(ram_reg_r2_0_31_0_5_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ram_reg_r2_0_31_0_5_i_9
       (.I0(memory_reg_bram_3_n_43),
        .I1(memory_reg_bram_2_n_43),
        .I2(memory_reg_mux_sel_b_pos_2_n_0),
        .I3(memory_reg_bram_1_n_43),
        .I4(memory_reg_mux_sel_b_pos_3_n_0),
        .I5(memory_reg_bram_0_n_43),
        .O(ram_reg_r2_0_31_0_5_i_9_n_0));
endmodule

module OTTER
   (RS2,
    \FSM_onehot_PS_reg[2] ,
    memory_reg_mux_sel_a_pos_0,
    memory_reg_mux_sel_a_pos_0_0,
    memory_reg_mux_sel_a_pos_0_1,
    memory_reg_mux_sel_a_pos_0_2,
    memory_reg_mux_sel_a_pos_0_3,
    memory_reg_mux_sel_a_pos_0_4,
    memory_reg_mux_sel_a_pos_0_5,
    memory_reg_mux_sel_a_pos_0_6,
    memory_reg_mux_sel_a_pos_0_7,
    memory_reg_mux_sel_a_pos_0_8,
    memory_reg_mux_sel_a_pos_0_9,
    memory_reg_mux_sel_a_pos_0_10,
    memory_reg_mux_sel_a_pos_0_11,
    memory_reg_mux_sel_a_pos_0_12,
    memory_reg_mux_sel_a_pos_0_13,
    memory_reg_mux_sel_a_pos_0_14,
    memory_reg_mux_sel_a_pos_0_15,
    memory_reg_mux_sel_a_pos_0_16,
    memory_reg_mux_sel_a_pos_0_17,
    memory_reg_mux_sel_a_pos_0_18,
    memory_reg_mux_sel_a_pos_0_19,
    memory_reg_mux_sel_a_pos_0_20,
    memory_reg_mux_sel_a_pos_0_21,
    memory_reg_mux_sel_a_pos_0_22,
    memory_reg_mux_sel_a_pos_0_23,
    memory_reg_mux_sel_a_pos_0_24,
    memory_reg_mux_sel_a_pos_0_25,
    memory_reg_mux_sel_a_pos_0_26,
    memory_reg_mux_sel_a_pos_0_27,
    memory_reg_mux_sel_a_pos_0_28,
    memory_reg_mux_sel_a_pos_0_29,
    memory_reg_mux_sel_a_pos_0_30,
    E,
    \FSM_onehot_PS_reg[2]_0 ,
    clk_50_BUFG,
    SWITCHES_IBUF,
    SS,
    ram_reg_r1_0_31_0_5_i_24,
    ram_reg_r1_0_31_0_5_i_24_0,
    ram_reg_r1_0_31_0_5_i_19,
    ram_reg_r1_0_31_0_5_i_30,
    ram_reg_r1_0_31_0_5_i_27,
    ram_reg_r1_0_31_0_5_i_36,
    ram_reg_r1_0_31_0_5_i_33,
    ram_reg_r1_0_31_6_11_i_10,
    ram_reg_r1_0_31_6_11_i_7,
    ram_reg_r1_0_31_0_5_i_24_1,
    ram_reg_r1_0_31_0_5_i_19_0,
    ram_reg_r1_0_31_0_5_i_30_0,
    ram_reg_r1_0_31_0_5_i_27_0,
    ram_reg_r1_0_31_0_5_i_36_0,
    ram_reg_r1_0_31_0_5_i_33_0,
    ram_reg_r1_0_31_6_11_i_10_0,
    ram_reg_r1_0_31_6_11_i_7_0,
    ram_reg_r1_0_31_6_11_i_34,
    ram_reg_r1_0_31_6_11_i_32,
    ram_reg_r1_0_31_6_11_i_38,
    ram_reg_r1_0_31_6_11_i_36,
    ram_reg_r1_0_31_12_17_i_29,
    ram_reg_r1_0_31_12_17_i_27,
    ram_reg_r1_0_31_12_17_i_33,
    ram_reg_r1_0_31_12_17_i_31,
    ram_reg_r1_0_31_6_11_i_33,
    ram_reg_r1_0_31_6_11_i_31,
    ram_reg_r1_0_31_6_11_i_37,
    ram_reg_r1_0_31_6_11_i_35,
    ram_reg_r1_0_31_12_17_i_28,
    ram_reg_r1_0_31_12_17_i_26,
    ram_reg_r1_0_31_12_17_i_32,
    ram_reg_r1_0_31_12_17_i_30);
  output [15:0]RS2;
  output [0:0]\FSM_onehot_PS_reg[2] ;
  output memory_reg_mux_sel_a_pos_0;
  output memory_reg_mux_sel_a_pos_0_0;
  output memory_reg_mux_sel_a_pos_0_1;
  output memory_reg_mux_sel_a_pos_0_2;
  output memory_reg_mux_sel_a_pos_0_3;
  output memory_reg_mux_sel_a_pos_0_4;
  output memory_reg_mux_sel_a_pos_0_5;
  output memory_reg_mux_sel_a_pos_0_6;
  output memory_reg_mux_sel_a_pos_0_7;
  output memory_reg_mux_sel_a_pos_0_8;
  output memory_reg_mux_sel_a_pos_0_9;
  output memory_reg_mux_sel_a_pos_0_10;
  output memory_reg_mux_sel_a_pos_0_11;
  output memory_reg_mux_sel_a_pos_0_12;
  output memory_reg_mux_sel_a_pos_0_13;
  output memory_reg_mux_sel_a_pos_0_14;
  output memory_reg_mux_sel_a_pos_0_15;
  output memory_reg_mux_sel_a_pos_0_16;
  output memory_reg_mux_sel_a_pos_0_17;
  output memory_reg_mux_sel_a_pos_0_18;
  output memory_reg_mux_sel_a_pos_0_19;
  output memory_reg_mux_sel_a_pos_0_20;
  output memory_reg_mux_sel_a_pos_0_21;
  output memory_reg_mux_sel_a_pos_0_22;
  output memory_reg_mux_sel_a_pos_0_23;
  output memory_reg_mux_sel_a_pos_0_24;
  output memory_reg_mux_sel_a_pos_0_25;
  output memory_reg_mux_sel_a_pos_0_26;
  output memory_reg_mux_sel_a_pos_0_27;
  output memory_reg_mux_sel_a_pos_0_28;
  output memory_reg_mux_sel_a_pos_0_29;
  output memory_reg_mux_sel_a_pos_0_30;
  output [0:0]E;
  output [0:0]\FSM_onehot_PS_reg[2]_0 ;
  input clk_50_BUFG;
  input [15:0]SWITCHES_IBUF;
  input [0:0]SS;
  input ram_reg_r1_0_31_0_5_i_24;
  input ram_reg_r1_0_31_0_5_i_24_0;
  input ram_reg_r1_0_31_0_5_i_19;
  input ram_reg_r1_0_31_0_5_i_30;
  input ram_reg_r1_0_31_0_5_i_27;
  input ram_reg_r1_0_31_0_5_i_36;
  input ram_reg_r1_0_31_0_5_i_33;
  input ram_reg_r1_0_31_6_11_i_10;
  input ram_reg_r1_0_31_6_11_i_7;
  input ram_reg_r1_0_31_0_5_i_24_1;
  input ram_reg_r1_0_31_0_5_i_19_0;
  input ram_reg_r1_0_31_0_5_i_30_0;
  input ram_reg_r1_0_31_0_5_i_27_0;
  input ram_reg_r1_0_31_0_5_i_36_0;
  input ram_reg_r1_0_31_0_5_i_33_0;
  input ram_reg_r1_0_31_6_11_i_10_0;
  input ram_reg_r1_0_31_6_11_i_7_0;
  input ram_reg_r1_0_31_6_11_i_34;
  input ram_reg_r1_0_31_6_11_i_32;
  input ram_reg_r1_0_31_6_11_i_38;
  input ram_reg_r1_0_31_6_11_i_36;
  input ram_reg_r1_0_31_12_17_i_29;
  input ram_reg_r1_0_31_12_17_i_27;
  input ram_reg_r1_0_31_12_17_i_33;
  input ram_reg_r1_0_31_12_17_i_31;
  input ram_reg_r1_0_31_6_11_i_33;
  input ram_reg_r1_0_31_6_11_i_31;
  input ram_reg_r1_0_31_6_11_i_37;
  input ram_reg_r1_0_31_6_11_i_35;
  input ram_reg_r1_0_31_12_17_i_28;
  input ram_reg_r1_0_31_12_17_i_26;
  input ram_reg_r1_0_31_12_17_i_32;
  input ram_reg_r1_0_31_12_17_i_30;

  wire [0:0]E;
  wire [0:0]\FSM_onehot_PS_reg[2] ;
  wire [0:0]\FSM_onehot_PS_reg[2]_0 ;
  wire [0:0]IOBUS_addr;
  wire OTTER_ALU_n_64;
  wire OTTER_ALU_n_65;
  wire OTTER_BAG_n_32;
  wire OTTER_BAG_n_33;
  wire OTTER_BAG_n_34;
  wire OTTER_BAG_n_35;
  wire OTTER_BAG_n_36;
  wire OTTER_BAG_n_37;
  wire OTTER_BAG_n_38;
  wire OTTER_BAG_n_39;
  wire OTTER_BAG_n_40;
  wire OTTER_BAG_n_41;
  wire OTTER_BAG_n_42;
  wire OTTER_BAG_n_43;
  wire OTTER_BAG_n_44;
  wire OTTER_BAG_n_45;
  wire OTTER_BAG_n_46;
  wire OTTER_BAG_n_47;
  wire OTTER_BAG_n_48;
  wire OTTER_BAG_n_49;
  wire OTTER_BAG_n_50;
  wire OTTER_BAG_n_51;
  wire OTTER_BAG_n_52;
  wire OTTER_BAG_n_53;
  wire OTTER_BAG_n_54;
  wire OTTER_BAG_n_55;
  wire OTTER_BAG_n_56;
  wire OTTER_BAG_n_57;
  wire OTTER_MEMORY_n_112;
  wire OTTER_MEMORY_n_113;
  wire OTTER_MEMORY_n_114;
  wire OTTER_MEMORY_n_115;
  wire OTTER_MEMORY_n_116;
  wire OTTER_MEMORY_n_117;
  wire OTTER_MEMORY_n_118;
  wire OTTER_MEMORY_n_119;
  wire OTTER_MEMORY_n_120;
  wire OTTER_MEMORY_n_121;
  wire OTTER_MEMORY_n_122;
  wire OTTER_MEMORY_n_123;
  wire OTTER_MEMORY_n_124;
  wire OTTER_MEMORY_n_125;
  wire OTTER_MEMORY_n_126;
  wire OTTER_MEMORY_n_127;
  wire OTTER_MEMORY_n_128;
  wire OTTER_MEMORY_n_129;
  wire OTTER_MEMORY_n_130;
  wire OTTER_MEMORY_n_131;
  wire OTTER_MEMORY_n_132;
  wire OTTER_MEMORY_n_133;
  wire OTTER_MEMORY_n_134;
  wire OTTER_MEMORY_n_135;
  wire OTTER_MEMORY_n_136;
  wire OTTER_MEMORY_n_137;
  wire OTTER_MEMORY_n_138;
  wire OTTER_MEMORY_n_139;
  wire OTTER_MEMORY_n_140;
  wire OTTER_MEMORY_n_141;
  wire OTTER_MEMORY_n_142;
  wire OTTER_MEMORY_n_143;
  wire OTTER_MEMORY_n_144;
  wire OTTER_MEMORY_n_18;
  wire OTTER_MEMORY_n_19;
  wire OTTER_MEMORY_n_2;
  wire OTTER_MEMORY_n_20;
  wire OTTER_MEMORY_n_209;
  wire OTTER_MEMORY_n_21;
  wire OTTER_MEMORY_n_210;
  wire OTTER_MEMORY_n_211;
  wire OTTER_MEMORY_n_212;
  wire OTTER_MEMORY_n_213;
  wire OTTER_MEMORY_n_214;
  wire OTTER_MEMORY_n_215;
  wire OTTER_MEMORY_n_216;
  wire OTTER_MEMORY_n_217;
  wire OTTER_MEMORY_n_218;
  wire OTTER_MEMORY_n_219;
  wire OTTER_MEMORY_n_22;
  wire OTTER_MEMORY_n_220;
  wire OTTER_MEMORY_n_221;
  wire OTTER_MEMORY_n_222;
  wire OTTER_MEMORY_n_223;
  wire OTTER_MEMORY_n_224;
  wire OTTER_MEMORY_n_225;
  wire OTTER_MEMORY_n_226;
  wire OTTER_MEMORY_n_227;
  wire OTTER_MEMORY_n_228;
  wire OTTER_MEMORY_n_229;
  wire OTTER_MEMORY_n_23;
  wire OTTER_MEMORY_n_230;
  wire OTTER_MEMORY_n_231;
  wire OTTER_MEMORY_n_232;
  wire OTTER_MEMORY_n_233;
  wire OTTER_MEMORY_n_234;
  wire OTTER_MEMORY_n_235;
  wire OTTER_MEMORY_n_236;
  wire OTTER_MEMORY_n_237;
  wire OTTER_MEMORY_n_238;
  wire OTTER_MEMORY_n_239;
  wire OTTER_MEMORY_n_24;
  wire OTTER_MEMORY_n_240;
  wire OTTER_MEMORY_n_241;
  wire OTTER_MEMORY_n_242;
  wire OTTER_MEMORY_n_243;
  wire OTTER_MEMORY_n_244;
  wire OTTER_MEMORY_n_245;
  wire OTTER_MEMORY_n_246;
  wire OTTER_MEMORY_n_247;
  wire OTTER_MEMORY_n_248;
  wire OTTER_MEMORY_n_249;
  wire OTTER_MEMORY_n_25;
  wire OTTER_MEMORY_n_250;
  wire OTTER_MEMORY_n_251;
  wire OTTER_MEMORY_n_252;
  wire OTTER_MEMORY_n_253;
  wire OTTER_MEMORY_n_254;
  wire OTTER_MEMORY_n_255;
  wire OTTER_MEMORY_n_256;
  wire OTTER_MEMORY_n_257;
  wire OTTER_MEMORY_n_258;
  wire OTTER_MEMORY_n_259;
  wire OTTER_MEMORY_n_26;
  wire OTTER_MEMORY_n_260;
  wire OTTER_MEMORY_n_261;
  wire OTTER_MEMORY_n_262;
  wire OTTER_MEMORY_n_263;
  wire OTTER_MEMORY_n_264;
  wire OTTER_MEMORY_n_265;
  wire OTTER_MEMORY_n_266;
  wire OTTER_MEMORY_n_267;
  wire OTTER_MEMORY_n_268;
  wire OTTER_MEMORY_n_269;
  wire OTTER_MEMORY_n_27;
  wire OTTER_MEMORY_n_270;
  wire OTTER_MEMORY_n_271;
  wire OTTER_MEMORY_n_272;
  wire OTTER_MEMORY_n_273;
  wire OTTER_MEMORY_n_274;
  wire OTTER_MEMORY_n_275;
  wire OTTER_MEMORY_n_276;
  wire OTTER_MEMORY_n_277;
  wire OTTER_MEMORY_n_278;
  wire OTTER_MEMORY_n_279;
  wire OTTER_MEMORY_n_28;
  wire OTTER_MEMORY_n_280;
  wire OTTER_MEMORY_n_281;
  wire OTTER_MEMORY_n_282;
  wire OTTER_MEMORY_n_283;
  wire OTTER_MEMORY_n_284;
  wire OTTER_MEMORY_n_285;
  wire OTTER_MEMORY_n_286;
  wire OTTER_MEMORY_n_287;
  wire OTTER_MEMORY_n_288;
  wire OTTER_MEMORY_n_289;
  wire OTTER_MEMORY_n_29;
  wire OTTER_MEMORY_n_290;
  wire OTTER_MEMORY_n_291;
  wire OTTER_MEMORY_n_292;
  wire OTTER_MEMORY_n_293;
  wire OTTER_MEMORY_n_294;
  wire OTTER_MEMORY_n_3;
  wire OTTER_MEMORY_n_30;
  wire OTTER_MEMORY_n_31;
  wire OTTER_MEMORY_n_32;
  wire OTTER_MEMORY_n_33;
  wire OTTER_MEMORY_n_4;
  wire OTTER_MEMORY_n_53;
  wire OTTER_MEMORY_n_54;
  wire OTTER_MEMORY_n_55;
  wire OTTER_MEMORY_n_56;
  wire OTTER_MEMORY_n_57;
  wire OTTER_MEMORY_n_58;
  wire OTTER_MEMORY_n_59;
  wire OTTER_MEMORY_n_60;
  wire OTTER_MEMORY_n_61;
  wire OTTER_MEMORY_n_62;
  wire OTTER_MEMORY_n_63;
  wire OTTER_MEMORY_n_64;
  wire OTTER_MEMORY_n_65;
  wire OTTER_MEMORY_n_66;
  wire OTTER_MEMORY_n_67;
  wire OTTER_MEMORY_n_68;
  wire OTTER_MEMORY_n_69;
  wire OTTER_MEMORY_n_70;
  wire OTTER_MEMORY_n_71;
  wire OTTER_MEMORY_n_72;
  wire OTTER_MEMORY_n_73;
  wire OTTER_MEMORY_n_74;
  wire OTTER_MEMORY_n_75;
  wire OTTER_MEMORY_n_76;
  wire OTTER_PC_n_71;
  wire OTTER_PC_n_72;
  wire OTTER_PC_n_73;
  wire OTTER_PC_n_74;
  wire OTTER_PC_n_75;
  wire OTTER_PC_n_76;
  wire OTTER_PC_n_77;
  wire OTTER_PC_n_78;
  wire OTTER_PC_n_79;
  wire OTTER_PC_n_80;
  wire OTTER_PC_n_81;
  wire OTTER_PC_n_82;
  wire OTTER_PC_n_83;
  wire OTTER_PC_n_84;
  wire OTTER_PC_n_85;
  wire OTTER_PC_n_86;
  wire OTTER_PC_n_87;
  wire OTTER_PC_n_88;
  wire OTTER_REG_FILE_n_100;
  wire OTTER_REG_FILE_n_101;
  wire OTTER_REG_FILE_n_102;
  wire OTTER_REG_FILE_n_103;
  wire OTTER_REG_FILE_n_104;
  wire OTTER_REG_FILE_n_105;
  wire OTTER_REG_FILE_n_106;
  wire OTTER_REG_FILE_n_107;
  wire OTTER_REG_FILE_n_108;
  wire OTTER_REG_FILE_n_109;
  wire OTTER_REG_FILE_n_110;
  wire OTTER_REG_FILE_n_111;
  wire OTTER_REG_FILE_n_112;
  wire OTTER_REG_FILE_n_113;
  wire OTTER_REG_FILE_n_114;
  wire OTTER_REG_FILE_n_115;
  wire OTTER_REG_FILE_n_116;
  wire OTTER_REG_FILE_n_117;
  wire OTTER_REG_FILE_n_118;
  wire OTTER_REG_FILE_n_119;
  wire OTTER_REG_FILE_n_120;
  wire OTTER_REG_FILE_n_121;
  wire OTTER_REG_FILE_n_122;
  wire OTTER_REG_FILE_n_123;
  wire OTTER_REG_FILE_n_124;
  wire OTTER_REG_FILE_n_125;
  wire OTTER_REG_FILE_n_126;
  wire OTTER_REG_FILE_n_127;
  wire OTTER_REG_FILE_n_128;
  wire OTTER_REG_FILE_n_129;
  wire OTTER_REG_FILE_n_130;
  wire OTTER_REG_FILE_n_131;
  wire OTTER_REG_FILE_n_132;
  wire OTTER_REG_FILE_n_133;
  wire OTTER_REG_FILE_n_134;
  wire OTTER_REG_FILE_n_135;
  wire OTTER_REG_FILE_n_136;
  wire OTTER_REG_FILE_n_137;
  wire OTTER_REG_FILE_n_138;
  wire OTTER_REG_FILE_n_139;
  wire OTTER_REG_FILE_n_140;
  wire OTTER_REG_FILE_n_141;
  wire OTTER_REG_FILE_n_142;
  wire OTTER_REG_FILE_n_143;
  wire OTTER_REG_FILE_n_144;
  wire OTTER_REG_FILE_n_145;
  wire OTTER_REG_FILE_n_146;
  wire OTTER_REG_FILE_n_147;
  wire OTTER_REG_FILE_n_148;
  wire OTTER_REG_FILE_n_149;
  wire OTTER_REG_FILE_n_150;
  wire OTTER_REG_FILE_n_151;
  wire OTTER_REG_FILE_n_152;
  wire OTTER_REG_FILE_n_153;
  wire OTTER_REG_FILE_n_154;
  wire OTTER_REG_FILE_n_155;
  wire OTTER_REG_FILE_n_156;
  wire OTTER_REG_FILE_n_157;
  wire OTTER_REG_FILE_n_158;
  wire OTTER_REG_FILE_n_159;
  wire OTTER_REG_FILE_n_160;
  wire OTTER_REG_FILE_n_161;
  wire OTTER_REG_FILE_n_32;
  wire OTTER_REG_FILE_n_33;
  wire OTTER_REG_FILE_n_34;
  wire OTTER_REG_FILE_n_51;
  wire OTTER_REG_FILE_n_52;
  wire OTTER_REG_FILE_n_53;
  wire OTTER_REG_FILE_n_54;
  wire OTTER_REG_FILE_n_55;
  wire OTTER_REG_FILE_n_56;
  wire OTTER_REG_FILE_n_57;
  wire OTTER_REG_FILE_n_58;
  wire OTTER_REG_FILE_n_59;
  wire OTTER_REG_FILE_n_60;
  wire OTTER_REG_FILE_n_61;
  wire OTTER_REG_FILE_n_62;
  wire OTTER_REG_FILE_n_63;
  wire OTTER_REG_FILE_n_64;
  wire OTTER_REG_FILE_n_81;
  wire OTTER_REG_FILE_n_82;
  wire OTTER_REG_FILE_n_83;
  wire OTTER_REG_FILE_n_84;
  wire OTTER_REG_FILE_n_85;
  wire OTTER_REG_FILE_n_86;
  wire OTTER_REG_FILE_n_87;
  wire OTTER_REG_FILE_n_88;
  wire OTTER_REG_FILE_n_89;
  wire OTTER_REG_FILE_n_90;
  wire OTTER_REG_FILE_n_91;
  wire OTTER_REG_FILE_n_92;
  wire OTTER_REG_FILE_n_93;
  wire OTTER_REG_FILE_n_94;
  wire OTTER_REG_FILE_n_95;
  wire OTTER_REG_FILE_n_96;
  wire OTTER_REG_FILE_n_97;
  wire OTTER_REG_FILE_n_98;
  wire OTTER_REG_FILE_n_99;
  wire [31:0]\PCMUX/PC_MUX_OUT ;
  wire [3:2]PS;
  wire [15:0]RS2;
  wire [0:0]SS;
  wire [15:0]SWITCHES_IBUF;
  wire [0:0]alu_fun;
  wire alu_src_a;
  wire br_eq;
  wire br_lt;
  wire br_ltu;
  wire [31:28]branch;
  wire clk_50_BUFG;
  wire [31:0]data0;
  wire [31:0]data1;
  wire data8;
  wire data9;
  wire [31:7]ir;
  wire [31:28]jal;
  wire [31:0]jalr;
  wire mem_rden1;
  wire memory_reg_mux_sel_a_pos_0;
  wire memory_reg_mux_sel_a_pos_0_0;
  wire memory_reg_mux_sel_a_pos_0_1;
  wire memory_reg_mux_sel_a_pos_0_10;
  wire memory_reg_mux_sel_a_pos_0_11;
  wire memory_reg_mux_sel_a_pos_0_12;
  wire memory_reg_mux_sel_a_pos_0_13;
  wire memory_reg_mux_sel_a_pos_0_14;
  wire memory_reg_mux_sel_a_pos_0_15;
  wire memory_reg_mux_sel_a_pos_0_16;
  wire memory_reg_mux_sel_a_pos_0_17;
  wire memory_reg_mux_sel_a_pos_0_18;
  wire memory_reg_mux_sel_a_pos_0_19;
  wire memory_reg_mux_sel_a_pos_0_2;
  wire memory_reg_mux_sel_a_pos_0_20;
  wire memory_reg_mux_sel_a_pos_0_21;
  wire memory_reg_mux_sel_a_pos_0_22;
  wire memory_reg_mux_sel_a_pos_0_23;
  wire memory_reg_mux_sel_a_pos_0_24;
  wire memory_reg_mux_sel_a_pos_0_25;
  wire memory_reg_mux_sel_a_pos_0_26;
  wire memory_reg_mux_sel_a_pos_0_27;
  wire memory_reg_mux_sel_a_pos_0_28;
  wire memory_reg_mux_sel_a_pos_0_29;
  wire memory_reg_mux_sel_a_pos_0_3;
  wire memory_reg_mux_sel_a_pos_0_30;
  wire memory_reg_mux_sel_a_pos_0_4;
  wire memory_reg_mux_sel_a_pos_0_5;
  wire memory_reg_mux_sel_a_pos_0_6;
  wire memory_reg_mux_sel_a_pos_0_7;
  wire memory_reg_mux_sel_a_pos_0_8;
  wire memory_reg_mux_sel_a_pos_0_9;
  wire p_0_in0_out;
  wire [15:8]p_1_in;
  wire [31:0]pc_out;
  wire [31:1]pc_out_inc;
  wire pc_rst;
  wire [1:0]pc_source;
  wire pc_write;
  wire ram_reg_r1_0_31_0_5_i_19;
  wire ram_reg_r1_0_31_0_5_i_19_0;
  wire ram_reg_r1_0_31_0_5_i_24;
  wire ram_reg_r1_0_31_0_5_i_24_0;
  wire ram_reg_r1_0_31_0_5_i_24_1;
  wire ram_reg_r1_0_31_0_5_i_27;
  wire ram_reg_r1_0_31_0_5_i_27_0;
  wire ram_reg_r1_0_31_0_5_i_30;
  wire ram_reg_r1_0_31_0_5_i_30_0;
  wire ram_reg_r1_0_31_0_5_i_33;
  wire ram_reg_r1_0_31_0_5_i_33_0;
  wire ram_reg_r1_0_31_0_5_i_36;
  wire ram_reg_r1_0_31_0_5_i_36_0;
  wire ram_reg_r1_0_31_12_17_i_26;
  wire ram_reg_r1_0_31_12_17_i_27;
  wire ram_reg_r1_0_31_12_17_i_28;
  wire ram_reg_r1_0_31_12_17_i_29;
  wire ram_reg_r1_0_31_12_17_i_30;
  wire ram_reg_r1_0_31_12_17_i_31;
  wire ram_reg_r1_0_31_12_17_i_32;
  wire ram_reg_r1_0_31_12_17_i_33;
  wire ram_reg_r1_0_31_6_11_i_10;
  wire ram_reg_r1_0_31_6_11_i_10_0;
  wire ram_reg_r1_0_31_6_11_i_31;
  wire ram_reg_r1_0_31_6_11_i_32;
  wire ram_reg_r1_0_31_6_11_i_33;
  wire ram_reg_r1_0_31_6_11_i_34;
  wire ram_reg_r1_0_31_6_11_i_35;
  wire ram_reg_r1_0_31_6_11_i_36;
  wire ram_reg_r1_0_31_6_11_i_37;
  wire ram_reg_r1_0_31_6_11_i_38;
  wire ram_reg_r1_0_31_6_11_i_7;
  wire ram_reg_r1_0_31_6_11_i_7_0;
  wire [31:0]rs1;
  wire [30:1]srcA;
  wire [11:0]srcB;
  wire [31:0]wd;

  ALU OTTER_ALU
       (.CO(data8),
        .DI({OTTER_REG_FILE_n_81,OTTER_REG_FILE_n_82}),
        .\OUT_reg[31] ({data0[31],data0[29:14],data0[12:0]}),
        .\RESULT0_inferred__7/i__carry__0_0 ({OTTER_MEMORY_n_246,OTTER_REG_FILE_n_161}),
        .\RESULT0_inferred__7/i__carry__0_1 ({OTTER_MEMORY_n_137,OTTER_MEMORY_n_138,OTTER_MEMORY_n_139,OTTER_MEMORY_n_140}),
        .\RESULT0_inferred__7/i__carry__1_0 ({OTTER_MEMORY_n_215,OTTER_MEMORY_n_216,OTTER_MEMORY_n_217,OTTER_MEMORY_n_218}),
        .\RESULT0_inferred__7/i__carry__1_1 ({OTTER_MEMORY_n_113,OTTER_MEMORY_n_114,OTTER_MEMORY_n_115,OTTER_MEMORY_n_116}),
        .\RESULT0_inferred__7/i__carry__2_0 ({OTTER_MEMORY_n_247,OTTER_MEMORY_n_248,OTTER_MEMORY_n_249,OTTER_MEMORY_n_250}),
        .\RESULT0_inferred__7/i__carry__2_1 ({OTTER_MEMORY_n_121,OTTER_MEMORY_n_122,OTTER_MEMORY_n_123,OTTER_MEMORY_n_124}),
        .\RESULT0_inferred__8/i__carry__0_0 ({OTTER_MEMORY_n_209,OTTER_MEMORY_n_210,OTTER_MEMORY_n_211,OTTER_MEMORY_n_212}),
        .\RESULT0_inferred__8/i__carry__0_1 ({OTTER_MEMORY_n_141,OTTER_MEMORY_n_142,OTTER_MEMORY_n_143,OTTER_MEMORY_n_144}),
        .\RESULT0_inferred__8/i__carry__1_0 ({OTTER_MEMORY_n_219,OTTER_MEMORY_n_220,OTTER_MEMORY_n_221}),
        .\RESULT0_inferred__8/i__carry__1_1 ({OTTER_MEMORY_n_117,OTTER_MEMORY_n_118,OTTER_MEMORY_n_119,OTTER_MEMORY_n_120}),
        .\RESULT0_inferred__8/i__carry__2_0 ({OTTER_MEMORY_n_222,OTTER_MEMORY_n_223,OTTER_MEMORY_n_224,OTTER_MEMORY_n_225}),
        .\RESULT0_inferred__8/i__carry__2_1 ({OTTER_MEMORY_n_125,OTTER_MEMORY_n_126,OTTER_MEMORY_n_127,OTTER_MEMORY_n_128}),
        .S({OTTER_MEMORY_n_73,OTTER_MEMORY_n_74,OTTER_MEMORY_n_75,OTTER_MEMORY_n_76}),
        .alu_fun(alu_fun),
        .data1(data1),
        .i__carry__2_i_8__0(data9),
        .memory_mux_sel_a_pos_3_i_16(OTTER_ALU_n_65),
        .memory_mux_sel_a_pos_3_i_4({OTTER_MEMORY_n_251,OTTER_MEMORY_n_252,OTTER_MEMORY_n_253,OTTER_MEMORY_n_254}),
        .memory_mux_sel_a_pos_3_i_8({OTTER_MEMORY_n_30,OTTER_MEMORY_n_31,OTTER_MEMORY_n_32,OTTER_MEMORY_n_33}),
        .memory_reg_bram_0_i_107({OTTER_MEMORY_n_22,OTTER_MEMORY_n_23,OTTER_MEMORY_n_24,OTTER_MEMORY_n_25}),
        .memory_reg_bram_0_i_129({OTTER_REG_FILE_n_83,OTTER_REG_FILE_n_84}),
        .memory_reg_bram_0_i_129_0({OTTER_REG_FILE_n_34,OTTER_MEMORY_n_2,OTTER_MEMORY_n_3,OTTER_MEMORY_n_4}),
        .memory_reg_bram_0_i_151({OTTER_MEMORY_n_230,OTTER_MEMORY_n_231,OTTER_MEMORY_n_232,OTTER_MEMORY_n_233}),
        .memory_reg_bram_0_i_151_0({OTTER_MEMORY_n_129,OTTER_MEMORY_n_130,OTTER_MEMORY_n_131,OTTER_MEMORY_n_132}),
        .memory_reg_bram_0_i_151_1({OTTER_MEMORY_n_226,OTTER_MEMORY_n_227,OTTER_MEMORY_n_228,OTTER_MEMORY_n_229}),
        .memory_reg_bram_0_i_151_2({OTTER_MEMORY_n_133,OTTER_MEMORY_n_134,OTTER_MEMORY_n_135,OTTER_MEMORY_n_136}),
        .memory_reg_bram_0_i_194({OTTER_MEMORY_n_69,OTTER_MEMORY_n_70,OTTER_MEMORY_n_71,OTTER_MEMORY_n_72}),
        .memory_reg_bram_0_i_54({OTTER_MEMORY_n_26,OTTER_MEMORY_n_27,OTTER_MEMORY_n_28,OTTER_MEMORY_n_29}),
        .memory_reg_bram_0_i_69({OTTER_MEMORY_n_18,OTTER_MEMORY_n_19,OTTER_MEMORY_n_20,OTTER_MEMORY_n_21}),
        .ram_reg_r1_0_31_12_17_i_43({OTTER_MEMORY_n_255,OTTER_MEMORY_n_256,OTTER_MEMORY_n_257,OTTER_MEMORY_n_258}),
        .ram_reg_r1_0_31_12_17_i_64({OTTER_MEMORY_n_53,OTTER_MEMORY_n_54,OTTER_MEMORY_n_55,OTTER_MEMORY_n_56}),
        .ram_reg_r1_0_31_18_23_i_35({OTTER_MEMORY_n_263,OTTER_MEMORY_n_264,OTTER_MEMORY_n_265,OTTER_MEMORY_n_266}),
        .ram_reg_r1_0_31_18_23_i_70({OTTER_MEMORY_n_65,OTTER_MEMORY_n_66,OTTER_MEMORY_n_67,OTTER_MEMORY_n_68}),
        .ram_reg_r1_0_31_24_29_i_25({OTTER_MEMORY_n_259,OTTER_MEMORY_n_260,OTTER_MEMORY_n_261,OTTER_MEMORY_n_262}),
        .ram_reg_r1_0_31_24_29_i_45({OTTER_MEMORY_n_242,OTTER_MEMORY_n_243,OTTER_MEMORY_n_244,OTTER_MEMORY_n_245}),
        .ram_reg_r1_0_31_24_29_i_58({OTTER_MEMORY_n_61,OTTER_MEMORY_n_62,OTTER_MEMORY_n_63,OTTER_MEMORY_n_64}),
        .ram_reg_r1_0_31_24_29_i_82({OTTER_MEMORY_n_57,OTTER_MEMORY_n_58,OTTER_MEMORY_n_59,OTTER_MEMORY_n_60}),
        .ram_reg_r1_0_31_30_31_i_10(OTTER_ALU_n_64),
        .ram_reg_r1_0_31_30_31_i_2(OTTER_MEMORY_n_214),
        .ram_reg_r1_0_31_30_31_i_2_0(OTTER_MEMORY_n_235),
        .ram_reg_r1_0_31_30_31_i_2_1(OTTER_MEMORY_n_234),
        .ram_reg_r1_0_31_30_31_i_2_2(OTTER_MEMORY_n_236),
        .srcA({srcA[30:7],srcA[5],srcA[3],srcA[1]}),
        .srcB(srcB));
  BAG OTTER_BAG
       (.\OUT_reg[11] ({OTTER_MEMORY_n_275,OTTER_MEMORY_n_276,OTTER_MEMORY_n_277,OTTER_MEMORY_n_278}),
        .\OUT_reg[12] ({OTTER_BAG_n_32,OTTER_BAG_n_33}),
        .\OUT_reg[12]_0 ({OTTER_BAG_n_45,OTTER_BAG_n_46}),
        .\OUT_reg[15] ({OTTER_MEMORY_n_279,OTTER_MEMORY_n_280,OTTER_MEMORY_n_281,OTTER_MEMORY_n_282}),
        .\OUT_reg[16] ({OTTER_BAG_n_34,OTTER_BAG_n_35,OTTER_BAG_n_36,OTTER_BAG_n_37}),
        .\OUT_reg[16]_0 ({OTTER_BAG_n_54,OTTER_BAG_n_55,OTTER_BAG_n_56,OTTER_BAG_n_57}),
        .\OUT_reg[19] ({OTTER_BAG_n_38,OTTER_BAG_n_39,OTTER_BAG_n_40}),
        .\OUT_reg[19]_0 ({OTTER_BAG_n_51,OTTER_BAG_n_52,OTTER_BAG_n_53}),
        .\OUT_reg[19]_1 ({OTTER_MEMORY_n_283,OTTER_MEMORY_n_284,OTTER_MEMORY_n_285,OTTER_MEMORY_n_286}),
        .\OUT_reg[23] ({OTTER_MEMORY_n_287,OTTER_MEMORY_n_288,OTTER_MEMORY_n_289,OTTER_MEMORY_n_290}),
        .\OUT_reg[27] ({OTTER_MEMORY_n_291,OTTER_MEMORY_n_292,OTTER_MEMORY_n_293,OTTER_MEMORY_n_294}),
        .\OUT_reg[31] ({OTTER_MEMORY_n_238,OTTER_MEMORY_n_239,OTTER_MEMORY_n_240,OTTER_MEMORY_n_241}),
        .\OUT_reg[4] ({OTTER_BAG_n_41,OTTER_BAG_n_42,OTTER_BAG_n_43,OTTER_BAG_n_44}),
        .\OUT_reg[4]_0 ({OTTER_BAG_n_47,OTTER_BAG_n_48,OTTER_BAG_n_49,OTTER_BAG_n_50}),
        .\OUT_reg[7] ({OTTER_MEMORY_n_271,OTTER_MEMORY_n_272,OTTER_MEMORY_n_273,OTTER_MEMORY_n_274}),
        .Q({pc_out[19:11],pc_out[4:1]}),
        .S({OTTER_MEMORY_n_267,OTTER_MEMORY_n_268,OTTER_MEMORY_n_269,OTTER_MEMORY_n_270}),
        .ir(ir),
        .jalr(jalr));
  BCG OTTER_BCG
       (.BR_EQ_carry__1_0({OTTER_REG_FILE_n_106,OTTER_REG_FILE_n_107,OTTER_REG_FILE_n_108,OTTER_REG_FILE_n_109}),
        .BR_LTU_carry__0_0({OTTER_REG_FILE_n_94,OTTER_REG_FILE_n_95,OTTER_REG_FILE_n_96,OTTER_REG_FILE_n_97}),
        .BR_LTU_carry__0_1({OTTER_REG_FILE_n_86,OTTER_REG_FILE_n_87,OTTER_REG_FILE_n_88,OTTER_REG_FILE_n_89}),
        .BR_LTU_carry__1_0({OTTER_REG_FILE_n_102,OTTER_REG_FILE_n_103,OTTER_REG_FILE_n_104,OTTER_REG_FILE_n_105}),
        .BR_LTU_carry__1_1({OTTER_REG_FILE_n_98,OTTER_REG_FILE_n_99,OTTER_REG_FILE_n_100,OTTER_REG_FILE_n_101}),
        .BR_LTU_carry__2_0({OTTER_REG_FILE_n_110,OTTER_REG_FILE_n_111,OTTER_REG_FILE_n_112,OTTER_REG_FILE_n_113}),
        .BR_LTU_carry__2_1({OTTER_REG_FILE_n_114,OTTER_REG_FILE_n_115,OTTER_REG_FILE_n_116,OTTER_REG_FILE_n_117}),
        .BR_LTU_carry__2_i_8(br_ltu),
        .BR_LT_carry__0_0({OTTER_REG_FILE_n_133,OTTER_REG_FILE_n_134,OTTER_REG_FILE_n_135,OTTER_REG_FILE_n_136}),
        .BR_LT_carry__1_0({OTTER_REG_FILE_n_145,OTTER_REG_FILE_n_146,OTTER_REG_FILE_n_147,OTTER_REG_FILE_n_148}),
        .BR_LT_carry__1_1({OTTER_REG_FILE_n_141,OTTER_REG_FILE_n_142,OTTER_REG_FILE_n_143,OTTER_REG_FILE_n_144}),
        .BR_LT_carry__2_0({OTTER_REG_FILE_n_153,OTTER_REG_FILE_n_154,OTTER_REG_FILE_n_155,OTTER_REG_FILE_n_156}),
        .BR_LT_carry__2_1({OTTER_REG_FILE_n_149,OTTER_REG_FILE_n_150,OTTER_REG_FILE_n_151,OTTER_REG_FILE_n_152}),
        .BR_LT_carry__2_i_8(br_lt),
        .CO(br_eq),
        .DI({OTTER_REG_FILE_n_137,OTTER_REG_FILE_n_138,OTTER_REG_FILE_n_139,OTTER_REG_FILE_n_140}),
        .\OUT[31]_i_18 ({OTTER_REG_FILE_n_122,OTTER_REG_FILE_n_123,OTTER_REG_FILE_n_124}),
        .\OUT[31]_i_18_0 ({OTTER_REG_FILE_n_129,OTTER_REG_FILE_n_130,OTTER_REG_FILE_n_131,OTTER_REG_FILE_n_132}),
        .\OUT[31]_i_18_1 ({OTTER_REG_FILE_n_157,OTTER_REG_FILE_n_158,OTTER_REG_FILE_n_159,OTTER_REG_FILE_n_160}),
        .\OUT[31]_i_18_2 ({OTTER_REG_FILE_n_125,OTTER_REG_FILE_n_126,OTTER_REG_FILE_n_127,OTTER_REG_FILE_n_128}),
        .\OUT[31]_i_18_3 ({OTTER_REG_FILE_n_118,OTTER_REG_FILE_n_119,OTTER_REG_FILE_n_120,OTTER_REG_FILE_n_121}),
        .S({OTTER_REG_FILE_n_90,OTTER_REG_FILE_n_91,OTTER_REG_FILE_n_92,OTTER_REG_FILE_n_93}));
  CU_FSM OTTER_FSM
       (.D(\FSM_onehot_PS_reg[2] ),
        .\FSM_onehot_PS_reg[1]_0 (OTTER_MEMORY_n_237),
        .\FSM_onehot_PS_reg[1]_1 (OTTER_MEMORY_n_112),
        .Q({PS,mem_rden1,pc_rst}),
        .SS(SS),
        .clk_50_BUFG(clk_50_BUFG));
  Memory OTTER_MEMORY
       (.CO(data8),
        .D(\FSM_onehot_PS_reg[2] ),
        .DIADI({p_1_in,RS2[7:0]}),
        .E(pc_write),
        .\FSM_onehot_PS_reg[2] (E),
        .\FSM_onehot_PS_reg[2]_0 (\FSM_onehot_PS_reg[2]_0 ),
        .\OUT_reg[0] (OTTER_MEMORY_n_214),
        .\OUT_reg[0]_0 (OTTER_MEMORY_n_234),
        .\OUT_reg[0]_1 (OTTER_REG_FILE_n_85),
        .\OUT_reg[11] (srcB),
        .\OUT_reg[11]_0 ({OTTER_MEMORY_n_22,OTTER_MEMORY_n_23,OTTER_MEMORY_n_24,OTTER_MEMORY_n_25}),
        .\OUT_reg[11]_1 ({OTTER_MEMORY_n_26,OTTER_MEMORY_n_27,OTTER_MEMORY_n_28,OTTER_MEMORY_n_29}),
        .\OUT_reg[14] ({OTTER_MEMORY_n_215,OTTER_MEMORY_n_216,OTTER_MEMORY_n_217,OTTER_MEMORY_n_218}),
        .\OUT_reg[14]_0 ({OTTER_MEMORY_n_219,OTTER_MEMORY_n_220,OTTER_MEMORY_n_221}),
        .\OUT_reg[15] ({OTTER_MEMORY_n_30,OTTER_MEMORY_n_31,OTTER_MEMORY_n_32,OTTER_MEMORY_n_33}),
        .\OUT_reg[15]_0 ({OTTER_MEMORY_n_113,OTTER_MEMORY_n_114,OTTER_MEMORY_n_115,OTTER_MEMORY_n_116}),
        .\OUT_reg[15]_1 ({OTTER_MEMORY_n_117,OTTER_MEMORY_n_118,OTTER_MEMORY_n_119,OTTER_MEMORY_n_120}),
        .\OUT_reg[15]_2 ({OTTER_MEMORY_n_251,OTTER_MEMORY_n_252,OTTER_MEMORY_n_253,OTTER_MEMORY_n_254}),
        .\OUT_reg[19] ({OTTER_MEMORY_n_53,OTTER_MEMORY_n_54,OTTER_MEMORY_n_55,OTTER_MEMORY_n_56}),
        .\OUT_reg[19]_0 ({OTTER_MEMORY_n_255,OTTER_MEMORY_n_256,OTTER_MEMORY_n_257,OTTER_MEMORY_n_258}),
        .\OUT_reg[1] (OTTER_MEMORY_n_235),
        .\OUT_reg[1]_0 (OTTER_MEMORY_n_236),
        .\OUT_reg[22] ({OTTER_MEMORY_n_222,OTTER_MEMORY_n_223,OTTER_MEMORY_n_224,OTTER_MEMORY_n_225}),
        .\OUT_reg[22]_0 ({OTTER_MEMORY_n_247,OTTER_MEMORY_n_248,OTTER_MEMORY_n_249,OTTER_MEMORY_n_250}),
        .\OUT_reg[23] ({OTTER_MEMORY_n_65,OTTER_MEMORY_n_66,OTTER_MEMORY_n_67,OTTER_MEMORY_n_68}),
        .\OUT_reg[23]_0 ({OTTER_MEMORY_n_121,OTTER_MEMORY_n_122,OTTER_MEMORY_n_123,OTTER_MEMORY_n_124}),
        .\OUT_reg[23]_1 ({OTTER_MEMORY_n_125,OTTER_MEMORY_n_126,OTTER_MEMORY_n_127,OTTER_MEMORY_n_128}),
        .\OUT_reg[23]_2 ({OTTER_MEMORY_n_263,OTTER_MEMORY_n_264,OTTER_MEMORY_n_265,OTTER_MEMORY_n_266}),
        .\OUT_reg[27] ({OTTER_MEMORY_n_61,OTTER_MEMORY_n_62,OTTER_MEMORY_n_63,OTTER_MEMORY_n_64}),
        .\OUT_reg[27]_0 ({OTTER_MEMORY_n_259,OTTER_MEMORY_n_260,OTTER_MEMORY_n_261,OTTER_MEMORY_n_262}),
        .\OUT_reg[2] (OTTER_MEMORY_n_246),
        .\OUT_reg[30] ({\PCMUX/PC_MUX_OUT [31:28],\PCMUX/PC_MUX_OUT [0]}),
        .\OUT_reg[31] ({OTTER_MEMORY_n_57,OTTER_MEMORY_n_58,OTTER_MEMORY_n_59,OTTER_MEMORY_n_60}),
        .\OUT_reg[31]_0 ({OTTER_MEMORY_n_129,OTTER_MEMORY_n_130,OTTER_MEMORY_n_131,OTTER_MEMORY_n_132}),
        .\OUT_reg[31]_1 ({OTTER_MEMORY_n_133,OTTER_MEMORY_n_134,OTTER_MEMORY_n_135,OTTER_MEMORY_n_136}),
        .\OUT_reg[31]_2 ({OTTER_MEMORY_n_226,OTTER_MEMORY_n_227,OTTER_MEMORY_n_228,OTTER_MEMORY_n_229}),
        .\OUT_reg[31]_3 ({OTTER_MEMORY_n_230,OTTER_MEMORY_n_231,OTTER_MEMORY_n_232,OTTER_MEMORY_n_233}),
        .\OUT_reg[31]_4 ({OTTER_MEMORY_n_242,OTTER_MEMORY_n_243,OTTER_MEMORY_n_244,OTTER_MEMORY_n_245}),
        .\OUT_reg[3] ({OTTER_MEMORY_n_69,OTTER_MEMORY_n_70,OTTER_MEMORY_n_71,OTTER_MEMORY_n_72}),
        .\OUT_reg[6] ({OTTER_MEMORY_n_2,OTTER_MEMORY_n_3,OTTER_MEMORY_n_4}),
        .\OUT_reg[6]_0 ({OTTER_MEMORY_n_209,OTTER_MEMORY_n_210,OTTER_MEMORY_n_211,OTTER_MEMORY_n_212}),
        .\OUT_reg[7] ({OTTER_MEMORY_n_18,OTTER_MEMORY_n_19,OTTER_MEMORY_n_20,OTTER_MEMORY_n_21}),
        .\OUT_reg[7]_0 ({OTTER_MEMORY_n_137,OTTER_MEMORY_n_138,OTTER_MEMORY_n_139,OTTER_MEMORY_n_140}),
        .\OUT_reg[7]_1 ({OTTER_MEMORY_n_141,OTTER_MEMORY_n_142,OTTER_MEMORY_n_143,OTTER_MEMORY_n_144}),
        .Q({PS,mem_rden1}),
        .RESULT0_carry__6(pc_out),
        .RESULT0_carry_i_9_0(OTTER_MEMORY_n_213),
        .RS2({OTTER_REG_FILE_n_51,OTTER_REG_FILE_n_52,OTTER_REG_FILE_n_53,OTTER_REG_FILE_n_54,OTTER_REG_FILE_n_55,OTTER_REG_FILE_n_56,OTTER_REG_FILE_n_57,OTTER_REG_FILE_n_58,OTTER_REG_FILE_n_59,OTTER_REG_FILE_n_60,OTTER_REG_FILE_n_61,OTTER_REG_FILE_n_62,OTTER_REG_FILE_n_63,OTTER_REG_FILE_n_64,RS2[15:8]}),
        .S({OTTER_MEMORY_n_73,OTTER_MEMORY_n_74,OTTER_MEMORY_n_75,OTTER_MEMORY_n_76}),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .alu_src_a(alu_src_a),
        .branch(branch),
        .clk_50_BUFG(clk_50_BUFG),
        .data1(data1),
        .jal(jal),
        .jalr({jalr[31:28],jalr[0]}),
        .memory_mux_sel_a_pos_2_i_4_0(OTTER_PC_n_88),
        .memory_mux_sel_a_pos_3_i_3_0(IOBUS_addr),
        .memory_reg_bram_0_0(OTTER_PC_n_71),
        .memory_reg_bram_0_1(OTTER_REG_FILE_n_33),
        .memory_reg_bram_0_2(OTTER_REG_FILE_n_32),
        .memory_reg_bram_0_i_44_0(OTTER_PC_n_87),
        .memory_reg_bram_0_i_80_0(data9),
        .memory_reg_bram_10_0(OTTER_PC_n_83),
        .memory_reg_bram_11_0(OTTER_PC_n_82),
        .memory_reg_bram_12_0(OTTER_PC_n_86),
        .memory_reg_bram_13_0(OTTER_PC_n_84),
        .memory_reg_bram_14_0(OTTER_PC_n_85),
        .memory_reg_bram_15_0(OTTER_PC_n_74),
        .memory_reg_bram_1_0(OTTER_PC_n_72),
        .memory_reg_bram_2_0(OTTER_PC_n_73),
        .memory_reg_bram_3_0(OTTER_PC_n_75),
        .memory_reg_bram_4_0(OTTER_PC_n_76),
        .memory_reg_bram_5_0(OTTER_PC_n_77),
        .memory_reg_bram_6_0(OTTER_PC_n_79),
        .memory_reg_bram_7_0(OTTER_PC_n_78),
        .memory_reg_bram_8_0(OTTER_PC_n_80),
        .memory_reg_bram_9_0(OTTER_PC_n_81),
        .memory_reg_mux_sel_a_pos_0_0(memory_reg_mux_sel_a_pos_0),
        .memory_reg_mux_sel_a_pos_0_1(memory_reg_mux_sel_a_pos_0_0),
        .memory_reg_mux_sel_a_pos_0_10(memory_reg_mux_sel_a_pos_0_9),
        .memory_reg_mux_sel_a_pos_0_11(memory_reg_mux_sel_a_pos_0_10),
        .memory_reg_mux_sel_a_pos_0_12(memory_reg_mux_sel_a_pos_0_11),
        .memory_reg_mux_sel_a_pos_0_13(memory_reg_mux_sel_a_pos_0_12),
        .memory_reg_mux_sel_a_pos_0_14(memory_reg_mux_sel_a_pos_0_13),
        .memory_reg_mux_sel_a_pos_0_15(memory_reg_mux_sel_a_pos_0_14),
        .memory_reg_mux_sel_a_pos_0_16(memory_reg_mux_sel_a_pos_0_15),
        .memory_reg_mux_sel_a_pos_0_17(memory_reg_mux_sel_a_pos_0_16),
        .memory_reg_mux_sel_a_pos_0_18(memory_reg_mux_sel_a_pos_0_17),
        .memory_reg_mux_sel_a_pos_0_19(memory_reg_mux_sel_a_pos_0_18),
        .memory_reg_mux_sel_a_pos_0_2(memory_reg_mux_sel_a_pos_0_1),
        .memory_reg_mux_sel_a_pos_0_20(memory_reg_mux_sel_a_pos_0_19),
        .memory_reg_mux_sel_a_pos_0_21(memory_reg_mux_sel_a_pos_0_20),
        .memory_reg_mux_sel_a_pos_0_22(memory_reg_mux_sel_a_pos_0_21),
        .memory_reg_mux_sel_a_pos_0_23(memory_reg_mux_sel_a_pos_0_22),
        .memory_reg_mux_sel_a_pos_0_24(memory_reg_mux_sel_a_pos_0_23),
        .memory_reg_mux_sel_a_pos_0_25(memory_reg_mux_sel_a_pos_0_24),
        .memory_reg_mux_sel_a_pos_0_26(memory_reg_mux_sel_a_pos_0_25),
        .memory_reg_mux_sel_a_pos_0_27(memory_reg_mux_sel_a_pos_0_26),
        .memory_reg_mux_sel_a_pos_0_28(memory_reg_mux_sel_a_pos_0_27),
        .memory_reg_mux_sel_a_pos_0_29(memory_reg_mux_sel_a_pos_0_28),
        .memory_reg_mux_sel_a_pos_0_3(memory_reg_mux_sel_a_pos_0_2),
        .memory_reg_mux_sel_a_pos_0_30(memory_reg_mux_sel_a_pos_0_29),
        .memory_reg_mux_sel_a_pos_0_31(memory_reg_mux_sel_a_pos_0_30),
        .memory_reg_mux_sel_a_pos_0_4(memory_reg_mux_sel_a_pos_0_3),
        .memory_reg_mux_sel_a_pos_0_5(memory_reg_mux_sel_a_pos_0_4),
        .memory_reg_mux_sel_a_pos_0_6(memory_reg_mux_sel_a_pos_0_5),
        .memory_reg_mux_sel_a_pos_0_7(memory_reg_mux_sel_a_pos_0_6),
        .memory_reg_mux_sel_a_pos_0_8(memory_reg_mux_sel_a_pos_0_7),
        .memory_reg_mux_sel_a_pos_0_9(memory_reg_mux_sel_a_pos_0_8),
        .memory_reg_mux_sel_a_pos_2_0(OTTER_ALU_n_65),
        .memory_reg_mux_sel_b_pos_0_0(ir),
        .memory_reg_mux_sel_b_pos_0_1(alu_fun),
        .memory_reg_mux_sel_b_pos_0_10({OTTER_MEMORY_n_287,OTTER_MEMORY_n_288,OTTER_MEMORY_n_289,OTTER_MEMORY_n_290}),
        .memory_reg_mux_sel_b_pos_0_11({OTTER_MEMORY_n_291,OTTER_MEMORY_n_292,OTTER_MEMORY_n_293,OTTER_MEMORY_n_294}),
        .memory_reg_mux_sel_b_pos_0_2(OTTER_MEMORY_n_112),
        .memory_reg_mux_sel_b_pos_0_3(OTTER_MEMORY_n_237),
        .memory_reg_mux_sel_b_pos_0_4({OTTER_MEMORY_n_238,OTTER_MEMORY_n_239,OTTER_MEMORY_n_240,OTTER_MEMORY_n_241}),
        .memory_reg_mux_sel_b_pos_0_5({OTTER_MEMORY_n_267,OTTER_MEMORY_n_268,OTTER_MEMORY_n_269,OTTER_MEMORY_n_270}),
        .memory_reg_mux_sel_b_pos_0_6({OTTER_MEMORY_n_271,OTTER_MEMORY_n_272,OTTER_MEMORY_n_273,OTTER_MEMORY_n_274}),
        .memory_reg_mux_sel_b_pos_0_7({OTTER_MEMORY_n_275,OTTER_MEMORY_n_276,OTTER_MEMORY_n_277,OTTER_MEMORY_n_278}),
        .memory_reg_mux_sel_b_pos_0_8({OTTER_MEMORY_n_279,OTTER_MEMORY_n_280,OTTER_MEMORY_n_281,OTTER_MEMORY_n_282}),
        .memory_reg_mux_sel_b_pos_0_9({OTTER_MEMORY_n_283,OTTER_MEMORY_n_284,OTTER_MEMORY_n_285,OTTER_MEMORY_n_286}),
        .p_0_in0_out(p_0_in0_out),
        .pc_out_inc(pc_out_inc),
        .pc_source(pc_source),
        .ram_reg_r1_0_31_0_5_i_19_0(ram_reg_r1_0_31_0_5_i_19),
        .ram_reg_r1_0_31_0_5_i_19_1(ram_reg_r1_0_31_0_5_i_19_0),
        .ram_reg_r1_0_31_0_5_i_24_0(ram_reg_r1_0_31_0_5_i_24),
        .ram_reg_r1_0_31_0_5_i_24_1(ram_reg_r1_0_31_0_5_i_24_0),
        .ram_reg_r1_0_31_0_5_i_24_2(ram_reg_r1_0_31_0_5_i_24_1),
        .ram_reg_r1_0_31_0_5_i_27_0(ram_reg_r1_0_31_0_5_i_27),
        .ram_reg_r1_0_31_0_5_i_27_1(ram_reg_r1_0_31_0_5_i_27_0),
        .ram_reg_r1_0_31_0_5_i_30_0(ram_reg_r1_0_31_0_5_i_30),
        .ram_reg_r1_0_31_0_5_i_30_1(ram_reg_r1_0_31_0_5_i_30_0),
        .ram_reg_r1_0_31_0_5_i_33_0(ram_reg_r1_0_31_0_5_i_33),
        .ram_reg_r1_0_31_0_5_i_33_1(ram_reg_r1_0_31_0_5_i_33_0),
        .ram_reg_r1_0_31_0_5_i_36_0(ram_reg_r1_0_31_0_5_i_36),
        .ram_reg_r1_0_31_0_5_i_36_1(ram_reg_r1_0_31_0_5_i_36_0),
        .ram_reg_r1_0_31_12_17_i_26_0(ram_reg_r1_0_31_12_17_i_26),
        .ram_reg_r1_0_31_12_17_i_27_0(ram_reg_r1_0_31_12_17_i_27),
        .ram_reg_r1_0_31_12_17_i_28_0(ram_reg_r1_0_31_12_17_i_28),
        .ram_reg_r1_0_31_12_17_i_29_0(ram_reg_r1_0_31_12_17_i_29),
        .ram_reg_r1_0_31_12_17_i_30_0(ram_reg_r1_0_31_12_17_i_30),
        .ram_reg_r1_0_31_12_17_i_31_0(ram_reg_r1_0_31_12_17_i_31),
        .ram_reg_r1_0_31_12_17_i_32_0(ram_reg_r1_0_31_12_17_i_32),
        .ram_reg_r1_0_31_12_17_i_33_0(ram_reg_r1_0_31_12_17_i_33),
        .ram_reg_r1_0_31_30_31__0_i_2_0({data0[31],data0[29:14],data0[12:0]}),
        .ram_reg_r1_0_31_30_31_i_1_0(OTTER_ALU_n_64),
        .ram_reg_r1_0_31_6_11_i_10_0(ram_reg_r1_0_31_6_11_i_10),
        .ram_reg_r1_0_31_6_11_i_10_1(ram_reg_r1_0_31_6_11_i_10_0),
        .ram_reg_r1_0_31_6_11_i_31_0(ram_reg_r1_0_31_6_11_i_31),
        .ram_reg_r1_0_31_6_11_i_32_0(ram_reg_r1_0_31_6_11_i_32),
        .ram_reg_r1_0_31_6_11_i_33_0(ram_reg_r1_0_31_6_11_i_33),
        .ram_reg_r1_0_31_6_11_i_34_0(ram_reg_r1_0_31_6_11_i_34),
        .ram_reg_r1_0_31_6_11_i_35_0(ram_reg_r1_0_31_6_11_i_35),
        .ram_reg_r1_0_31_6_11_i_36_0(ram_reg_r1_0_31_6_11_i_36),
        .ram_reg_r1_0_31_6_11_i_37_0(ram_reg_r1_0_31_6_11_i_37),
        .ram_reg_r1_0_31_6_11_i_38_0(ram_reg_r1_0_31_6_11_i_38),
        .ram_reg_r1_0_31_6_11_i_7_0(ram_reg_r1_0_31_6_11_i_7),
        .ram_reg_r1_0_31_6_11_i_7_1(ram_reg_r1_0_31_6_11_i_7_0),
        .rs1(rs1),
        .srcA(srcA[30:12]),
        .wd(wd));
  PC OTTER_PC
       (.D({\PCMUX/PC_MUX_OUT [31:28],\PCMUX/PC_MUX_OUT [0]}),
        .E(pc_write),
        .\FSM_onehot_PS_reg[1] (OTTER_PC_n_71),
        .\FSM_onehot_PS_reg[1]_0 (OTTER_PC_n_72),
        .\FSM_onehot_PS_reg[1]_1 (OTTER_PC_n_73),
        .\FSM_onehot_PS_reg[1]_10 (OTTER_PC_n_82),
        .\FSM_onehot_PS_reg[1]_11 (OTTER_PC_n_83),
        .\FSM_onehot_PS_reg[1]_12 (OTTER_PC_n_84),
        .\FSM_onehot_PS_reg[1]_13 (OTTER_PC_n_85),
        .\FSM_onehot_PS_reg[1]_14 (OTTER_PC_n_86),
        .\FSM_onehot_PS_reg[1]_2 (OTTER_PC_n_74),
        .\FSM_onehot_PS_reg[1]_3 (OTTER_PC_n_75),
        .\FSM_onehot_PS_reg[1]_4 (OTTER_PC_n_76),
        .\FSM_onehot_PS_reg[1]_5 (OTTER_PC_n_77),
        .\FSM_onehot_PS_reg[1]_6 (OTTER_PC_n_78),
        .\FSM_onehot_PS_reg[1]_7 (OTTER_PC_n_79),
        .\FSM_onehot_PS_reg[1]_8 (OTTER_PC_n_80),
        .\FSM_onehot_PS_reg[1]_9 (OTTER_PC_n_81),
        .\OUT_reg[11] (OTTER_PC_n_87),
        .\OUT_reg[12] ({OTTER_BAG_n_32,OTTER_BAG_n_33}),
        .\OUT_reg[12]_0 ({OTTER_BAG_n_45,OTTER_BAG_n_46}),
        .\OUT_reg[13] (OTTER_PC_n_88),
        .\OUT_reg[16] ({OTTER_BAG_n_34,OTTER_BAG_n_35,OTTER_BAG_n_36,OTTER_BAG_n_37}),
        .\OUT_reg[16]_0 ({OTTER_BAG_n_54,OTTER_BAG_n_55,OTTER_BAG_n_56,OTTER_BAG_n_57}),
        .\OUT_reg[20] ({OTTER_BAG_n_38,OTTER_BAG_n_39,OTTER_BAG_n_40}),
        .\OUT_reg[20]_0 ({OTTER_BAG_n_51,OTTER_BAG_n_52,OTTER_BAG_n_53}),
        .\OUT_reg[30] (branch),
        .\OUT_reg[30]_0 (jal),
        .\OUT_reg[31]_i_9 (ir[31:25]),
        .\OUT_reg[4] ({OTTER_BAG_n_41,OTTER_BAG_n_42,OTTER_BAG_n_43,OTTER_BAG_n_44}),
        .\OUT_reg[4]_0 ({OTTER_BAG_n_47,OTTER_BAG_n_48,OTTER_BAG_n_49,OTTER_BAG_n_50}),
        .Q(pc_out),
        .clk_50_BUFG(clk_50_BUFG),
        .jalr(jalr[27:1]),
        .memory_reg_bram_0_i_89(OTTER_MEMORY_n_213),
        .memory_reg_bram_12({mem_rden1,pc_rst}),
        .pc_out_inc(pc_out_inc),
        .pc_source(pc_source));
  REG_FILE OTTER_REG_FILE
       (.CO(br_eq),
        .DI({OTTER_REG_FILE_n_81,OTTER_REG_FILE_n_82}),
        .DIADI({p_1_in,RS2[7:0]}),
        .\OUT[31]_i_7 (br_lt),
        .\OUT[31]_i_7_0 (br_ltu),
        .\OUT_reg[0] (OTTER_REG_FILE_n_161),
        .\OUT_reg[7] (OTTER_REG_FILE_n_34),
        .RESULT0_carry_i_11({OTTER_REG_FILE_n_83,OTTER_REG_FILE_n_84}),
        .\RESULT0_inferred__0/i__carry__0 ({srcB[7],srcB[1:0]}),
        .RS2({OTTER_REG_FILE_n_51,OTTER_REG_FILE_n_52,OTTER_REG_FILE_n_53,OTTER_REG_FILE_n_54,OTTER_REG_FILE_n_55,OTTER_REG_FILE_n_56,OTTER_REG_FILE_n_57,OTTER_REG_FILE_n_58,OTTER_REG_FILE_n_59,OTTER_REG_FILE_n_60,OTTER_REG_FILE_n_61,OTTER_REG_FILE_n_62,OTTER_REG_FILE_n_63,OTTER_REG_FILE_n_64,RS2[15:8]}),
        .S({OTTER_REG_FILE_n_90,OTTER_REG_FILE_n_91,OTTER_REG_FILE_n_92,OTTER_REG_FILE_n_93}),
        .alu_src_a(alu_src_a),
        .clk_50_BUFG(clk_50_BUFG),
        .clk_50_reg(OTTER_REG_FILE_n_32),
        .clk_50_reg_0(OTTER_REG_FILE_n_33),
        .memory_reg_bram_15(IOBUS_addr),
        .memory_reg_mux_sel_b_pos_0(OTTER_REG_FILE_n_85),
        .p_0_in0_out(p_0_in0_out),
        .\r_SSEG_reg[13] (ir[24:7]),
        .ram_reg_r1_0_31_30_31__0_0({OTTER_REG_FILE_n_129,OTTER_REG_FILE_n_130,OTTER_REG_FILE_n_131,OTTER_REG_FILE_n_132}),
        .ram_reg_r2_0_31_12_17_0({OTTER_REG_FILE_n_98,OTTER_REG_FILE_n_99,OTTER_REG_FILE_n_100,OTTER_REG_FILE_n_101}),
        .ram_reg_r2_0_31_12_17_1({OTTER_REG_FILE_n_102,OTTER_REG_FILE_n_103,OTTER_REG_FILE_n_104,OTTER_REG_FILE_n_105}),
        .ram_reg_r2_0_31_12_17_2({OTTER_REG_FILE_n_141,OTTER_REG_FILE_n_142,OTTER_REG_FILE_n_143,OTTER_REG_FILE_n_144}),
        .ram_reg_r2_0_31_12_17_3({OTTER_REG_FILE_n_145,OTTER_REG_FILE_n_146,OTTER_REG_FILE_n_147,OTTER_REG_FILE_n_148}),
        .ram_reg_r2_0_31_18_23_0({OTTER_REG_FILE_n_106,OTTER_REG_FILE_n_107,OTTER_REG_FILE_n_108,OTTER_REG_FILE_n_109}),
        .ram_reg_r2_0_31_18_23_1({OTTER_REG_FILE_n_110,OTTER_REG_FILE_n_111,OTTER_REG_FILE_n_112,OTTER_REG_FILE_n_113}),
        .ram_reg_r2_0_31_18_23_2({OTTER_REG_FILE_n_114,OTTER_REG_FILE_n_115,OTTER_REG_FILE_n_116,OTTER_REG_FILE_n_117}),
        .ram_reg_r2_0_31_18_23_3({OTTER_REG_FILE_n_149,OTTER_REG_FILE_n_150,OTTER_REG_FILE_n_151,OTTER_REG_FILE_n_152}),
        .ram_reg_r2_0_31_18_23_4({OTTER_REG_FILE_n_153,OTTER_REG_FILE_n_154,OTTER_REG_FILE_n_155,OTTER_REG_FILE_n_156}),
        .ram_reg_r2_0_31_30_31_0({OTTER_REG_FILE_n_122,OTTER_REG_FILE_n_123,OTTER_REG_FILE_n_124}),
        .ram_reg_r2_0_31_30_31__0_0({OTTER_REG_FILE_n_118,OTTER_REG_FILE_n_119,OTTER_REG_FILE_n_120,OTTER_REG_FILE_n_121}),
        .ram_reg_r2_0_31_30_31__0_1({OTTER_REG_FILE_n_125,OTTER_REG_FILE_n_126,OTTER_REG_FILE_n_127,OTTER_REG_FILE_n_128}),
        .ram_reg_r2_0_31_30_31__0_2({OTTER_REG_FILE_n_157,OTTER_REG_FILE_n_158,OTTER_REG_FILE_n_159,OTTER_REG_FILE_n_160}),
        .ram_reg_r2_0_31_6_11_0({OTTER_REG_FILE_n_86,OTTER_REG_FILE_n_87,OTTER_REG_FILE_n_88,OTTER_REG_FILE_n_89}),
        .ram_reg_r2_0_31_6_11_1({OTTER_REG_FILE_n_94,OTTER_REG_FILE_n_95,OTTER_REG_FILE_n_96,OTTER_REG_FILE_n_97}),
        .ram_reg_r2_0_31_6_11_2({OTTER_REG_FILE_n_133,OTTER_REG_FILE_n_134,OTTER_REG_FILE_n_135,OTTER_REG_FILE_n_136}),
        .ram_reg_r2_0_31_6_11_3({OTTER_REG_FILE_n_137,OTTER_REG_FILE_n_138,OTTER_REG_FILE_n_139,OTTER_REG_FILE_n_140}),
        .rs1(rs1),
        .srcA({srcA[11:7],srcA[5],srcA[3],srcA[1]}),
        .wd(wd));
endmodule

(* ECO_CHECKSUM = "7bc5d37" *) (* LEDS_AD = "285212704" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* SSEG_AD = "285212736" *) 
(* SWITCHES_AD = "285212672" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module OTTER_Wrapper
   (CLK,
    BTNC,
    SWITCHES,
    LEDS,
    CATHODES,
    ANODES);
  input CLK;
  input BTNC;
  input [15:0]SWITCHES;
  output [15:0]LEDS;
  output [7:0]CATHODES;
  output [3:0]ANODES;

  wire [3:0]ANODES;
  wire [3:0]ANODES_OBUF;
  wire BTNC;
  wire BTNC_IBUF;
  wire [7:0]CATHODES;
  wire [6:0]CATHODES_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CPU_n_17;
  wire CPU_n_18;
  wire CPU_n_19;
  wire CPU_n_20;
  wire CPU_n_21;
  wire CPU_n_22;
  wire CPU_n_23;
  wire CPU_n_24;
  wire CPU_n_25;
  wire CPU_n_26;
  wire CPU_n_27;
  wire CPU_n_28;
  wire CPU_n_29;
  wire CPU_n_30;
  wire CPU_n_31;
  wire CPU_n_32;
  wire CPU_n_33;
  wire CPU_n_34;
  wire CPU_n_35;
  wire CPU_n_36;
  wire CPU_n_37;
  wire CPU_n_38;
  wire CPU_n_39;
  wire CPU_n_40;
  wire CPU_n_41;
  wire CPU_n_42;
  wire CPU_n_43;
  wire CPU_n_44;
  wire CPU_n_45;
  wire CPU_n_46;
  wire CPU_n_47;
  wire CPU_n_48;
  wire CPU_n_49;
  wire CPU_n_50;
  wire [15:0]IOBUS_out;
  wire [15:0]LEDS;
  wire [15:0]LEDS_OBUF;
  wire [3:3]\OTTER_FSM/NS ;
  wire [15:0]SWITCHES;
  wire [15:0]SWITCHES_IBUF;
  wire clk_50;
  wire clk_50_BUFG;
  wire clk_50_i_1_n_0;
  wire [0:0]p_0_in;
  wire \r_SSEG_reg_n_0_[0] ;
  wire \r_SSEG_reg_n_0_[10] ;
  wire \r_SSEG_reg_n_0_[11] ;
  wire \r_SSEG_reg_n_0_[13] ;
  wire \r_SSEG_reg_n_0_[14] ;
  wire \r_SSEG_reg_n_0_[15] ;
  wire \r_SSEG_reg_n_0_[1] ;
  wire \r_SSEG_reg_n_0_[2] ;
  wire \r_SSEG_reg_n_0_[3] ;
  wire \r_SSEG_reg_n_0_[4] ;
  wire \r_SSEG_reg_n_0_[5] ;
  wire \r_SSEG_reg_n_0_[6] ;
  wire \r_SSEG_reg_n_0_[7] ;
  wire \r_SSEG_reg_n_0_[8] ;
  wire \r_SSEG_reg_n_0_[9] ;
  wire ram_reg_r1_0_31_0_5_i_121_n_0;
  wire ram_reg_r1_0_31_0_5_i_122_n_0;
  wire ram_reg_r1_0_31_0_5_i_124_n_0;
  wire ram_reg_r1_0_31_0_5_i_126_n_0;
  wire ram_reg_r1_0_31_0_5_i_128_n_0;
  wire ram_reg_r1_0_31_0_5_i_130_n_0;
  wire ram_reg_r1_0_31_0_5_i_132_n_0;
  wire ram_reg_r1_0_31_0_5_i_134_n_0;
  wire ram_reg_r1_0_31_0_5_i_136_n_0;
  wire ram_reg_r1_0_31_0_5_i_138_n_0;
  wire ram_reg_r1_0_31_0_5_i_140_n_0;
  wire ram_reg_r1_0_31_0_5_i_142_n_0;
  wire ram_reg_r1_0_31_0_5_i_144_n_0;
  wire ram_reg_r1_0_31_12_17_i_59_n_0;
  wire ram_reg_r1_0_31_12_17_i_66_n_0;
  wire ram_reg_r1_0_31_18_23_i_57_n_0;
  wire ram_reg_r1_0_31_18_23_i_60_n_0;
  wire ram_reg_r1_0_31_18_23_i_69_n_0;
  wire ram_reg_r1_0_31_18_23_i_72_n_0;
  wire ram_reg_r1_0_31_18_23_i_81_n_0;
  wire ram_reg_r1_0_31_18_23_i_84_n_0;
  wire ram_reg_r1_0_31_24_29_i_57_n_0;
  wire ram_reg_r1_0_31_24_29_i_60_n_0;
  wire ram_reg_r1_0_31_24_29_i_69_n_0;
  wire ram_reg_r1_0_31_24_29_i_72_n_0;
  wire ram_reg_r1_0_31_24_29_i_81_n_0;
  wire ram_reg_r1_0_31_24_29_i_84_n_0;
  wire ram_reg_r1_0_31_30_31__0_i_13_n_0;
  wire ram_reg_r1_0_31_30_31_i_13_n_0;
  wire ram_reg_r1_0_31_6_11_i_40_n_0;
  wire ram_reg_r1_0_31_6_11_i_42_n_0;
  wire ram_reg_r1_0_31_6_11_i_44_n_0;
  wire ram_reg_r1_0_31_6_11_i_46_n_0;

initial begin
 $sdf_annotate("simMCycleOtter_time_impl.sdf",,,,"tool_control");
end
  OBUF \ANODES_OBUF[0]_inst 
       (.I(ANODES_OBUF[0]),
        .O(ANODES[0]));
  OBUF \ANODES_OBUF[1]_inst 
       (.I(ANODES_OBUF[1]),
        .O(ANODES[1]));
  OBUF \ANODES_OBUF[2]_inst 
       (.I(ANODES_OBUF[2]),
        .O(ANODES[2]));
  OBUF \ANODES_OBUF[3]_inst 
       (.I(ANODES_OBUF[3]),
        .O(ANODES[3]));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  OBUF \CATHODES_OBUF[0]_inst 
       (.I(CATHODES_OBUF[0]),
        .O(CATHODES[0]));
  OBUF \CATHODES_OBUF[1]_inst 
       (.I(CATHODES_OBUF[1]),
        .O(CATHODES[1]));
  OBUF \CATHODES_OBUF[2]_inst 
       (.I(CATHODES_OBUF[2]),
        .O(CATHODES[2]));
  OBUF \CATHODES_OBUF[3]_inst 
       (.I(CATHODES_OBUF[3]),
        .O(CATHODES[3]));
  OBUF \CATHODES_OBUF[4]_inst 
       (.I(CATHODES_OBUF[4]),
        .O(CATHODES[4]));
  OBUF \CATHODES_OBUF[5]_inst 
       (.I(CATHODES_OBUF[5]),
        .O(CATHODES[5]));
  OBUF \CATHODES_OBUF[6]_inst 
       (.I(CATHODES_OBUF[6]),
        .O(CATHODES[6]));
  OBUF \CATHODES_OBUF[7]_inst 
       (.I(1'b1),
        .O(CATHODES[7]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OTTER CPU
       (.E(CPU_n_49),
        .\FSM_onehot_PS_reg[2] (\OTTER_FSM/NS ),
        .\FSM_onehot_PS_reg[2]_0 (CPU_n_50),
        .RS2(IOBUS_out),
        .SS(BTNC_IBUF),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .clk_50_BUFG(clk_50_BUFG),
        .memory_reg_mux_sel_a_pos_0(CPU_n_17),
        .memory_reg_mux_sel_a_pos_0_0(CPU_n_18),
        .memory_reg_mux_sel_a_pos_0_1(CPU_n_19),
        .memory_reg_mux_sel_a_pos_0_10(CPU_n_28),
        .memory_reg_mux_sel_a_pos_0_11(CPU_n_29),
        .memory_reg_mux_sel_a_pos_0_12(CPU_n_30),
        .memory_reg_mux_sel_a_pos_0_13(CPU_n_31),
        .memory_reg_mux_sel_a_pos_0_14(CPU_n_32),
        .memory_reg_mux_sel_a_pos_0_15(CPU_n_33),
        .memory_reg_mux_sel_a_pos_0_16(CPU_n_34),
        .memory_reg_mux_sel_a_pos_0_17(CPU_n_35),
        .memory_reg_mux_sel_a_pos_0_18(CPU_n_36),
        .memory_reg_mux_sel_a_pos_0_19(CPU_n_37),
        .memory_reg_mux_sel_a_pos_0_2(CPU_n_20),
        .memory_reg_mux_sel_a_pos_0_20(CPU_n_38),
        .memory_reg_mux_sel_a_pos_0_21(CPU_n_39),
        .memory_reg_mux_sel_a_pos_0_22(CPU_n_40),
        .memory_reg_mux_sel_a_pos_0_23(CPU_n_41),
        .memory_reg_mux_sel_a_pos_0_24(CPU_n_42),
        .memory_reg_mux_sel_a_pos_0_25(CPU_n_43),
        .memory_reg_mux_sel_a_pos_0_26(CPU_n_44),
        .memory_reg_mux_sel_a_pos_0_27(CPU_n_45),
        .memory_reg_mux_sel_a_pos_0_28(CPU_n_46),
        .memory_reg_mux_sel_a_pos_0_29(CPU_n_47),
        .memory_reg_mux_sel_a_pos_0_3(CPU_n_21),
        .memory_reg_mux_sel_a_pos_0_30(CPU_n_48),
        .memory_reg_mux_sel_a_pos_0_4(CPU_n_22),
        .memory_reg_mux_sel_a_pos_0_5(CPU_n_23),
        .memory_reg_mux_sel_a_pos_0_6(CPU_n_24),
        .memory_reg_mux_sel_a_pos_0_7(CPU_n_25),
        .memory_reg_mux_sel_a_pos_0_8(CPU_n_26),
        .memory_reg_mux_sel_a_pos_0_9(CPU_n_27),
        .ram_reg_r1_0_31_0_5_i_19(ram_reg_r1_0_31_0_5_i_122_n_0),
        .ram_reg_r1_0_31_0_5_i_19_0(ram_reg_r1_0_31_0_5_i_124_n_0),
        .ram_reg_r1_0_31_0_5_i_24(ram_reg_r1_0_31_0_5_i_121_n_0),
        .ram_reg_r1_0_31_0_5_i_24_0(ram_reg_r1_0_31_0_5_i_126_n_0),
        .ram_reg_r1_0_31_0_5_i_24_1(ram_reg_r1_0_31_0_5_i_128_n_0),
        .ram_reg_r1_0_31_0_5_i_27(ram_reg_r1_0_31_0_5_i_130_n_0),
        .ram_reg_r1_0_31_0_5_i_27_0(ram_reg_r1_0_31_0_5_i_132_n_0),
        .ram_reg_r1_0_31_0_5_i_30(ram_reg_r1_0_31_0_5_i_134_n_0),
        .ram_reg_r1_0_31_0_5_i_30_0(ram_reg_r1_0_31_0_5_i_136_n_0),
        .ram_reg_r1_0_31_0_5_i_33(ram_reg_r1_0_31_0_5_i_138_n_0),
        .ram_reg_r1_0_31_0_5_i_33_0(ram_reg_r1_0_31_0_5_i_140_n_0),
        .ram_reg_r1_0_31_0_5_i_36(ram_reg_r1_0_31_0_5_i_142_n_0),
        .ram_reg_r1_0_31_0_5_i_36_0(ram_reg_r1_0_31_0_5_i_144_n_0),
        .ram_reg_r1_0_31_12_17_i_26(ram_reg_r1_0_31_24_29_i_81_n_0),
        .ram_reg_r1_0_31_12_17_i_27(ram_reg_r1_0_31_18_23_i_69_n_0),
        .ram_reg_r1_0_31_12_17_i_28(ram_reg_r1_0_31_24_29_i_84_n_0),
        .ram_reg_r1_0_31_12_17_i_29(ram_reg_r1_0_31_18_23_i_72_n_0),
        .ram_reg_r1_0_31_12_17_i_30(ram_reg_r1_0_31_30_31__0_i_13_n_0),
        .ram_reg_r1_0_31_12_17_i_31(ram_reg_r1_0_31_18_23_i_81_n_0),
        .ram_reg_r1_0_31_12_17_i_32(ram_reg_r1_0_31_30_31_i_13_n_0),
        .ram_reg_r1_0_31_12_17_i_33(ram_reg_r1_0_31_18_23_i_84_n_0),
        .ram_reg_r1_0_31_6_11_i_10(ram_reg_r1_0_31_6_11_i_44_n_0),
        .ram_reg_r1_0_31_6_11_i_10_0(ram_reg_r1_0_31_6_11_i_46_n_0),
        .ram_reg_r1_0_31_6_11_i_31(ram_reg_r1_0_31_24_29_i_57_n_0),
        .ram_reg_r1_0_31_6_11_i_32(ram_reg_r1_0_31_12_17_i_59_n_0),
        .ram_reg_r1_0_31_6_11_i_33(ram_reg_r1_0_31_24_29_i_60_n_0),
        .ram_reg_r1_0_31_6_11_i_34(ram_reg_r1_0_31_12_17_i_66_n_0),
        .ram_reg_r1_0_31_6_11_i_35(ram_reg_r1_0_31_24_29_i_69_n_0),
        .ram_reg_r1_0_31_6_11_i_36(ram_reg_r1_0_31_18_23_i_57_n_0),
        .ram_reg_r1_0_31_6_11_i_37(ram_reg_r1_0_31_24_29_i_72_n_0),
        .ram_reg_r1_0_31_6_11_i_38(ram_reg_r1_0_31_18_23_i_60_n_0),
        .ram_reg_r1_0_31_6_11_i_7(ram_reg_r1_0_31_6_11_i_40_n_0),
        .ram_reg_r1_0_31_6_11_i_7_0(ram_reg_r1_0_31_6_11_i_42_n_0));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[10]_inst 
       (.I(LEDS_OBUF[10]),
        .O(LEDS[10]));
  OBUF \LEDS_OBUF[11]_inst 
       (.I(LEDS_OBUF[11]),
        .O(LEDS[11]));
  OBUF \LEDS_OBUF[12]_inst 
       (.I(LEDS_OBUF[12]),
        .O(LEDS[12]));
  OBUF \LEDS_OBUF[13]_inst 
       (.I(LEDS_OBUF[13]),
        .O(LEDS[13]));
  OBUF \LEDS_OBUF[14]_inst 
       (.I(LEDS_OBUF[14]),
        .O(LEDS[14]));
  OBUF \LEDS_OBUF[15]_inst 
       (.I(LEDS_OBUF[15]),
        .O(LEDS[15]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[5]),
        .O(LEDS[5]));
  OBUF \LEDS_OBUF[6]_inst 
       (.I(LEDS_OBUF[6]),
        .O(LEDS[6]));
  OBUF \LEDS_OBUF[7]_inst 
       (.I(LEDS_OBUF[7]),
        .O(LEDS[7]));
  OBUF \LEDS_OBUF[8]_inst 
       (.I(LEDS_OBUF[8]),
        .O(LEDS[8]));
  OBUF \LEDS_OBUF[9]_inst 
       (.I(LEDS_OBUF[9]),
        .O(LEDS[9]));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[0] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[0]),
        .Q(LEDS_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[10] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[10]),
        .Q(LEDS_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[11] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[11]),
        .Q(LEDS_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[12] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[12]),
        .Q(LEDS_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[13] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[13]),
        .Q(LEDS_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[14] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[14]),
        .Q(LEDS_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[15] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[15]),
        .Q(LEDS_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[1] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[1]),
        .Q(LEDS_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[2] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[2]),
        .Q(LEDS_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[3] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[3]),
        .Q(LEDS_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[4] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[4]),
        .Q(LEDS_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[5] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[5]),
        .Q(LEDS_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[6] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[6]),
        .Q(LEDS_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[7] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[7]),
        .Q(LEDS_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[8] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[8]),
        .Q(LEDS_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LEDS_reg[9] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_49),
        .D(IOBUS_out[9]),
        .Q(LEDS_OBUF[9]),
        .R(1'b0));
  SevSegDisp SSG_DISP
       (.ANODES_OBUF(ANODES_OBUF),
        .\CATHODES_reg[0] ({\r_SSEG_reg_n_0_[15] ,\r_SSEG_reg_n_0_[14] ,\r_SSEG_reg_n_0_[13] ,p_0_in,\r_SSEG_reg_n_0_[11] ,\r_SSEG_reg_n_0_[10] ,\r_SSEG_reg_n_0_[9] ,\r_SSEG_reg_n_0_[8] ,\r_SSEG_reg_n_0_[7] ,\r_SSEG_reg_n_0_[6] ,\r_SSEG_reg_n_0_[5] ,\r_SSEG_reg_n_0_[4] ,\r_SSEG_reg_n_0_[3] ,\r_SSEG_reg_n_0_[2] ,\r_SSEG_reg_n_0_[1] ,\r_SSEG_reg_n_0_[0] }),
        .CLK(CLK_IBUF_BUFG),
        .Q(CATHODES_OBUF));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[10]_inst 
       (.I(SWITCHES[10]),
        .O(SWITCHES_IBUF[10]));
  IBUF \SWITCHES_IBUF[11]_inst 
       (.I(SWITCHES[11]),
        .O(SWITCHES_IBUF[11]));
  IBUF \SWITCHES_IBUF[12]_inst 
       (.I(SWITCHES[12]),
        .O(SWITCHES_IBUF[12]));
  IBUF \SWITCHES_IBUF[13]_inst 
       (.I(SWITCHES[13]),
        .O(SWITCHES_IBUF[13]));
  IBUF \SWITCHES_IBUF[14]_inst 
       (.I(SWITCHES[14]),
        .O(SWITCHES_IBUF[14]));
  IBUF \SWITCHES_IBUF[15]_inst 
       (.I(SWITCHES[15]),
        .O(SWITCHES_IBUF[15]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  IBUF \SWITCHES_IBUF[2]_inst 
       (.I(SWITCHES[2]),
        .O(SWITCHES_IBUF[2]));
  IBUF \SWITCHES_IBUF[3]_inst 
       (.I(SWITCHES[3]),
        .O(SWITCHES_IBUF[3]));
  IBUF \SWITCHES_IBUF[4]_inst 
       (.I(SWITCHES[4]),
        .O(SWITCHES_IBUF[4]));
  IBUF \SWITCHES_IBUF[5]_inst 
       (.I(SWITCHES[5]),
        .O(SWITCHES_IBUF[5]));
  IBUF \SWITCHES_IBUF[6]_inst 
       (.I(SWITCHES[6]),
        .O(SWITCHES_IBUF[6]));
  IBUF \SWITCHES_IBUF[7]_inst 
       (.I(SWITCHES[7]),
        .O(SWITCHES_IBUF[7]));
  IBUF \SWITCHES_IBUF[8]_inst 
       (.I(SWITCHES[8]),
        .O(SWITCHES_IBUF[8]));
  IBUF \SWITCHES_IBUF[9]_inst 
       (.I(SWITCHES[9]),
        .O(SWITCHES_IBUF[9]));
  BUFG clk_50_BUFG_inst
       (.I(clk_50),
        .O(clk_50_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    clk_50_i_1
       (.I0(clk_50),
        .O(clk_50_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_50_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_50_i_1_n_0),
        .Q(clk_50),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[0] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[0]),
        .Q(\r_SSEG_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[10] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[10]),
        .Q(\r_SSEG_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[11] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[11]),
        .Q(\r_SSEG_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[12] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[12]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[13] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[13]),
        .Q(\r_SSEG_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[14] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[14]),
        .Q(\r_SSEG_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[15] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[15]),
        .Q(\r_SSEG_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[1] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[1]),
        .Q(\r_SSEG_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[2] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[2]),
        .Q(\r_SSEG_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[3] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[3]),
        .Q(\r_SSEG_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[4] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[4]),
        .Q(\r_SSEG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[5] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[5]),
        .Q(\r_SSEG_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[6] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[6]),
        .Q(\r_SSEG_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[7] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[7]),
        .Q(\r_SSEG_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[8] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[8]),
        .Q(\r_SSEG_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SSEG_reg[9] 
       (.C(clk_50_BUFG),
        .CE(CPU_n_50),
        .D(IOBUS_out[9]),
        .Q(\r_SSEG_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ram_reg_r1_0_31_0_5_i_121
       (.C(clk_50_BUFG),
        .CE(1'b1),
        .D(\OTTER_FSM/NS ),
        .Q(ram_reg_r1_0_31_0_5_i_121_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_122
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_18),
        .Q(ram_reg_r1_0_31_0_5_i_122_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_124
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_26),
        .Q(ram_reg_r1_0_31_0_5_i_124_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_126
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_17),
        .Q(ram_reg_r1_0_31_0_5_i_126_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_128
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_25),
        .Q(ram_reg_r1_0_31_0_5_i_128_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_130
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_20),
        .Q(ram_reg_r1_0_31_0_5_i_130_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_132
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_28),
        .Q(ram_reg_r1_0_31_0_5_i_132_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_134
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_19),
        .Q(ram_reg_r1_0_31_0_5_i_134_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_136
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_27),
        .Q(ram_reg_r1_0_31_0_5_i_136_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_138
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_22),
        .Q(ram_reg_r1_0_31_0_5_i_138_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_140
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_30),
        .Q(ram_reg_r1_0_31_0_5_i_140_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_142
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_21),
        .Q(ram_reg_r1_0_31_0_5_i_142_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_0_5_i_144
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_29),
        .Q(ram_reg_r1_0_31_0_5_i_144_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_12_17_i_59
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_34),
        .Q(ram_reg_r1_0_31_12_17_i_59_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_12_17_i_66
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_33),
        .Q(ram_reg_r1_0_31_12_17_i_66_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_57
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_36),
        .Q(ram_reg_r1_0_31_18_23_i_57_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_60
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_35),
        .Q(ram_reg_r1_0_31_18_23_i_60_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_69
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_38),
        .Q(ram_reg_r1_0_31_18_23_i_69_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_72
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_37),
        .Q(ram_reg_r1_0_31_18_23_i_72_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_81
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_40),
        .Q(ram_reg_r1_0_31_18_23_i_81_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_18_23_i_84
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_39),
        .Q(ram_reg_r1_0_31_18_23_i_84_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_57
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_42),
        .Q(ram_reg_r1_0_31_24_29_i_57_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_60
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_41),
        .Q(ram_reg_r1_0_31_24_29_i_60_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_69
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_44),
        .Q(ram_reg_r1_0_31_24_29_i_69_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_72
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_43),
        .Q(ram_reg_r1_0_31_24_29_i_72_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_81
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_46),
        .Q(ram_reg_r1_0_31_24_29_i_81_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_24_29_i_84
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_45),
        .Q(ram_reg_r1_0_31_24_29_i_84_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_30_31__0_i_13
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_48),
        .Q(ram_reg_r1_0_31_30_31__0_i_13_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_30_31_i_13
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_47),
        .Q(ram_reg_r1_0_31_30_31_i_13_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_6_11_i_40
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_24),
        .Q(ram_reg_r1_0_31_6_11_i_40_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_6_11_i_42
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_32),
        .Q(ram_reg_r1_0_31_6_11_i_42_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_6_11_i_44
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_23),
        .Q(ram_reg_r1_0_31_6_11_i_44_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_r1_0_31_6_11_i_46
       (.C(clk_50_BUFG),
        .CE(ram_reg_r1_0_31_0_5_i_121_n_0),
        .D(CPU_n_31),
        .Q(ram_reg_r1_0_31_6_11_i_46_n_0),
        .R(1'b0));
endmodule

module PC
   (pc_out_inc,
    Q,
    \OUT_reg[30] ,
    \OUT_reg[30]_0 ,
    \FSM_onehot_PS_reg[1] ,
    \FSM_onehot_PS_reg[1]_0 ,
    \FSM_onehot_PS_reg[1]_1 ,
    \FSM_onehot_PS_reg[1]_2 ,
    \FSM_onehot_PS_reg[1]_3 ,
    \FSM_onehot_PS_reg[1]_4 ,
    \FSM_onehot_PS_reg[1]_5 ,
    \FSM_onehot_PS_reg[1]_6 ,
    \FSM_onehot_PS_reg[1]_7 ,
    \FSM_onehot_PS_reg[1]_8 ,
    \FSM_onehot_PS_reg[1]_9 ,
    \FSM_onehot_PS_reg[1]_10 ,
    \FSM_onehot_PS_reg[1]_11 ,
    \FSM_onehot_PS_reg[1]_12 ,
    \FSM_onehot_PS_reg[1]_13 ,
    \FSM_onehot_PS_reg[1]_14 ,
    \OUT_reg[11] ,
    \OUT_reg[13] ,
    D,
    pc_source,
    jalr,
    memory_reg_bram_12,
    memory_reg_bram_0_i_89,
    \OUT_reg[31]_i_9 ,
    \OUT_reg[4] ,
    \OUT_reg[12] ,
    \OUT_reg[16] ,
    \OUT_reg[20] ,
    \OUT_reg[4]_0 ,
    \OUT_reg[12]_0 ,
    \OUT_reg[16]_0 ,
    \OUT_reg[20]_0 ,
    E,
    clk_50_BUFG);
  output [30:0]pc_out_inc;
  output [31:0]Q;
  output [3:0]\OUT_reg[30] ;
  output [3:0]\OUT_reg[30]_0 ;
  output \FSM_onehot_PS_reg[1] ;
  output \FSM_onehot_PS_reg[1]_0 ;
  output \FSM_onehot_PS_reg[1]_1 ;
  output \FSM_onehot_PS_reg[1]_2 ;
  output \FSM_onehot_PS_reg[1]_3 ;
  output \FSM_onehot_PS_reg[1]_4 ;
  output \FSM_onehot_PS_reg[1]_5 ;
  output \FSM_onehot_PS_reg[1]_6 ;
  output \FSM_onehot_PS_reg[1]_7 ;
  output \FSM_onehot_PS_reg[1]_8 ;
  output \FSM_onehot_PS_reg[1]_9 ;
  output \FSM_onehot_PS_reg[1]_10 ;
  output \FSM_onehot_PS_reg[1]_11 ;
  output \FSM_onehot_PS_reg[1]_12 ;
  output \FSM_onehot_PS_reg[1]_13 ;
  output \FSM_onehot_PS_reg[1]_14 ;
  output \OUT_reg[11] ;
  output \OUT_reg[13] ;
  input [4:0]D;
  input [1:0]pc_source;
  input [26:0]jalr;
  input [1:0]memory_reg_bram_12;
  input memory_reg_bram_0_i_89;
  input [6:0]\OUT_reg[31]_i_9 ;
  input [3:0]\OUT_reg[4] ;
  input [1:0]\OUT_reg[12] ;
  input [3:0]\OUT_reg[16] ;
  input [2:0]\OUT_reg[20] ;
  input [3:0]\OUT_reg[4]_0 ;
  input [1:0]\OUT_reg[12]_0 ;
  input [3:0]\OUT_reg[16]_0 ;
  input [2:0]\OUT_reg[20]_0 ;
  input [0:0]E;
  input clk_50_BUFG;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_PS_reg[1] ;
  wire \FSM_onehot_PS_reg[1]_0 ;
  wire \FSM_onehot_PS_reg[1]_1 ;
  wire \FSM_onehot_PS_reg[1]_10 ;
  wire \FSM_onehot_PS_reg[1]_11 ;
  wire \FSM_onehot_PS_reg[1]_12 ;
  wire \FSM_onehot_PS_reg[1]_13 ;
  wire \FSM_onehot_PS_reg[1]_14 ;
  wire \FSM_onehot_PS_reg[1]_2 ;
  wire \FSM_onehot_PS_reg[1]_3 ;
  wire \FSM_onehot_PS_reg[1]_4 ;
  wire \FSM_onehot_PS_reg[1]_5 ;
  wire \FSM_onehot_PS_reg[1]_6 ;
  wire \FSM_onehot_PS_reg[1]_7 ;
  wire \FSM_onehot_PS_reg[1]_8 ;
  wire \FSM_onehot_PS_reg[1]_9 ;
  wire \OUT_reg[11] ;
  wire [1:0]\OUT_reg[12] ;
  wire [1:0]\OUT_reg[12]_0 ;
  wire \OUT_reg[13] ;
  wire [3:0]\OUT_reg[16] ;
  wire [3:0]\OUT_reg[16]_0 ;
  wire [2:0]\OUT_reg[20] ;
  wire [2:0]\OUT_reg[20]_0 ;
  wire [3:0]\OUT_reg[30] ;
  wire [3:0]\OUT_reg[30]_0 ;
  wire [6:0]\OUT_reg[31]_i_9 ;
  wire [3:0]\OUT_reg[4] ;
  wire [3:0]\OUT_reg[4]_0 ;
  wire PCREG_n_50;
  wire PC_OUT_PLUS_FOUR_carry__0_n_0;
  wire PC_OUT_PLUS_FOUR_carry__1_n_0;
  wire PC_OUT_PLUS_FOUR_carry__2_n_0;
  wire PC_OUT_PLUS_FOUR_carry__3_n_0;
  wire PC_OUT_PLUS_FOUR_carry__4_n_0;
  wire PC_OUT_PLUS_FOUR_carry__5_n_0;
  wire PC_OUT_PLUS_FOUR_carry_n_0;
  wire [31:0]Q;
  wire clk_50_BUFG;
  wire [26:0]jalr;
  wire memory_reg_bram_0_i_89;
  wire [1:0]memory_reg_bram_12;
  wire [30:0]pc_out_inc;
  wire [1:0]pc_source;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_PC_OUT_PLUS_FOUR_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_PC_OUT_PLUS_FOUR_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_PC_OUT_PLUS_FOUR_carry__6_O_UNCONNECTED;

  PC_REG PCREG
       (.D(D),
        .E(E),
        .\FSM_onehot_PS_reg[1] (\FSM_onehot_PS_reg[1] ),
        .\FSM_onehot_PS_reg[1]_0 (\FSM_onehot_PS_reg[1]_0 ),
        .\FSM_onehot_PS_reg[1]_1 (\FSM_onehot_PS_reg[1]_1 ),
        .\FSM_onehot_PS_reg[1]_10 (\FSM_onehot_PS_reg[1]_10 ),
        .\FSM_onehot_PS_reg[1]_11 (\FSM_onehot_PS_reg[1]_11 ),
        .\FSM_onehot_PS_reg[1]_12 (\FSM_onehot_PS_reg[1]_12 ),
        .\FSM_onehot_PS_reg[1]_13 (\FSM_onehot_PS_reg[1]_13 ),
        .\FSM_onehot_PS_reg[1]_14 (\FSM_onehot_PS_reg[1]_14 ),
        .\FSM_onehot_PS_reg[1]_2 (\FSM_onehot_PS_reg[1]_2 ),
        .\FSM_onehot_PS_reg[1]_3 (\FSM_onehot_PS_reg[1]_3 ),
        .\FSM_onehot_PS_reg[1]_4 (\FSM_onehot_PS_reg[1]_4 ),
        .\FSM_onehot_PS_reg[1]_5 (\FSM_onehot_PS_reg[1]_5 ),
        .\FSM_onehot_PS_reg[1]_6 (\FSM_onehot_PS_reg[1]_6 ),
        .\FSM_onehot_PS_reg[1]_7 (\FSM_onehot_PS_reg[1]_7 ),
        .\FSM_onehot_PS_reg[1]_8 (\FSM_onehot_PS_reg[1]_8 ),
        .\FSM_onehot_PS_reg[1]_9 (\FSM_onehot_PS_reg[1]_9 ),
        .\OUT_reg[11]_0 (\OUT_reg[11] ),
        .\OUT_reg[12]_0 (\OUT_reg[12] ),
        .\OUT_reg[12]_1 (\OUT_reg[12]_0 ),
        .\OUT_reg[13]_0 (\OUT_reg[13] ),
        .\OUT_reg[16]_0 (\OUT_reg[16] ),
        .\OUT_reg[16]_1 (\OUT_reg[16]_0 ),
        .\OUT_reg[20]_0 (\OUT_reg[20] ),
        .\OUT_reg[20]_1 (\OUT_reg[20]_0 ),
        .\OUT_reg[30]_0 (\OUT_reg[30]_0 ),
        .\OUT_reg[30]_1 (\OUT_reg[30] ),
        .\OUT_reg[31]_i_9_0 (\OUT_reg[31]_i_9 ),
        .\OUT_reg[4]_0 (\OUT_reg[4] ),
        .\OUT_reg[4]_1 (\OUT_reg[4]_0 ),
        .Q(Q),
        .S(PCREG_n_50),
        .clk_50_BUFG(clk_50_BUFG),
        .jalr(jalr),
        .memory_reg_bram_0_i_89(memory_reg_bram_0_i_89),
        .memory_reg_bram_12(memory_reg_bram_12),
        .pc_out_inc(pc_out_inc[26:0]),
        .pc_source(pc_source));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry
       (.CI(1'b0),
        .CO({PC_OUT_PLUS_FOUR_carry_n_0,NLW_PC_OUT_PLUS_FOUR_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[2],1'b0}),
        .O(pc_out_inc[3:0]),
        .S({Q[4:3],PCREG_n_50,Q[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__0
       (.CI(PC_OUT_PLUS_FOUR_carry_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__0_n_0,NLW_PC_OUT_PLUS_FOUR_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__1
       (.CI(PC_OUT_PLUS_FOUR_carry__0_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__1_n_0,NLW_PC_OUT_PLUS_FOUR_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__2
       (.CI(PC_OUT_PLUS_FOUR_carry__1_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__2_n_0,NLW_PC_OUT_PLUS_FOUR_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__3
       (.CI(PC_OUT_PLUS_FOUR_carry__2_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__3_n_0,NLW_PC_OUT_PLUS_FOUR_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__4
       (.CI(PC_OUT_PLUS_FOUR_carry__3_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__4_n_0,NLW_PC_OUT_PLUS_FOUR_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__5
       (.CI(PC_OUT_PLUS_FOUR_carry__4_n_0),
        .CO({PC_OUT_PLUS_FOUR_carry__5_n_0,NLW_PC_OUT_PLUS_FOUR_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out_inc[27:24]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_OUT_PLUS_FOUR_carry__6
       (.CI(PC_OUT_PLUS_FOUR_carry__5_n_0),
        .CO(NLW_PC_OUT_PLUS_FOUR_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PC_OUT_PLUS_FOUR_carry__6_O_UNCONNECTED[3],pc_out_inc[30:28]}),
        .S({1'b0,Q[31:29]}));
endmodule

module PC_REG
   (\FSM_onehot_PS_reg[1] ,
    Q,
    \FSM_onehot_PS_reg[1]_0 ,
    \FSM_onehot_PS_reg[1]_1 ,
    \FSM_onehot_PS_reg[1]_2 ,
    \FSM_onehot_PS_reg[1]_3 ,
    \FSM_onehot_PS_reg[1]_4 ,
    \FSM_onehot_PS_reg[1]_5 ,
    \FSM_onehot_PS_reg[1]_6 ,
    \FSM_onehot_PS_reg[1]_7 ,
    \FSM_onehot_PS_reg[1]_8 ,
    \FSM_onehot_PS_reg[1]_9 ,
    \FSM_onehot_PS_reg[1]_10 ,
    \FSM_onehot_PS_reg[1]_11 ,
    \FSM_onehot_PS_reg[1]_12 ,
    \FSM_onehot_PS_reg[1]_13 ,
    \FSM_onehot_PS_reg[1]_14 ,
    \OUT_reg[11]_0 ,
    \OUT_reg[13]_0 ,
    S,
    \OUT_reg[30]_0 ,
    \OUT_reg[30]_1 ,
    pc_source,
    pc_out_inc,
    jalr,
    memory_reg_bram_12,
    memory_reg_bram_0_i_89,
    \OUT_reg[31]_i_9_0 ,
    \OUT_reg[4]_0 ,
    \OUT_reg[12]_0 ,
    \OUT_reg[16]_0 ,
    \OUT_reg[20]_0 ,
    \OUT_reg[4]_1 ,
    \OUT_reg[12]_1 ,
    \OUT_reg[16]_1 ,
    \OUT_reg[20]_1 ,
    E,
    D,
    clk_50_BUFG);
  output \FSM_onehot_PS_reg[1] ;
  output [31:0]Q;
  output \FSM_onehot_PS_reg[1]_0 ;
  output \FSM_onehot_PS_reg[1]_1 ;
  output \FSM_onehot_PS_reg[1]_2 ;
  output \FSM_onehot_PS_reg[1]_3 ;
  output \FSM_onehot_PS_reg[1]_4 ;
  output \FSM_onehot_PS_reg[1]_5 ;
  output \FSM_onehot_PS_reg[1]_6 ;
  output \FSM_onehot_PS_reg[1]_7 ;
  output \FSM_onehot_PS_reg[1]_8 ;
  output \FSM_onehot_PS_reg[1]_9 ;
  output \FSM_onehot_PS_reg[1]_10 ;
  output \FSM_onehot_PS_reg[1]_11 ;
  output \FSM_onehot_PS_reg[1]_12 ;
  output \FSM_onehot_PS_reg[1]_13 ;
  output \FSM_onehot_PS_reg[1]_14 ;
  output \OUT_reg[11]_0 ;
  output \OUT_reg[13]_0 ;
  output [0:0]S;
  output [3:0]\OUT_reg[30]_0 ;
  output [3:0]\OUT_reg[30]_1 ;
  input [1:0]pc_source;
  input [26:0]pc_out_inc;
  input [26:0]jalr;
  input [1:0]memory_reg_bram_12;
  input memory_reg_bram_0_i_89;
  input [6:0]\OUT_reg[31]_i_9_0 ;
  input [3:0]\OUT_reg[4]_0 ;
  input [1:0]\OUT_reg[12]_0 ;
  input [3:0]\OUT_reg[16]_0 ;
  input [2:0]\OUT_reg[20]_0 ;
  input [3:0]\OUT_reg[4]_1 ;
  input [1:0]\OUT_reg[12]_1 ;
  input [3:0]\OUT_reg[16]_1 ;
  input [2:0]\OUT_reg[20]_1 ;
  input [0:0]E;
  input [4:0]D;
  input clk_50_BUFG;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_PS_reg[1] ;
  wire \FSM_onehot_PS_reg[1]_0 ;
  wire \FSM_onehot_PS_reg[1]_1 ;
  wire \FSM_onehot_PS_reg[1]_10 ;
  wire \FSM_onehot_PS_reg[1]_11 ;
  wire \FSM_onehot_PS_reg[1]_12 ;
  wire \FSM_onehot_PS_reg[1]_13 ;
  wire \FSM_onehot_PS_reg[1]_14 ;
  wire \FSM_onehot_PS_reg[1]_2 ;
  wire \FSM_onehot_PS_reg[1]_3 ;
  wire \FSM_onehot_PS_reg[1]_4 ;
  wire \FSM_onehot_PS_reg[1]_5 ;
  wire \FSM_onehot_PS_reg[1]_6 ;
  wire \FSM_onehot_PS_reg[1]_7 ;
  wire \FSM_onehot_PS_reg[1]_8 ;
  wire \FSM_onehot_PS_reg[1]_9 ;
  wire \OUT[12]_i_10_n_0 ;
  wire \OUT[12]_i_11_n_0 ;
  wire \OUT[12]_i_6_n_0 ;
  wire \OUT[12]_i_7_n_0 ;
  wire \OUT[20]_i_4_n_0 ;
  wire \OUT[20]_i_8_n_0 ;
  wire \OUT[24]_i_10_n_0 ;
  wire \OUT[24]_i_11_n_0 ;
  wire \OUT[24]_i_4_n_0 ;
  wire \OUT[24]_i_5_n_0 ;
  wire \OUT[24]_i_6_n_0 ;
  wire \OUT[24]_i_7_n_0 ;
  wire \OUT[24]_i_8_n_0 ;
  wire \OUT[24]_i_9_n_0 ;
  wire \OUT[28]_i_10_n_0 ;
  wire \OUT[28]_i_11_n_0 ;
  wire \OUT[28]_i_4_n_0 ;
  wire \OUT[28]_i_5_n_0 ;
  wire \OUT[28]_i_6_n_0 ;
  wire \OUT[28]_i_7_n_0 ;
  wire \OUT[28]_i_8_n_0 ;
  wire \OUT[28]_i_9_n_0 ;
  wire \OUT[31]_i_19_n_0 ;
  wire \OUT[31]_i_20_n_0 ;
  wire \OUT[31]_i_21_n_0 ;
  wire \OUT[31]_i_22_n_0 ;
  wire \OUT[31]_i_23_n_0 ;
  wire \OUT[31]_i_24_n_0 ;
  wire \OUT[8]_i_10_n_0 ;
  wire \OUT[8]_i_11_n_0 ;
  wire \OUT[8]_i_4_n_0 ;
  wire \OUT[8]_i_5_n_0 ;
  wire \OUT[8]_i_6_n_0 ;
  wire \OUT[8]_i_7_n_0 ;
  wire \OUT[8]_i_8_n_0 ;
  wire \OUT[8]_i_9_n_0 ;
  wire \OUT_reg[11]_0 ;
  wire [1:0]\OUT_reg[12]_0 ;
  wire [1:0]\OUT_reg[12]_1 ;
  wire \OUT_reg[12]_i_2_n_0 ;
  wire \OUT_reg[12]_i_3_n_0 ;
  wire \OUT_reg[13]_0 ;
  wire [3:0]\OUT_reg[16]_0 ;
  wire [3:0]\OUT_reg[16]_1 ;
  wire \OUT_reg[16]_i_2_n_0 ;
  wire \OUT_reg[16]_i_3_n_0 ;
  wire [2:0]\OUT_reg[20]_0 ;
  wire [2:0]\OUT_reg[20]_1 ;
  wire \OUT_reg[20]_i_2_n_0 ;
  wire \OUT_reg[20]_i_3_n_0 ;
  wire \OUT_reg[24]_i_2_n_0 ;
  wire \OUT_reg[24]_i_3_n_0 ;
  wire \OUT_reg[28]_i_2_n_0 ;
  wire \OUT_reg[28]_i_3_n_0 ;
  wire [3:0]\OUT_reg[30]_0 ;
  wire [3:0]\OUT_reg[30]_1 ;
  wire [6:0]\OUT_reg[31]_i_9_0 ;
  wire [3:0]\OUT_reg[4]_0 ;
  wire [3:0]\OUT_reg[4]_1 ;
  wire \OUT_reg[4]_i_2_n_0 ;
  wire \OUT_reg[4]_i_3_n_0 ;
  wire \OUT_reg[8]_i_2_n_0 ;
  wire \OUT_reg[8]_i_3_n_0 ;
  wire [27:1]\PCMUX/PC_MUX_OUT ;
  wire [31:0]Q;
  wire [0:0]S;
  wire [27:1]branch;
  wire clk_50_BUFG;
  wire [27:1]jal;
  wire [26:0]jalr;
  wire memory_reg_bram_0_i_89;
  wire [1:0]memory_reg_bram_12;
  wire [26:0]pc_out_inc;
  wire [1:0]pc_source;
  wire [2:0]\NLW_OUT_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[12]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[16]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[20]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[24]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[28]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[28]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_OUT_reg[31]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_OUT_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_OUT_reg[31]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_OUT_reg[31]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[4]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_OUT_reg[8]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[10]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[10]),
        .I3(pc_out_inc[9]),
        .I4(jalr[9]),
        .I5(jal[10]),
        .O(\PCMUX/PC_MUX_OUT [10]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[11]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[11]),
        .I3(pc_out_inc[10]),
        .I4(jalr[10]),
        .I5(jal[11]),
        .O(\PCMUX/PC_MUX_OUT [11]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[12]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[12]),
        .I3(pc_out_inc[11]),
        .I4(jalr[11]),
        .I5(jal[12]),
        .O(\PCMUX/PC_MUX_OUT [12]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_10 
       (.I0(Q[10]),
        .I1(\OUT_reg[31]_i_9_0 [5]),
        .O(\OUT[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_11 
       (.I0(Q[9]),
        .I1(\OUT_reg[31]_i_9_0 [4]),
        .O(\OUT[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_6 
       (.I0(Q[10]),
        .I1(\OUT_reg[31]_i_9_0 [5]),
        .O(\OUT[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[12]_i_7 
       (.I0(Q[9]),
        .I1(\OUT_reg[31]_i_9_0 [4]),
        .O(\OUT[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[13]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[13]),
        .I3(pc_out_inc[12]),
        .I4(jalr[12]),
        .I5(jal[13]),
        .O(\PCMUX/PC_MUX_OUT [13]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[14]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[14]),
        .I3(pc_out_inc[13]),
        .I4(jalr[13]),
        .I5(jal[14]),
        .O(\PCMUX/PC_MUX_OUT [14]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[15]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[15]),
        .I3(pc_out_inc[14]),
        .I4(jalr[14]),
        .I5(jal[15]),
        .O(\PCMUX/PC_MUX_OUT [15]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[16]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[16]),
        .I3(pc_out_inc[15]),
        .I4(jalr[15]),
        .I5(jal[16]),
        .O(\PCMUX/PC_MUX_OUT [16]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[17]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[17]),
        .I3(pc_out_inc[16]),
        .I4(jalr[16]),
        .I5(jal[17]),
        .O(\PCMUX/PC_MUX_OUT [17]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[18]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[18]),
        .I3(pc_out_inc[17]),
        .I4(jalr[17]),
        .I5(jal[18]),
        .O(\PCMUX/PC_MUX_OUT [18]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[19]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[19]),
        .I3(pc_out_inc[18]),
        .I4(jalr[18]),
        .I5(jal[19]),
        .O(\PCMUX/PC_MUX_OUT [19]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[1]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[1]),
        .I3(pc_out_inc[0]),
        .I4(jalr[0]),
        .I5(jal[1]),
        .O(\PCMUX/PC_MUX_OUT [1]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[20]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[20]),
        .I3(pc_out_inc[19]),
        .I4(jalr[19]),
        .I5(jal[20]),
        .O(\PCMUX/PC_MUX_OUT [20]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_4 
       (.I0(Q[20]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[20]_i_8 
       (.I0(Q[20]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[21]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[21]),
        .I3(pc_out_inc[20]),
        .I4(jalr[20]),
        .I5(jal[21]),
        .O(\PCMUX/PC_MUX_OUT [21]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[22]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[22]),
        .I3(pc_out_inc[21]),
        .I4(jalr[21]),
        .I5(jal[22]),
        .O(\PCMUX/PC_MUX_OUT [22]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[23]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[23]),
        .I3(pc_out_inc[22]),
        .I4(jalr[22]),
        .I5(jal[23]),
        .O(\PCMUX/PC_MUX_OUT [23]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[24]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[24]),
        .I3(pc_out_inc[23]),
        .I4(jalr[23]),
        .I5(jal[24]),
        .O(\PCMUX/PC_MUX_OUT [24]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_10 
       (.I0(Q[22]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_11 
       (.I0(Q[21]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_4 
       (.I0(Q[24]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_5 
       (.I0(Q[23]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_6 
       (.I0(Q[22]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_7 
       (.I0(Q[21]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_8 
       (.I0(Q[24]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[24]_i_9 
       (.I0(Q[23]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[25]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[25]),
        .I3(pc_out_inc[24]),
        .I4(jalr[24]),
        .I5(jal[25]),
        .O(\PCMUX/PC_MUX_OUT [25]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[26]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[26]),
        .I3(pc_out_inc[25]),
        .I4(jalr[25]),
        .I5(jal[26]),
        .O(\PCMUX/PC_MUX_OUT [26]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[27]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[27]),
        .I3(pc_out_inc[26]),
        .I4(jalr[26]),
        .I5(jal[27]),
        .O(\PCMUX/PC_MUX_OUT [27]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_10 
       (.I0(Q[26]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_11 
       (.I0(Q[25]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_4 
       (.I0(Q[28]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_5 
       (.I0(Q[27]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_6 
       (.I0(Q[26]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_7 
       (.I0(Q[25]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_8 
       (.I0(Q[28]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[28]_i_9 
       (.I0(Q[27]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[2]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[2]),
        .I3(pc_out_inc[1]),
        .I4(jalr[1]),
        .I5(jal[2]),
        .O(\PCMUX/PC_MUX_OUT [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_19 
       (.I0(Q[31]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_20 
       (.I0(Q[30]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_21 
       (.I0(Q[29]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_22 
       (.I0(Q[31]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_23 
       (.I0(Q[30]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[31]_i_24 
       (.I0(Q[29]),
        .I1(\OUT_reg[31]_i_9_0 [6]),
        .O(\OUT[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[3]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[3]),
        .I3(pc_out_inc[2]),
        .I4(jalr[2]),
        .I5(jal[3]),
        .O(\PCMUX/PC_MUX_OUT [3]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[4]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[4]),
        .I3(pc_out_inc[3]),
        .I4(jalr[3]),
        .I5(jal[4]),
        .O(\PCMUX/PC_MUX_OUT [4]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[5]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[5]),
        .I3(pc_out_inc[4]),
        .I4(jalr[4]),
        .I5(jal[5]),
        .O(\PCMUX/PC_MUX_OUT [5]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[6]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[6]),
        .I3(pc_out_inc[5]),
        .I4(jalr[5]),
        .I5(jal[6]),
        .O(\PCMUX/PC_MUX_OUT [6]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[7]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[7]),
        .I3(pc_out_inc[6]),
        .I4(jalr[6]),
        .I5(jal[7]),
        .O(\PCMUX/PC_MUX_OUT [7]));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[8]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[8]),
        .I3(pc_out_inc[7]),
        .I4(jalr[7]),
        .I5(jal[8]),
        .O(\PCMUX/PC_MUX_OUT [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_10 
       (.I0(Q[6]),
        .I1(\OUT_reg[31]_i_9_0 [1]),
        .O(\OUT[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_11 
       (.I0(Q[5]),
        .I1(\OUT_reg[31]_i_9_0 [0]),
        .O(\OUT[8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_4 
       (.I0(Q[8]),
        .I1(\OUT_reg[31]_i_9_0 [3]),
        .O(\OUT[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_5 
       (.I0(Q[7]),
        .I1(\OUT_reg[31]_i_9_0 [2]),
        .O(\OUT[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_6 
       (.I0(Q[6]),
        .I1(\OUT_reg[31]_i_9_0 [1]),
        .O(\OUT[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_7 
       (.I0(Q[5]),
        .I1(\OUT_reg[31]_i_9_0 [0]),
        .O(\OUT[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_8 
       (.I0(Q[8]),
        .I1(\OUT_reg[31]_i_9_0 [3]),
        .O(\OUT[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \OUT[8]_i_9 
       (.I0(Q[7]),
        .I1(\OUT_reg[31]_i_9_0 [2]),
        .O(\OUT[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFDECB9A875643120)) 
    \OUT[9]_i_1 
       (.I0(pc_source[1]),
        .I1(pc_source[0]),
        .I2(branch[9]),
        .I3(pc_out_inc[8]),
        .I4(jalr[8]),
        .I5(jal[9]),
        .O(\PCMUX/PC_MUX_OUT [9]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[0] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[10] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [10]),
        .Q(Q[10]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[11] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [11]),
        .Q(Q[11]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[12] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [12]),
        .Q(Q[12]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[12]_i_2 
       (.CI(\OUT_reg[8]_i_2_n_0 ),
        .CO({\OUT_reg[12]_i_2_n_0 ,\NLW_OUT_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(branch[12:9]),
        .S({\OUT_reg[12]_1 ,\OUT[12]_i_6_n_0 ,\OUT[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[12]_i_3 
       (.CI(\OUT_reg[8]_i_3_n_0 ),
        .CO({\OUT_reg[12]_i_3_n_0 ,\NLW_OUT_reg[12]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(jal[12:9]),
        .S({\OUT_reg[12]_0 ,\OUT[12]_i_10_n_0 ,\OUT[12]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[13] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [13]),
        .Q(Q[13]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[14] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [14]),
        .Q(Q[14]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[15] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [15]),
        .Q(Q[15]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[16] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [16]),
        .Q(Q[16]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[16]_i_2 
       (.CI(\OUT_reg[12]_i_2_n_0 ),
        .CO({\OUT_reg[16]_i_2_n_0 ,\NLW_OUT_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(branch[16:13]),
        .S(\OUT_reg[16]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[16]_i_3 
       (.CI(\OUT_reg[12]_i_3_n_0 ),
        .CO({\OUT_reg[16]_i_3_n_0 ,\NLW_OUT_reg[16]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(jal[16:13]),
        .S(\OUT_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[17] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [17]),
        .Q(Q[17]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[18] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [18]),
        .Q(Q[18]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[19] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [19]),
        .Q(Q[19]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[1] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [1]),
        .Q(Q[1]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[20] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [20]),
        .Q(Q[20]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[20]_i_2 
       (.CI(\OUT_reg[16]_i_2_n_0 ),
        .CO({\OUT_reg[20]_i_2_n_0 ,\NLW_OUT_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(branch[20:17]),
        .S({\OUT[20]_i_4_n_0 ,\OUT_reg[20]_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[20]_i_3 
       (.CI(\OUT_reg[16]_i_3_n_0 ),
        .CO({\OUT_reg[20]_i_3_n_0 ,\NLW_OUT_reg[20]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(jal[20:17]),
        .S({\OUT[20]_i_8_n_0 ,\OUT_reg[20]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[21] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [21]),
        .Q(Q[21]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[22] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [22]),
        .Q(Q[22]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[23] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [23]),
        .Q(Q[23]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[24] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [24]),
        .Q(Q[24]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[24]_i_2 
       (.CI(\OUT_reg[20]_i_2_n_0 ),
        .CO({\OUT_reg[24]_i_2_n_0 ,\NLW_OUT_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(branch[24:21]),
        .S({\OUT[24]_i_4_n_0 ,\OUT[24]_i_5_n_0 ,\OUT[24]_i_6_n_0 ,\OUT[24]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[24]_i_3 
       (.CI(\OUT_reg[20]_i_3_n_0 ),
        .CO({\OUT_reg[24]_i_3_n_0 ,\NLW_OUT_reg[24]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(jal[24:21]),
        .S({\OUT[24]_i_8_n_0 ,\OUT[24]_i_9_n_0 ,\OUT[24]_i_10_n_0 ,\OUT[24]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[25] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [25]),
        .Q(Q[25]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[26] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [26]),
        .Q(Q[26]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[27] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [27]),
        .Q(Q[27]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[28] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[28]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[28]_i_2 
       (.CI(\OUT_reg[24]_i_2_n_0 ),
        .CO({\OUT_reg[28]_i_2_n_0 ,\NLW_OUT_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O({\OUT_reg[30]_1 [0],branch[27:25]}),
        .S({\OUT[28]_i_4_n_0 ,\OUT[28]_i_5_n_0 ,\OUT[28]_i_6_n_0 ,\OUT[28]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[28]_i_3 
       (.CI(\OUT_reg[24]_i_3_n_0 ),
        .CO({\OUT_reg[28]_i_3_n_0 ,\NLW_OUT_reg[28]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O({\OUT_reg[30]_0 [0],jal[27:25]}),
        .S({\OUT[28]_i_8_n_0 ,\OUT[28]_i_9_n_0 ,\OUT[28]_i_10_n_0 ,\OUT[28]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[29] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[29]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[2] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [2]),
        .Q(Q[2]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[30] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[30]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[31] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[31]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[31]_i_10 
       (.CI(\OUT_reg[28]_i_3_n_0 ),
        .CO(\NLW_OUT_reg[31]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({\NLW_OUT_reg[31]_i_10_O_UNCONNECTED [3],\OUT_reg[30]_0 [3:1]}),
        .S({1'b0,\OUT[31]_i_22_n_0 ,\OUT[31]_i_23_n_0 ,\OUT[31]_i_24_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[31]_i_9 
       (.CI(\OUT_reg[28]_i_2_n_0 ),
        .CO(\NLW_OUT_reg[31]_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({\NLW_OUT_reg[31]_i_9_O_UNCONNECTED [3],\OUT_reg[30]_1 [3:1]}),
        .S({1'b0,\OUT[31]_i_19_n_0 ,\OUT[31]_i_20_n_0 ,\OUT[31]_i_21_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[3] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [3]),
        .Q(Q[3]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[4] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [4]),
        .Q(Q[4]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\OUT_reg[4]_i_2_n_0 ,\NLW_OUT_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[4:1]),
        .O(branch[4:1]),
        .S(\OUT_reg[4]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\OUT_reg[4]_i_3_n_0 ,\NLW_OUT_reg[4]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[4:1]),
        .O(jal[4:1]),
        .S(\OUT_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[5] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [5]),
        .Q(Q[5]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[6] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [6]),
        .Q(Q[6]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[7] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [7]),
        .Q(Q[7]),
        .R(memory_reg_bram_12[0]));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[8] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [8]),
        .Q(Q[8]),
        .R(memory_reg_bram_12[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[8]_i_2 
       (.CI(\OUT_reg[4]_i_2_n_0 ),
        .CO({\OUT_reg[8]_i_2_n_0 ,\NLW_OUT_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(branch[8:5]),
        .S({\OUT[8]_i_4_n_0 ,\OUT[8]_i_5_n_0 ,\OUT[8]_i_6_n_0 ,\OUT[8]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \OUT_reg[8]_i_3 
       (.CI(\OUT_reg[4]_i_3_n_0 ),
        .CO({\OUT_reg[8]_i_3_n_0 ,\NLW_OUT_reg[8]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(jal[8:5]),
        .S({\OUT[8]_i_8_n_0 ,\OUT[8]_i_9_n_0 ,\OUT[8]_i_10_n_0 ,\OUT[8]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \OUT_reg[9] 
       (.C(clk_50_BUFG),
        .CE(E),
        .D(\PCMUX/PC_MUX_OUT [9]),
        .Q(Q[9]),
        .R(memory_reg_bram_12[0]));
  LUT1 #(
    .INIT(2'h1)) 
    PC_OUT_PLUS_FOUR_carry_i_1
       (.I0(Q[2]),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    memory_mux_sel_a_pos_2_i_14
       (.I0(Q[13]),
        .I1(memory_reg_bram_0_i_89),
        .O(\OUT_reg[13]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    memory_reg_bram_0_i_163
       (.I0(Q[11]),
        .I1(memory_reg_bram_0_i_89),
        .O(\OUT_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    memory_reg_bram_0_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\FSM_onehot_PS_reg[1] ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_10_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[14]),
        .O(\FSM_onehot_PS_reg[1]_11 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_11_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[15]),
        .I3(Q[14]),
        .I4(Q[12]),
        .O(\FSM_onehot_PS_reg[1]_10 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_12_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\FSM_onehot_PS_reg[1]_14 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_13_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[13]),
        .I4(Q[12]),
        .O(\FSM_onehot_PS_reg[1]_12 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_14_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\FSM_onehot_PS_reg[1]_13 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    memory_reg_bram_15_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\FSM_onehot_PS_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_bram_1_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[13]),
        .I4(Q[12]),
        .O(\FSM_onehot_PS_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_bram_2_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\FSM_onehot_PS_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_3_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[14]),
        .I4(Q[15]),
        .O(\FSM_onehot_PS_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_bram_4_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[14]),
        .O(\FSM_onehot_PS_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_5_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[13]),
        .I4(Q[15]),
        .O(\FSM_onehot_PS_reg[1]_5 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_6_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[12]),
        .I4(Q[15]),
        .O(\FSM_onehot_PS_reg[1]_7 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    memory_reg_bram_7_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[12]),
        .O(\FSM_onehot_PS_reg[1]_6 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    memory_reg_bram_8_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[12]),
        .I4(Q[15]),
        .O(\FSM_onehot_PS_reg[1]_8 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    memory_reg_bram_9_i_2
       (.I0(memory_reg_bram_12[1]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[13]),
        .I4(Q[14]),
        .O(\FSM_onehot_PS_reg[1]_9 ));
endmodule

module REG_FILE
   (rs1,
    clk_50_reg,
    clk_50_reg_0,
    \OUT_reg[7] ,
    DIADI,
    RS2,
    srcA,
    DI,
    RESULT0_carry_i_11,
    memory_reg_mux_sel_b_pos_0,
    ram_reg_r2_0_31_6_11_0,
    S,
    ram_reg_r2_0_31_6_11_1,
    ram_reg_r2_0_31_12_17_0,
    ram_reg_r2_0_31_12_17_1,
    ram_reg_r2_0_31_18_23_0,
    ram_reg_r2_0_31_18_23_1,
    ram_reg_r2_0_31_18_23_2,
    ram_reg_r2_0_31_30_31__0_0,
    ram_reg_r2_0_31_30_31_0,
    ram_reg_r2_0_31_30_31__0_1,
    ram_reg_r1_0_31_30_31__0_0,
    ram_reg_r2_0_31_6_11_2,
    ram_reg_r2_0_31_6_11_3,
    ram_reg_r2_0_31_12_17_2,
    ram_reg_r2_0_31_12_17_3,
    ram_reg_r2_0_31_18_23_3,
    ram_reg_r2_0_31_18_23_4,
    ram_reg_r2_0_31_30_31__0_2,
    \OUT_reg[0] ,
    clk_50_BUFG,
    wd,
    p_0_in0_out,
    \r_SSEG_reg[13] ,
    alu_src_a,
    \RESULT0_inferred__0/i__carry__0 ,
    memory_reg_bram_15,
    CO,
    \OUT[31]_i_7 ,
    \OUT[31]_i_7_0 );
  output [31:0]rs1;
  output clk_50_reg;
  output clk_50_reg_0;
  output [0:0]\OUT_reg[7] ;
  output [15:0]DIADI;
  output [21:0]RS2;
  output [7:0]srcA;
  output [1:0]DI;
  output [1:0]RESULT0_carry_i_11;
  output memory_reg_mux_sel_b_pos_0;
  output [3:0]ram_reg_r2_0_31_6_11_0;
  output [3:0]S;
  output [3:0]ram_reg_r2_0_31_6_11_1;
  output [3:0]ram_reg_r2_0_31_12_17_0;
  output [3:0]ram_reg_r2_0_31_12_17_1;
  output [3:0]ram_reg_r2_0_31_18_23_0;
  output [3:0]ram_reg_r2_0_31_18_23_1;
  output [3:0]ram_reg_r2_0_31_18_23_2;
  output [3:0]ram_reg_r2_0_31_30_31__0_0;
  output [2:0]ram_reg_r2_0_31_30_31_0;
  output [3:0]ram_reg_r2_0_31_30_31__0_1;
  output [3:0]ram_reg_r1_0_31_30_31__0_0;
  output [3:0]ram_reg_r2_0_31_6_11_2;
  output [3:0]ram_reg_r2_0_31_6_11_3;
  output [3:0]ram_reg_r2_0_31_12_17_2;
  output [3:0]ram_reg_r2_0_31_12_17_3;
  output [3:0]ram_reg_r2_0_31_18_23_3;
  output [3:0]ram_reg_r2_0_31_18_23_4;
  output [3:0]ram_reg_r2_0_31_30_31__0_2;
  output [0:0]\OUT_reg[0] ;
  input clk_50_BUFG;
  input [31:0]wd;
  input p_0_in0_out;
  input [17:0]\r_SSEG_reg[13] ;
  input alu_src_a;
  input [2:0]\RESULT0_inferred__0/i__carry__0 ;
  input [0:0]memory_reg_bram_15;
  input [0:0]CO;
  input [0:0]\OUT[31]_i_7 ;
  input [0:0]\OUT[31]_i_7_0 ;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [15:0]DIADI;
  wire [0:0]\OUT[31]_i_7 ;
  wire [0:0]\OUT[31]_i_7_0 ;
  wire [0:0]\OUT_reg[0] ;
  wire [0:0]\OUT_reg[7] ;
  wire [1:0]RESULT0_carry_i_11;
  wire [2:0]\RESULT0_inferred__0/i__carry__0 ;
  wire [21:0]RS2;
  wire [3:0]S;
  wire alu_src_a;
  wire clk_50_BUFG;
  wire clk_50_reg;
  wire clk_50_reg_0;
  wire [0:0]memory_reg_bram_15;
  wire memory_reg_mux_sel_b_pos_0;
  wire p_0_in0_out;
  wire [17:0]\r_SSEG_reg[13] ;
  wire [3:0]ram_reg_r1_0_31_30_31__0_0;
  wire [3:0]ram_reg_r2_0_31_12_17_0;
  wire [3:0]ram_reg_r2_0_31_12_17_1;
  wire [3:0]ram_reg_r2_0_31_12_17_2;
  wire [3:0]ram_reg_r2_0_31_12_17_3;
  wire [3:0]ram_reg_r2_0_31_18_23_0;
  wire [3:0]ram_reg_r2_0_31_18_23_1;
  wire [3:0]ram_reg_r2_0_31_18_23_2;
  wire [3:0]ram_reg_r2_0_31_18_23_3;
  wire [3:0]ram_reg_r2_0_31_18_23_4;
  wire [2:0]ram_reg_r2_0_31_30_31_0;
  wire [3:0]ram_reg_r2_0_31_30_31__0_0;
  wire [3:0]ram_reg_r2_0_31_30_31__0_1;
  wire [3:0]ram_reg_r2_0_31_30_31__0_2;
  wire [3:0]ram_reg_r2_0_31_6_11_0;
  wire [3:0]ram_reg_r2_0_31_6_11_1;
  wire [3:0]ram_reg_r2_0_31_6_11_2;
  wire [3:0]ram_reg_r2_0_31_6_11_3;
  wire [31:0]rs1;
  wire [7:0]srcA;
  wire [31:0]wd;
  wire [1:0]NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_ram_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_ram_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__0_i_1
       (.I0(RS2[15]),
        .I1(rs1[23]),
        .I2(RS2[14]),
        .I3(rs1[22]),
        .I4(rs1[21]),
        .I5(RS2[13]),
        .O(ram_reg_r2_0_31_18_23_0[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__0_i_2
       (.I0(RS2[12]),
        .I1(rs1[20]),
        .I2(RS2[11]),
        .I3(rs1[19]),
        .I4(rs1[18]),
        .I5(RS2[10]),
        .O(ram_reg_r2_0_31_18_23_0[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__0_i_3
       (.I0(RS2[9]),
        .I1(rs1[17]),
        .I2(RS2[8]),
        .I3(rs1[16]),
        .I4(rs1[15]),
        .I5(RS2[7]),
        .O(ram_reg_r2_0_31_18_23_0[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__0_i_4
       (.I0(RS2[6]),
        .I1(rs1[14]),
        .I2(RS2[5]),
        .I3(rs1[13]),
        .I4(rs1[12]),
        .I5(RS2[4]),
        .O(ram_reg_r2_0_31_18_23_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_EQ_carry__1_i_1
       (.I0(rs1[31]),
        .I1(clk_50_reg_0),
        .I2(rs1[30]),
        .I3(clk_50_reg),
        .O(ram_reg_r2_0_31_30_31_0[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__1_i_2
       (.I0(RS2[21]),
        .I1(rs1[29]),
        .I2(RS2[20]),
        .I3(rs1[28]),
        .I4(rs1[27]),
        .I5(RS2[19]),
        .O(ram_reg_r2_0_31_30_31_0[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry__1_i_3
       (.I0(RS2[18]),
        .I1(rs1[26]),
        .I2(RS2[17]),
        .I3(rs1[25]),
        .I4(rs1[24]),
        .I5(RS2[16]),
        .O(ram_reg_r2_0_31_30_31_0[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry_i_1
       (.I0(RS2[3]),
        .I1(rs1[11]),
        .I2(RS2[2]),
        .I3(rs1[10]),
        .I4(rs1[9]),
        .I5(RS2[1]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry_i_2
       (.I0(RS2[0]),
        .I1(rs1[8]),
        .I2(DIADI[7]),
        .I3(rs1[7]),
        .I4(rs1[6]),
        .I5(DIADI[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry_i_3
       (.I0(DIADI[5]),
        .I1(rs1[5]),
        .I2(rs1[4]),
        .I3(DIADI[4]),
        .I4(DIADI[3]),
        .I5(rs1[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BR_EQ_carry_i_4
       (.I0(rs1[2]),
        .I1(DIADI[2]),
        .I2(rs1[1]),
        .I3(DIADI[1]),
        .I4(DIADI[0]),
        .I5(rs1[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__0_i_1
       (.I0(RS2[6]),
        .I1(rs1[14]),
        .I2(rs1[15]),
        .I3(RS2[7]),
        .O(ram_reg_r2_0_31_12_17_1[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__0_i_2
       (.I0(RS2[4]),
        .I1(rs1[12]),
        .I2(rs1[13]),
        .I3(RS2[5]),
        .O(ram_reg_r2_0_31_12_17_1[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__0_i_3
       (.I0(RS2[2]),
        .I1(rs1[10]),
        .I2(rs1[11]),
        .I3(RS2[3]),
        .O(ram_reg_r2_0_31_12_17_1[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__0_i_4
       (.I0(RS2[0]),
        .I1(rs1[8]),
        .I2(rs1[9]),
        .I3(RS2[1]),
        .O(ram_reg_r2_0_31_12_17_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__0_i_5
       (.I0(rs1[14]),
        .I1(RS2[6]),
        .I2(rs1[15]),
        .I3(RS2[7]),
        .O(ram_reg_r2_0_31_12_17_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__0_i_6
       (.I0(rs1[12]),
        .I1(RS2[4]),
        .I2(rs1[13]),
        .I3(RS2[5]),
        .O(ram_reg_r2_0_31_12_17_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__0_i_7
       (.I0(rs1[10]),
        .I1(RS2[2]),
        .I2(rs1[11]),
        .I3(RS2[3]),
        .O(ram_reg_r2_0_31_12_17_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__0_i_8
       (.I0(rs1[8]),
        .I1(RS2[0]),
        .I2(rs1[9]),
        .I3(RS2[1]),
        .O(ram_reg_r2_0_31_12_17_0[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__1_i_1
       (.I0(RS2[14]),
        .I1(rs1[22]),
        .I2(rs1[23]),
        .I3(RS2[15]),
        .O(ram_reg_r2_0_31_18_23_1[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__1_i_2
       (.I0(RS2[12]),
        .I1(rs1[20]),
        .I2(rs1[21]),
        .I3(RS2[13]),
        .O(ram_reg_r2_0_31_18_23_1[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__1_i_3
       (.I0(RS2[10]),
        .I1(rs1[18]),
        .I2(rs1[19]),
        .I3(RS2[11]),
        .O(ram_reg_r2_0_31_18_23_1[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__1_i_4
       (.I0(RS2[8]),
        .I1(rs1[16]),
        .I2(rs1[17]),
        .I3(RS2[9]),
        .O(ram_reg_r2_0_31_18_23_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__1_i_5
       (.I0(rs1[22]),
        .I1(RS2[14]),
        .I2(rs1[23]),
        .I3(RS2[15]),
        .O(ram_reg_r2_0_31_18_23_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__1_i_6
       (.I0(rs1[20]),
        .I1(RS2[12]),
        .I2(rs1[21]),
        .I3(RS2[13]),
        .O(ram_reg_r2_0_31_18_23_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__1_i_7
       (.I0(rs1[18]),
        .I1(RS2[10]),
        .I2(rs1[19]),
        .I3(RS2[11]),
        .O(ram_reg_r2_0_31_18_23_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__1_i_8
       (.I0(rs1[16]),
        .I1(RS2[8]),
        .I2(rs1[17]),
        .I3(RS2[9]),
        .O(ram_reg_r2_0_31_18_23_2[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__2_i_1
       (.I0(clk_50_reg),
        .I1(rs1[30]),
        .I2(rs1[31]),
        .I3(clk_50_reg_0),
        .O(ram_reg_r2_0_31_30_31__0_1[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__2_i_2
       (.I0(RS2[20]),
        .I1(rs1[28]),
        .I2(rs1[29]),
        .I3(RS2[21]),
        .O(ram_reg_r2_0_31_30_31__0_1[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__2_i_3
       (.I0(RS2[18]),
        .I1(rs1[26]),
        .I2(rs1[27]),
        .I3(RS2[19]),
        .O(ram_reg_r2_0_31_30_31__0_1[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry__2_i_4
       (.I0(RS2[16]),
        .I1(rs1[24]),
        .I2(rs1[25]),
        .I3(RS2[17]),
        .O(ram_reg_r2_0_31_30_31__0_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__2_i_5
       (.I0(rs1[30]),
        .I1(clk_50_reg),
        .I2(rs1[31]),
        .I3(clk_50_reg_0),
        .O(ram_reg_r2_0_31_30_31__0_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__2_i_6
       (.I0(rs1[28]),
        .I1(RS2[20]),
        .I2(rs1[29]),
        .I3(RS2[21]),
        .O(ram_reg_r2_0_31_30_31__0_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__2_i_7
       (.I0(rs1[26]),
        .I1(RS2[18]),
        .I2(rs1[27]),
        .I3(RS2[19]),
        .O(ram_reg_r2_0_31_30_31__0_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry__2_i_8
       (.I0(rs1[24]),
        .I1(RS2[16]),
        .I2(rs1[25]),
        .I3(RS2[17]),
        .O(ram_reg_r2_0_31_30_31__0_0[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry_i_1
       (.I0(DIADI[6]),
        .I1(rs1[6]),
        .I2(rs1[7]),
        .I3(DIADI[7]),
        .O(ram_reg_r2_0_31_6_11_1[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry_i_2
       (.I0(DIADI[4]),
        .I1(rs1[4]),
        .I2(rs1[5]),
        .I3(DIADI[5]),
        .O(ram_reg_r2_0_31_6_11_1[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry_i_3
       (.I0(DIADI[2]),
        .I1(rs1[2]),
        .I2(rs1[3]),
        .I3(DIADI[3]),
        .O(ram_reg_r2_0_31_6_11_1[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LTU_carry_i_4
       (.I0(DIADI[0]),
        .I1(rs1[0]),
        .I2(rs1[1]),
        .I3(DIADI[1]),
        .O(ram_reg_r2_0_31_6_11_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry_i_5
       (.I0(rs1[6]),
        .I1(DIADI[6]),
        .I2(rs1[7]),
        .I3(DIADI[7]),
        .O(ram_reg_r2_0_31_6_11_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry_i_6
       (.I0(DIADI[4]),
        .I1(rs1[4]),
        .I2(rs1[5]),
        .I3(DIADI[5]),
        .O(ram_reg_r2_0_31_6_11_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry_i_7
       (.I0(DIADI[2]),
        .I1(rs1[2]),
        .I2(DIADI[3]),
        .I3(rs1[3]),
        .O(ram_reg_r2_0_31_6_11_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LTU_carry_i_8
       (.I0(DIADI[0]),
        .I1(rs1[0]),
        .I2(DIADI[1]),
        .I3(rs1[1]),
        .O(ram_reg_r2_0_31_6_11_0[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__0_i_1
       (.I0(RS2[6]),
        .I1(rs1[14]),
        .I2(rs1[15]),
        .I3(RS2[7]),
        .O(ram_reg_r2_0_31_12_17_3[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__0_i_2
       (.I0(RS2[4]),
        .I1(rs1[12]),
        .I2(rs1[13]),
        .I3(RS2[5]),
        .O(ram_reg_r2_0_31_12_17_3[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__0_i_3
       (.I0(RS2[2]),
        .I1(rs1[10]),
        .I2(rs1[11]),
        .I3(RS2[3]),
        .O(ram_reg_r2_0_31_12_17_3[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__0_i_4
       (.I0(RS2[0]),
        .I1(rs1[8]),
        .I2(rs1[9]),
        .I3(RS2[1]),
        .O(ram_reg_r2_0_31_12_17_3[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__0_i_5
       (.I0(rs1[14]),
        .I1(RS2[6]),
        .I2(rs1[15]),
        .I3(RS2[7]),
        .O(ram_reg_r2_0_31_12_17_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__0_i_6
       (.I0(rs1[12]),
        .I1(RS2[4]),
        .I2(rs1[13]),
        .I3(RS2[5]),
        .O(ram_reg_r2_0_31_12_17_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__0_i_7
       (.I0(rs1[10]),
        .I1(RS2[2]),
        .I2(rs1[11]),
        .I3(RS2[3]),
        .O(ram_reg_r2_0_31_12_17_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__0_i_8
       (.I0(rs1[8]),
        .I1(RS2[0]),
        .I2(rs1[9]),
        .I3(RS2[1]),
        .O(ram_reg_r2_0_31_12_17_2[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__1_i_1
       (.I0(RS2[14]),
        .I1(rs1[22]),
        .I2(rs1[23]),
        .I3(RS2[15]),
        .O(ram_reg_r2_0_31_18_23_4[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__1_i_2
       (.I0(RS2[12]),
        .I1(rs1[20]),
        .I2(rs1[21]),
        .I3(RS2[13]),
        .O(ram_reg_r2_0_31_18_23_4[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__1_i_3
       (.I0(RS2[10]),
        .I1(rs1[18]),
        .I2(rs1[19]),
        .I3(RS2[11]),
        .O(ram_reg_r2_0_31_18_23_4[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__1_i_4
       (.I0(RS2[8]),
        .I1(rs1[16]),
        .I2(rs1[17]),
        .I3(RS2[9]),
        .O(ram_reg_r2_0_31_18_23_4[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__1_i_5
       (.I0(rs1[22]),
        .I1(RS2[14]),
        .I2(rs1[23]),
        .I3(RS2[15]),
        .O(ram_reg_r2_0_31_18_23_3[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__1_i_6
       (.I0(rs1[20]),
        .I1(RS2[12]),
        .I2(rs1[21]),
        .I3(RS2[13]),
        .O(ram_reg_r2_0_31_18_23_3[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__1_i_7
       (.I0(rs1[18]),
        .I1(RS2[10]),
        .I2(rs1[19]),
        .I3(RS2[11]),
        .O(ram_reg_r2_0_31_18_23_3[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__1_i_8
       (.I0(rs1[16]),
        .I1(RS2[8]),
        .I2(rs1[17]),
        .I3(RS2[9]),
        .O(ram_reg_r2_0_31_18_23_3[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__2_i_1
       (.I0(clk_50_reg),
        .I1(rs1[30]),
        .I2(clk_50_reg_0),
        .I3(rs1[31]),
        .O(ram_reg_r1_0_31_30_31__0_0[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__2_i_2
       (.I0(RS2[20]),
        .I1(rs1[28]),
        .I2(rs1[29]),
        .I3(RS2[21]),
        .O(ram_reg_r1_0_31_30_31__0_0[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__2_i_3
       (.I0(RS2[18]),
        .I1(rs1[26]),
        .I2(rs1[27]),
        .I3(RS2[19]),
        .O(ram_reg_r1_0_31_30_31__0_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry__2_i_4
       (.I0(RS2[16]),
        .I1(rs1[24]),
        .I2(rs1[25]),
        .I3(RS2[17]),
        .O(ram_reg_r1_0_31_30_31__0_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__2_i_5
       (.I0(rs1[30]),
        .I1(clk_50_reg),
        .I2(rs1[31]),
        .I3(clk_50_reg_0),
        .O(ram_reg_r2_0_31_30_31__0_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__2_i_6
       (.I0(rs1[28]),
        .I1(RS2[20]),
        .I2(rs1[29]),
        .I3(RS2[21]),
        .O(ram_reg_r2_0_31_30_31__0_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__2_i_7
       (.I0(rs1[26]),
        .I1(RS2[18]),
        .I2(rs1[27]),
        .I3(RS2[19]),
        .O(ram_reg_r2_0_31_30_31__0_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry__2_i_8
       (.I0(rs1[24]),
        .I1(RS2[16]),
        .I2(rs1[25]),
        .I3(RS2[17]),
        .O(ram_reg_r2_0_31_30_31__0_2[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry_i_1
       (.I0(DIADI[6]),
        .I1(rs1[6]),
        .I2(rs1[7]),
        .I3(DIADI[7]),
        .O(ram_reg_r2_0_31_6_11_3[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry_i_2
       (.I0(DIADI[4]),
        .I1(rs1[4]),
        .I2(rs1[5]),
        .I3(DIADI[5]),
        .O(ram_reg_r2_0_31_6_11_3[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry_i_3
       (.I0(DIADI[2]),
        .I1(rs1[2]),
        .I2(rs1[3]),
        .I3(DIADI[3]),
        .O(ram_reg_r2_0_31_6_11_3[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    BR_LT_carry_i_4
       (.I0(DIADI[0]),
        .I1(rs1[0]),
        .I2(rs1[1]),
        .I3(DIADI[1]),
        .O(ram_reg_r2_0_31_6_11_3[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry_i_5
       (.I0(rs1[6]),
        .I1(DIADI[6]),
        .I2(rs1[7]),
        .I3(DIADI[7]),
        .O(ram_reg_r2_0_31_6_11_2[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry_i_6
       (.I0(DIADI[4]),
        .I1(rs1[4]),
        .I2(rs1[5]),
        .I3(DIADI[5]),
        .O(ram_reg_r2_0_31_6_11_2[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry_i_7
       (.I0(DIADI[2]),
        .I1(rs1[2]),
        .I2(DIADI[3]),
        .I3(rs1[3]),
        .O(ram_reg_r2_0_31_6_11_2[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    BR_LT_carry_i_8
       (.I0(DIADI[0]),
        .I1(rs1[0]),
        .I2(DIADI[1]),
        .I3(rs1[1]),
        .O(ram_reg_r2_0_31_6_11_2[0]));
  LUT6 #(
    .INIT(64'h03FCF30C050A050A)) 
    \OUT[31]_i_18 
       (.I0(CO),
        .I1(\OUT[31]_i_7 ),
        .I2(\r_SSEG_reg[13] [6]),
        .I3(\r_SSEG_reg[13] [5]),
        .I4(\OUT[31]_i_7_0 ),
        .I5(\r_SSEG_reg[13] [7]),
        .O(memory_reg_mux_sel_b_pos_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(rs1[7]),
        .I1(alu_src_a),
        .O(srcA[3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__0
       (.I0(rs1[6]),
        .I1(alu_src_a),
        .O(RESULT0_carry_i_11[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__0
       (.I0(rs1[5]),
        .I1(alu_src_a),
        .O(srcA[2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__0
       (.I0(rs1[4]),
        .I1(alu_src_a),
        .O(RESULT0_carry_i_11[0]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry__0_i_5__1
       (.I0(rs1[7]),
        .I1(alu_src_a),
        .I2(\RESULT0_inferred__0/i__carry__0 [2]),
        .O(\OUT_reg[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1__0
       (.I0(rs1[11]),
        .I1(alu_src_a),
        .O(srcA[7]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2__0
       (.I0(rs1[10]),
        .I1(alu_src_a),
        .O(srcA[6]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3__0
       (.I0(rs1[9]),
        .I1(alu_src_a),
        .O(srcA[5]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_4__0
       (.I0(rs1[8]),
        .I1(alu_src_a),
        .O(srcA[4]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__1
       (.I0(rs1[3]),
        .I1(alu_src_a),
        .O(srcA[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2__1
       (.I0(rs1[2]),
        .I1(alu_src_a),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3
       (.I0(rs1[1]),
        .I1(alu_src_a),
        .O(srcA[0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(rs1[0]),
        .I1(alu_src_a),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hFA20FAF2)) 
    i__carry_i_4__0
       (.I0(\RESULT0_inferred__0/i__carry__0 [0]),
        .I1(rs1[0]),
        .I2(\RESULT0_inferred__0/i__carry__0 [1]),
        .I3(alu_src_a),
        .I4(rs1[1]),
        .O(\OUT_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_29
       (.I0(DIADI[7]),
        .I1(memory_reg_bram_15),
        .I2(RS2[7]),
        .O(DIADI[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_30
       (.I0(DIADI[6]),
        .I1(memory_reg_bram_15),
        .I2(RS2[6]),
        .O(DIADI[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_31
       (.I0(DIADI[5]),
        .I1(memory_reg_bram_15),
        .I2(RS2[5]),
        .O(DIADI[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_32
       (.I0(DIADI[4]),
        .I1(memory_reg_bram_15),
        .I2(RS2[4]),
        .O(DIADI[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_33
       (.I0(DIADI[3]),
        .I1(memory_reg_bram_15),
        .I2(RS2[3]),
        .O(DIADI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_34
       (.I0(DIADI[2]),
        .I1(memory_reg_bram_15),
        .I2(RS2[2]),
        .O(DIADI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_35
       (.I0(DIADI[1]),
        .I1(memory_reg_bram_15),
        .I2(RS2[1]),
        .O(DIADI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_bram_0_i_36
       (.I0(DIADI[0]),
        .I1(memory_reg_bram_15),
        .I2(RS2[0]),
        .O(DIADI[8]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ ram_reg_r1_0_31_0_5
       (.ADDRA(\r_SSEG_reg[13] [12:8]),
        .ADDRB(\r_SSEG_reg[13] [12:8]),
        .ADDRC(\r_SSEG_reg[13] [12:8]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rs1[1:0]),
        .DOB(rs1[3:2]),
        .DOC(rs1[5:4]),
        .DOD(NLW_ram_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD25 ram_reg_r1_0_31_12_17
       (.ADDRA(\r_SSEG_reg[13] [12:8]),
        .ADDRB(\r_SSEG_reg[13] [12:8]),
        .ADDRC(\r_SSEG_reg[13] [12:8]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC(wd[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rs1[13:12]),
        .DOB(rs1[15:14]),
        .DOC(rs1[17:16]),
        .DOD(NLW_ram_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD26 ram_reg_r1_0_31_18_23
       (.ADDRA(\r_SSEG_reg[13] [12:8]),
        .ADDRB(\r_SSEG_reg[13] [12:8]),
        .ADDRC(\r_SSEG_reg[13] [12:8]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[19:18]),
        .DIB(wd[21:20]),
        .DIC(wd[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rs1[19:18]),
        .DOB(rs1[21:20]),
        .DOC(rs1[23:22]),
        .DOD(NLW_ram_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD27 ram_reg_r1_0_31_24_29
       (.ADDRA(\r_SSEG_reg[13] [12:8]),
        .ADDRB(\r_SSEG_reg[13] [12:8]),
        .ADDRC(\r_SSEG_reg[13] [12:8]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[25:24]),
        .DIB(wd[27:26]),
        .DIC(wd[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rs1[25:24]),
        .DOB(rs1[27:26]),
        .DOC(rs1[29:28]),
        .DOD(NLW_ram_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER_Wrapper/CPU/OTTER_REG_FILE/ram_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D_UNIQ_BASE_ ram_reg_r1_0_31_30_31
       (.A0(\r_SSEG_reg[13] [0]),
        .A1(\r_SSEG_reg[13] [1]),
        .A2(\r_SSEG_reg[13] [2]),
        .A3(\r_SSEG_reg[13] [3]),
        .A4(\r_SSEG_reg[13] [4]),
        .D(wd[30]),
        .DPO(rs1[30]),
        .DPRA0(\r_SSEG_reg[13] [8]),
        .DPRA1(\r_SSEG_reg[13] [9]),
        .DPRA2(\r_SSEG_reg[13] [10]),
        .DPRA3(\r_SSEG_reg[13] [11]),
        .DPRA4(\r_SSEG_reg[13] [12]),
        .SPO(NLW_ram_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER_Wrapper/CPU/OTTER_REG_FILE/ram_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD28 ram_reg_r1_0_31_30_31__0
       (.A0(\r_SSEG_reg[13] [0]),
        .A1(\r_SSEG_reg[13] [1]),
        .A2(\r_SSEG_reg[13] [2]),
        .A3(\r_SSEG_reg[13] [3]),
        .A4(\r_SSEG_reg[13] [4]),
        .D(wd[31]),
        .DPO(rs1[31]),
        .DPRA0(\r_SSEG_reg[13] [8]),
        .DPRA1(\r_SSEG_reg[13] [9]),
        .DPRA2(\r_SSEG_reg[13] [10]),
        .DPRA3(\r_SSEG_reg[13] [11]),
        .DPRA4(\r_SSEG_reg[13] [12]),
        .SPO(NLW_ram_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD29 ram_reg_r1_0_31_6_11
       (.ADDRA(\r_SSEG_reg[13] [12:8]),
        .ADDRB(\r_SSEG_reg[13] [12:8]),
        .ADDRC(\r_SSEG_reg[13] [12:8]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rs1[7:6]),
        .DOB(rs1[9:8]),
        .DOC(rs1[11:10]),
        .DOD(NLW_ram_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD30 ram_reg_r2_0_31_0_5
       (.ADDRA(\r_SSEG_reg[13] [17:13]),
        .ADDRB(\r_SSEG_reg[13] [17:13]),
        .ADDRC(\r_SSEG_reg[13] [17:13]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[1:0]),
        .DIB(wd[3:2]),
        .DIC(wd[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DIADI[1:0]),
        .DOB(DIADI[3:2]),
        .DOC(DIADI[5:4]),
        .DOD(NLW_ram_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD31 ram_reg_r2_0_31_12_17
       (.ADDRA(\r_SSEG_reg[13] [17:13]),
        .ADDRB(\r_SSEG_reg[13] [17:13]),
        .ADDRC(\r_SSEG_reg[13] [17:13]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[13:12]),
        .DIB(wd[15:14]),
        .DIC(wd[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RS2[5:4]),
        .DOB(RS2[7:6]),
        .DOC(RS2[9:8]),
        .DOD(NLW_ram_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD32 ram_reg_r2_0_31_18_23
       (.ADDRA(\r_SSEG_reg[13] [17:13]),
        .ADDRB(\r_SSEG_reg[13] [17:13]),
        .ADDRC(\r_SSEG_reg[13] [17:13]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[19:18]),
        .DIB(wd[21:20]),
        .DIC(wd[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RS2[11:10]),
        .DOB(RS2[13:12]),
        .DOC(RS2[15:14]),
        .DOD(NLW_ram_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD33 ram_reg_r2_0_31_24_29
       (.ADDRA(\r_SSEG_reg[13] [17:13]),
        .ADDRB(\r_SSEG_reg[13] [17:13]),
        .ADDRC(\r_SSEG_reg[13] [17:13]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[25:24]),
        .DIB(wd[27:26]),
        .DIC(wd[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RS2[17:16]),
        .DOB(RS2[19:18]),
        .DOC(RS2[21:20]),
        .DOD(NLW_ram_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER_Wrapper/CPU/OTTER_REG_FILE/ram_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D_HD34 ram_reg_r2_0_31_30_31
       (.A0(\r_SSEG_reg[13] [0]),
        .A1(\r_SSEG_reg[13] [1]),
        .A2(\r_SSEG_reg[13] [2]),
        .A3(\r_SSEG_reg[13] [3]),
        .A4(\r_SSEG_reg[13] [4]),
        .D(wd[30]),
        .DPO(clk_50_reg),
        .DPRA0(\r_SSEG_reg[13] [13]),
        .DPRA1(\r_SSEG_reg[13] [14]),
        .DPRA2(\r_SSEG_reg[13] [15]),
        .DPRA3(\r_SSEG_reg[13] [16]),
        .DPRA4(\r_SSEG_reg[13] [17]),
        .SPO(NLW_ram_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER_Wrapper/CPU/OTTER_REG_FILE/ram_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD35 ram_reg_r2_0_31_30_31__0
       (.A0(\r_SSEG_reg[13] [0]),
        .A1(\r_SSEG_reg[13] [1]),
        .A2(\r_SSEG_reg[13] [2]),
        .A3(\r_SSEG_reg[13] [3]),
        .A4(\r_SSEG_reg[13] [4]),
        .D(wd[31]),
        .DPO(clk_50_reg_0),
        .DPRA0(\r_SSEG_reg[13] [13]),
        .DPRA1(\r_SSEG_reg[13] [14]),
        .DPRA2(\r_SSEG_reg[13] [15]),
        .DPRA3(\r_SSEG_reg[13] [16]),
        .DPRA4(\r_SSEG_reg[13] [17]),
        .SPO(NLW_ram_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "OTTER/OTTER_REG_FILE/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD36 ram_reg_r2_0_31_6_11
       (.ADDRA(\r_SSEG_reg[13] [17:13]),
        .ADDRB(\r_SSEG_reg[13] [17:13]),
        .ADDRC(\r_SSEG_reg[13] [17:13]),
        .ADDRD(\r_SSEG_reg[13] [4:0]),
        .DIA(wd[7:6]),
        .DIB(wd[9:8]),
        .DIC(wd[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DIADI[7:6]),
        .DOB(RS2[1:0]),
        .DOC(RS2[3:2]),
        .DOD(NLW_ram_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_50_BUFG),
        .WE(p_0_in0_out));
endmodule

module SevSegDisp
   (Q,
    ANODES_OBUF,
    CLK,
    \CATHODES_reg[0] );
  output [6:0]Q;
  output [3:0]ANODES_OBUF;
  input CLK;
  input [15:0]\CATHODES_reg[0] ;

  wire [3:0]ANODES_OBUF;
  wire [15:0]\CATHODES_reg[0] ;
  wire CLK;
  wire [6:0]Q;

  CathodeDriver CathMod
       (.ANODES_OBUF(ANODES_OBUF),
        .\CATHODES_reg[0]_0 (\CATHODES_reg[0] ),
        .CLK(CLK),
        .Q(Q));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
