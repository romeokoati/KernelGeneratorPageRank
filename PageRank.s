	.arch armv8-a
	.file	"main.cpp"
	.text
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.type	_ZL11MATRIX_SIZE, %object
	.size	_ZL11MATRIX_SIZE, 4
_ZL11MATRIX_SIZE:
	.word	100
	.align	3
.LC0:
	.string	"data.txt"
	.align	3
.LC1:
	.string	"Fin Execution"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1695:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1695
	sub	sp, sp, #592
	.cfi_def_cfa_offset 592
	stp	x29, x30, [sp]
	.cfi_offset 29, -592
	.cfi_offset 30, -584
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -576
	str	xzr, [sp, 584]
	str	xzr, [sp, 576]
	str	xzr, [sp, 568]
	add	x0, sp, 40
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	mov	w0, 100
.LEHB1:
	bl	_Z6createi
	str	x0, [sp, 584]
	mov	w0, 100
	bl	_Z6createi
	str	x0, [sp, 576]
	add	x3, sp, 40
	mov	w2, 8
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	add	x0, sp, 40
	mov	x2, x0
	mov	w1, 100
	ldr	x0, [sp, 584]
	bl	_Z11read_matrixP13sparse_matrixiRSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, sp, 40
	mov	x2, x0
	mov	w1, 100
	ldr	x0, [sp, 576]
	bl	_Z11read_matrixP13sparse_matrixiRSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, sp, 40
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	mov	w0, 100
	bl	_Z6createi
	str	x0, [sp, 568]
	mov	w3, 100
	ldr	x2, [sp, 568]
	ldr	x1, [sp, 576]
	ldr	x0, [sp, 584]
	bl	_Z8multiplyP13sparse_matrixS0_S0_i
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.LEHE1:
	mov	w19, 0
	add	x0, sp, 40
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	w0, w19
	b	.L5
.L4:
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L5:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 592
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1695:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1695:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1695-.LLSDACSB1695
.LLSDACSB1695:
	.uleb128 .LEHB0-.LFB1695
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1695
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB1695
	.uleb128 0
	.uleb128 .LEHB2-.LFB1695
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1695:
	.text
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2245:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L8
	adrp	x0, _ZStL8__ioinit
	add	x0, x0, :lo12:_ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _ZStL8__ioinit
	add	x1, x0, :lo12:_ZStL8__ioinit
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
.L8:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2245:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2246:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2246:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
