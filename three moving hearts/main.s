	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mov	r2, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r0, .L3
	ldr	r3, .L3+4
	sub	sp, sp, #8
	strh	r0, [r2]	@ movhi
	ldr	r4, .L3+8
	mov	r0, r1
	str	r3, [sp]
	mov	r2, #80
	mov	r3, #240
	mov	lr, pc
	bx	r4
	mov	r2, #80
	ldr	r3, .L3+12
	mov	r0, r2
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #240
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	1027
	.word	32767
	.word	drawRectangle
	.word	31775
	.size	initialize, .-initialize
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	ldr	r4, .L13+4
	ldr	r5, .L13+8
	ldr	r7, .L13+12
.L8:
	mov	r6, #0
.L6:
	ldr	r0, [r4, #4]
	ldr	r2, .L13+16
	add	r0, r6, r0
	ldr	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #12]
	ldr	r2, .L13+20
	rsb	r0, r6, r0
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #4]
	ldr	r2, .L13+16
	add	r0, r6, r0
	ldr	r1, [r4, #16]
	mov	lr, pc
	bx	r5
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r0, [r4, #4]
	ldr	r2, .L13+20
	add	r0, r6, r0
	ldr	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #12]
	ldr	r2, .L13+16
	rsb	r0, r6, r0
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #4]
	ldr	r2, .L13+20
	add	r0, r6, r0
	ldr	r1, [r4, #16]
	add	r6, r6, #1
	mov	lr, pc
	bx	r5
	cmp	r6, #40
	bne	.L6
	mov	r6, #0
.L7:
	ldr	r0, [r4, #12]
	ldr	r2, .L13+20
	rsb	r0, r6, r0
	ldr	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #4]
	ldr	r2, .L13+16
	add	r0, r6, r0
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #12]
	ldr	r2, .L13+20
	rsb	r0, r6, r0
	ldr	r1, [r4, #16]
	mov	lr, pc
	bx	r5
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r0, [r4, #12]
	ldr	r2, .L13+16
	rsb	r0, r6, r0
	ldr	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #4]
	ldr	r2, .L13+20
	add	r0, r6, r0
	ldr	r1, [r4, #8]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #12]
	ldr	r2, .L13+16
	rsb	r0, r6, r0
	ldr	r1, [r4, #16]
	add	r6, r6, #1
	mov	lr, pc
	bx	r5
	cmp	r6, #40
	bne	.L7
	b	.L8
.L14:
	.align	2
.L13:
	.word	initialize
	.word	.LANCHOR0
	.word	drawHeart
	.word	delay
	.word	31775
	.word	32767
	.size	main, .-main
	.global	col3
	.global	col2
	.global	row2
	.global	col
	.global	row
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	col, %object
	.size	col, 4
col:
	.word	42
	.type	row, %object
	.size	row, 4
row:
	.word	50
	.type	col2, %object
	.size	col2, 4
col2:
	.word	110
	.type	row2, %object
	.size	row2, 4
row2:
	.word	90
	.type	col3, %object
	.size	col3, 4
col3:
	.word	180
	.ident	"GCC: (devkitARM release 45) 5.3.0"
