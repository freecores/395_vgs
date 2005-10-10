;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler and Linker - http://www.picant.com/c2c/c.html
;// License Type  : Lite License (Unregistered)
;// Limitations   : PIC18 max code size:8192 bytes, max RAM banks:2, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F452.inc"
__HEAPSTART                      EQU	0x000000AE ; Start address of heap 
__HEAPEND                        EQU	0x000001FF ; End address of heap 
gbl_porta                        EQU	0x00000F80 ; bytes:1
gbl_portb                        EQU	0x00000F81 ; bytes:1
gbl_portc                        EQU	0x00000F82 ; bytes:1
gbl_portd                        EQU	0x00000F83 ; bytes:1
gbl_porte                        EQU	0x00000F84 ; bytes:1
gbl_lata                         EQU	0x00000F89 ; bytes:1
gbl_latb                         EQU	0x00000F8A ; bytes:1
gbl_latc                         EQU	0x00000F8B ; bytes:1
gbl_latd                         EQU	0x00000F8C ; bytes:1
gbl_late                         EQU	0x00000F8D ; bytes:1
gbl_trisa                        EQU	0x00000F92 ; bytes:1
gbl_trisb                        EQU	0x00000F93 ; bytes:1
gbl_trisc                        EQU	0x00000F94 ; bytes:1
gbl_trisd                        EQU	0x00000F95 ; bytes:1
gbl_trise                        EQU	0x00000F96 ; bytes:1
gbl_pie1                         EQU	0x00000F9D ; bytes:1
gbl_pir1                         EQU	0x00000F9E ; bytes:1
gbl_ipr1                         EQU	0x00000F9F ; bytes:1
gbl_pie2                         EQU	0x00000FA0 ; bytes:1
gbl_pir2                         EQU	0x00000FA1 ; bytes:1
gbl_ipr2                         EQU	0x00000FA2 ; bytes:1
gbl_eecon1                       EQU	0x00000FA6 ; bytes:1
gbl_eecon2                       EQU	0x00000FA7 ; bytes:1
gbl_eedata                       EQU	0x00000FA8 ; bytes:1
gbl_eeadr                        EQU	0x00000FA9 ; bytes:1
gbl_rcsta                        EQU	0x00000FAB ; bytes:1
gbl_txsta                        EQU	0x00000FAC ; bytes:1
gbl_txreg                        EQU	0x00000FAD ; bytes:1
gbl_rcreg                        EQU	0x00000FAE ; bytes:1
gbl_spbrg                        EQU	0x00000FAF ; bytes:1
gbl_t3con                        EQU	0x00000FB1 ; bytes:1
gbl_tmr3l                        EQU	0x00000FB2 ; bytes:1
gbl_tmr3h                        EQU	0x00000FB3 ; bytes:1
gbl_ccp2con                      EQU	0x00000FBA ; bytes:1
gbl_ccpr2l                       EQU	0x00000FBB ; bytes:1
gbl_ccpr2h                       EQU	0x00000FBC ; bytes:1
gbl_ccp1con                      EQU	0x00000FBD ; bytes:1
gbl_ccpr1l                       EQU	0x00000FBE ; bytes:1
gbl_ccpr1h                       EQU	0x00000FBF ; bytes:1
gbl_adcon1                       EQU	0x00000FC1 ; bytes:1
gbl_adcon0                       EQU	0x00000FC2 ; bytes:1
gbl_adresl                       EQU	0x00000FC3 ; bytes:1
gbl_adresh                       EQU	0x00000FC4 ; bytes:1
gbl_sspcon2                      EQU	0x00000FC5 ; bytes:1
gbl_sspcon1                      EQU	0x00000FC6 ; bytes:1
gbl_sspstat                      EQU	0x00000FC7 ; bytes:1
gbl_sspadd                       EQU	0x00000FC8 ; bytes:1
gbl_sspbuf                       EQU	0x00000FC9 ; bytes:1
gbl_t2con                        EQU	0x00000FCA ; bytes:1
gbl_pr2                          EQU	0x00000FCB ; bytes:1
gbl_tmr2                         EQU	0x00000FCC ; bytes:1
gbl_t1con                        EQU	0x00000FCD ; bytes:1
gbl_tmr1l                        EQU	0x00000FCE ; bytes:1
gbl_tmr1h                        EQU	0x00000FCF ; bytes:1
gbl_rcon                         EQU	0x00000FD0 ; bytes:1
gbl_wdtcon                       EQU	0x00000FD1 ; bytes:1
gbl_lvdcon                       EQU	0x00000FD2 ; bytes:1
gbl_osccon                       EQU	0x00000FD3 ; bytes:1
gbl_t0con                        EQU	0x00000FD5 ; bytes:1
gbl_tmr0l                        EQU	0x00000FD6 ; bytes:1
gbl_tmr0h                        EQU	0x00000FD7 ; bytes:1
gbl_status                       EQU	0x00000FD8 ; bytes:1
gbl_fsr2l                        EQU	0x00000FD9 ; bytes:1
gbl_fsr2h                        EQU	0x00000FDA ; bytes:1
gbl_plusw2                       EQU	0x00000FDB ; bytes:1
gbl_preinc2                      EQU	0x00000FDC ; bytes:1
gbl_postdec2                     EQU	0x00000FDD ; bytes:1
gbl_postinc2                     EQU	0x00000FDE ; bytes:1
gbl_indf2                        EQU	0x00000FDF ; bytes:1
gbl_bsr                          EQU	0x00000FE0 ; bytes:1
gbl_fsr1l                        EQU	0x00000FE1 ; bytes:1
gbl_fsr1h                        EQU	0x00000FE2 ; bytes:1
gbl_plusw1                       EQU	0x00000FE3 ; bytes:1
gbl_preinc1                      EQU	0x00000FE4 ; bytes:1
gbl_postdec1                     EQU	0x00000FE5 ; bytes:1
gbl_postinc1                     EQU	0x00000FE6 ; bytes:1
gbl_indf1                        EQU	0x00000FE7 ; bytes:1
gbl_wreg                         EQU	0x00000FE8 ; bytes:1
gbl_fsr0l                        EQU	0x00000FE9 ; bytes:1
gbl_fsr0h                        EQU	0x00000FEA ; bytes:1
gbl_plusw0                       EQU	0x00000FEB ; bytes:1
gbl_preinc0                      EQU	0x00000FEC ; bytes:1
gbl_postdec0                     EQU	0x00000FED ; bytes:1
gbl_postinc0                     EQU	0x00000FEE ; bytes:1
gbl_indf0                        EQU	0x00000FEF ; bytes:1
gbl_intcon3                      EQU	0x00000FF0 ; bytes:1
gbl_intcon2                      EQU	0x00000FF1 ; bytes:1
gbl_intcon                       EQU	0x00000FF2 ; bytes:1
gbl_prodl                        EQU	0x00000FF3 ; bytes:1
gbl_prodh                        EQU	0x00000FF4 ; bytes:1
gbl_tablat                       EQU	0x00000FF5 ; bytes:1
gbl_tblptrl                      EQU	0x00000FF6 ; bytes:1
gbl_tblptrh                      EQU	0x00000FF7 ; bytes:1
gbl_tblptru                      EQU	0x00000FF8 ; bytes:1
gbl_pcl                          EQU	0x00000FF9 ; bytes:1
gbl_pclath                       EQU	0x00000FFA ; bytes:1
gbl_pclatu                       EQU	0x00000FFB ; bytes:1
gbl_stkptr                       EQU	0x00000FFC ; bytes:1
gbl_tosl                         EQU	0x00000FFD ; bytes:1
gbl_tosh                         EQU	0x00000FFE ; bytes:1
gbl_tosu                         EQU	0x00000FFF ; bytes:1
drawtoback_00007_arg_source      EQU	0x00000091 ; bytes:8
drawsprite_00000_arg_sprite      EQU	0x00000091 ; bytes:17
drawsprite_00000_1_destina_0000D EQU	0x0000007C ; bytes:4
load_alpha_00008_arg_alphaOp     EQU	0x000000AA ; bit:0
load_l_siz_00009_arg_size        EQU	0x000000AA ; bytes:2
load_s_lin_0000A_arg_lines       EQU	0x000000AA ; bytes:2
load_t_add_0000B_arg_address     EQU	0x000000AA ; bytes:4
load_s_add_0000C_arg_address     EQU	0x000000AA ; bytes:4
main_1_i                         EQU	0x00000004 ; bytes:1
main_1_j                         EQU	0x00000005 ; bytes:1
main_12_neogeo                   EQU	0x00000006 ; bytes:8
main_12_black                    EQU	0x0000000E ; bytes:8
main_12_near_future              EQU	0x00000016 ; bytes:17
main_12_eye_anim                 EQU	0x00000027 ; bytes:17
main_12_eye_mask                 EQU	0x00000038 ; bytes:17
main_12_compass                  EQU	0x00000049 ; bytes:17
main_12_lines                    EQU	0x0000005A ; bytes:17
main_12_bars                     EQU	0x0000006B ; bytes:17
main_12_outline                  EQU	0x00000080 ; bytes:17
__mul_32_3_00006_arg_a           EQU	0x000000A2 ; bytes:4
__mul_32_3_00006_arg_b           EQU	0x000000A6 ; bytes:4
delay_ms_00000_arg_del           EQU	0x0000007D ; bytes:1
delay_s_00000_arg_del            EQU	0x0000007C ; bytes:1
CompTempVarRet0                  EQU	0x00000000 ; bytes:4
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label4026531859
	RETURN
label4026531859
	MOVLW 0xFF
label4026531860
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label4026531860
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label4026531859
	RETURN
; } delay_ms function end

	ORG 0x0000007C
delay_s_00000
; { delay_s ; function begin
label4026531865
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F
	BRA	label4026531865
	RETURN
; } delay_s function end

	ORG 0x000000A2
__mul_32_3_00006
; { __mul_32_32 ; function begin
	CLRF CompTempVarRet0
	CLRF CompTempVarRet0+D'1'
	CLRF CompTempVarRet0+D'2'
	CLRF CompTempVarRet0+D'3'
	CLRF CompTempVarRet0+D'2'
	CLRF CompTempVarRet0+D'3'
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	MOVWF CompTempVarRet0
	MOVF gbl_prodh, W
	MOVWF CompTempVarRet0+D'1'
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'1', F
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet0+D'2', F
	BTFSC gbl_status,0
	INCF CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a+D'2', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'2', F
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a+D'3', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'1', F
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet0+D'2', F
	BTFSC gbl_status,0
	INCF CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'2', F
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a+D'2', W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'2', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'2', F
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b+D'2', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'3', F
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'3', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet0+D'3', F
	RETURN
; } __mul_32_32 function end

	ORG 0x00000120
draw_00000
; { draw ; function begin
	MOVLW 0x02
	MOVWF gbl_porta
	CLRF gbl_porta
label268435815
	BTFSS gbl_portc,7
	BRA	label268435815
	RETURN
; } draw function end

	ORG 0x0000012C
load_s_add_0000C
; { load_s_addr ; function begin
	MOVLW 0x02
	MOVWF gbl_portc
	MOVF load_s_add_0000C_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_s_add_0000C_arg_address+D'1', W, 1
	MOVWF load_s_add_0000C_arg_address, 1
	MOVF load_s_add_0000C_arg_address+D'2', W, 1
	MOVWF load_s_add_0000C_arg_address+D'1', 1
	MOVF load_s_add_0000C_arg_address+D'3', W, 1
	MOVWF load_s_add_0000C_arg_address+D'2', 1
	CLRF load_s_add_0000C_arg_address+D'3', 1
	MOVLW 0x01
	MOVWF gbl_portc
	MOVF load_s_add_0000C_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_s_add_0000C_arg_address+D'1', W, 1
	MOVWF load_s_add_0000C_arg_address, 1
	MOVF load_s_add_0000C_arg_address+D'2', W, 1
	MOVWF load_s_add_0000C_arg_address+D'1', 1
	MOVF load_s_add_0000C_arg_address+D'3', W, 1
	MOVWF load_s_add_0000C_arg_address+D'2', 1
	CLRF load_s_add_0000C_arg_address+D'3', 1
	CLRF gbl_portc
	MOVF load_s_add_0000C_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	RETURN
; } load_s_addr function end

	ORG 0x00000178
load_t_add_0000B
; { load_t_addr ; function begin
	MOVLW 0x05
	MOVWF gbl_portc
	MOVF load_t_add_0000B_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_t_add_0000B_arg_address+D'1', W, 1
	MOVWF load_t_add_0000B_arg_address, 1
	MOVF load_t_add_0000B_arg_address+D'2', W, 1
	MOVWF load_t_add_0000B_arg_address+D'1', 1
	MOVF load_t_add_0000B_arg_address+D'3', W, 1
	MOVWF load_t_add_0000B_arg_address+D'2', 1
	CLRF load_t_add_0000B_arg_address+D'3', 1
	MOVLW 0x04
	MOVWF gbl_portc
	MOVF load_t_add_0000B_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_t_add_0000B_arg_address+D'1', W, 1
	MOVWF load_t_add_0000B_arg_address, 1
	MOVF load_t_add_0000B_arg_address+D'2', W, 1
	MOVWF load_t_add_0000B_arg_address+D'1', 1
	MOVF load_t_add_0000B_arg_address+D'3', W, 1
	MOVWF load_t_add_0000B_arg_address+D'2', 1
	CLRF load_t_add_0000B_arg_address+D'3', 1
	MOVLW 0x03
	MOVWF gbl_portc
	MOVF load_t_add_0000B_arg_address, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	RETURN
; } load_t_addr function end

	ORG 0x000001C6
load_s_lin_0000A
; { load_s_lines ; function begin
	MOVLW 0x07
	MOVWF gbl_portc
	MOVF load_s_lin_0000A_arg_lines, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_s_lin_0000A_arg_lines+D'1', W, 1
	MOVWF load_s_lin_0000A_arg_lines, 1
	CLRF load_s_lin_0000A_arg_lines+D'1', 1
	MOVLW 0x06
	MOVWF gbl_portc
	MOVF load_s_lin_0000A_arg_lines, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	RETURN
; } load_s_lines function end

	ORG 0x000001EE
load_l_siz_00009
; { load_l_size ; function begin
	MOVLW 0x09
	MOVWF gbl_portc
	MOVF load_l_siz_00009_arg_size, W, 1
	ANDLW 0xFF
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	MOVF load_l_siz_00009_arg_size+D'1', W, 1
	MOVWF load_l_siz_00009_arg_size, 1
	CLRF load_l_siz_00009_arg_size+D'1', 1
	MOVLW 0x08
	MOVWF gbl_portc
	MOVF load_l_siz_00009_arg_size, W, 1
	ANDLW 0x0F
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	RETURN
; } load_l_size function end

	ORG 0x00000216
load_alpha_00008
; { load_alphaOp ; function begin
	MOVLW 0x0A
	MOVWF gbl_portc
	BTFSS load_alpha_00008_arg_alphaOp,0, 1
	BRA	label268435755
	MOVLW 0x01
	MOVWF gbl_portb
	BRA	label268435758
label268435755
	CLRF gbl_portb
label268435758
	MOVLW 0x01
	MOVWF gbl_porta
	CLRF gbl_porta
	RETURN
; } load_alphaOp function end

	ORG 0x0000022E
drawsprite_00000
; { drawsprite ; function begin
	MOVF drawsprite_00000_arg_sprite+D'12', W, 1
	MOVWF __mul_32_3_00006_arg_a, 1
	MOVF drawsprite_00000_arg_sprite+D'13', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'1', 1
	MOVF drawsprite_00000_arg_sprite+D'14', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'2', 1
	MOVF drawsprite_00000_arg_sprite+D'15', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'3', 1
	MOVLW 0xA0
	MOVWF __mul_32_3_00006_arg_b, 1
	CLRF __mul_32_3_00006_arg_b+D'1', 1
	CLRF __mul_32_3_00006_arg_b+D'2', 1
	CLRF __mul_32_3_00006_arg_b+D'3', 1
	CALL __mul_32_3_00006
	MOVF CompTempVarRet0, W
	MOVWF drawsprite_00000_1_destina_0000D
	MOVF CompTempVarRet0+D'1', W
	MOVWF drawsprite_00000_1_destina_0000D+D'1'
	MOVF CompTempVarRet0+D'2', W
	MOVWF drawsprite_00000_1_destina_0000D+D'2'
	MOVF CompTempVarRet0+D'3', W
	MOVWF drawsprite_00000_1_destina_0000D+D'3'
	MOVF drawsprite_00000_arg_sprite+D'8', W, 1
	ADDWF drawsprite_00000_1_destina_0000D, F
	MOVF drawsprite_00000_arg_sprite+D'9', W, 1
	ADDWFC drawsprite_00000_1_destina_0000D+D'1', F
	MOVF drawsprite_00000_arg_sprite+D'10', W, 1
	ADDWFC drawsprite_00000_1_destina_0000D+D'2', F
	MOVF drawsprite_00000_arg_sprite+D'11', W, 1
	ADDWFC drawsprite_00000_1_destina_0000D+D'3', F
	MOVF drawsprite_00000_1_destina_0000D, W
	MOVWF load_t_add_0000B_arg_address, 1
	MOVF drawsprite_00000_1_destina_0000D+D'1', W
	MOVWF load_t_add_0000B_arg_address+D'1', 1
	MOVF drawsprite_00000_1_destina_0000D+D'2', W
	MOVWF load_t_add_0000B_arg_address+D'2', 1
	MOVF drawsprite_00000_1_destina_0000D+D'3', W
	MOVWF load_t_add_0000B_arg_address+D'3', 1
	CALL load_t_add_0000B
	MOVF drawsprite_00000_arg_sprite, W, 1
	MOVWF load_s_add_0000C_arg_address, 1
	MOVF drawsprite_00000_arg_sprite+D'1', W, 1
	MOVWF load_s_add_0000C_arg_address+D'1', 1
	MOVF drawsprite_00000_arg_sprite+D'2', W, 1
	MOVWF load_s_add_0000C_arg_address+D'2', 1
	MOVF drawsprite_00000_arg_sprite+D'3', W, 1
	MOVWF load_s_add_0000C_arg_address+D'3', 1
	CALL load_s_add_0000C
	MOVF drawsprite_00000_arg_sprite+D'6', W, 1
	MOVWF load_s_lin_0000A_arg_lines, 1
	MOVF drawsprite_00000_arg_sprite+D'7', W, 1
	MOVWF load_s_lin_0000A_arg_lines+D'1', 1
	CALL load_s_lin_0000A
	MOVF drawsprite_00000_arg_sprite+D'4', W, 1
	MOVWF load_l_siz_00009_arg_size, 1
	MOVF drawsprite_00000_arg_sprite+D'5', W, 1
	MOVWF load_l_siz_00009_arg_size+D'1', 1
	CALL load_l_siz_00009
	MOVF drawsprite_00000_arg_sprite+D'16', F, 1
	BZ	label268435740
	BSF load_alpha_00008_arg_alphaOp,0, 1
	CALL load_alpha_00008
	BRA	label268435746
label268435740
	BCF load_alpha_00008_arg_alphaOp,0, 1
	CALL load_alpha_00008
label268435746
	CALL draw_00000
	RETURN
; } drawsprite function end

	ORG 0x000002C4
drawtoback_00007
; { drawtobackground ; function begin
	CLRF load_t_add_0000B_arg_address, 1
	CLRF load_t_add_0000B_arg_address+D'1', 1
	CLRF load_t_add_0000B_arg_address+D'2', 1
	CLRF load_t_add_0000B_arg_address+D'3', 1
	CALL load_t_add_0000B
	MOVF drawtoback_00007_arg_source, W, 1
	MOVWF load_s_add_0000C_arg_address, 1
	MOVF drawtoback_00007_arg_source+D'1', W, 1
	MOVWF load_s_add_0000C_arg_address+D'1', 1
	MOVF drawtoback_00007_arg_source+D'2', W, 1
	MOVWF load_s_add_0000C_arg_address+D'2', 1
	MOVF drawtoback_00007_arg_source+D'3', W, 1
	MOVWF load_s_add_0000C_arg_address+D'3', 1
	CALL load_s_add_0000C
	MOVF drawtoback_00007_arg_source+D'6', W, 1
	MOVWF load_s_lin_0000A_arg_lines, 1
	MOVF drawtoback_00007_arg_source+D'7', W, 1
	MOVWF load_s_lin_0000A_arg_lines+D'1', 1
	CALL load_s_lin_0000A
	MOVF drawtoback_00007_arg_source+D'4', W, 1
	MOVWF load_l_siz_00009_arg_size, 1
	MOVF drawtoback_00007_arg_source+D'5', W, 1
	MOVWF load_l_siz_00009_arg_size+D'1', 1
	CALL load_l_siz_00009
	BCF load_alpha_00008_arg_alphaOp,0, 1
	CALL load_alpha_00008
	CALL draw_00000
	RETURN
; } drawtobackground function end

	ORG 0x00000308
main
; { main ; function begin
	MOVLW 0x07
	MOVWF gbl_adcon1
	CLRF gbl_trisa
	CLRF gbl_trisb
	MOVLW 0x80
	MOVWF gbl_trisc
	CLRF gbl_porta
	CLRF gbl_portb
	CLRF gbl_portc
	CLRF main_1_i
	CLRF main_1_j
	MOVLW 0x03
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
label268436072
	CLRF main_12_neogeo
	MOVLW 0x2C
	MOVWF main_12_neogeo+D'1'
	MOVLW 0x01
	MOVWF main_12_neogeo+D'2'
	CLRF main_12_neogeo+D'3'
	MOVLW 0xF0
	MOVWF main_12_neogeo+D'6'
	CLRF main_12_neogeo+D'7'
	CLRF main_12_neogeo+D'4'
	CLRF main_12_neogeo+D'5'
	CLRF main_12_black
	MOVLW 0xC2
	MOVWF main_12_black+D'1'
	MOVLW 0x01
	MOVWF main_12_black+D'2'
	CLRF main_12_black+D'3'
	MOVLW 0xF0
	MOVWF main_12_black+D'6'
	CLRF main_12_black+D'7'
	MOVLW 0xA0
	MOVWF main_12_black+D'4'
	CLRF main_12_black+D'5'
	CLRF main_12_near_future
	MOVLW 0x58
	MOVWF main_12_near_future+D'1'
	MOVLW 0x02
	MOVWF main_12_near_future+D'2'
	CLRF main_12_near_future+D'3'
	MOVLW 0x0B
	MOVWF main_12_near_future+D'6'
	CLRF main_12_near_future+D'7'
	MOVLW 0xA0
	MOVWF main_12_near_future+D'4'
	CLRF main_12_near_future+D'5'
	CLRF main_12_near_future+D'8'
	CLRF main_12_near_future+D'9'
	CLRF main_12_near_future+D'10'
	CLRF main_12_near_future+D'11'
	MOVLW 0x3F
	MOVWF main_12_near_future+D'12'
	CLRF main_12_near_future+D'13'
	CLRF main_12_near_future+D'14'
	CLRF main_12_near_future+D'15'
	CLRF main_12_near_future+D'16'
	MOVLW 0xA0
	MOVWF main_12_eye_anim
	MOVLW 0x6C
	MOVWF main_12_eye_anim+D'1'
	MOVLW 0x02
	MOVWF main_12_eye_anim+D'2'
	CLRF main_12_eye_anim+D'3'
	MOVLW 0x1B
	MOVWF main_12_eye_anim+D'6'
	CLRF main_12_eye_anim+D'7'
	MOVLW 0x1F
	MOVWF main_12_eye_anim+D'4'
	CLRF main_12_eye_anim+D'5'
	MOVLW 0x0E
	MOVWF main_12_eye_anim+D'8'
	CLRF main_12_eye_anim+D'9'
	CLRF main_12_eye_anim+D'10'
	CLRF main_12_eye_anim+D'11'
	MOVLW 0x87
	MOVWF main_12_eye_anim+D'12'
	CLRF main_12_eye_anim+D'13'
	CLRF main_12_eye_anim+D'14'
	CLRF main_12_eye_anim+D'15'
	CLRF main_12_eye_anim+D'16'
	CLRF main_12_eye_mask
	MOVLW 0xC2
	MOVWF main_12_eye_mask+D'1'
	MOVLW 0x01
	MOVWF main_12_eye_mask+D'2'
	CLRF main_12_eye_mask+D'3'
	MOVLW 0x1B
	MOVWF main_12_eye_mask+D'6'
	CLRF main_12_eye_mask+D'7'
	MOVLW 0x1F
	MOVWF main_12_eye_mask+D'4'
	CLRF main_12_eye_mask+D'5'
	MOVLW 0x0E
	MOVWF main_12_eye_mask+D'8'
	CLRF main_12_eye_mask+D'9'
	CLRF main_12_eye_mask+D'10'
	CLRF main_12_eye_mask+D'11'
	MOVLW 0x87
	MOVWF main_12_eye_mask+D'12'
	CLRF main_12_eye_mask+D'13'
	CLRF main_12_eye_mask+D'14'
	CLRF main_12_eye_mask+D'15'
	CLRF main_12_eye_mask+D'16'
	MOVLW 0x40
	MOVWF main_12_compass
	MOVLW 0x9A
	MOVWF main_12_compass+D'1'
	MOVLW 0x02
	MOVWF main_12_compass+D'2'
	CLRF main_12_compass+D'3'
	MOVLW 0x06
	MOVWF main_12_compass+D'6'
	CLRF main_12_compass+D'7'
	MOVLW 0x2D
	MOVWF main_12_compass+D'4'
	CLRF main_12_compass+D'5'
	MOVLW 0x33
	MOVWF main_12_compass+D'8'
	CLRF main_12_compass+D'9'
	CLRF main_12_compass+D'10'
	CLRF main_12_compass+D'11'
	MOVLW 0x86
	MOVWF main_12_compass+D'12'
	CLRF main_12_compass+D'13'
	CLRF main_12_compass+D'14'
	CLRF main_12_compass+D'15'
	CLRF main_12_compass+D'16'
	CLRF main_12_lines
	MOVLW 0x9E
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVLW 0x1A
	MOVWF main_12_lines+D'6'
	CLRF main_12_lines+D'7'
	MOVLW 0x4F
	MOVWF main_12_lines+D'4'
	CLRF main_12_lines+D'5'
	MOVLW 0x49
	MOVWF main_12_lines+D'8'
	CLRF main_12_lines+D'9'
	CLRF main_12_lines+D'10'
	CLRF main_12_lines+D'11'
	MOVLW 0x4C
	MOVWF main_12_lines+D'12'
	CLRF main_12_lines+D'13'
	CLRF main_12_lines+D'14'
	CLRF main_12_lines+D'15'
	CLRF main_12_lines+D'16'
	MOVLW 0x94
	MOVWF main_12_bars
	MOVLW 0xAE
	MOVWF main_12_bars+D'1'
	MOVLW 0x02
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0x0F
	MOVWF main_12_bars+D'6'
	CLRF main_12_bars+D'7'
	MOVLW 0x2F
	MOVWF main_12_bars+D'4'
	CLRF main_12_bars+D'5'
	MOVLW 0x0A
	MOVWF main_12_bars+D'8'
	CLRF main_12_bars+D'9'
	CLRF main_12_bars+D'10'
	CLRF main_12_bars+D'11'
	MOVLW 0x51
	MOVWF main_12_bars+D'12'
	CLRF main_12_bars+D'13'
	CLRF main_12_bars+D'14'
	CLRF main_12_bars+D'15'
	CLRF main_12_bars+D'16'
	MOVLW 0x80
	MOVLB 0x00
	MOVWF main_12_outline, 1
	MOVLW 0x7D
	MOVWF main_12_outline+D'1', 1
	MOVLW 0x02
	MOVWF main_12_outline+D'2', 1
	CLRF main_12_outline+D'3', 1
	MOVLW 0x2E
	MOVWF main_12_outline+D'6', 1
	CLRF main_12_outline+D'7', 1
	MOVLW 0x2B
	MOVWF main_12_outline+D'4', 1
	CLRF main_12_outline+D'5', 1
	MOVLW 0x1B
	MOVWF main_12_outline+D'8', 1
	CLRF main_12_outline+D'9', 1
	CLRF main_12_outline+D'10', 1
	CLRF main_12_outline+D'11', 1
	MOVLW 0x82
	MOVWF main_12_outline+D'12', 1
	CLRF main_12_outline+D'13', 1
	CLRF main_12_outline+D'14', 1
	CLRF main_12_outline+D'15', 1
	MOVLW 0x01
	MOVWF main_12_outline+D'16', 1
	CLRF main_1_i
label268436132
	MOVLW 0xA0
	CPFSLT main_1_i
	BRA	label268436133
	MOVF main_12_neogeo+D'7', W
	MOVLB 0x00
	MOVWF drawtoback_00007_arg_source+D'7', 1
	MOVF main_12_neogeo+D'6', W
	MOVWF drawtoback_00007_arg_source+D'6', 1
	MOVF main_12_neogeo+D'5', W
	MOVWF drawtoback_00007_arg_source+D'5', 1
	MOVF main_12_neogeo+D'4', W
	MOVWF drawtoback_00007_arg_source+D'4', 1
	MOVF main_12_neogeo+D'3', W
	MOVWF drawtoback_00007_arg_source+D'3', 1
	MOVF main_12_neogeo+D'2', W
	MOVWF drawtoback_00007_arg_source+D'2', 1
	MOVF main_12_neogeo+D'1', W
	MOVWF drawtoback_00007_arg_source+D'1', 1
	MOVF main_12_neogeo, W
	MOVWF drawtoback_00007_arg_source, 1
	CALL drawtoback_00007
	MOVLW 0x0A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INFSNZ main_12_neogeo+D'4', F
	INCF main_12_neogeo+D'5', F
	INCF main_1_i, F
	BRA	label268436132
label268436133
	MOVLW 0x03
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVF main_12_black+D'7', W
	MOVLB 0x00
	MOVWF drawtoback_00007_arg_source+D'7', 1
	MOVF main_12_black+D'6', W
	MOVWF drawtoback_00007_arg_source+D'6', 1
	MOVF main_12_black+D'5', W
	MOVWF drawtoback_00007_arg_source+D'5', 1
	MOVF main_12_black+D'4', W
	MOVWF drawtoback_00007_arg_source+D'4', 1
	MOVF main_12_black+D'3', W
	MOVWF drawtoback_00007_arg_source+D'3', 1
	MOVF main_12_black+D'2', W
	MOVWF drawtoback_00007_arg_source+D'2', 1
	MOVF main_12_black+D'1', W
	MOVWF drawtoback_00007_arg_source+D'1', 1
	MOVF main_12_black, W
	MOVWF drawtoback_00007_arg_source, 1
	CALL drawtoback_00007
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVF main_12_near_future+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_near_future+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_near_future+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_near_future+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_near_future+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_near_future+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_near_future+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_near_future+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_near_future+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_near_future+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_near_future+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_near_future+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_near_future+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_near_future+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_near_future+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_near_future+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_near_future, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	SETF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xE0
	MOVWF main_12_near_future
	MOVLW 0x5E
	MOVWF main_12_near_future+D'1'
	MOVLW 0x02
	MOVWF main_12_near_future+D'2'
	CLRF main_12_near_future+D'3'
	MOVF main_12_black+D'7', W
	MOVLB 0x00
	MOVWF drawtoback_00007_arg_source+D'7', 1
	MOVF main_12_black+D'6', W
	MOVWF drawtoback_00007_arg_source+D'6', 1
	MOVF main_12_black+D'5', W
	MOVWF drawtoback_00007_arg_source+D'5', 1
	MOVF main_12_black+D'4', W
	MOVWF drawtoback_00007_arg_source+D'4', 1
	MOVF main_12_black+D'3', W
	MOVWF drawtoback_00007_arg_source+D'3', 1
	MOVF main_12_black+D'2', W
	MOVWF drawtoback_00007_arg_source+D'2', 1
	MOVF main_12_black+D'1', W
	MOVWF drawtoback_00007_arg_source+D'1', 1
	MOVF main_12_black, W
	MOVWF drawtoback_00007_arg_source, 1
	CALL drawtoback_00007
	MOVF main_12_near_future+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_near_future+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_near_future+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_near_future+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_near_future+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_near_future+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_near_future+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_near_future+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_near_future+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_near_future+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_near_future+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_near_future+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_near_future+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_near_future+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_near_future+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_near_future+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_near_future, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	SETF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xC0
	MOVWF main_12_near_future
	MOVLW 0x65
	MOVWF main_12_near_future+D'1'
	MOVLW 0x02
	MOVWF main_12_near_future+D'2'
	CLRF main_12_near_future+D'3'
	MOVF main_12_black+D'7', W
	MOVLB 0x00
	MOVWF drawtoback_00007_arg_source+D'7', 1
	MOVF main_12_black+D'6', W
	MOVWF drawtoback_00007_arg_source+D'6', 1
	MOVF main_12_black+D'5', W
	MOVWF drawtoback_00007_arg_source+D'5', 1
	MOVF main_12_black+D'4', W
	MOVWF drawtoback_00007_arg_source+D'4', 1
	MOVF main_12_black+D'3', W
	MOVWF drawtoback_00007_arg_source+D'3', 1
	MOVF main_12_black+D'2', W
	MOVWF drawtoback_00007_arg_source+D'2', 1
	MOVF main_12_black+D'1', W
	MOVWF drawtoback_00007_arg_source+D'1', 1
	MOVF main_12_black, W
	MOVWF drawtoback_00007_arg_source, 1
	CALL drawtoback_00007
	MOVF main_12_near_future+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_near_future+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_near_future+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_near_future+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_near_future+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_near_future+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_near_future+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_near_future+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_near_future+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_near_future+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_near_future+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_near_future+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_near_future+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_near_future+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_near_future+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_near_future+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_near_future, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVF main_12_black+D'7', W
	MOVLB 0x00
	MOVWF drawtoback_00007_arg_source+D'7', 1
	MOVF main_12_black+D'6', W
	MOVWF drawtoback_00007_arg_source+D'6', 1
	MOVF main_12_black+D'5', W
	MOVWF drawtoback_00007_arg_source+D'5', 1
	MOVF main_12_black+D'4', W
	MOVWF drawtoback_00007_arg_source+D'4', 1
	MOVF main_12_black+D'3', W
	MOVWF drawtoback_00007_arg_source+D'3', 1
	MOVF main_12_black+D'2', W
	MOVWF drawtoback_00007_arg_source+D'2', 1
	MOVF main_12_black+D'1', W
	MOVWF drawtoback_00007_arg_source+D'1', 1
	MOVF main_12_black, W
	MOVWF drawtoback_00007_arg_source, 1
	CALL drawtoback_00007
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	CLRF main_1_i
label268436200
	MOVLW 0x05
	CPFSLT main_1_i
	BRA	label268436201
	MOVF main_12_eye_mask+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_mask+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_mask+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_mask+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_mask+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_mask+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_mask+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_mask+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_mask+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_mask+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_mask+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_mask+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_mask+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_mask+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_mask+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_mask+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_mask, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_eye_anim+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_anim+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_anim+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_anim+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_anim+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_anim+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_anim+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_anim+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_anim+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_anim+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_anim+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_anim+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_anim+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_anim+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_anim+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_anim+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_anim, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x20
	ADDWF main_12_eye_anim, F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'1', F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'2', F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'3', F
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF main_1_i, F
	BRA	label268436200
label268436201
	MOVLW 0x1E
	MOVWF main_1_j
	CLRF main_1_i
label268436219
	MOVLW 0x05
	CPFSLT main_1_i
	BRA	label268436220
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x5C
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x0F
	ADDWF main_1_j, F
	INCF main_1_i, F
	BRA	label268436219
label268436220
	MOVLW 0x14
	MOVWF main_1_j
	CLRF main_1_i
label268436253
	MOVLW 0x05
	CPFSLT main_1_i
	BRA	label268436254
	MOVLW 0x5C
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x0F
	ADDWF main_1_j, F
	INCF main_1_i, F
	BRA	label268436253
label268436254
	MOVLW 0x96
	MOVWF main_1_j
	CLRF main_1_i
label268436287
	MOVLW 0x03
	CPFSLT main_1_i
	BRA	label268436288
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x5C
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x3C
	SUBWF main_1_j, F
	INCF main_1_i, F
	BRA	label268436287
label268436288
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x0A
	MOVWF main_1_j
	CLRF main_1_i
label268436329
	MOVLW 0x02
	CPFSLT main_1_i
	BRA	label268436330
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x5C
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x28
	ADDWF main_1_j, F
	INCF main_1_i, F
	BRA	label268436329
label268436330
	MOVLW 0x50
	MOVWF main_12_lines
	MOVLW 0x9E
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVLW 0x4B
	MOVWF main_12_lines+D'4'
	CLRF main_12_lines+D'5'
	MOVLW 0x60
	ADDWF main_12_bars, F
	MOVLW 0x09
	ADDWFC main_12_bars+D'1', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'2', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'3', F
	MOVLW 0x35
	MOVWF main_12_bars+D'4'
	CLRF main_12_bars+D'5'
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x5C
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x28
	ADDWF main_1_j, F
	MOVLW 0x40
	MOVWF main_12_lines
	MOVLW 0xAE
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVLW 0x53
	MOVWF main_12_lines+D'4'
	CLRF main_12_lines+D'5'
	MOVLW 0x60
	ADDWF main_12_bars, F
	MOVLW 0x09
	ADDWFC main_12_bars+D'1', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'2', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'3', F
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x2E
	ADDWF main_12_compass, F
	MOVLW 0x00
	ADDWFC main_12_compass+D'1', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'2', F
	MOVLW 0x00
	ADDWFC main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x5C
	SUBWF main_12_compass, F
	MOVLW 0x00
	SUBWFB main_12_compass+D'1', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'2', F
	MOVLW 0x00
	SUBWFB main_12_compass+D'3', F
	MOVF main_1_j, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x80
	MOVWF main_12_lines
	MOVLW 0xBE
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVLW 0x61
	ADDWF main_12_bars, F
	MOVLW 0x09
	ADDWFC main_12_bars+D'1', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'2', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'3', F
	MOVLW 0x36
	MOVWF main_12_bars+D'4'
	CLRF main_12_bars+D'5'
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xC0
	MOVWF main_12_lines
	MOVLW 0xCE
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVLW 0x20
	MOVWF main_12_lines+D'6'
	CLRF main_12_lines+D'7'
	MOVLW 0x54
	MOVWF main_12_lines+D'4'
	CLRF main_12_lines+D'5'
	MOVLW 0x48
	MOVWF main_12_lines+D'8'
	CLRF main_12_lines+D'9'
	CLRF main_12_lines+D'10'
	CLRF main_12_lines+D'11'
	MOVLW 0x4B
	MOVWF main_12_lines+D'12'
	CLRF main_12_lines+D'13'
	CLRF main_12_lines+D'14'
	CLRF main_12_lines+D'15'
	MOVLW 0x60
	ADDWF main_12_bars, F
	MOVLW 0x09
	ADDWFC main_12_bars+D'1', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'2', F
	MOVLW 0x00
	ADDWFC main_12_bars+D'3', F
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x32
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xE0
	MOVWF main_12_bars
	MOVLW 0x13
	MOVWF main_12_bars+D'1'
	MOVLW 0x07
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0x15
	MOVWF main_12_bars+D'6'
	CLRF main_12_bars+D'7'
	MOVLW 0x3E
	MOVWF main_12_bars+D'4'
	CLRF main_12_bars+D'5'
	MOVLW 0x04
	MOVWF main_12_bars+D'8'
	CLRF main_12_bars+D'9'
	CLRF main_12_bars+D'10'
	CLRF main_12_bars+D'11'
	MOVLW 0x50
	MOVWF main_12_bars+D'12'
	CLRF main_12_bars+D'13'
	CLRF main_12_bars+D'14'
	CLRF main_12_bars+D'15'
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	CLRF main_1_i
label268436486
	MOVLW 0x32
	CPFSLT main_1_i
	BRA	label268436487
	MOVLW 0xE0
	MOVWF main_12_bars
	MOVLW 0x13
	MOVWF main_12_bars+D'1'
	MOVLW 0x07
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0xE0
	MOVWF main_12_lines
	MOVLW 0x21
	MOVWF main_12_lines+D'1'
	MOVLW 0x08
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x05
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xC0
	MOVWF main_12_bars
	MOVLW 0x06
	MOVWF main_12_bars+D'1'
	MOVLW 0x07
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0xC0
	MOVWF main_12_lines
	MOVLW 0xCE
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x05
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF main_1_i, F
	BRA	label268436486
label268436487
	MOVLB 0x00
	MOVF main_12_outline+D'16', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_outline+D'15', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_outline+D'14', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_outline+D'13', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_outline+D'12', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_outline+D'11', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_outline+D'10', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_outline+D'9', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_outline+D'8', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_outline+D'7', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_outline+D'6', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_outline+D'5', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_outline+D'4', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_outline+D'3', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_outline+D'2', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_outline+D'1', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_outline, W, 1
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	CLRF main_1_i
label268436523
	MOVLW 0x1E
	CPFSLT main_1_i
	BRA	label268436524
	MOVLW 0xE0
	MOVWF main_12_bars
	MOVLW 0x13
	MOVWF main_12_bars+D'1'
	MOVLW 0x07
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0xE0
	MOVWF main_12_lines
	MOVLW 0x21
	MOVWF main_12_lines+D'1'
	MOVLW 0x08
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x05
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xC0
	MOVWF main_12_bars
	MOVLW 0x06
	MOVWF main_12_bars+D'1'
	MOVLW 0x07
	MOVWF main_12_bars+D'2'
	CLRF main_12_bars+D'3'
	MOVLW 0xC0
	MOVWF main_12_lines
	MOVLW 0xCE
	MOVWF main_12_lines+D'1'
	MOVLW 0x02
	MOVWF main_12_lines+D'2'
	CLRF main_12_lines+D'3'
	MOVF main_12_bars+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_bars+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_bars+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_bars+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_bars+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_bars+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_bars+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_bars+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_bars+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_bars+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_bars+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_bars+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_bars+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_bars+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_bars+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_bars+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_bars, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_lines+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_lines+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_lines+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_lines+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_lines+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_lines+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_lines+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_lines+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_lines+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_lines+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_lines+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_lines+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_lines+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_lines+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_lines+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_lines+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_lines, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x05
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF main_1_i, F
	BRA	label268436523
label268436524
	MOVLW 0x20
	MOVWF main_12_eye_anim
	MOVLW 0x6D
	MOVWF main_12_eye_anim+D'1'
	MOVLW 0x02
	MOVWF main_12_eye_anim+D'2'
	CLRF main_12_eye_anim+D'3'
	CLRF main_1_i
label268436557
	MOVLW 0x05
	CPFSLT main_1_i
	BRA	label268436558
	MOVF main_12_eye_mask+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_mask+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_mask+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_mask+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_mask+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_mask+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_mask+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_mask+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_mask+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_mask+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_mask+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_mask+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_mask+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_mask+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_mask+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_mask+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_mask, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_eye_anim+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_anim+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_anim+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_anim+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_anim+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_anim+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_anim+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_anim+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_anim+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_anim+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_anim+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_anim+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_anim+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_anim+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_anim+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_anim+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_anim, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLB 0x00
	MOVF main_12_outline+D'16', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_outline+D'15', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_outline+D'14', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_outline+D'13', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_outline+D'12', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_outline+D'11', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_outline+D'10', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_outline+D'9', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_outline+D'8', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_outline+D'7', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_outline+D'6', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_outline+D'5', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_outline+D'4', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_outline+D'3', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_outline+D'2', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_outline+D'1', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_outline, W, 1
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x20
	SUBWF main_12_eye_anim, F
	MOVLW 0x00
	SUBWFB main_12_eye_anim+D'1', F
	MOVLW 0x00
	SUBWFB main_12_eye_anim+D'2', F
	MOVLW 0x00
	SUBWFB main_12_eye_anim+D'3', F
	MOVLW 0x32
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF main_1_i, F
	BRA	label268436557
label268436558
	MOVLW 0xA0
	MOVWF main_12_eye_anim
	MOVLW 0x6C
	MOVWF main_12_eye_anim+D'1'
	MOVLW 0x02
	MOVWF main_12_eye_anim+D'2'
	CLRF main_12_eye_anim+D'3'
	CLRF main_1_i
label268436580
	MOVLW 0x05
	CPFSLT main_1_i
	BRA	label268436581
	MOVF main_12_eye_mask+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_mask+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_mask+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_mask+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_mask+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_mask+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_mask+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_mask+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_mask+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_mask+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_mask+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_mask+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_mask+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_mask+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_mask+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_mask+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_mask, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_eye_anim+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_anim+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_anim+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_anim+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_anim+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_anim+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_anim+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_anim+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_anim+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_anim+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_anim+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_anim+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_anim+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_anim+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_anim+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_anim+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_anim, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLB 0x00
	MOVF main_12_outline+D'16', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_outline+D'15', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_outline+D'14', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_outline+D'13', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_outline+D'12', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_outline+D'11', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_outline+D'10', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_outline+D'9', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_outline+D'8', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_outline+D'7', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_outline+D'6', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_outline+D'5', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_outline+D'4', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_outline+D'3', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_outline+D'2', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_outline+D'1', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_outline, W, 1
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x20
	ADDWF main_12_eye_anim, F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'1', F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'2', F
	MOVLW 0x00
	ADDWFC main_12_eye_anim+D'3', F
	MOVLW 0x32
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF main_1_i, F
	BRA	label268436580
label268436581
	SETF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF main_12_eye_mask+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_eye_mask+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_eye_mask+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_eye_mask+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_eye_mask+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_eye_mask+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_eye_mask+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_eye_mask+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_eye_mask+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_eye_mask+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_eye_mask+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_eye_mask+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_eye_mask+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_eye_mask+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_eye_mask+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_eye_mask+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_eye_mask, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x18
	MOVLB 0x00
	MOVWF main_12_outline+D'8', 1
	CLRF main_12_outline+D'9', 1
	CLRF main_12_outline+D'10', 1
	CLRF main_12_outline+D'11', 1
	MOVLW 0xAB
	MOVWF main_12_outline, 1
	MOVLW 0x7D
	MOVWF main_12_outline+D'1', 1
	MOVLW 0x02
	MOVWF main_12_outline+D'2', 1
	CLRF main_12_outline+D'3', 1
	MOVLW 0x2E
	MOVWF main_12_outline+D'4', 1
	CLRF main_12_outline+D'5', 1
	MOVF main_12_outline+D'16', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_outline+D'15', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_outline+D'14', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_outline+D'13', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_outline+D'12', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_outline+D'11', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_outline+D'10', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_outline+D'9', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_outline+D'8', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_outline+D'7', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_outline+D'6', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_outline+D'5', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_outline+D'4', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_outline+D'3', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_outline+D'2', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_outline+D'1', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_outline, W, 1
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xD9
	MOVLB 0x00
	MOVWF main_12_outline, 1
	MOVLW 0x7D
	MOVWF main_12_outline+D'1', 1
	MOVLW 0x02
	MOVWF main_12_outline+D'2', 1
	CLRF main_12_outline+D'3', 1
	MOVLW 0x3C
	MOVWF main_12_outline+D'4', 1
	CLRF main_12_outline+D'5', 1
	MOVF main_12_outline+D'16', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_outline+D'15', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_outline+D'14', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_outline+D'13', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_outline+D'12', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_outline+D'11', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_outline+D'10', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_outline+D'9', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_outline+D'8', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_outline+D'7', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_outline+D'6', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_outline+D'5', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_outline+D'4', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_outline+D'3', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_outline+D'2', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_outline+D'1', W, 1
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_outline, W, 1
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVF main_12_compass+D'16', W
	MOVLB 0x00
	MOVWF drawsprite_00000_arg_sprite+D'16', 1
	MOVF main_12_compass+D'15', W
	MOVWF drawsprite_00000_arg_sprite+D'15', 1
	MOVF main_12_compass+D'14', W
	MOVWF drawsprite_00000_arg_sprite+D'14', 1
	MOVF main_12_compass+D'13', W
	MOVWF drawsprite_00000_arg_sprite+D'13', 1
	MOVF main_12_compass+D'12', W
	MOVWF drawsprite_00000_arg_sprite+D'12', 1
	MOVF main_12_compass+D'11', W
	MOVWF drawsprite_00000_arg_sprite+D'11', 1
	MOVF main_12_compass+D'10', W
	MOVWF drawsprite_00000_arg_sprite+D'10', 1
	MOVF main_12_compass+D'9', W
	MOVWF drawsprite_00000_arg_sprite+D'9', 1
	MOVF main_12_compass+D'8', W
	MOVWF drawsprite_00000_arg_sprite+D'8', 1
	MOVF main_12_compass+D'7', W
	MOVWF drawsprite_00000_arg_sprite+D'7', 1
	MOVF main_12_compass+D'6', W
	MOVWF drawsprite_00000_arg_sprite+D'6', 1
	MOVF main_12_compass+D'5', W
	MOVWF drawsprite_00000_arg_sprite+D'5', 1
	MOVF main_12_compass+D'4', W
	MOVWF drawsprite_00000_arg_sprite+D'4', 1
	MOVF main_12_compass+D'3', W
	MOVWF drawsprite_00000_arg_sprite+D'3', 1
	MOVF main_12_compass+D'2', W
	MOVWF drawsprite_00000_arg_sprite+D'2', 1
	MOVF main_12_compass+D'1', W
	MOVWF drawsprite_00000_arg_sprite+D'1', 1
	MOVF main_12_compass, W
	MOVWF drawsprite_00000_arg_sprite, 1
	CALL drawsprite_00000
	MOVLW 0x0A
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	GOTO	label268436072
; } main function end

	ORG 0x00001A12
_startup
	GOTO	main
	END
