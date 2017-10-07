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
	.file	"myLib.c"
	.text
	.align	2
	.global	drawHeart
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	rsb	r0, r0, r0, lsl #4
	ldr	ip, [r3]
	mov	r0, r0, asl #4
	stmfd	sp!, {r4, r5, lr}
	add	lr, r1, r0
	add	lr, ip, lr, lsl #1
	mov	r3, lr
	add	r5, r1, #1664
	add	r5, r5, #9
	add	r5, r5, r0
	add	r5, ip, r5, lsl #1
.L2:
	add	r4, r3, #476
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [lr, #8]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	add	r3, r4, #2
	cmp	r3, r5
	add	r4, lr, #480
	strh	r2, [lr, #32]	@ movhi
	add	lr, r4, #2
	bne	.L2
	add	lr, r1, #4800
	add	r4, r0, #1680
	sub	r3, r1, #2
	add	lr, lr, #11
	add	r1, r1, #22
	add	lr, lr, r0
	add	r3, r3, r4
	add	r1, r1, r4
	add	lr, ip, lr, lsl #1
	add	r3, ip, r3, lsl #1
	add	r1, ip, r1, lsl #1
.L3:
	add	r0, r3, #480
	strh	r2, [r3]	@ movhi
	add	r3, r0, #2
	cmp	lr, r3
	add	r0, r1, #476
	strh	r2, [r1]	@ movhi
	add	r1, r0, #2
	bne	.L3
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	drawHeart, .-drawHeart
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	mov	r1, r1, asl #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRectangle
	.type	drawRectangle, %function
drawRectangle:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	cmp	r3, #0
	ldrh	ip, [sp, #8]
	ble	.L13
	ldr	lr, .L23
	rsb	r0, r0, r0, lsl #4
	add	r4, r1, r0, lsl #4
	ldr	r1, [lr]
	add	r3, r3, r4
	rsb	r0, r2, r2, lsl #4
	add	lr, r1, r3, lsl #1
	mov	r0, r0, asl #5
	add	r1, r1, r4, lsl #1
.L17:
	cmp	r2, #0
	movgt	r3, #0
	ble	.L19
.L16:
	strh	ip, [r1, r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L16
.L19:
	add	r1, r1, #2
	cmp	r1, lr
	bne	.L17
.L13:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.size	drawRectangle, .-drawRectangle
	.align	2
	.global	delay
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	rsb	r3, r0, r0, lsl #5
	add	r0, r0, r3, lsl #2
	mov	r0, r0, asl #3
	sub	sp, sp, #8
	cmp	r0, r2
	str	r2, [sp, #4]
	ble	.L25
.L27:
	ldr	r3, [sp, #4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, r0
	str	r3, [sp, #4]
	bne	.L27
.L25:
	add	sp, sp, #8
	@ sp needed
	bx	lr
	.size	delay, .-delay
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 45) 5.3.0"
