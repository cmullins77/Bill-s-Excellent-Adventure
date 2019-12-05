	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r1, r1, r1, asl #4
	add	r1, r0, r1, asl #4
	ldr	r3, [r3, #0]
	mov	r1, r1, asl #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, r1, asl #4
	add	r3, r0, r1, asl #4
	ldr	r1, .L7
	add	r3, r3, r3, lsr #31
	ldr	ip, [r1, #0]
	bic	r3, r3, #1
	ldrh	r1, [ip, r3]
	tst	r0, #1
	andne	r1, r1, #255
	biceq	r1, r1, #255
	orrne	r2, r1, r2, asl #8
	orreq	r2, r2, r1
	strneh	r2, [ip, r3]	@ movhi
	streqh	r2, [ip, r3]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r0, asl #1
	mov	r0, r0, asl #2
	add	r0, r0, #67108864
	add	ip, r0, #176
	orr	r3, r3, #-2147483648
	str	r1, [r0, #176]
	str	r2, [ip, #4]
	str	r3, [ip, #8]
	bx	lr
	.size	DMANow, .-DMANow
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	sub	sp, sp, #12
	ldrh	ip, [sp, #16]
	cmp	r3, #0
	strh	ip, [sp, #6]	@ movhi
	ble	.L10
	ldr	ip, .L15
	rsb	r1, r1, r1, asl #4
	ldr	ip, [ip, #0]
	add	r0, r0, r1, asl #4
	orr	r4, r2, #-2130706432
	add	r0, ip, r0, asl #1
	mov	r1, #0
	add	r2, sp, #6
	mov	ip, #67108864
.L12:
	add	r1, r1, #1
	cmp	r1, r3
	str	r2, [ip, #212]
	str	r0, [ip, #216]
	str	r4, [ip, #220]
	add	r0, r0, #480
	bne	.L12
.L10:
	add	sp, sp, #12
	ldmfd	sp!, {r4}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #36
	ldrb	r4, [sp, #72]	@ zero_extendqisi2
	subs	r8, r3, #0
	orr	r3, r4, r4, asl #8
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	strh	r3, [sp, #30]	@ movhi
	ble	.L17
	add	r5, r2, r2, lsr #31
	mov	r6, r0
	mov	r5, r5, asr #1
	sub	ip, r5, #1
	sub	r3, r6, #1
	orr	r5, r5, #-2130706432
	add	r0, r0, #1
	rsb	r4, r1, r1, asl #4
	orr	ip, ip, #-2130706432
	add	r3, r3, r2
	and	r9, r6, #1
	str	r5, [sp, #4]
	ldr	sl, .L27
	str	ip, [sp, #20]
	add	r4, r0, r4, asl #4
	mov	r7, r1
	mov	r5, #0
	and	fp, r2, #1
	mov	r6, #67108864
	str	r3, [sp, #16]
	b	.L23
.L19:
	cmp	fp, #0
	subeq	r3, r4, #1
	addeq	r3, r3, r3, lsr #31
	bne	.L26
.L25:
	ldr	r2, [sl, #0]
	bic	r3, r3, #1
	add	r3, r2, r3
	ldr	r2, [sp, #4]
	add	ip, sp, #30
	str	ip, [r6, #212]
	str	r3, [r6, #216]
	str	r2, [r6, #220]
.L21:
	add	r5, r5, #1
	cmp	r8, r5
	add	r4, r4, #240
	add	r7, r7, #1
	ble	.L17
.L23:
	cmp	r9, #0
	beq	.L19
	ldr	r0, [sp, #12]
	mov	r1, r7
	ldr	r2, [sp, #8]
	bl	setPixel4
	cmp	fp, #0
	addne	r3, r4, r4, lsr #31
	bne	.L25
	ldr	r2, [sl, #0]
	add	r3, r4, r4, lsr #31
	bic	r3, r3, #1
	add	r3, r2, r3
	add	ip, sp, #30
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #8]
	str	ip, [r6, #212]
	str	r3, [r6, #216]
	ldr	r3, [sp, #20]
	mov	r1, r7
	str	r3, [r6, #220]
	add	r5, r5, #1
	bl	setPixel4
	cmp	r8, r5
	add	r4, r4, #240
	add	r7, r7, #1
	bgt	.L23
.L17:
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L26:
	sub	r3, r4, #1
	ldr	r2, [sl, #0]
	add	r3, r3, r3, lsr #31
	bic	r3, r3, #1
	add	r3, r2, r3
	add	ip, sp, #30
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #8]
	str	ip, [r6, #212]
	str	r3, [r6, #216]
	ldr	r3, [sp, #4]
	mov	r1, r7
	str	r3, [r6, #220]
	bl	setPixel4
	b	.L21
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	drawRectInBounds3
	.type	drawRectInBounds3, %function
drawRectInBounds3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	cmp	r0, #0
	addlt	r2, r2, r0
	movlt	r0, #0
	add	r4, r2, r0
	cmp	r4, #240
	ldrh	ip, [sp, #4]
	addgt	r2, r2, #240
	rsbgt	r2, r4, r2
	movgt	r0, #240
	str	ip, [sp, #4]
	ldmfd	sp!, {r4}
	b	drawRect3
	.size	drawRectInBounds3, .-drawRectInBounds3
	.align	2
	.global	drawBackgroundImage3
	.type	drawBackgroundImage3, %function
drawBackgroundImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L33
	mov	r2, #-2147483648
	ldr	r1, [r3, #0]
	add	r2, r2, #38400
	mov	r3, #67108864
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	drawBackgroundImage3, .-drawBackgroundImage3
	.align	2
	.global	drawBackgroundImage4
	.type	drawBackgroundImage4, %function
drawBackgroundImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	mov	r2, #-2147483648
	ldr	r1, [r3, #0]
	add	r2, r2, #19200
	mov	r3, #67108864
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	drawBackgroundImage4, .-drawBackgroundImage4
	.align	2
	.global	drawImage3
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	ip, [sp, #12]
	cmp	ip, #0
	ble	.L38
	ldr	r4, .L42
	rsb	r2, r2, r2, asl #4
	ldr	r6, [r4, #0]
	add	r1, r1, r2, asl #4
	orr	r5, r3, #-2147483648
	mov	r4, r3, asl #1
	add	r1, r6, r1, asl #1
	mov	r3, #0
	mov	r2, #67108864
.L40:
	add	r3, r3, #1
	cmp	r3, ip
	str	r0, [r2, #212]
	str	r1, [r2, #216]
	add	r0, r0, r4
	str	r5, [r2, #220]
	add	r1, r1, #480
	bne	.L40
.L38:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #36
	ldr	ip, [sp, #72]
	cmp	ip, #0
	mov	r4, r0
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	mov	r9, r3
	ble	.L44
	ldr	r0, [sp, #16]
	add	r1, r3, r3, lsr #31
	ldr	r3, [sp, #20]
	mov	r1, r1, asr #1
	rsb	r7, r3, r3, asl #4
	sub	r3, r0, #1
	add	r2, r0, #1
	mov	r5, #0
	and	fp, r0, #1
	orr	r1, r1, #-2147483648
	sub	r0, r9, #1
	add	r3, r3, r9
	ldr	sl, .L50
	str	r1, [sp, #8]
	add	r7, r2, r7, asl #4
	mov	r6, r5
	mov	r8, #67108864
	str	r0, [sp, #24]
	str	r3, [sp, #28]
	b	.L48
.L46:
	sub	r2, r7, #1
	ldr	r1, [sl, #0]
	add	r3, r5, r5, lsr #31
	add	r2, r2, r2, lsr #31
	bic	r3, r3, #1
	bic	r2, r2, #1
	add	r2, r1, r2
	add	r3, r4, r3
	str	r3, [r8, #212]
	add	r6, r6, #1
	str	r2, [r8, #216]
	ldr	r2, [sp, #8]
	cmp	ip, r6
	str	r2, [r8, #220]
	add	r5, r5, r9
	add	r7, r7, #240
	ble	.L44
.L48:
	cmp	fp, #0
	beq	.L46
	add	r3, r5, r5, lsr #31
	bic	r3, r3, #1
	ldrh	r2, [r4, r3]
	ldr	r1, [sp, #20]
	add	r3, r4, r3
	add	r1, r6, r1
	ldr	r0, [sp, #16]
	and	r2, r2, #255
	str	ip, [sp, #0]
	str	r1, [sp, #12]
	str	r3, [sp, #4]
	bl	setPixel4
	ldr	r2, [sl, #0]
	add	r1, r7, r7, lsr #31
	ldr	r3, [sp, #4]
	bic	r1, r1, #1
	ldr	r0, [sp, #24]
	add	r1, r2, r1
	str	r3, [r8, #212]
	str	r1, [r8, #216]
	ldr	r1, [sp, #8]
	add	r2, r0, r5
	str	r1, [r8, #220]
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	ldrh	r2, [r4, r2]
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #12]
	and	r2, r2, #255
	bl	setPixel4
	ldr	ip, [sp, #0]
	add	r6, r6, #1
	cmp	ip, r6
	add	r5, r5, r9
	add	r7, r7, #240
	bgt	.L48
.L44:
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #-2147483648
	mov	r3, #67108864
	add	r2, r2, #256
	mov	r1, #83886080
	str	r0, [r3, #212]
	str	r1, [r3, #216]
	str	r2, [r3, #220]
	bx	lr
	.size	loadPalette, .-loadPalette
	.align	2
	.global	fillScreen
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	ldr	r2, .L54
	add	r3, sp, #8
	strh	r0, [r3, #-2]!	@ movhi
	mov	r1, #-2130706432
	ldr	r0, [r2, #0]
	add	r1, r1, #38400
	mov	r2, #67108864
	str	r3, [r2, #212]
	str	r0, [r2, #216]
	str	r1, [r2, #220]
	add	sp, sp, #8
	bx	lr
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	fillScreen4
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	ldr	r2, .L57
	add	r3, sp, #8
	orr	r0, r0, r0, asl #8
	strh	r0, [r3, #-2]!	@ movhi
	mov	r1, #-2130706432
	ldr	r0, [r2, #0]
	add	r1, r1, #19200
	mov	r2, #67108864
	str	r3, [r2, #212]
	str	r0, [r2, #216]
	str	r1, [r2, #220]
	add	sp, sp, #8
	bx	lr
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	tst	r2, #16
	ldrne	r1, .L62
	ldreq	r1, .L62
	ldrne	r0, [r1, #4]
	ldreq	r0, [r1, #8]
	bicne	r2, r2, #16
	orreq	r2, r2, #16
	strneh	r2, [r3, #0]	@ movhi
	streqh	r2, [r3, #0]	@ movhi
	strne	r0, [r1, #0]
	streq	r0, [r1, #0]
	bx	lr
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	waitForVBlank
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L65:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L65
	mov	r2, #67108864
.L67:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L67
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.global	frontBuffer
	.global	backBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 31) 4.5.0"
