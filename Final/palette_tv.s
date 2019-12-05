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
	.file	"palette_tv.c"
	.text
	.align	2
	.global	goToTVPause
	.type	goToTVPause, %function
goToTVPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L2
	mov	r2, #4
	str	r2, [r3, #0]
	mov	r2, #7936	@ movhi
	mov	r3, #67108864
	strh	r2, [r3, #8]	@ movhi
	mov	r5, #100663296
	ldr	r0, .L2+4
	ldr	r3, .L2+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L2+12
	add	r2, r5, #63488
	mov	r0, #3
	ldr	r1, .L2+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r0, #3
	ldr	r1, .L2+20
	mov	r3, #2992
	mov	lr, pc
	bx	r4
	ldr	r3, .L2+24
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L2+28
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	pTVState
	.word	pausePal
	.word	loadPalette
	.word	DMANow
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	shadowOAM
	.size	goToTVPause, .-goToTVPause
	.align	2
	.global	goToTVWin
	.type	goToTVWin, %function
goToTVWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L5
	mov	r2, #2
	str	r2, [r3, #0]
	mov	r2, #7936	@ movhi
	mov	r3, #67108864
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L5+4
	mov	r5, #100663296
	ldr	r3, .L5+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L5+12
	mov	r0, #3
	ldr	r1, .L5+16
	add	r2, r5, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L5+20
	mov	r2, r5
	mov	r3, #3600
	mov	lr, pc
	bx	r4
	ldr	r3, .L5+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L5+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L5+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	pTVState
	.word	palette_winPal
	.word	loadPalette
	.word	DMANow
	.word	palette_winMap
	.word	palette_winTiles
	.word	hideSprites
	.word	shadowOAM
	.word	tvOpen
	.size	goToTVWin, .-goToTVWin
	.align	2
	.global	updateTVWin
	.type	updateTVWin, %function
updateTVWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L11
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L7
	ldr	r3, .L11+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L10
.L7:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L10:
	ldr	r3, .L11+8
	mov	lr, pc
	bx	r3
	mov	r1, #2834432
	mov	r2, #11008
	ldr	r0, .L11+12
	sub	r1, r1, #3392
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L11+16
	mov	lr, pc
	bx	ip
	ldr	r3, .L11+20
	mov	lr, pc
	bx	r3
	b	.L7
.L12:
	.align	2
.L11:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	hubMusic
	.word	playSoundB
	.word	goToGame
	.size	updateTVWin, .-updateTVWin
	.align	2
	.global	goToTVLose
	.type	goToTVLose, %function
goToTVLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L14
	mov	r2, #1
	str	r2, [r3, #0]
	mov	r2, #7936	@ movhi
	mov	r3, #67108864
	mov	r5, #100663296
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L14+4
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+12
	add	r2, r5, #63488
	mov	r0, #3
	ldr	r1, .L14+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r0, #3
	ldr	r1, .L14+20
	mov	r3, #2784
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+24
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L14+28
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	pTVState
	.word	palette_losePal
	.word	loadPalette
	.word	DMANow
	.word	palette_loseMap
	.word	palette_loseTiles
	.word	hideSprites
	.word	shadowOAM
	.size	goToTVLose, .-goToTVLose
	.align	2
	.global	updateTVLose
	.type	updateTVLose, %function
updateTVLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L19
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L16
	ldr	r3, .L19+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L18
.L16:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L18:
	ldr	r3, .L19+8
	mov	lr, pc
	bx	r3
	mov	r1, #2834432
	mov	r2, #11008
	ldr	r0, .L19+12
	sub	r1, r1, #3392
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L19+16
	mov	lr, pc
	bx	ip
	ldr	r3, .L19+20
	mov	lr, pc
	bx	r3
	b	.L16
.L20:
	.align	2
.L19:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	hubMusic
	.word	playSoundB
	.word	goToGame
	.size	updateTVLose, .-updateTVLose
	.align	2
	.global	drawBill
	.type	drawBill, %function
drawBill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldmia	r0, {r1, r4}	@ phole ldm
	ldr	ip, [r0, #32]
	ldr	r2, [r0, #24]
	ldr	r3, .L22
	mvn	r0, r4, asl #17
	mvn	r1, r1, asl #17
	add	r2, r2, ip, asl #6
	mvn	r0, r0, lsr #17
	mvn	r1, r1, lsr #17
	mov	r2, r2, asl #1
	strh	r0, [r3, #0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L23:
	.align	2
.L22:
	.word	shadowOAM
	.size	drawBill, .-drawBill
	.align	2
	.global	checkCollisionBillPlatform
	.type	checkCollisionBillPlatform, %function
checkCollisionBillPlatform:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r3, [r1, #4]
	cmp	r3, #59
	bhi	.L25
	ldr	r2, .L32
	ldr	ip, [r1, #12]
	ldr	r2, [r2, #0]
	cmp	ip, r2
	beq	.L24
.L25:
	sub	r2, r3, #60
	cmp	r2, #59
	bls	.L30
	sub	r2, r3, #120
	cmp	r2, #59
	bhi	.L28
.L31:
	ldr	r2, .L32+4
	ldr	ip, [r1, #12]
	ldr	r2, [r2, #0]
	cmp	ip, r2
	beq	.L24
.L29:
	ldr	ip, [r0, #4]
	ldr	r4, [r0, #12]
	ldr	r2, [r1, #8]
	add	r1, ip, r4
	add	r1, r1, #24
	cmp	r1, r2
	blt	.L24
	add	ip, ip, #23
	cmp	r2, ip
	ble	.L24
	ldr	r1, [r0, #0]
	add	ip, r3, #31
	cmp	ip, r1
	blt	.L24
	add	r1, r1, #15
	cmp	r3, r1
	bgt	.L24
	cmp	r4, #0
	ble	.L24
	mov	r3, #0
	sub	r2, r2, #24
	str	r3, [r0, #12]
	str	r3, [r0, #52]
	mov	r3, #1
	str	r2, [r0, #4]
	str	r3, [r0, #56]
.L24:
	ldmfd	sp!, {r4}
	bx	lr
.L30:
	ldr	r2, .L32+8
	ldr	ip, [r1, #12]
	ldr	r2, [r2, #0]
	cmp	ip, r2
	beq	.L24
	sub	r2, r3, #120
	cmp	r2, #59
	bls	.L31
.L28:
	cmp	r3, #179
	ble	.L29
	ldr	r2, .L32+12
	ldr	ip, [r1, #12]
	ldr	r2, [r2, #0]
	cmp	ip, r2
	bne	.L29
	b	.L24
.L33:
	.align	2
.L32:
	.word	bg0
	.word	bg2
	.word	bg1
	.word	bg3
	.size	checkCollisionBillPlatform, .-checkCollisionBillPlatform
	.align	2
	.global	drawPlatforms
	.type	drawPlatforms, %function
drawPlatforms:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L40
	stmfd	sp!, {r4, r5, r6, r7}
	ldr	ip, [r3, #0]
	cmp	ip, #0
	ble	.L34
	mov	r1, #0
	ldr	r3, .L40+4
	ldr	r2, .L40+8
	mov	r7, #1
	mov	r6, r1
.L38:
	ldr	r0, [r3, #0]
	cmp	r0, #159
	movhi	r0, #512	@ movhi
	strhih	r0, [r2, #32]	@ movhi
	strhi	r6, [r3, #-8]
	bhi	.L37
	ldr	r4, [r3, #4]
	ldr	r5, [r3, #-4]
	mov	r4, r4, asl #5
	orr	r0, r0, #16384
	orr	r5, r5, #16384
	add	r4, r4, #8
	strh	r0, [r2, #32]	@ movhi
	strh	r5, [r2, #34]	@ movhi
	strh	r4, [r2, #36]	@ movhi
	str	r7, [r3, #-8]
.L37:
	add	r1, r1, #1
	cmp	ip, r1
	add	r3, r3, #16
	add	r2, r2, #8
	bgt	.L38
.L34:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.word	platforms+8
	.word	shadowOAM
	.size	drawPlatforms, .-drawPlatforms
	.align	2
	.global	goToTVGame
	.type	goToTVGame, %function
goToTVGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	mov	r2, #3
	stmfd	sp!, {r4, lr}
	mov	r1, #7936	@ movhi
	str	r2, [r3, #0]
	mov	r3, #67108864
	strh	r1, [r3, #8]	@ movhi
	ldr	r0, .L49+4
	ldr	r3, .L49+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+12
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L46
	cmp	r3, #2
	beq	.L47
	cmp	r3, #3
	beq	.L48
.L44:
	mov	r2, #100663296
	ldr	r4, .L49+16
	mov	r0, #3
	ldr	r1, .L49+20
	add	r2, r2, #63488
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L49+24
	mov	r2, #100663296
	mov	r3, #96
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	drawPlatforms
.L48:
	mov	r3, #83886080
	ldrh	r1, [r3, #4]
	ldrh	r2, [r3, #6]
	ldrh	r0, [r3, #2]
	strh	r1, [r3, #6]	@ movhi
	ldrh	r1, [r3, #0]
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	b	.L44
.L46:
	mov	r3, #83886080
	ldrh	r0, [r3, #2]
	ldrh	r2, [r3, #0]
	ldrh	r1, [r3, #4]
	strh	r0, [r3, #0]	@ movhi
	ldrh	r0, [r3, #6]
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	b	.L44
.L47:
	mov	r3, #83886080
	ldrh	r0, [r3, #4]
	ldrh	r1, [r3, #0]
	ldrh	r2, [r3, #2]
	strh	r0, [r3, #0]	@ movhi
	ldrh	r0, [r3, #6]
	strh	r1, [r3, #4]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	b	.L44
.L50:
	.align	2
.L49:
	.word	pTVState
	.word	backgroundPal
	.word	loadPalette
	.word	bg0
	.word	DMANow
	.word	backgroundMap
	.word	backgroundTiles
	.size	goToTVGame, .-goToTVGame
	.align	2
	.global	updateTVPause
	.type	updateTVPause, %function
updateTVPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L56
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L56+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L54
.L52:
	tst	r3, #4
	beq	.L51
	ldr	r3, .L56+4
	ldr	r3, [r3, #0]
	ands	r3, r3, #4
	beq	.L55
.L51:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L55:
	ldr	r2, .L56+8
	str	r3, [r2, #0]
	ldr	r3, .L56+12
	mov	lr, pc
	bx	r3
	mov	r1, #2834432
	mov	r2, #11008
	ldr	r0, .L56+16
	sub	r1, r1, #3392
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L56+20
	mov	lr, pc
	bx	ip
	ldr	r3, .L56+24
	mov	lr, pc
	bx	r3
	b	.L51
.L54:
	ldr	r3, .L56+28
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	goToTVGame
.L57:
	.align	2
.L56:
	.word	oldButtons
	.word	buttons
	.word	pTVState
	.word	stopSound
	.word	hubMusic
	.word	playSoundB
	.word	goToGame
	.word	unpauseSound
	.size	updateTVPause, .-updateTVPause
	.align	2
	.global	updateTVInstructions
	.type	updateTVInstructions, %function
updateTVInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L61
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L61+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L60
.L58:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L60:
	bl	goToTVGame
	mov	r1, #2310144
	add	r1, r1, #3808
	mov	r2, #11008
	ldr	r0, .L61+8
	add	r1, r1, #9
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L61+12
	mov	lr, pc
	bx	ip
	b	.L58
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.word	tvMusic_c1
	.word	playSoundB
	.size	updateTVInstructions, .-updateTVInstructions
	.align	2
	.global	initPaletteTV
	.type	initPaletteTV, %function
initPaletteTV:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r0, .L67
	mov	ip, #0
	sub	sp, sp, #16
	str	ip, [r0, #0]
	ldr	r0, .L67+4
	mov	fp, #1
	str	fp, [r0, #0]
	ldr	r0, .L67+8
	mov	r1, #2
	str	r1, [r0, #0]
	ldr	r0, .L67+12
	mov	r4, #3
	str	r4, [r0, #0]
	mov	r2, #299008
	ldr	r0, .L67+16
	add	r2, r2, #992
	str	r2, [r0, #0]
	ldr	r2, .L67+20
	str	ip, [r2, #0]
	ldr	r2, .L67+24
	str	ip, [r2, #0]
	ldr	r2, .L67+28
	mov	r0, #159
	str	r0, [r2, #0]
	ldr	r7, .L67+32
	ldr	r2, .L67+36
	ldr	r3, .L67+40
	ldr	sl, [r7, #0]
	str	ip, [r2, #0]
	mov	r2, #127
	str	r2, [r3, #4]
	mov	r2, #1065353216
	str	r2, [r3, #44]	@ float
	cmp	sl, ip
	mov	r2, #6
	str	ip, [r3, #0]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #36]
	str	r1, [r3, #40]
	str	ip, [r3, #52]
	str	fp, [r3, #56]
	ble	.L63
	mov	sl, sl, asl r1
	ldr	r8, .L67+44
	add	r6, r7, #4
	add	r5, r7, #92
	mov	r9, sp
	add	r7, r7, #180
.L65:
	ldr	r1, [r6, ip]
	ldr	r2, [r5, ip]
	ldr	r3, [r7, ip]
	stmib	sp, {r1, r2, r3}	@ phole stm
	str	fp, [sp, #0]
	add	r4, r8, ip, asl #2
	ldmia	r9, {r0, r1, r2, r3}
	add	ip, ip, #4
	cmp	ip, sl
	stmia	r4, {r0, r1, r2, r3}
	bne	.L65
.L63:
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L68:
	.align	2
.L67:
	.word	bg0
	.word	bg1
	.word	bg2
	.word	bg3
	.word	maxTime
	.word	dead
	.word	totalYOff
	.word	dZ
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	bill
	.word	platforms
	.size	initPaletteTV, .-initPaletteTV
	.align	2
	.global	goToTVInstructions
	.type	goToTVInstructions, %function
goToTVInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	initPaletteTV
	ldr	r3, .L70
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r2, #7936	@ movhi
	mov	r3, #67108864
	mov	r5, #100663296
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L70+4
	ldr	r3, .L70+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L70+12
	add	r2, r5, #63488
	mov	r0, #3
	ldr	r1, .L70+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r1, .L70+20
	mov	r2, r5
	add	r3, r3, #32
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	pTVState
	.word	tvInstructionsPal
	.word	loadPalette
	.word	DMANow
	.word	tvInstructionsMap
	.word	tvInstructionsTiles
	.size	goToTVInstructions, .-goToTVInstructions
	.align	2
	.global	initTV
	.type	initTV, %function
initTV:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	mov	r2, #83886080
	ldr	r4, .L73+4
	mov	r0, #3
	ldr	r1, .L73+8
	add	r2, r2, #512
	mov	r3, #16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L73+12
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	goToTVInstructions
.L74:
	.align	2
.L73:
	.word	stopSound
	.word	DMANow
	.word	spritesPal
	.word	spritesTiles
	.size	initTV, .-initTV
	.align	2
	.global	changeCamera
	.type	changeCamera, %function
changeCamera:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L79
	ldr	r3, .L79+4
	ldr	r1, .L79+8
	str	r4, [sp, #-4]!
	ldr	r4, [r2, #4]
	ldr	ip, [r3, #0]
	ldr	r1, [r1, #0]
	add	r4, r0, r4
	add	ip, r0, ip
	cmp	r1, #0
	str	r4, [r2, #4]
	str	ip, [r3, #0]
	ble	.L76
	ldr	r3, .L79+12
	add	r1, r3, r1, asl #4
.L77:
	ldr	r2, [r3, #8]
	add	r2, r2, r0
	str	r2, [r3, #8]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L77
.L76:
	ldmfd	sp!, {r4}
	b	drawPlatforms
.L80:
	.align	2
.L79:
	.word	bill
	.word	dZ
	.word	.LANCHOR0
	.word	platforms
	.size	changeCamera, .-changeCamera
	.global	__aeabi_i2f
	.global	__aeabi_fadd
	.global	__aeabi_f2iz
	.align	2
	.global	updateBill
	.type	updateBill, %function
updateBill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #16
	ldr	r0, [r0, #12]
	mov	r3, #0
	str	r3, [sp, #12]
	str	r0, [r4, #16]
	str	r3, [sp, #8]
	str	r3, [sp, #4]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	moveq	r3, #1
	streq	r3, [sp, #12]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	mvneq	r3, #0
	streq	r3, [sp, #8]
	ldr	r3, .L119
	ldr	r3, [r3, #0]
	tst	r3, #64
	beq	.L84
	ldr	r3, .L119+4
	ldr	r3, [r3, #0]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [sp, #4]
.L84:
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r6, [r4, #40]
	add	r3, r2, r3
	mul	r6, r3, r6
	cmp	r0, #9
	str	r6, [r4, #8]
	ldrgt	r5, .L119+8
	bgt	.L85
	ldr	r5, .L119+8
	ldr	r2, .L119+12
	ldr	r3, [r5, #0]
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #6
	rsb	r2, r2, r2, asl #4
	cmp	r3, r2, asl #3
	beq	.L112
.L85:
	ldr	r3, [r4, #0]
	add	r6, r6, r3
	cmp	r6, #0
	movle	r3, #0
	strle	r3, [r4, #8]
	strle	r3, [r4, #0]
	ble	.L87
	cmp	r6, #223
	movgt	r3, #0
	strgt	r3, [r4, #8]
	movgt	r3, #223
	strgt	r3, [r4, #0]
.L87:
	ldr	r3, [r4, #4]
	adds	r3, r0, r3
	bmi	.L113
	cmp	r3, #135
	bgt	.L114
.L90:
	ldr	r2, .L119+16
	ldr	r2, [r2, #0]
	sub	r2, r2, #23
	cmp	r2, r3
	bgt	.L91
	mov	r1, #67108864
	mov	r3, #0
	str	r2, [r4, #4]
	add	r1, r1, #256
	mov	r2, #67108864
	str	r3, [r4, #52]
	str	r3, [r4, #12]
	str	r3, [r2, #196]
	strh	r3, [r1, #2]	@ movhi
.L91:
	ldr	r8, .L119+20
	ldr	r3, [r8, #0]
	cmp	r3, #0
	ble	.L92
	ldr	r7, .L119+24
	mov	r6, #0
	b	.L94
.L93:
	ldr	r3, [r8, #0]
	cmp	r3, r6
	ble	.L92
.L94:
	ldr	r3, [r7, r6, asl #4]
	cmp	r3, #0
	add	r1, r7, r6, asl #4
	add	r6, r6, #1
	beq	.L93
	mov	r0, r4
	bl	checkCollisionBillPlatform
	ldr	r3, [r8, #0]
	cmp	r3, r6
	bgt	.L94
.L92:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L95
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.L115
.L95:
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #12]
	cmp	r3, #6
	strne	r3, [r4, #28]
	mov	r3, #6
	cmp	r0, #0
	str	r3, [r4, #20]
	bne	.L97
	ldr	ip, [r4, #8]
	cmp	ip, #0
	movgt	r3, #3
	strgt	r3, [r4, #20]
	strgt	r3, [r4, #24]
	ble	.L116
.L103:
	ldr	r3, [r5, #0]
	ldr	r2, .L119+28
	smull	r5, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #6
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #3
	bne	.L105
	ldr	r2, [r4, #20]
	sub	r2, r2, #2
	cmp	r2, #1
	bls	.L117
.L105:
	ldr	r2, .L119+28
	smull	r5, r2, r3, r2
	rsb	r2, r1, r2, asr #4
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #1
	ldreq	r2, [r4, #0]
	addeq	ip, r2, ip
	ldr	r2, .L119+32
	streq	ip, [r4, #0]
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #6
	add	r1, r2, r2, asl #1
	rsb	r2, r2, r1, asl #5
	cmp	r3, r2
	ldreq	r3, [r4, #4]
	addeq	r0, r3, r0
	streq	r0, [r4, #4]
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L97:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L101
	mov	r3, #1
	mov	r2, #5
	str	r2, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #32]
.L102:
	ldr	r3, [r4, #20]
	cmp	r3, #6
	mov	r3, #0
	str	r3, [r4, #56]
	bne	.L103
	ldr	r3, [r4, #28]
	mov	r2, #0
	cmp	r3, #2
	cmpne	r3, #4
	str	r2, [r4, #32]
	streq	r2, [r4, #24]
	beq	.L103
.L118:
	cmp	r3, #3
	cmpne	r3, #5
	moveq	r3, #1
	streq	r3, [r4, #24]
	b	.L103
.L114:
	ldr	r6, .L119+36
	ldr	r2, [r6, #0]
	rsb	r2, r0, r2
	cmp	r2, #0
	ble	.L90
.L111:
	rsb	r0, r0, #0
	bl	changeCamera
	ldr	r3, [r4, #12]
	ldr	r1, [r6, #0]
	ldr	r2, [r4, #4]
	rsb	r1, r3, r1
	str	r1, [r6, #0]
	add	r3, r3, r2
	b	.L90
.L112:
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #44]	@ float
	ldr	r3, .L119+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+48
	mov	lr, pc
	bx	r3
	str	r0, [r4, #12]
	b	.L85
.L113:
	ldr	r6, .L119+36
	ldr	r3, [r6, #0]
	rsb	r3, r0, r3
	cmp	r3, #500
	movge	r3, #0
	strge	r3, [r4, #12]
	strge	r3, [r4, #4]
	bge	.L90
	b	.L111
.L115:
	ldr	r0, [r4, #36]
	ldr	ip, [r4, #4]
	rsb	r0, r0, #0
	add	ip, ip, r0
	str	r0, [r4, #12]
	mov	r1, #8192
	mov	r0, #1
	mov	r2, #11008
	str	ip, [r4, #4]
	str	r0, [r4, #52]
	add	r1, r1, #59
	ldr	r0, .L119+52
	add	r2, r2, #17
	ldr	ip, .L119+56
	mov	lr, pc
	bx	ip
	b	.L95
.L117:
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L105
	ldr	r5, [r4, #32]
	cmp	r5, #7
	addne	r5, r5, #1
	moveq	r5, r2
	str	r5, [r4, #32]
	b	.L105
.L116:
	movne	r3, #2
	strne	r3, [r4, #20]
	strne	r3, [r4, #24]
	bne	.L103
	ldr	r3, [r4, #28]
	mov	r2, #0
	cmp	r3, #2
	cmpne	r3, #4
	str	r2, [r4, #32]
	streq	r2, [r4, #24]
	beq	.L103
	b	.L118
.L101:
	beq	.L102
	mov	r3, #4
	str	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #24]
	mov	r3, #1
	str	r3, [r4, #32]
	b	.L102
.L120:
	.align	2
.L119:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR1
	.word	-2004318071
	.word	dZ
	.word	.LANCHOR0
	.word	platforms
	.word	1374389535
	.word	-1401515643
	.word	totalYOff
	.word	__aeabi_i2f
	.word	__aeabi_fadd
	.word	__aeabi_f2iz
	.word	Jump
	.word	playSoundA
	.size	updateBill, .-updateBill
	.align	2
	.global	setTimer
	.type	setTimer, %function
setTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L122
	str	r4, [sp, #-4]!
	ldr	r1, [r3, #0]
	ldr	r3, .L122+4
	ldr	r3, [r3, #0]
	rsb	r3, r3, r1
	ldr	r1, .L122+8
	smull	r2, r1, r3, r1
	ldr	r0, .L122+12
	mov	r3, r3, asr #31
	rsb	r1, r3, r1, asr #6
	smull	r3, r2, r0, r1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2, asr #2
	smull	r3, ip, r0, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, ip, asr #2
	smull	ip, r0, r3, r0
	mov	ip, r3, asr #31
	rsb	r0, ip, r0, asr #2
	add	r4, r3, r3, asl #2
	add	ip, r2, r2, asl #2
	add	r0, r0, r0, asl #2
	sub	r2, r2, r4, asl #1
	sub	ip, r1, ip, asl #1
	sub	r0, r3, r0, asl #1
	mov	r2, r2, asl #5
	ldr	r3, .L122+16
	add	r2, r2, #12
	mov	ip, ip, asl #5
	add	ip, ip, #12
	mov	r0, r0, asl #5
	strh	r2, [r3, #20]	@ movhi
	mov	r2, #12	@ movhi
	mov	r1, #2
	add	r0, r0, #12
	strh	ip, [r3, #12]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	mov	ip, #6	@ movhi
	mov	r2, #0	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r0, [r3, #28]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L123:
	.align	2
.L122:
	.word	maxTime
	.word	.LANCHOR1
	.word	274877907
	.word	1717986919
	.word	shadowOAM
	.size	setTimer, .-setTimer
	.align	2
	.global	updateTVGame
	.type	updateTVGame, %function
updateTVGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L137
	ldr	r5, .L137+4
	mov	r0, r4
	bl	updateBill
	ldr	r2, [r5, #0]
	ldr	r1, .L137+8
	smull	r3, r1, r2, r1
	mov	r3, r2, asr #31
	rsb	r1, r3, r1, asr #6
	ldmia	r4, {ip, lr}	@ phole ldm
	ldr	r7, [r4, #32]
	ldr	r0, [r4, #24]
	rsb	r6, r1, r1, asl #5
	ldr	r3, .L137+12
	mvn	lr, lr, asl #17
	mvn	ip, ip, asl #17
	add	r0, r0, r7, asl #6
	add	r1, r1, r6, asl #2
	mvn	lr, lr, lsr #17
	mvn	ip, ip, lsr #17
	mov	r0, r0, asl #1
	cmp	r2, r1, asl #3
	strh	lr, [r3, #0]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	beq	.L132
.L125:
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L137+12
	ldr	ip, .L137+16
	mov	lr, pc
	bx	ip
	ldr	r3, .L137+20
	ldr	r2, [r5, #0]
	ldr	r3, [r3, #0]
	add	r2, r2, #1
	tst	r3, #1
	str	r2, [r5, #0]
	beq	.L126
	ldr	r2, .L137+24
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L133
.L126:
	tst	r3, #8
	beq	.L129
	ldr	r3, .L137+24
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L134
.L129:
	ldr	r2, .L137+28
	ldr	r3, [r5, #0]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	beq	.L135
.L130:
	ldr	r3, .L137+32
	ldr	r1, [r4, #4]
	ldr	r2, [r3, #0]
	mvn	r3, #268
	rsb	r2, r2, r1
	sub	r3, r3, #1
	cmp	r2, r3
	blt	.L136
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L133:
	mov	r2, #83886080
	ldrh	r8, [r2, #4]
	ldr	r1, .L137+36
	ldr	r0, .L137+40
	ldr	r6, [r1, #0]
	ldrh	r7, [r2, #6]
	ldr	ip, [r0, #0]
	strh	r8, [r2, #6]	@ movhi
	ldr	r8, .L137+44
	str	ip, [r8, #0]
	ldrh	r8, [r2, #2]
	sub	r6, r6, #1
	strh	r8, [r2, #4]	@ movhi
	cmn	r6, #1
	str	r6, [r1, #0]
	ldrh	r6, [r2, #0]
	strh	r7, [r2, #0]	@ movhi
	strh	r6, [r2, #2]	@ movhi
	moveq	r2, #3
	streq	r2, [r1, #0]
	ldr	r2, .L137+48
	ldr	r1, [r2, #0]
	sub	r1, r1, #1
	cmn	r1, #1
	str	r1, [r2, #0]
	moveq	r1, #3
	streq	r1, [r2, #0]
	sub	r2, ip, #1
	cmn	r2, #1
	str	r2, [r0, #0]
	ldreq	r2, .L137+40
	moveq	r1, #3
	streq	r1, [r2, #0]
	b	.L126
.L136:
	ldr	r3, .L137+52
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	goToTVWin
.L132:
	bl	setTimer
	b	.L125
.L134:
	ldr	r3, .L137+56
	mov	lr, pc
	bx	r3
	bl	goToTVPause
	ldr	r2, .L137+28
	ldr	r3, [r5, #0]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bne	.L130
.L135:
	ldr	r3, .L137+52
	mov	lr, pc
	bx	r3
	bl	goToTVLose
	b	.L130
.L138:
	.align	2
.L137:
	.word	bill
	.word	.LANCHOR1
	.word	274877907
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	maxTime
	.word	totalYOff
	.word	bg1
	.word	bg3
	.word	bg0
	.word	bg2
	.word	stopSound
	.word	pauseSound
	.size	updateTVGame, .-updateTVGame
	.align	2
	.global	pTUpdate
	.type	pTUpdate, %function
pTUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L147
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L139
.L146:
	.word	.L141
	.word	.L142
	.word	.L143
	.word	.L144
	.word	.L145
.L145:
	b	updateTVPause
.L141:
	b	updateTVInstructions
.L142:
	b	updateTVLose
.L143:
	b	updateTVWin
.L144:
	b	updateTVGame
.L139:
	bx	lr
.L148:
	.align	2
.L147:
	.word	pTVState
	.size	pTUpdate, .-pTUpdate
	.global	timer
	.global	platformCount
	.global	platformX
	.global	platformY
	.global	platformCol
	.comm	pTVState,4,4
	.comm	totalYOff,4,4
	.comm	dead,4,4
	.comm	maxTime,4,4
	.comm	bg0,4,4
	.comm	bg1,4,4
	.comm	bg2,4,4
	.comm	bg3,4,4
	.comm	platformMove,4,4
	.comm	bill,68,4
	.comm	platforms,352,4
	.comm	dZ,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	platformCount, %object
	.size	platformCount, 4
platformCount:
	.word	22
	.type	platformX, %object
	.size	platformX, 88
platformX:
	.word	64
	.word	64
	.word	64
	.word	120
	.word	208
	.word	208
	.word	136
	.word	64
	.word	0
	.word	64
	.word	120
	.word	200
	.word	144
	.word	144
	.word	72
	.word	0
	.word	0
	.word	0
	.word	80
	.word	144
	.word	144
	.word	144
	.type	platformY, %object
	.size	platformY, 88
platformY:
	.word	136
	.word	112
	.word	88
	.word	72
	.word	48
	.word	24
	.word	24
	.word	8
	.word	-16
	.word	-40
	.word	-40
	.word	-64
	.word	-88
	.word	-112
	.word	-120
	.word	-128
	.word	-152
	.word	-176
	.word	-184
	.word	-208
	.word	-232
	.word	-256
	.type	platformCol, %object
	.size	platformCol, 88
platformCol:
	.word	1
	.word	0
	.word	1
	.word	0
	.word	2
	.word	0
	.word	2
	.word	3
	.word	3
	.word	1
	.word	0
	.word	3
	.word	3
	.word	2
	.word	3
	.word	0
	.word	0
	.word	2
	.word	0
	.word	2
	.word	1
	.word	0
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
