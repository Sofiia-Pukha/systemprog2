	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 1
	.globl	__Z11fill_arraysRNSt3__16vectorIfNS_9allocatorIfEEEES4_ ; -- Begin function _Z11fill_arraysRNSt3__16vectorIfNS_9allocatorIfEEEES4_
	.p2align	2
__Z11fill_arraysRNSt3__16vectorIfNS_9allocatorIfEEEES4_: ; @_Z11fill_arraysRNSt3__16vectorIfNS_9allocatorIfEEEES4_
	.cfi_startproc
; %bb.0:
	mov	w8, #0                          ; =0x0
	ldr	x9, [x0]
	ldr	x10, [x1]
	mov	w11, #61568                     ; =0xf080
	movk	w11, #762, lsl #16
	mov	w12, #18725                     ; =0x4925
	movk	w12, #9362, lsl #16
	mov	w13, #34079                     ; =0x851f
	movk	w13, #20971, lsl #16
	mov	w14, #100                       ; =0x64
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	umull	x15, w8, w12
	lsr	x15, x15, #32
	sub	w16, w8, w15
	add	w15, w15, w16, lsr #1
	lsr	w15, w15, #2
	sub	w15, w15, w15, lsl #3
	add	w15, w8, w15
	umull	x16, w8, w13
	lsr	x16, x16, #37
	msub	w16, w16, w14, w8
	ucvtf	s0, w16
	str	s0, [x9], #4
	ucvtf	s0, w15, #1
	str	s0, [x10], #4
	add	w8, w8, #1
	subs	x11, x11, #1
	b.ne	LBB0_1
; %bb.2:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z14scalar_productRKNSt3__16vectorIfNS_9allocatorIfEEEES5_ ; -- Begin function _Z14scalar_productRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
	.p2align	2
__Z14scalar_productRKNSt3__16vectorIfNS_9allocatorIfEEEES5_: ; @_Z14scalar_productRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
	.cfi_startproc
; %bb.0:
	ldr	x9, [x0]
	ldr	x8, [x1]
	add	x8, x8, #32
	add	x9, x9, #32
	movi.2d	v0, #0000000000000000
	mov	w10, #61568                     ; =0xf080
	movk	w10, #762, lsl #16
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x9, #-32]
	ldp	q6, q7, [x9], #64
	ldp	q16, q17, [x8, #-32]
	ldp	q18, q19, [x8], #64
	fmla.4s	v0, v16, v4
	fmla.4s	v1, v17, v5
	fmla.4s	v2, v18, v6
	fmla.4s	v3, v19, v7
	subs	x10, x10, #16
	b.ne	LBB1_1
; %bb.2:
	fadd.4s	v0, v1, v0
	fadd.4s	v1, v3, v2
	fadd.4s	v0, v1, v0
	faddp.4s	v0, v0, v0
	faddp.2s	s0, v0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	cmp	w0, #2
	b.lt	LBB2_2
; %bb.1:
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	x21, x0
	b	LBB2_3
LBB2_2:
	mov	w21, #30                        ; =0x1e
LBB2_3:
	mov	w20, #49664                     ; =0xc200
	movk	w20, #3051, lsl #16
	mov	w0, #49664                      ; =0xc200
	movk	w0, #3051, lsl #16
	bl	__Znwm
	mov	x19, x0
	add	x20, x0, x20
	str	x0, [sp, #32]
	str	x20, [sp, #48]
	mov	w1, #49664                      ; =0xc200
	movk	w1, #3051, lsl #16
	bl	_bzero
	str	x20, [sp, #40]
Ltmp0:
	mov	w0, #49664                      ; =0xc200
	movk	w0, #3051, lsl #16
	bl	__Znwm
Ltmp1:
; %bb.4:
	mov	x20, x0
	mov	w8, #49664                      ; =0xc200
	movk	w8, #3051, lsl #16
	add	x22, x0, x8
	str	x0, [sp, #8]
	str	x22, [sp, #24]
	mov	w1, #49664                      ; =0xc200
	movk	w1, #3051, lsl #16
	bl	_bzero
	str	x22, [sp, #16]
	add	x0, sp, #32
	add	x1, sp, #8
	bl	__Z11fill_arraysRNSt3__16vectorIfNS_9allocatorIfEEEES4_
	cmp	w21, #1
	b.lt	LBB2_7
; %bb.5:
	mov	w22, #0                         ; =0x0
	movi	d8, #0000000000000000
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
	ucvtf	s0, w22
	str	s0, [x19]
	add	x0, sp, #32
	add	x1, sp, #8
	bl	__Z14scalar_productRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
	fadd	s8, s0, s8
	add	w22, w22, #1
	cmp	w21, w22
	b.ne	LBB2_6
	b	LBB2_8
LBB2_7:
	movi	d8, #0000000000000000
LBB2_8:
Ltmp3:
Lloh0:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	fmov	s0, s8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf
Ltmp4:
; %bb.9:
	mov	x21, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
Ltmp5:
	add	x8, sp, #56
	add	x0, x0, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp6:
; %bb.10:
Ltmp7:
Lloh2:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh3:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #56
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp8:
; %bb.11:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp9:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp10:
; %bb.12:
	mov	x22, x0
	add	x0, sp, #56
	bl	__ZNSt3__16localeD1Ev
Ltmp12:
	mov	x0, x21
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp13:
; %bb.13:
Ltmp14:
	mov	x0, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp15:
; %bb.14:
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__ZdlPv
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB2_15:
Ltmp2:
	mov	x21, x0
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB2_16:
Ltmp11:
	mov	x21, x0
	add	x0, sp, #56
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB2_17:
Ltmp16:
	mov	x21, x0
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh2, Lloh3
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp1                    ;   Call between Ltmp1 and Ltmp3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp3                    ;   Call between Ltmp3 and Ltmp6
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp10-Ltmp7                   ;   Call between Ltmp7 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp15-Ltmp12                  ;   Call between Ltmp12 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp15              ;   Call between Ltmp15 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
.subsections_via_symbols
