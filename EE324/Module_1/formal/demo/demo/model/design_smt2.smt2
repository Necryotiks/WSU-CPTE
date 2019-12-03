; SMT-LIBv2 description generated by Yosys 0.8+694 (git sha1 dc9c47b5, clang 6.0.0-1ubuntu2 -fPIC -Os)
; yosys-smt2-module demo
(declare-sort |demo_s| 0)
(declare-fun |demo_is| (|demo_s|) Bool)
; yosys-smt2-output counter 6
; yosys-smt2-register counter 6
; yosys-smt2-wire counter 6
(declare-fun |demo#0| (|demo_s|) (_ BitVec 6)) ; \counter
(define-fun |demo_n counter| ((state |demo_s|)) (_ BitVec 6) (|demo#0| state))
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(declare-fun |demo#1| (|demo_s|) Bool) ; \clk
(define-fun |demo_n clk| ((state |demo_s|)) Bool (|demo#1| state))
; yosys-smt2-register $formal$demo.sv:16$1_EN 1
(declare-fun |demo#2| (|demo_s|) (_ BitVec 1)) ; $formal$demo.sv:16$1_EN
(define-fun |demo_n $formal$demo.sv:16$1_EN| ((state |demo_s|)) Bool (= ((_ extract 0 0) (|demo#2| state)) #b1))
; yosys-smt2-register $formal$demo.sv:16$1_CHECK 1
(declare-fun |demo#3| (|demo_s|) (_ BitVec 1)) ; $formal$demo.sv:16$1_CHECK
(define-fun |demo_n $formal$demo.sv:16$1_CHECK| ((state |demo_s|)) Bool (= ((_ extract 0 0) (|demo#3| state)) #b1))
; yosys-smt2-assert 0 demo.sv:16
(define-fun |demo_a 0| ((state |demo_s|)) Bool (or (= ((_ extract 0 0) (|demo#3| state)) #b1) (not (= ((_ extract 0 0) (|demo#2| state)) #b1)))) ; $assert$demo.sv:16$9
(define-fun |demo#4| ((state |demo_s|)) Bool (bvult (|demo#0| state) #b100000)) ; $0$formal$demo.sv:16$1_CHECK[0:0]$6
(define-fun |demo#5| ((state |demo_s|)) (_ BitVec 6) (bvadd (|demo#0| state) #b000001)) ; $add$demo.sv:11$4_Y
(define-fun |demo#6| ((state |demo_s|)) Bool (= (|demo#0| state) #b001111)) ; $eq$demo.sv:8$3_Y
(define-fun |demo#7| ((state |demo_s|)) (_ BitVec 6) (ite (|demo#6| state) #b000000 (|demo#5| state))) ; $0\counter[5:0]
(define-fun |demo_a| ((state |demo_s|)) Bool 
  (|demo_a 0| state)
)
(define-fun |demo_u| ((state |demo_s|)) Bool true)
(define-fun |demo_i| ((state |demo_s|)) Bool (and
  (= (|demo#0| state) #b000000) ; counter
  (= (= ((_ extract 0 0) (|demo#2| state)) #b1) false) ; $formal$demo.sv:16$1_EN
))
(define-fun |demo_h| ((state |demo_s|)) Bool true)
(define-fun |demo_t| ((state |demo_s|) (next_state |demo_s|)) Bool (and
  (= (ite (|demo#4| state) #b1 #b0) (|demo#3| next_state)) ; $procdff$16 $formal$demo.sv:16$1_CHECK
  (= #b1 (|demo#2| next_state)) ; $procdff$17 $formal$demo.sv:16$1_EN
  (= (|demo#7| state) (|demo#0| next_state)) ; $procdff$18 \counter
)) ; end of module demo
; yosys-smt2-topmod demo
; end of yosys output