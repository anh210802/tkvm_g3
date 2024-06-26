
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Apr 13 2024 02:51:02 +07 (Apr 12 2024 19:51:02 UTC)

// Verification Directory fv/bound_flasher 

module bound_flasher(flick, clk, rst, leds);
  input flick, clk, rst;
  output [15:0] leds;
  wire flick, clk, rst;
  wire [15:0] leds;
  wire [3:0] next_state;
  wire [3:0] led_counter;
  wire [3:0] state;
  wire n_0, n_1, n_3, n_4, n_5, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_19, n_20, n_21, n_22, n_23, n_24, n_27, n_28;
  wire n_29, n_30, n_31, n_32, n_33, n_34, n_35, n_36;
  wire n_37, n_38, n_39, n_40, n_41, n_42, n_43, n_44;
  wire n_45, n_46, n_47, n_48, n_49, n_50, n_51, n_52;
  wire n_54, n_55, n_56, n_57, n_58, n_59, n_60, n_61;
  wire n_62, n_63, n_64, n_66, n_67, n_68, n_69, n_70;
  wire n_73, n_75, n_77, n_78, n_79, n_80, n_81, n_82;
  wire n_83, n_84, n_86, n_87, n_89, n_90, n_91, n_93;
  wire n_94, n_96, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_113, n_114, n_115, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_125, n_126, n_127, n_128, n_129;
  wire n_130, n_131, n_132, n_133, n_134, n_135, n_136, n_137;
  wire n_138, n_140, n_141, n_142, n_143, n_144, n_145, n_146;
  wire n_147, n_149, n_150, n_151, n_152, n_154, n_155, n_156;
  wire n_157, n_158, n_160, n_161, n_162, n_163, n_164, n_165;
  wire n_166, n_167, n_168, n_169, n_170, n_171, n_172, n_173;
  wire n_174, n_175, n_176, n_177, n_178, n_179, n_180, n_181;
  wire n_182, n_183, n_184, n_185, n_186, n_187, n_189, n_190;
  wire n_196, n_197, n_198, n_203, n_209, n_211, n_212, n_213;
  wire n_214, n_215, n_216;
  DFFHQX1 \next_state_reg[1] (.CK (clk), .D (n_189), .Q
       (next_state[1]));
  DFFHQX1 \next_state_reg[2] (.CK (clk), .D (n_190), .Q
       (next_state[2]));
  DFFHQX1 \next_state_reg[3] (.CK (clk), .D (n_216), .Q
       (next_state[3]));
  DFFHQX1 \next_state_reg[0] (.CK (clk), .D (n_187), .Q
       (next_state[0]));
  DFFHQX8 \led_counter_reg[2] (.CK (clk), .D (n_180), .Q
       (led_counter[2]));
  DFFHQX8 \led_counter_reg[3] (.CK (clk), .D (n_182), .Q
       (led_counter[3]));
  DFFHQX8 \led_counter_reg[1] (.CK (clk), .D (n_179), .Q
       (led_counter[1]));
  NAND2X4 g8441__5107(.A (next_state[1]), .B (n_184), .Y (n_183));
  NAND2X2 g8424__6260(.A (n_177), .B (n_149), .Y (n_182));
  NAND2X4 g8442__4319(.A (next_state[0]), .B (n_184), .Y (n_181));
  NAND2X2 g8425__8428(.A (n_157), .B (n_175), .Y (n_180));
  MDFFHQX8 \led_counter_reg[0] (.CK (clk), .D0 (n_146), .D1 (n_178),
       .S0 (led_counter[0]), .Q (led_counter[0]));
  DFFHQX1 \leds_reg[11] (.CK (clk), .D (n_165), .Q (leds[11]));
  DFFHQX1 \leds_reg[12] (.CK (clk), .D (n_171), .Q (leds[12]));
  DFFHQX1 \leds_reg[6] (.CK (clk), .D (n_151), .Q (leds[6]));
  DFFHQX1 \leds_reg[14] (.CK (clk), .D (n_154), .Q (leds[14]));
  DFFHQX1 \leds_reg[1] (.CK (clk), .D (n_169), .Q (leds[1]));
  DFFHQX1 \leds_reg[3] (.CK (clk), .D (n_174), .Q (leds[3]));
  DFFHQX1 \leds_reg[8] (.CK (clk), .D (n_160), .Q (leds[8]));
  DFFHQX1 \leds_reg[9] (.CK (clk), .D (n_167), .Q (leds[9]));
  DFFHQX1 \leds_reg[2] (.CK (clk), .D (n_173), .Q (leds[2]));
  DFFHQX1 \leds_reg[4] (.CK (clk), .D (n_163), .Q (leds[4]));
  OAI21X4 g8437__5526(.A0 (n_137), .A1 (n_178), .B0 (led_counter[3]),
       .Y (n_177));
  NOR2BX2 g8459__6783(.AN (n_152), .B (n_215), .Y (n_176));
  OAI21X4 g8440__3680(.A0 (n_131), .A1 (n_178), .B0 (led_counter[2]),
       .Y (n_175));
  CLKAND2X12 g8467__1617(.A (n_147), .B (n_135), .Y (n_184));
  OAI31X2 g8460__2802(.A0 (n_172), .A1 (n_168), .A2 (n_170), .B0
       (n_143), .Y (n_174));
  OAI21X1 g8451__1705(.A0 (n_172), .A1 (n_161), .B0 (n_138), .Y
       (n_173));
  OAI31X2 g8457__5122(.A0 (n_203), .A1 (n_162), .A2 (n_170), .B0
       (n_141), .Y (n_171));
  OAI21X2 g8458__8246(.A0 (n_166), .A1 (n_168), .B0 (n_123), .Y
       (n_169));
  OAI21X2 g8450__7098(.A0 (n_164), .A1 (n_166), .B0 (n_119), .Y
       (n_167));
  OAI31X2 g8461__6131(.A0 (n_164), .A1 (n_172), .A2 (n_170), .B0
       (n_145), .Y (n_165));
  OAI21X2 g8462__1881(.A0 (n_162), .A1 (n_161), .B0 (n_121), .Y
       (n_163));
  DFFHQX1 \leds_reg[15] (.CK (clk), .D (n_134), .Q (leds[15]));
  OAI21X1 g8449__5115(.A0 (n_203), .A1 (n_166), .B0 (n_133), .Y
       (n_160));
  MXI2X6 g8465__7482(.A (n_156), .B (n_155), .S0 (n_17), .Y (n_158));
  AOI22X2 g8466__4733(.A0 (n_40), .A1 (n_156), .B0 (n_136), .B1
       (n_155), .Y (n_157));
  OAI31X2 g8464__6161(.A0 (n_150), .A1 (n_203), .A2 (n_170), .B0
       (n_144), .Y (n_154));
  OAI21X2 g8448__9315(.A0 (n_161), .A1 (n_150), .B0 (n_116), .Y
       (n_151));
  AOI22X2 g8444__9945(.A0 (n_67), .A1 (n_156), .B0 (n_33), .B1 (n_155),
       .Y (n_149));
  DFFHQX1 \leds_reg[13] (.CK (clk), .D (n_132), .Q (leds[13]));
  NOR3X8 g8488__2883(.A (n_94), .B (n_96), .C (n_108), .Y (n_147));
  DFFHQX1 \leds_reg[10] (.CK (clk), .D (n_126), .Q (leds[10]));
  OR2X1 g8468__2346(.A (n_155), .B (n_156), .Y (n_146));
  DFFHQX1 \leds_reg[5] (.CK (clk), .D (n_127), .Q (leds[5]));
  DFFHQX1 \leds_reg[7] (.CK (clk), .D (n_125), .Q (leds[7]));
  DFFHQX1 \leds_reg[0] (.CK (clk), .D (n_128), .Q (leds[0]));
  OAI21X2 g8477__1666(.A0 (n_118), .A1 (n_142), .B0 (leds[11]), .Y
       (n_145));
  OAI21X2 g8478__7410(.A0 (n_115), .A1 (n_140), .B0 (leds[14]), .Y
       (n_144));
  OAI21X2 g8479__6417(.A0 (n_122), .A1 (n_142), .B0 (leds[3]), .Y
       (n_143));
  OAI21X2 g8480__5477(.A0 (n_120), .A1 (n_140), .B0 (leds[12]), .Y
       (n_141));
  OAI21X2 g8482__5107(.A0 (n_81), .A1 (n_142), .B0 (leds[2]), .Y
       (n_138));
  NOR2X2 g8470__6260(.A (n_136), .B (n_130), .Y (n_137));
  NOR3X6 g8484__4319(.A (n_105), .B (n_111), .C (n_213), .Y (n_135));
  AO22X1 g8487__8428(.A0 (leds[15]), .A1 (n_91), .B0 (n_90), .B1
       (n_113), .Y (n_134));
  OAI21X2 g8483__5526(.A0 (n_82), .A1 (n_140), .B0 (leds[8]), .Y
       (n_133));
  OAI31X1 g8463__6783(.A0 (n_164), .A1 (n_162), .A2 (n_170), .B0
       (n_104), .Y (n_132));
  NOR2X2 g8469__3680(.A (n_21), .B (n_130), .Y (n_131));
  NOR2X8 g8493__1617(.A (n_106), .B (n_110), .Y (n_178));
  OAI21X1 g8489__2802(.A0 (n_61), .A1 (n_170), .B0 (n_102), .Y (n_128));
  OAI21X1 g8490__1705(.A0 (n_50), .A1 (n_170), .B0 (n_100), .Y (n_127));
  OAI21X1 g8491__5122(.A0 (n_42), .A1 (n_170), .B0 (n_99), .Y (n_126));
  OAI21X1 g8492__8246(.A0 (n_66), .A1 (n_170), .B0 (n_98), .Y (n_125));
  OAI21X1 g8476__6131(.A0 (n_122), .A1 (n_117), .B0 (leds[1]), .Y
       (n_123));
  OAI21X1 g8475__1881(.A0 (n_120), .A1 (n_114), .B0 (leds[4]), .Y
       (n_121));
  OAI21X1 g8473__5115(.A0 (n_118), .A1 (n_117), .B0 (leds[9]), .Y
       (n_119));
  OAI21X1 g8472__7482(.A0 (n_115), .A1 (n_114), .B0 (leds[6]), .Y
       (n_116));
  NAND2X2 g8501__4733(.A (n_43), .B (n_113), .Y (n_161));
  NAND2X2 g8500__6161(.A (n_44), .B (n_113), .Y (n_166));
  NAND2X6 g8505__9945(.A (n_78), .B (n_87), .Y (n_110));
  OR2X2 g8516__2346(.A (n_103), .B (n_105), .Y (n_106));
  OAI31X1 g8471__1666(.A0 (n_118), .A1 (n_120), .A2 (n_101), .B0
       (leds[13]), .Y (n_104));
  NOR2X8 g8510__7410(.A (n_103), .B (n_84), .Y (n_130));
  OAI21X2 g8494__6417(.A0 (n_47), .A1 (n_101), .B0 (n_54), .Y (n_102));
  OAI21X2 g8496__5477(.A0 (n_48), .A1 (n_197), .B0 (leds[5]), .Y
       (n_100));
  OAI21X2 g8497__2398(.A0 (n_63), .A1 (n_197), .B0 (leds[10]), .Y
       (n_99));
  OAI21X2 g8499__5107(.A0 (n_101), .A1 (n_51), .B0 (leds[7]), .Y
       (n_98));
  OAI21X1 g8522__4319(.A0 (n_90), .A1 (n_89), .B0 (n_198), .Y (n_91));
  OAI21X4 g8526__8428(.A0 (n_23), .A1 (n_89), .B0 (n_196), .Y (n_140));
  OAI21X4 g8527__5526(.A0 (n_24), .A1 (n_89), .B0 (n_196), .Y (n_142));
  CLKAND2X3 g8514__6783(.A (n_83), .B (n_86), .Y (n_87));
  NOR2X6 g8512__1617(.A (n_46), .B (n_83), .Y (n_84));
  OR2X2 g8519__2802(.A (n_82), .B (n_101), .Y (n_117));
  OR2X2 g8518__1705(.A (n_81), .B (n_101), .Y (n_114));
  NAND3X4 g8508__5122(.A (n_80), .B (n_9), .C (n_68), .Y (n_152));
  OAI21X4 g8524__8246(.A0 (n_70), .A1 (n_52), .B0 (n_75), .Y (n_79));
  NOR2X4 g8525__7098(.A (n_57), .B (n_77), .Y (n_78));
  NOR2X6 g8538__6131(.A (n_75), .B (n_62), .Y (n_103));
  NOR2X8 g8529__1881(.A (n_41), .B (n_58), .Y (n_170));
  INVX3 g8546(.A (n_68), .Y (n_69));
  OAI21X2 g8474__6161(.A0 (n_32), .A1 (n_39), .B0 (n_66), .Y (n_67));
  NOR2BX4 g8544__9315(.AN (n_70), .B (n_80), .Y (n_96));
  NOR2X1 g8552__9945(.A (n_49), .B (n_89), .Y (n_63));
  NOR2X4 g8556__2883(.A (n_60), .B (n_80), .Y (n_111));
  NOR2X8 g8559__2346(.A (n_61), .B (n_60), .Y (n_68));
  NOR2X4 g8555__1666(.A (n_37), .B (n_59), .Y (n_83));
  NOR2X6 g8562__7410(.A (n_59), .B (n_31), .Y (n_101));
  NOR2X4 g8536__5477(.A (n_54), .B (n_60), .Y (n_55));
  NOR2X6 g8540__5107(.A (n_49), .B (n_35), .Y (n_77));
  NOR2X1 g8551__6260(.A (n_75), .B (n_89), .Y (n_48));
  NAND2X4 g8554__4319(.A (n_89), .B (flick), .Y (n_73));
  NOR2BX1 g8553__8428(.AN (n_150), .B (n_89), .Y (n_115));
  OR2X2 g8558__5526(.A (n_34), .B (n_56), .Y (n_64));
  NOR2BX1 g8557__6783(.AN (n_168), .B (n_89), .Y (n_122));
  NOR2X2 g8560__3680(.A (n_22), .B (n_89), .Y (n_120));
  NOR2X2 g8561__1617(.A (n_29), .B (n_89), .Y (n_118));
  NOR2XL g8549__2802(.A (n_46), .B (n_89), .Y (n_47));
  OR2X2 g8531__1705(.A (n_36), .B (n_61), .Y (n_45));
  NOR2X2 g8541__5122(.A (n_44), .B (n_89), .Y (n_82));
  NOR2X4 g8539__8246(.A (rst), .B (n_89), .Y (n_105));
  NOR2X2 g8537__7098(.A (n_43), .B (n_89), .Y (n_81));
  NAND2BX4 g8543__6131(.AN (n_42), .B (n_41), .Y (n_93));
  NOR2X6 g8585__1881(.A (n_27), .B (n_8), .Y (n_70));
  ADDHX1 g8511__5115(.A (led_counter[2]), .B (n_16), .CO (n_39), .S
       (n_40));
  INVX2 g8563(.A (n_41), .Y (n_35));
  CLKINVX4 g8576(.A (n_42), .Y (n_49));
  INVX2 g8565(.A (n_34), .Y (n_90));
  AND2X1 g8535__7482(.A (n_32), .B (n_136), .Y (n_33));
  AOI211X4 g8580__4733(.A0 (state[3]), .A1 (state[1]), .B0 (state[2]),
       .C0 (state[0]), .Y (n_31));
  INVX3 g8579(.A (n_75), .Y (n_50));
  OR2X2 g8583__6161(.A (n_150), .B (n_168), .Y (n_66));
  AND2X4 g8582__9315(.A (n_30), .B (n_15), .Y (n_52));
  NAND2X6 g8572__9945(.A (n_29), .B (n_20), .Y (n_34));
  NAND2X4 g8581__2883(.A (n_12), .B (n_28), .Y (n_36));
  INVX2 g8566(.A (n_61), .Y (n_46));
  CLKAND2X6 g8569__2346(.A (n_14), .B (n_30), .Y (n_41));
  CLKAND2X12 g8574__1666(.A (n_19), .B (n_28), .Y (n_89));
  CLKAND2X12 g8586__6417(.A (n_30), .B (n_11), .Y (n_59));
  NAND2X8 g8584__5477(.A (n_24), .B (n_23), .Y (n_42));
  CLKAND2X12 g8587__2398(.A (n_13), .B (n_22), .Y (n_75));
  CLKAND2X2 g8570__5107(.A (n_10), .B (n_21), .Y (n_136));
  CLKINVX4 g8590(.A (n_20), .Y (n_150));
  NAND2X8 g8595__6260(.A (n_3), .B (flick), .Y (n_80));
  NAND2X6 g8571__4319(.A (state[0]), .B (n_19), .Y (n_56));
  OR2X1 g8568__8428(.A (n_16), .B (n_21), .Y (n_17));
  NOR2X2 g8606__5526(.A (n_14), .B (n_5), .Y (n_15));
  INVX1 g8605(.A (n_24), .Y (n_172));
  CLKINVX4 g8604(.A (n_13), .Y (n_168));
  NOR2X4 g8607__3680(.A (state[2]), .B (n_7), .Y (n_12));
  NOR2X4 g8592__1617(.A (n_14), .B (state[1]), .Y (n_11));
  NOR2X6 g8600__2802(.A (n_0), .B (n_10), .Y (n_20));
  INVX1 g8591(.A (n_29), .Y (n_164));
  NOR2X6 g8597__1705(.A (led_counter[1]), .B (n_10), .Y (n_22));
  CLKAND2X6 g8617__5122(.A (led_counter[1]), .B (n_10), .Y (n_24));
  NAND2BX1 g8609__8246(.AN (n_54), .B (flick), .Y (n_9));
  NAND2X6 g8593__7098(.A (n_7), .B (n_14), .Y (n_8));
  NOR2X6 g8594__6131(.A (state[0]), .B (state[1]), .Y (n_28));
  NOR2X6 g8616__1881(.A (led_counter[3]), .B (n_1), .Y (n_13));
  NOR2X6 g8599__5115(.A (led_counter[0]), .B (n_32), .Y (n_23));
  NOR2X8 g8615__7482(.A (state[3]), .B (n_4), .Y (n_30));
  NOR2X6 g8610__4733(.A (state[2]), .B (state[3]), .Y (n_19));
  CLKINVX6 g8629(.A (state[1]), .Y (n_5));
  NOR2X2 g8613__6161(.A (led_counter[1]), .B (led_counter[0]), .Y
       (n_21));
  NOR2X6 g8612__9315(.A (led_counter[0]), .B (led_counter[3]), .Y
       (n_43));
  NOR2X6 g8611__9945(.A (led_counter[2]), .B (led_counter[1]), .Y
       (n_44));
  DFFHQX8 \state_reg[3] (.CK (clk), .D (next_state[3]), .Q (state[3]));
  INVX2 g8623(.A (leds[5]), .Y (n_3));
  AND2XL g8614__2883(.A (led_counter[1]), .B (led_counter[0]), .Y
       (n_16));
  CLKAND2X6 g8601__2346(.A (led_counter[3]), .B (led_counter[0]), .Y
       (n_29));
  DFFHQX8 \state_reg[0] (.CK (clk), .D (next_state[0]), .Q (state[0]));
  DFFHQX8 \state_reg[2] (.CK (clk), .D (next_state[2]), .Q (state[2]));
  CLKINVX4 g8631(.A (led_counter[0]), .Y (n_1));
  INVX3 g8620(.A (led_counter[3]), .Y (n_32));
  BUFX2 g8625(.A (leds[0]), .Y (n_54));
  CLKINVX8 g8621(.A (state[0]), .Y (n_14));
  CLKINVX6 g8619(.A (led_counter[1]), .Y (n_0));
  CLKINVX4 g8626(.A (state[3]), .Y (n_7));
  CLKINVX8 g8622(.A (led_counter[2]), .Y (n_10));
  NOR2BX2 g8661__1666(.AN (n_152), .B (n_214), .Y (n_129));
  NAND2X6 g8663__7410(.A (n_93), .B (n_69), .Y (n_94));
  OAI2BB1X4 g8667__5477(.A0N (led_counter[1]), .A1N (n_178), .B0
       (n_158), .Y (n_179));
  NOR2X2 g8675__6260(.A (n_56), .B (n_90), .Y (n_57));
  DFFHQX8 \state_reg[1] (.CK (clk), .D (next_state[1]), .Q (state[1]));
  NAND2X4 g8712__6783(.A (n_176), .B (n_183), .Y (n_189));
  NAND2X4 g8714__3680(.A (n_212), .B (n_186), .Y (n_190));
  INVX2 g8718(.A (n_36), .Y (n_37));
  NAND2X6 g8722__2802(.A (next_state[3]), .B (n_184), .Y (n_185));
  NAND2X6 g8728__1705(.A (next_state[2]), .B (n_184), .Y (n_186));
  NAND2X4 g8734__5122(.A (n_181), .B (n_129), .Y (n_187));
  NAND2X6 g8736__8246(.A (n_79), .B (n_107), .Y (n_108));
  INVX12 g8738(.A (n_59), .Y (n_60));
  NOR2BX1 g8742__7098(.AN (n_66), .B (n_89), .Y (n_51));
  INVX3 fopt8744(.A (n_101), .Y (n_196));
  NAND2X6 g8550__8752(.A (n_56), .B (n_38), .Y (n_58));
  CLKINVX4 g8754(.A (n_170), .Y (n_113));
  NOR2BX4 g8759(.AN (n_56), .B (n_77), .Y (n_209));
  AOI31X1 g8761(.A0 (n_70), .A1 (n_75), .A2 (n_80), .B0 (n_111), .Y
       (n_211));
  AND3X6 g8762(.A (n_152), .B (n_109), .C (n_211), .Y (n_212));
  NAND3X8 g8763(.A (n_73), .B (n_45), .C (n_64), .Y (n_213));
  NAND3BX2 g8764(.AN (n_96), .B (n_93), .C (n_73), .Y (n_214));
  NAND3BX2 g8765(.AN (n_96), .B (n_64), .C (n_107), .Y (n_215));
  INVX1 fopt8767(.A (n_23), .Y (n_203));
  NAND2X4 g8573__8769(.A (n_44), .B (n_43), .Y (n_61));
  NAND2X4 g8665__8771(.A (flick), .B (n_55), .Y (n_107));
  INVX2 g8773(.A (n_70), .Y (n_62));
  INVX2 fopt8775(.A (n_101), .Y (n_198));
  AND2X1 g8498__8777(.A (n_93), .B (n_107), .Y (n_109));
  NAND2X4 g8700__8779(.A (n_86), .B (n_209), .Y (n_156));
  INVX2 fopt8781(.A (n_198), .Y (n_197));
  INVX1 g8785(.A (n_22), .Y (n_162));
  NAND2X4 g8687__8787(.A (n_52), .B (n_50), .Y (n_86));
  OAI2BB1X2 g2(.A0N (n_75), .A1N (n_52), .B0 (n_185), .Y (n_216));
  NAND2X4 g8720__8794(.A (n_30), .B (state[1]), .Y (n_38));
  NAND2X4 g8608__8796(.A (state[1]), .B (n_4), .Y (n_27));
  CLKINVX8 g8798(.A (n_130), .Y (n_155));
  CLKINVX8 g8800(.A (state[2]), .Y (n_4));
endmodule

