	.build_version macos, 26, 0	sdk_version 26, 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fcount                         ; -- Begin function fcount
	.p2align	2
_fcount:                                ; @fcount
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	adrp	x8, _fcount.count@PAGE
	ldr	w9, [x8, _fcount.count@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, _fcount.count@PAGEOFF]
	ldur	w9, [x29, #-4]
	mov	x10, x9
	ldr	w8, [x8, _fcount.count@PAGEOFF]
                                        ; kill: def $x8 killed $w8
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-20]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x0, _init_gstr1@PAGE
	add	x0, x0, _init_gstr1@PAGEOFF
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	_check_gcc_condition
	bl	_fcount
	bl	_fcount
	; InlineAsm Start
	nop
	nop
	nop

	; InlineAsm End
	mov	w8, #15                         ; =0xf
	stur	w8, [x29, #-8]
	mov	w8, #17                         ; =0x11
	stur	w8, [x29, #-12]
	stur	wzr, [x29, #-16]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	stur	w8, [x29, #-16]
	adrp	x8, _init_gv1@PAGE
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w9, #20                         ; =0x14
	str	w9, [x8, _init_gv1@PAGEOFF]
	ldr	w8, [x8, _init_gv1@PAGEOFF]
	adrp	x9, _uninit_gv2@GOTPAGE
	ldr	x9, [x9, _uninit_gv2@GOTPAGEOFF]
	str	w8, [x9]
	adrp	x0, _uninit_gstr2@GOTPAGE
	ldr	x0, [x0, _uninit_gstr2@GOTPAGEOFF]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #12                         ; =0xc
	bl	___strcpy_chk
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x10, _extern_int@GOTPAGE
	ldr	x10, [x10, _extern_int@GOTPAGEOFF]
	mov	w9, #21                         ; =0x15
	str	w9, [x10]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w0, [x8, _init_gv1@PAGEOFF]
	ldur	w1, [x29, #-8]
	bl	_fadd
	stur	w0, [x29, #-16]
	mov	w0, #50                         ; =0x32
	stur	w0, [x29, #-24]                 ; 4-byte Folded Spill
	mov	w1, #30                         ; =0x1e
	stur	w1, [x29, #-28]                 ; 4-byte Folded Spill
	bl	_fsub
	ldur	w1, [x29, #-28]                 ; 4-byte Folded Reload
	mov	x8, x0
	ldur	w0, [x29, #-24]                 ; 4-byte Folded Reload
	stur	w8, [x29, #-16]
	adrp	x8, _init_gfp1@PAGE
	ldr	x8, [x8, _init_gfp1@PAGEOFF]
	blr	x8
	stur	w0, [x29, #-16]
	ldur	w8, [x29, #-16]
                                        ; kill: def $x8 killed $w8
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-20]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function fsub
_fsub:                                  ; @fsub
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	w0, [sp, #28]
	str	w1, [sp, #24]
	adrp	x8, l___const.fsub.fmt@PAGE
	add	x8, x8, l___const.fsub.fmt@PAGEOFF
	ldr	q0, [x8]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	q0, [x8, #16]
	str	q0, [sp, #48]
	adrp	x9, _uninit_gp2@GOTPAGE
	ldr	x9, [x9, _uninit_gp2@GOTPAGEOFF]
	adrp	x8, _uninit_gv2@GOTPAGE
	ldr	x8, [x8, _uninit_gv2@GOTPAGEOFF]
	mov	x10, x8
	str	x10, [x9]
	ldr	x10, [x9]
	mov	w9, #12                         ; =0xc
	str	w9, [x10]
	ldr	w8, [x8]
                                        ; kill: def $x8 killed $w8
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_2
	b	LBB2_1
LBB2_1:
	bl	___stack_chk_fail
LBB2_2:
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_init_gv1                       ; @init_gv1
	.p2align	2, 0x0
_init_gv1:
	.long	10                              ; 0xa

	.globl	_init_gstr1                     ; @init_gstr1
_init_gstr1:
	.asciz	"STUDENT_ID\000"

	.globl	_init_garr1                     ; @init_garr1
	.p2align	2, 0x0
_init_garr1:
	.long	11                              ; 0xb
	.long	12                              ; 0xc
	.long	13                              ; 0xd

	.globl	_init_gp1                       ; @init_gp1
	.p2align	3, 0x0
_init_gp1:
	.quad	_init_gv1

	.comm	_uninit_gv2,4,2                 ; @uninit_gv2
	.globl	_init_gp2                       ; @init_gp2
	.p2align	3, 0x0
_init_gp2:
	.quad	_uninit_gv2

	.globl	_init_gfp1                      ; @init_gfp1
	.p2align	3, 0x0
_init_gfp1:
	.quad	_fadd

	.globl	_gv                             ; @gv
	.p2align	2, 0x0
_gv:
	.long	6                               ; 0x6

.zerofill __DATA,__bss,_fcount.count,4,2 ; @fcount.count
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"auto x = %d , static count =%d\n"

	.comm	_uninit_gstr2,12,0              ; @uninit_gstr2
l_.str.1:                               ; @.str.1
	.asciz	"Student"

l_.str.2:                               ; @.str.2
	.asciz	"display init_gstr1 : %s \n"

l_.str.3:                               ; @.str.3
	.asciz	"sum = %d \n"

	.comm	_uninit_garr2,12,2              ; @uninit_garr2
	.comm	_uninit_gp2,8,3                 ; @uninit_gp2
	.comm	_uninit_gfp2,8,3                ; @uninit_gfp2
l___const.fsub.fmt:                     ; @__const.fsub.fmt
	.asciz	"static fsub : uninit_gv2 = %d \n"

.subsections_via_symbols
