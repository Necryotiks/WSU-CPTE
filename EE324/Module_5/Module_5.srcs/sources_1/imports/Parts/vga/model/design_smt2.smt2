; SMT-LIBv2 description generated by Yosys 0.9+932 (git sha1 65f197e2, clang 6.0.0-1ubuntu2 -fPIC -Os)
; yosys-smt2-module VGA_controller
(declare-sort |VGA_controller_s| 0)
(declare-fun |VGA_controller_is| (|VGA_controller_s|) Bool)
; yosys-smt2-wire w_CLK 1
(declare-fun |VGA_controller#0| (|VGA_controller_s|) Bool) ; \i_CLK
(define-fun |VGA_controller_n w_CLK| ((state |VGA_controller_s|)) Bool (|VGA_controller#0| state))
; yosys-smt2-wire r_past_valid 1
(define-fun |VGA_controller_n r_past_valid| ((state |VGA_controller_s|)) Bool false)
; yosys-smt2-register r_Y_COORD 16
; yosys-smt2-wire r_Y_COORD 16
(declare-fun |VGA_controller#1| (|VGA_controller_s|) (_ BitVec 16)) ; \r_Y_COORD
(define-fun |VGA_controller_n r_Y_COORD| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#1| state))
; yosys-smt2-register r_X_COORD 16
; yosys-smt2-wire r_X_COORD 16
(declare-fun |VGA_controller#2| (|VGA_controller_s|) (_ BitVec 16)) ; \r_X_COORD
(define-fun |VGA_controller_n r_X_COORD| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#2| state))
; yosys-smt2-register r_VSYNC 1
; yosys-smt2-wire r_VSYNC 1
(declare-fun |VGA_controller#3| (|VGA_controller_s|) (_ BitVec 1)) ; \r_VSYNC
(define-fun |VGA_controller_n r_VSYNC| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#3| state)) #b1))
; yosys-smt2-register r_VDE 1
; yosys-smt2-wire r_VDE 1
(declare-fun |VGA_controller#4| (|VGA_controller_s|) (_ BitVec 1)) ; \r_VDE
(define-fun |VGA_controller_n r_VDE| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#4| state)) #b1))
; yosys-smt2-register r_VCNT 16
; yosys-smt2-wire r_VCNT 16
(declare-fun |VGA_controller#5| (|VGA_controller_s|) (_ BitVec 16)) ; \r_VCNT
(define-fun |VGA_controller_n r_VCNT| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#5| state))
; yosys-smt2-register r_HSYNC 1
; yosys-smt2-wire r_HSYNC 1
(declare-fun |VGA_controller#6| (|VGA_controller_s|) (_ BitVec 1)) ; \r_HSYNC
(define-fun |VGA_controller_n r_HSYNC| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#6| state)) #b1))
; yosys-smt2-register r_HCNT 16
; yosys-smt2-wire r_HCNT 16
(declare-fun |VGA_controller#7| (|VGA_controller_s|) (_ BitVec 16)) ; \r_HCNT
(define-fun |VGA_controller_n r_HCNT| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#7| state))
; yosys-smt2-output o_Y_COORD 16
; yosys-smt2-wire o_Y_COORD 16
(define-fun |VGA_controller_n o_Y_COORD| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#1| state))
; yosys-smt2-output o_X_COORD 16
; yosys-smt2-wire o_X_COORD 16
(define-fun |VGA_controller_n o_X_COORD| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#2| state))
; yosys-smt2-output o_VSYNC 1
; yosys-smt2-wire o_VSYNC 1
(define-fun |VGA_controller_n o_VSYNC| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#3| state)) #b1))
; yosys-smt2-output o_VDE 1
; yosys-smt2-wire o_VDE 1
(define-fun |VGA_controller_n o_VDE| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#4| state)) #b1))
; yosys-smt2-output o_HSYNC 1
; yosys-smt2-wire o_HSYNC 1
(define-fun |VGA_controller_n o_HSYNC| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#6| state)) #b1))
; yosys-smt2-input i_VERTICAL_SYNC_WIDTH 16
; yosys-smt2-wire i_VERTICAL_SYNC_WIDTH 16
(declare-fun |VGA_controller#8| (|VGA_controller_s|) (_ BitVec 16)) ; \i_VERTICAL_SYNC_WIDTH
(define-fun |VGA_controller_n i_VERTICAL_SYNC_WIDTH| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#8| state))
; yosys-smt2-input i_VERTICAL_FRONT_PORCH 16
; yosys-smt2-wire i_VERTICAL_FRONT_PORCH 16
(declare-fun |VGA_controller#9| (|VGA_controller_s|) (_ BitVec 16)) ; \i_VERTICAL_FRONT_PORCH
(define-fun |VGA_controller_n i_VERTICAL_FRONT_PORCH| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#9| state))
; yosys-smt2-input i_VA_END 16
; yosys-smt2-wire i_VA_END 16
(declare-fun |VGA_controller#10| (|VGA_controller_s|) (_ BitVec 16)) ; \i_VA_END
(define-fun |VGA_controller_n i_VA_END| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#10| state))
; yosys-smt2-input i_RSTN 1
; yosys-smt2-wire i_RSTN 1
(declare-fun |VGA_controller#11| (|VGA_controller_s|) Bool) ; \i_RSTN
(define-fun |VGA_controller_n i_RSTN| ((state |VGA_controller_s|)) Bool (|VGA_controller#11| state))
; yosys-smt2-input i_HORIZONTAL_SYNC_WIDTH 16
; yosys-smt2-wire i_HORIZONTAL_SYNC_WIDTH 16
(declare-fun |VGA_controller#12| (|VGA_controller_s|) (_ BitVec 16)) ; \i_HORIZONTAL_SYNC_WIDTH
(define-fun |VGA_controller_n i_HORIZONTAL_SYNC_WIDTH| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#12| state))
; yosys-smt2-input i_HORIZONTAL_FRONT_PORCH 16
; yosys-smt2-wire i_HORIZONTAL_FRONT_PORCH 16
(declare-fun |VGA_controller#13| (|VGA_controller_s|) (_ BitVec 16)) ; \i_HORIZONTAL_FRONT_PORCH
(define-fun |VGA_controller_n i_HORIZONTAL_FRONT_PORCH| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#13| state))
; yosys-smt2-input i_HA_END 16
; yosys-smt2-wire i_HA_END 16
(declare-fun |VGA_controller#14| (|VGA_controller_s|) (_ BitVec 16)) ; \i_HA_END
(define-fun |VGA_controller_n i_HA_END| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#14| state))
; yosys-smt2-input i_END_OF_SCREEN 16
; yosys-smt2-wire i_END_OF_SCREEN 16
(declare-fun |VGA_controller#15| (|VGA_controller_s|) (_ BitVec 16)) ; \i_END_OF_SCREEN
(define-fun |VGA_controller_n i_END_OF_SCREEN| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#15| state))
; yosys-smt2-input i_END_OF_LINE 16
; yosys-smt2-wire i_END_OF_LINE 16
(declare-fun |VGA_controller#16| (|VGA_controller_s|) (_ BitVec 16)) ; \i_END_OF_LINE
(define-fun |VGA_controller_n i_END_OF_LINE| ((state |VGA_controller_s|)) (_ BitVec 16) (|VGA_controller#16| state))
; yosys-smt2-input i_CLK 1
; yosys-smt2-wire i_CLK 1
(define-fun |VGA_controller_n i_CLK| ((state |VGA_controller_s|)) Bool (|VGA_controller#0| state))
; yosys-smt2-register $formal$VGA_controller.v:168$15_EN 1
(declare-fun |VGA_controller#17| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:168$15_EN
(define-fun |VGA_controller_n $formal$VGA_controller.v:168$15_EN| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#17| state)) #b1))
; yosys-smt2-register $formal$VGA_controller.v:168$15_CHECK 1
(declare-fun |VGA_controller#18| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:168$15_CHECK
(define-fun |VGA_controller_n $formal$VGA_controller.v:168$15_CHECK| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#18| state)) #b1))
; yosys-smt2-register $formal$VGA_controller.v:166$14_EN 1
(declare-fun |VGA_controller#19| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:166$14_EN
(define-fun |VGA_controller_n $formal$VGA_controller.v:166$14_EN| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#19| state)) #b1))
; yosys-smt2-register $formal$VGA_controller.v:166$14_CHECK 1
(declare-fun |VGA_controller#20| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:166$14_CHECK
(define-fun |VGA_controller_n $formal$VGA_controller.v:166$14_CHECK| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#20| state)) #b1))
; yosys-smt2-register $formal$VGA_controller.v:164$13_EN 1
(declare-fun |VGA_controller#21| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:164$13_EN
(define-fun |VGA_controller_n $formal$VGA_controller.v:164$13_EN| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#21| state)) #b1))
; yosys-smt2-register $formal$VGA_controller.v:164$13_CHECK 1
(declare-fun |VGA_controller#22| (|VGA_controller_s|) (_ BitVec 1)) ; $formal$VGA_controller.v:164$13_CHECK
(define-fun |VGA_controller_n $formal$VGA_controller.v:164$13_CHECK| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#22| state)) #b1))
; yosys-smt2-register $and$VGA_controller.v:161$98_Y 1
(declare-fun |VGA_controller#23| (|VGA_controller_s|) (_ BitVec 1)) ; $and$VGA_controller.v:161$98_Y
(define-fun |VGA_controller_n $and$VGA_controller.v:161$98_Y| ((state |VGA_controller_s|)) Bool (= ((_ extract 0 0) (|VGA_controller#23| state)) #b1))
; yosys-smt2-assert 0 VDE
(define-fun |VGA_controller_a 0| ((state |VGA_controller_s|)) Bool (or (= ((_ extract 0 0) (|VGA_controller#22| state)) #b1) (not (= ((_ extract 0 0) (|VGA_controller#21| state)) #b1)))) ; VDE
(define-fun |VGA_controller#24| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#8| state) #b0000000000000010)) ; $0$formal$VGA_controller.v:159$12_CHECK[0:0]$79
; yosys-smt2-assume 0 VGA_controller.v:159
(define-fun |VGA_controller_u 0| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#24| state) (not true))) ; $assume$VGA_controller.v:159$130
(define-fun |VGA_controller#25| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#9| state) #b0000000000001010)) ; $0$formal$VGA_controller.v:158$11_CHECK[0:0]$77
; yosys-smt2-assume 1 VGA_controller.v:158
(define-fun |VGA_controller_u 1| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#25| state) (not true))) ; $assume$VGA_controller.v:158$129
(define-fun |VGA_controller#26| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#12| state) #b0000000001100000)) ; $0$formal$VGA_controller.v:157$10_CHECK[0:0]$75
; yosys-smt2-assume 2 VGA_controller.v:157
(define-fun |VGA_controller_u 2| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#26| state) (not true))) ; $assume$VGA_controller.v:157$128
(define-fun |VGA_controller#27| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#13| state) #b0000000000010000)) ; $0$formal$VGA_controller.v:156$9_CHECK[0:0]$73
; yosys-smt2-assume 3 VGA_controller.v:156
(define-fun |VGA_controller_u 3| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#27| state) (not true))) ; $assume$VGA_controller.v:156$127
(define-fun |VGA_controller#28| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#10| state) #b0000000111100000)) ; $0$formal$VGA_controller.v:155$8_CHECK[0:0]$71
; yosys-smt2-assume 4 VGA_controller.v:155
(define-fun |VGA_controller_u 4| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#28| state) (not true))) ; $assume$VGA_controller.v:155$126
(define-fun |VGA_controller#29| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#14| state) #b0000001010000000)) ; $0$formal$VGA_controller.v:154$7_CHECK[0:0]$69
; yosys-smt2-assume 5 VGA_controller.v:154
(define-fun |VGA_controller_u 5| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#29| state) (not true))) ; $assume$VGA_controller.v:154$125
(define-fun |VGA_controller#30| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#15| state) #b0000001000001101)) ; $0$formal$VGA_controller.v:153$6_CHECK[0:0]$67
; yosys-smt2-assume 6 VGA_controller.v:153
(define-fun |VGA_controller_u 6| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#30| state) (not true))) ; $assume$VGA_controller.v:153$124
(define-fun |VGA_controller#31| ((state |VGA_controller_s|)) Bool (= (|VGA_controller#16| state) #b0000001100100000)) ; $0$formal$VGA_controller.v:152$5_CHECK[0:0]$65
; yosys-smt2-assume 7 VGA_controller.v:152
(define-fun |VGA_controller_u 7| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#31| state) (not true))) ; $assume$VGA_controller.v:152$123
(define-fun |VGA_controller#32| ((state |VGA_controller_s|)) Bool (distinct (ite (|VGA_controller#0| state) #b1 #b0) (|VGA_controller#23| state))) ; $0$formal$VGA_controller.v:151$4_CHECK[0:0]$63
; yosys-smt2-assume 8 VGA_controller.v:151
(define-fun |VGA_controller_u 8| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#32| state) (not true))) ; $assume$VGA_controller.v:151$122
; yosys-smt2-assume 9 VGA_controller.v:150
(define-fun |VGA_controller_u 9| ((state |VGA_controller_s|)) Bool (or (|VGA_controller#11| state) (not true))) ; $assume$VGA_controller.v:150$121
; yosys-smt2-assert 1 VGA_controller.v:168
(define-fun |VGA_controller_a 1| ((state |VGA_controller_s|)) Bool (or (= ((_ extract 0 0) (|VGA_controller#18| state)) #b1) (not (= ((_ extract 0 0) (|VGA_controller#17| state)) #b1)))) ; $assert$VGA_controller.v:168$132
; yosys-smt2-assert 2 VGA_controller.v:166
(define-fun |VGA_controller_a 2| ((state |VGA_controller_s|)) Bool (or (= ((_ extract 0 0) (|VGA_controller#20| state)) #b1) (not (= ((_ extract 0 0) (|VGA_controller#19| state)) #b1)))) ; $assert$VGA_controller.v:166$131
; yosys-smt2-anyseq VGA_controller#33 1 $auto$setundef.cc:524:execute$261
(declare-fun |VGA_controller#33| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$262
; yosys-smt2-anyseq VGA_controller#34 1 $auto$setundef.cc:524:execute$259
(declare-fun |VGA_controller#34| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$260
(define-fun |VGA_controller#35| ((state |VGA_controller_s|)) Bool (bvule (|VGA_controller#7| state) (|VGA_controller#14| state))) ; $le$VGA_controller.v:139$55_Y
(define-fun |VGA_controller#36| ((state |VGA_controller_s|)) Bool (bvule (|VGA_controller#5| state) (|VGA_controller#10| state))) ; $le$VGA_controller.v:139$56_Y
(define-fun |VGA_controller#37| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#35| state) false) (or  (|VGA_controller#36| state) false))) ; $logic_and$VGA_controller.v:139$57_Y
(define-fun |VGA_controller#38| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#37| state) (|VGA_controller#4| state) (|VGA_controller#34| state))) ; $procmux$175_Y
(define-fun |VGA_controller#39| ((state |VGA_controller_s|)) Bool (not (or  (= ((_ extract 0 0) (|VGA_controller#23| state)) #b1) false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false))) ; $logic_not$VGA_controller.v:161$99_Y
(define-fun |VGA_controller#40| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#39| state) false) (or  (|VGA_controller#0| state) false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false))) ; $logic_and$VGA_controller.v:161$101_Y
(define-fun |VGA_controller#41| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#38| state) (|VGA_controller#33| state))) ; $0$formal$VGA_controller.v:164$13_CHECK[0:0]$81
(define-fun |VGA_controller#42| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#37| state) #b1 #b0)) ; $0\r_VDE[0:0]
(define-fun |VGA_controller#43| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#42| state) #b0)) ; $0$formal$VGA_controller.v:164$13_EN[0:0]$82
; yosys-smt2-anyseq VGA_controller#44 1 $auto$setundef.cc:524:execute$265
(declare-fun |VGA_controller#44| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$266
; yosys-smt2-anyseq VGA_controller#45 1 $auto$setundef.cc:524:execute$263
(declare-fun |VGA_controller#45| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$264
(define-fun |VGA_controller#46| ((state |VGA_controller_s|)) Bool (not (or  (= ((_ extract 0 0) (|VGA_controller#6| state)) #b1) false))) ; $logic_not$VGA_controller.v:166$112_Y
(define-fun |VGA_controller#47| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#14| state) (|VGA_controller#13| state))) ; $add$VGA_controller.v:123$38_Y
(define-fun |VGA_controller#48| ((state |VGA_controller_s|)) Bool (bvuge (|VGA_controller#7| state) (|VGA_controller#47| state))) ; $ge$VGA_controller.v:165$107_Y
(define-fun |VGA_controller#49| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#47| state) (|VGA_controller#12| state))) ; $add$VGA_controller.v:123$41_Y
(define-fun |VGA_controller#50| ((state |VGA_controller_s|)) Bool (bvule (|VGA_controller#7| state) (|VGA_controller#49| state))) ; $le$VGA_controller.v:123$42_Y
(define-fun |VGA_controller#51| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#48| state) false) (or  (|VGA_controller#50| state) false))) ; $logic_and$VGA_controller.v:165$111_Y
(define-fun |VGA_controller#52| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#51| state) (ite (|VGA_controller#46| state) #b1 #b0) (|VGA_controller#45| state))) ; $procmux$183_Y
(define-fun |VGA_controller#53| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#52| state) (|VGA_controller#44| state))) ; $0$formal$VGA_controller.v:166$14_CHECK[0:0]$83
(define-fun |VGA_controller#54| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#51| state) #b1 #b0)) ; $procmux$179_Y
(define-fun |VGA_controller#55| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#54| state) #b0)) ; $0$formal$VGA_controller.v:166$14_EN[0:0]$84
; yosys-smt2-anyseq VGA_controller#56 1 $auto$setundef.cc:524:execute$269
(declare-fun |VGA_controller#56| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$270
; yosys-smt2-anyseq VGA_controller#57 1 $auto$setundef.cc:524:execute$267
(declare-fun |VGA_controller#57| (|VGA_controller_s|) (_ BitVec 1)) ; $auto$rtlil.cc:2318:Anyseq$268
(define-fun |VGA_controller#58| ((state |VGA_controller_s|)) Bool (not (or  (= ((_ extract 0 0) (|VGA_controller#3| state)) #b1) false))) ; $logic_not$VGA_controller.v:168$119_Y
(define-fun |VGA_controller#59| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#10| state) (|VGA_controller#9| state))) ; $add$VGA_controller.v:131$47_Y
(define-fun |VGA_controller#60| ((state |VGA_controller_s|)) Bool (bvuge (|VGA_controller#5| state) (|VGA_controller#59| state))) ; $ge$VGA_controller.v:167$114_Y
(define-fun |VGA_controller#61| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#59| state) (|VGA_controller#8| state))) ; $add$VGA_controller.v:131$50_Y
(define-fun |VGA_controller#62| ((state |VGA_controller_s|)) Bool (bvule (|VGA_controller#5| state) (|VGA_controller#61| state))) ; $le$VGA_controller.v:131$51_Y
(define-fun |VGA_controller#63| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#60| state) false) (or  (|VGA_controller#62| state) false))) ; $logic_and$VGA_controller.v:167$118_Y
(define-fun |VGA_controller#64| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#63| state) (ite (|VGA_controller#58| state) #b1 #b0) (|VGA_controller#57| state))) ; $procmux$191_Y
(define-fun |VGA_controller#65| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#64| state) (|VGA_controller#56| state))) ; $0$formal$VGA_controller.v:168$15_CHECK[0:0]$85
(define-fun |VGA_controller#66| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#63| state) #b1 #b0)) ; $procmux$187_Y
(define-fun |VGA_controller#67| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#40| state) (|VGA_controller#66| state) #b0)) ; $0$formal$VGA_controller.v:168$15_EN[0:0]$86
(define-fun |VGA_controller#68| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#7| state) #b0000000000000001)) ; $add$VGA_controller.v:102$27_Y
(define-fun |VGA_controller#69| ((state |VGA_controller_s|)) Bool (not (or  (|VGA_controller#11| state) false))) ; $logic_not$VGA_controller.v:108$29_Y
(define-fun |VGA_controller#70| ((state |VGA_controller_s|)) (_ BitVec 17) (bvsub (concat #b0 (|VGA_controller#16| state)) #b00000000000000001)) ; { $sub$VGA_controller.v:111$33_Y [31] $sub$VGA_controller.v:111$33_Y [15:0] }
(define-fun |VGA_controller#71| ((state |VGA_controller_s|)) Bool (= (concat #b0000000000000000 (|VGA_controller#7| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (concat ((_ extract 16 16) (|VGA_controller#70| state)) (|VGA_controller#70| state)))))))))))))))))) ; $eq$VGA_controller.v:111$34_Y
(define-fun |VGA_controller#72| ((state |VGA_controller_s|)) Bool (or  (|VGA_controller#69| state) false  (|VGA_controller#71| state) false)) ; $logic_or$VGA_controller.v:97$26_Y
(define-fun |VGA_controller#73| ((state |VGA_controller_s|)) (_ BitVec 16) (ite (|VGA_controller#72| state) #b0000000000000000 (|VGA_controller#68| state))) ; $0\r_HCNT[15:0]
(define-fun |VGA_controller#74| ((state |VGA_controller_s|)) Bool (bvugt (|VGA_controller#7| state) (|VGA_controller#47| state))) ; $gt$VGA_controller.v:123$39_Y
(define-fun |VGA_controller#75| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#74| state) false) (or  (|VGA_controller#50| state) false))) ; $logic_and$VGA_controller.v:123$43_Y
(define-fun |VGA_controller#76| ((state |VGA_controller_s|)) Bool (or  (|VGA_controller#69| state) false  (|VGA_controller#75| state) false)) ; $logic_or$VGA_controller.v:123$44_Y
(define-fun |VGA_controller#77| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#76| state) #b0 #b1)) ; $0\r_HSYNC[0:0]
(define-fun |VGA_controller#78| ((state |VGA_controller_s|)) (_ BitVec 16) (bvadd (|VGA_controller#5| state) #b0000000000000001)) ; $add$VGA_controller.v:113$35_Y
(define-fun |VGA_controller#79| ((state |VGA_controller_s|)) (_ BitVec 16) (ite (|VGA_controller#71| state) (|VGA_controller#78| state) (|VGA_controller#5| state))) ; $procmux$205_Y
(define-fun |VGA_controller#80| ((state |VGA_controller_s|)) (_ BitVec 17) (bvsub (concat #b0 (|VGA_controller#15| state)) #b00000000000000001)) ; { $sub$VGA_controller.v:108$30_Y [31] $sub$VGA_controller.v:108$30_Y [15:0] }
(define-fun |VGA_controller#81| ((state |VGA_controller_s|)) Bool (= (concat #b0000000000000000 (|VGA_controller#5| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (concat ((_ extract 16 16) (|VGA_controller#80| state)) (|VGA_controller#80| state)))))))))))))))))) ; $eq$VGA_controller.v:108$31_Y
(define-fun |VGA_controller#82| ((state |VGA_controller_s|)) Bool (or  (|VGA_controller#69| state) false  (|VGA_controller#81| state) false)) ; $logic_or$VGA_controller.v:108$32_Y
(define-fun |VGA_controller#83| ((state |VGA_controller_s|)) (_ BitVec 16) (ite (|VGA_controller#82| state) #b0000000000000000 (|VGA_controller#79| state))) ; $0\r_VCNT[15:0]
(define-fun |VGA_controller#84| ((state |VGA_controller_s|)) Bool (bvugt (|VGA_controller#5| state) (|VGA_controller#59| state))) ; $gt$VGA_controller.v:131$48_Y
(define-fun |VGA_controller#85| ((state |VGA_controller_s|)) Bool (and (or  (|VGA_controller#84| state) false) (or  (|VGA_controller#62| state) false))) ; $logic_and$VGA_controller.v:131$52_Y
(define-fun |VGA_controller#86| ((state |VGA_controller_s|)) Bool (or  (|VGA_controller#69| state) false  (|VGA_controller#85| state) false)) ; $logic_or$VGA_controller.v:131$53_Y
(define-fun |VGA_controller#87| ((state |VGA_controller_s|)) (_ BitVec 1) (ite (|VGA_controller#86| state) #b0 #b1)) ; $0\r_VSYNC[0:0]
(define-fun |VGA_controller#88| ((state |VGA_controller_s|)) Bool (bvult (|VGA_controller#7| state) (|VGA_controller#14| state))) ; $lt$VGA_controller.v:79$18_Y
(define-fun |VGA_controller#89| ((state |VGA_controller_s|)) (_ BitVec 16) (ite (|VGA_controller#88| state) (|VGA_controller#7| state) #b0000000000000000)) ; $0\r_X_COORD[15:0]
(define-fun |VGA_controller#90| ((state |VGA_controller_s|)) (_ BitVec 16) (bvsub (|VGA_controller#10| state) #b0000000000000001)) ; $sub$VGA_controller.v:90$21_Y
(define-fun |VGA_controller#91| ((state |VGA_controller_s|)) Bool (bvuge (|VGA_controller#5| state) (|VGA_controller#10| state))) ; $ge$VGA_controller.v:89$20_Y
(define-fun |VGA_controller#92| ((state |VGA_controller_s|)) (_ BitVec 16) (ite (|VGA_controller#91| state) (|VGA_controller#90| state) (|VGA_controller#5| state))) ; $0\r_Y_COORD[15:0]
(define-fun |VGA_controller_a| ((state |VGA_controller_s|)) Bool (and
  (|VGA_controller_a 0| state)
  (|VGA_controller_a 1| state)
  (|VGA_controller_a 2| state)
))
(define-fun |VGA_controller_u| ((state |VGA_controller_s|)) Bool (and
  (|VGA_controller_u 0| state)
  (|VGA_controller_u 1| state)
  (|VGA_controller_u 2| state)
  (|VGA_controller_u 3| state)
  (|VGA_controller_u 4| state)
  (|VGA_controller_u 5| state)
  (|VGA_controller_u 6| state)
  (|VGA_controller_u 7| state)
  (|VGA_controller_u 8| state)
  (|VGA_controller_u 9| state)
))
(define-fun |VGA_controller_i| ((state |VGA_controller_s|)) Bool (and
  (= (|VGA_controller#1| state) #b0000000000000000) ; r_Y_COORD
  (= (|VGA_controller#2| state) #b0000000000000000) ; r_X_COORD
  (= (= ((_ extract 0 0) (|VGA_controller#3| state)) #b1) false) ; r_VSYNC
  (= (= ((_ extract 0 0) (|VGA_controller#4| state)) #b1) false) ; r_VDE
  (= (|VGA_controller#5| state) #b0000000000000000) ; r_VCNT
  (= (= ((_ extract 0 0) (|VGA_controller#6| state)) #b1) false) ; r_HSYNC
  (= (|VGA_controller#7| state) #b0000000000000000) ; r_HCNT
  (= (= ((_ extract 0 0) (|VGA_controller#17| state)) #b1) false) ; $formal$VGA_controller.v:168$15_EN
  (= (= ((_ extract 0 0) (|VGA_controller#19| state)) #b1) false) ; $formal$VGA_controller.v:166$14_EN
  (= (= ((_ extract 0 0) (|VGA_controller#21| state)) #b1) false) ; $formal$VGA_controller.v:164$13_EN
))
(define-fun |VGA_controller_h| ((state |VGA_controller_s|)) Bool true)
(define-fun |VGA_controller_t| ((state |VGA_controller_s|) (next_state |VGA_controller_s|)) Bool (and
  (= (ite (|VGA_controller#0| state) #b1 #b0) (|VGA_controller#23| next_state)) ; $procdff$220 $and$VGA_controller.v:161$98_Y
  (= (|VGA_controller#41| state) (|VGA_controller#22| next_state)) ; $procdff$242 $formal$VGA_controller.v:164$13_CHECK
  (= (|VGA_controller#43| state) (|VGA_controller#21| next_state)) ; $procdff$243 $formal$VGA_controller.v:164$13_EN
  (= (|VGA_controller#53| state) (|VGA_controller#20| next_state)) ; $procdff$244 $formal$VGA_controller.v:166$14_CHECK
  (= (|VGA_controller#55| state) (|VGA_controller#19| next_state)) ; $procdff$245 $formal$VGA_controller.v:166$14_EN
  (= (|VGA_controller#65| state) (|VGA_controller#18| next_state)) ; $procdff$246 $formal$VGA_controller.v:168$15_CHECK
  (= (|VGA_controller#67| state) (|VGA_controller#17| next_state)) ; $procdff$247 $formal$VGA_controller.v:168$15_EN
  (= (|VGA_controller#73| state) (|VGA_controller#7| next_state)) ; $procdff$254 \r_HCNT
  (= (|VGA_controller#77| state) (|VGA_controller#6| next_state)) ; $procdff$252 \r_HSYNC
  (= (|VGA_controller#83| state) (|VGA_controller#5| next_state)) ; $procdff$253 \r_VCNT
  (= (|VGA_controller#42| state) (|VGA_controller#4| next_state)) ; $procdff$250 \r_VDE
  (= (|VGA_controller#87| state) (|VGA_controller#3| next_state)) ; $procdff$251 \r_VSYNC
  (= (|VGA_controller#89| state) (|VGA_controller#2| next_state)) ; $procdff$256 \r_X_COORD
  (= (|VGA_controller#92| state) (|VGA_controller#1| next_state)) ; $procdff$255 \r_Y_COORD
)) ; end of module VGA_controller
; yosys-smt2-topmod VGA_controller
; end of yosys output