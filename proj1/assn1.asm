;=================================================
; Name: Theodore Nguyen
; Email: tnguy223@ucr.edu
; 
; Assignment name: Assignment 1
; Lab section: 01
; 
; I hereby certify that I have not received assistance on this assignment,
; or used code, from ANY outside source other than the instruction team.
;
;=================================================

;---------------------------------------------------------------------------------
;REG VALUES		R0	R1	R2	R3	R4	R5	R6	R7
;---------------------------------------------------------------------------------
;Pre-loop		0	6	12	0	0	0	0	1168
;Iteration 01		0	5	12	12	0	0	0	1168
;Iteration 02		0	4	12	24	0	0	0	1168
;Iteration 03		0	3	12	36	0	0	0	1168
;Iteration 04		0	2	12	48	0	0	0	1168
;Iteration 05		0	1	12	60	0	0	0	1168
;Iteration 06		0	0	12	72	0	0	0	1168
;End of program		0	0	12	72	0	0	0	DEC_0
;--------------------------------




.ORIG x3000			; Program begins here
;-------------
;Instructions
;-------------
	LD R1, DEC_6		; the decimal 6 at memory loctaion DEC_6 is stored into R1 register
	LD R2, DEC_12		; same as latter but for R2 register and decimal 12
	LD R3, DEC_0		; same as latter but for R3 register and decimal 0

	DO_WHILE
		ADD R3,R3,R2
		ADD R1,R1,#-1
		BRp DO_WHILE
	HALT	
;---------------	
;Data
;---------------
	DEC_0	.FILL 	#0
	DEC_6	.FILL	#6
	DEC_12	.FILL	#12



;---------------	
;END of PROGRAM
;---------------	
.END


