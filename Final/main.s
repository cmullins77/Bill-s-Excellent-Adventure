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
	.file	"main.c"
	.text
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	mov	r3, #0
.L2:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L2
	bx	lr
.L6:
	.align	2
.L5:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	goToSplash
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #7168	@ movhi
	mov	r6, #67108864
	ldr	r0, .L10
	strh	r2, [r6, #8]	@ movhi
	ldr	r3, .L10+4
	mov	lr, pc
	bx	r3
	ldr	ip, .L10+8
	mov	r4, #0
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L10+12
	add	r2, r2, #57344
	mov	r3, #1024
	ldr	r5, .L10+16
	str	r4, [ip, #0]
	str	r4, [ip, #4]
	mov	lr, pc
	bx	r5
	ldr	r1, .L10+20
	mov	r2, #100663296
	mov	r3, #3712
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L10+24
	mov	r2, #100
	strh	r4, [r6, #16]	@ movhi
	mov	r1, #65
	str	r2, [r3, #0]
	str	r2, [r3, #12]
	mov	r2, #1
	str	r1, [r3, #4]
	str	r2, [r3, #36]
	ldr	r3, .L10+28
	str	r4, [r3, #0]
	ldr	r3, .L10+32
	str	r4, [r3, #0]
	strh	r4, [r6, #18]	@ movhi
	ldr	r3, .L10+36
.L8:
	mov	r2, #512	@ movhi
	strh	r2, [r3, r4]	@ movhi
	add	r4, r4, #8
	cmp	r4, #1024
	bne	.L8
	ldr	ip, .L10+40
	mov	lr, #1
	mov	r0, #3
	ldr	r1, .L10+36
	mov	r2, #117440512
	mov	r3, #512
	str	lr, [ip, #0]
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	titlePal
	.word	loadPalette
	.word	.LANCHOR0
	.word	titleMap
	.word	DMANow
	.word	titleTiles
	.word	hubBill
	.word	virusOpen
	.word	tvOpen
	.word	shadowOAM
	.word	state
	.size	goToSplash, .-goToSplash
	.align	2
	.global	goToAnimation
	.type	goToAnimation, %function
goToAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L13
	mov	r2, #8
	str	r2, [r3, #0]
	ldr	r3, .L13+4
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	state
	.word	startAnimation
	.size	goToAnimation, .-goToAnimation
	.align	2
	.global	updateSplash
	.type	updateSplash, %function
updateSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L17+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	goToAnimation
.L18:
	.align	2
.L17:
	.word	oldButtons
	.word	buttons
	.size	updateSplash, .-updateSplash
	.align	2
	.global	updateAnimation
	.type	updateAnimation, %function
updateAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	titleAnimation
	.size	updateAnimation, .-updateAnimation
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r2, #6144	@ movhi
	mov	r3, #67108864
	strh	r2, [r3, #8]	@ movhi
	ldr	r2, .L25
	mov	r1, #2
	str	r1, [r2, #0]
	mov	r2, #0	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r0, .L25+4
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, .L25+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+12
	mov	r4, #0
.L23:
	mov	r2, #512	@ movhi
	strh	r2, [r3, r4]	@ movhi
	add	r4, r4, #8
	cmp	r4, #1024
	bne	.L23
	ldr	r5, .L25+16
	mov	r0, #3
	ldr	r1, .L25+12
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, r4
	mov	r0, #3
	ldr	r1, .L25+20
	add	r2, r2, #49152
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L25+24
	mov	r2, #100663296
	mov	r3, #1664
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	state
	.word	instructionsPal
	.word	loadPalette
	.word	shadowOAM
	.word	DMANow
	.word	instructionsMap
	.word	instructionsTiles
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToTV
	.type	goToTV, %function
goToTV:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L30
	mov	r2, #6
	str	r2, [r3, #0]
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L30+8
	mov	r3, #0
.L28:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L28
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L30+8
	ldr	ip, .L30+12
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	mov	r2, #0	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	state
	.word	initTV
	.word	shadowOAM
	.word	DMANow
	.size	goToTV, .-goToTV
	.align	2
	.global	updateTV
	.type	updateTV, %function
updateTV:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	pTUpdate
	.size	updateTV, .-updateTV
	.align	2
	.global	goToVirus
	.type	goToVirus, %function
goToVirus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L38
	mov	r2, #7
	str	r2, [r3, #0]
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L38+8
	mov	r3, #0
.L36:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L36
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L38+8
	ldr	ip, .L38+12
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	mov	r2, #0	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	state
	.word	initVirus
	.word	shadowOAM
	.word	DMANow
	.size	goToVirus, .-goToVirus
	.align	2
	.global	updateVirus
	.type	updateVirus, %function
updateVirus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	vUpdate
	.size	updateVirus, .-updateVirus
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6912	@ movhi
	mov	r3, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r0, .L46
	strh	r1, [r3, #8]	@ movhi
	ldr	r3, .L46+4
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L46+8
	add	r2, r2, #55296
	mov	r3, #1024
	ldr	r4, .L46+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #2992
	mov	r0, #3
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L46+20
	mov	r3, #0
.L44:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L44
	mov	r0, #3
	ldr	r1, .L46+20
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, r3
	mov	r1, #0	@ movhi
	strh	r1, [r2, #16]	@ movhi
	ldr	r1, .L46+24
	mov	r0, #5
	str	r0, [r1, #0]
	add	r3, r3, #256
	mov	r1, #0	@ movhi
	strh	r1, [r2, #18]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	pausePal
	.word	loadPalette
	.word	pauseMap
	.word	DMANow
	.word	pauseTiles
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L49
	mov	r2, #3
	str	r2, [r3, #0]
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	state
	.word	startAnimation
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L54
	stmfd	sp!, {r3, lr}
	mov	r3, #0
.L52:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L52
	ldr	r1, .L54
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	ip, .L54+4
	mov	lr, pc
	bx	ip
	ldr	r2, .L54+8
	mov	r1, #4
	str	r1, [r2, #0]
	mov	r3, #67108864
	mov	r2, #0	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	shadowOAM
	.word	DMANow
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	updateLose
	.type	updateLose, %function
updateLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L58
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L58+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	goToSplash
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	buttons
	.size	updateLose, .-updateLose
	.align	2
	.global	updateHubBill
	.type	updateHubBill, %function
updateHubBill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #0]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L61
	ldr	r3, .L77
	ldr	r3, [r3, #0]
	cmp	r3, #49
	movle	r3, #1
	strle	r3, [sp, #4]
.L61:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L62
	ldr	r3, .L77
	ldr	r3, [r3, #0]
	cmn	r3, #69
	mvnge	r3, #0
	strge	r3, [sp, #0]
.L62:
	ldr	r3, [sp, #0]
	ldr	r1, [sp, #4]
	ldr	r2, [r0, #36]
	add	r3, r1, r3
	mul	r3, r2, r3
	ldr	r2, [r0, #0]
	add	r2, r3, r2
	cmp	r2, #7
	str	r3, [r0, #8]
	bgt	.L63
	ldr	r2, [r0, #4]
	cmp	r2, #24
	moveq	r2, #104
	streq	r2, [r0, #4]
	movne	r3, #0
	moveq	r2, #199
	movne	r2, #8
	streq	r2, [r0, #0]
	strne	r3, [r0, #8]
	strne	r2, [r0, #0]
.L65:
	ldr	r2, [r0, #20]
	cmp	r2, #6
	strne	r2, [r0, #28]
	cmp	r3, #0
	movgt	r3, #3
	mov	r2, #6
	str	r2, [r0, #20]
	strgt	r3, [r0, #24]
	strgt	r3, [r0, #20]
	ble	.L75
.L71:
	ldr	r3, .L77+4
	ldr	r2, .L77+8
	ldr	r3, [r3, #0]
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #5
	rsb	r1, r2, r2, asl #5
	add	r2, r2, r1, asl #2
	cmp	r3, r2, asl #2
	bne	.L60
	ldr	r3, [r0, #20]
	sub	r3, r3, #2
	cmp	r3, #1
	bls	.L76
.L60:
	add	sp, sp, #8
	bx	lr
.L63:
	cmp	r2, #199
	ble	.L65
	ldr	r2, [r0, #4]
	cmp	r2, #104
	moveq	r2, #24
	streq	r2, [r0, #4]
	movne	r3, #0
	moveq	r2, #8
	movne	r2, #199
	streq	r2, [r0, #0]
	strne	r3, [r0, #8]
	strne	r2, [r0, #0]
	b	.L65
.L76:
	ldr	r3, [r0, #32]
	cmp	r3, #7
	addne	r3, r3, #1
	moveq	r3, #0
	str	r3, [r0, #32]
	b	.L60
.L75:
	movne	r3, #2
	strne	r3, [r0, #20]
	strne	r3, [r0, #24]
	bne	.L71
	mov	r2, #67108864
	str	r3, [r2, #196]
	ldr	r2, [r0, #28]
	cmp	r2, #2
	str	r3, [r0, #32]
	beq	.L74
	cmp	r2, #3
	bne	.L71
	mov	r3, #1
.L74:
	str	r3, [r0, #24]
	b	.L71
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.word	hubTimer
	.word	274877907
	.size	updateHubBill, .-updateHubBill
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	beq	.L91
	ldr	r6, .L97
	ldr	r8, .L97+4
	ldr	r5, .L97+8
.L80:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L81
	ldr	r3, [r6, #0]
	ldr	r2, .L97+12
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #6
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #3
	beq	.L94
.L81:
	ldr	r7, .L97+8
	mov	r0, r7
	bl	updateHubBill
	ldr	r3, [r5, #32]
	ldmia	r5, {sl, lr}	@ phole ldm
	ldr	ip, [r5, #24]
	ldr	r4, .L97+16
	add	ip, r3, ip, asl #6
	mvn	lr, lr, asl #17
	mvn	sl, sl, asl #18
	mvn	lr, lr, lsr #17
	mov	ip, ip, asl #2
	mvn	sl, sl, lsr #18
	mov	r0, #3
	mov	r1, r4
	mov	r2, #117440512
	mov	r3, #512
	strh	ip, [r4, #4]	@ movhi
	strh	lr, [r4, #0]	@ movhi
	ldr	ip, .L97+20
	strh	sl, [r4, #2]	@ movhi
	mov	lr, pc
	bx	ip
	ldr	r3, [r8, #0]
	ldr	r2, [r5, #12]
	mov	r0, r3, asl #17
	mov	r1, r3, asl #16
	sub	ip, r2, #45
	mov	r3, #67108864
	mov	r0, r0, lsr #16
	mov	r1, r1, lsr #16
	cmp	ip, #25
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	bhi	.L82
	ldr	r3, [r7, #0]
	add	r3, r3, #8
	orr	r3, r3, #16384
	mov	r2, #45	@ movhi
	strh	r3, [r4, #50]	@ movhi
	mov	r3, #4	@ movhi
	strh	r2, [r4, #48]	@ movhi
	strh	r3, [r4, #52]	@ movhi
.L83:
	ldr	r3, .L97+24
	ldr	r3, [r3, #0]
	tst	r3, #1
	beq	.L85
	ldr	r2, .L97+28
	ldr	r2, [r2, #0]
	tst	r2, #1
	bne	.L85
	ldr	r3, [r5, #12]
	sub	r2, r3, #45
	cmp	r2, #25
	bls	.L95
	sub	r3, r3, #115
	cmp	r3, #25
	movls	r3, #67108864
	movls	r2, #4352	@ movhi
	strlsh	r2, [r3, #0]	@ movhi
	blls	goToVirus
.L87:
	ldr	r3, [r6, #0]
	add	r3, r3, #1
	str	r3, [r6, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L85:
	tst	r3, #4
	beq	.L87
	ldr	r3, .L97+28
	ldr	r3, [r3, #0]
	tst	r3, #4
	bne	.L87
	mov	r3, #67108864
	mov	r1, #4352	@ movhi
	strh	r1, [r3, #0]	@ movhi
	bl	goToPause
	b	.L87
.L82:
	sub	r2, r2, #115
	cmp	r2, #25
	ldrls	r3, [r7, #0]
	addls	r3, r3, #8
	orrls	r3, r3, #16384
	movls	r1, #45	@ movhi
	movls	r2, #4	@ movhi
	movhi	r3, #512	@ movhi
	strlsh	r1, [r4, #48]	@ movhi
	strlsh	r3, [r4, #50]	@ movhi
	strlsh	r2, [r4, #52]	@ movhi
	strhih	r3, [r4, #48]	@ movhi
	b	.L83
.L91:
	ldr	r6, .L97
	ldr	r2, .L97+12
	ldr	r3, [r6, #0]
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #6
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	subs	r3, r3, r2, asl #3
	bne	.L96
	ldr	r8, .L97+4
	ldr	r2, [r8, #0]
	cmn	r2, #69
	ldrlt	r5, .L97+8
	blt	.L80
	ldr	r5, .L97+8
	ldr	r1, [r5, #12]
	sub	r1, r1, #1
	cmp	r1, #0
	sub	r2, r2, #1
	movge	r3, r1
	str	r2, [r8, #0]
	str	r3, [r5, #12]
	b	.L80
.L94:
	ldr	r3, [r8, #0]
	cmp	r3, #49
	bgt	.L81
	ldr	r2, [r5, #12]
	ldr	r1, .L97+4
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, #255
	str	r3, [r1, #0]
	ldrgt	r3, .L97+8
	str	r2, [r5, #12]
	movgt	r2, #255
	strgt	r2, [r3, #12]
	b	.L81
.L96:
	ldr	r8, .L97+4
	ldr	r5, .L97+8
	b	.L80
.L95:
	mov	r3, #67108864
	mov	r1, #4352	@ movhi
	strh	r1, [r3, #0]	@ movhi
	bl	goToTV
	b	.L87
.L98:
	.align	2
.L97:
	.word	hubTimer
	.word	.LANCHOR0
	.word	hubBill
	.word	1374389535
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.size	updateGame, .-updateGame
	.align	2
	.global	drawHubBill
	.type	drawHubBill, %function
drawHubBill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldmia	r0, {r1, r4}	@ phole ldm
	ldr	ip, [r0, #24]
	ldr	r2, [r0, #32]
	ldr	r3, .L100
	mvn	r0, r4, asl #17
	mvn	r1, r1, asl #18
	add	r2, r2, ip, asl #6
	mvn	r0, r0, lsr #17
	mvn	r1, r1, lsr #18
	mov	r2, r2, asl #2
	strh	r0, [r3, #0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L101:
	.align	2
.L100:
	.word	shadowOAM
	.size	drawHubBill, .-drawHubBill
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	ip, #67108864
	mov	sl, r0
	mov	r5, #0
	add	r7, ip, #256
	mov	r6, r2
	mov	r8, r1
	add	r2, ip, #160
	mov	fp, r3
	mov	r0, #1
	mov	r3, #910163968
	mov	r1, sl
	str	r5, [ip, #196]
	ldr	ip, .L104+8
	mov	lr, pc
	bx	ip
	mov	r1, r6
	strh	r5, [r7, #2]	@ movhi
	ldr	r3, .L104+12
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r4, .L104+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #0]	@ movhi
	mov	r3, #1
	str	r3, [r4, #12]
	mov	r3, #128	@ movhi
	strh	r3, [r7, #2]	@ movhi
	ldr	r9, .L104+20
	mov	r0, r8
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	fp, [r4, #16]
	str	sl, [r4, #0]
	mov	lr, pc
	bx	r9
	adr	r3, .L104
	ldmia	r3, {r2-r3}
	ldr	ip, .L104+24
	mov	lr, pc
	bx	ip
	mov	r7, r0
	mov	r0, r6
	mov	r8, r1
	mov	lr, pc
	bx	r9
	ldr	ip, .L104+28
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	mov	lr, pc
	bx	ip
	ldr	r3, .L104+32
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L105:
	.align	3
.L104:
	.word	1443109011
	.word	1078844686
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	ip, #67108864
	mov	sl, r0
	mov	r5, #0
	add	r7, ip, #256
	mov	r6, r2
	mov	r8, r1
	add	r2, ip, #164
	mov	fp, r3
	mov	r0, #2
	mov	r3, #910163968
	mov	r1, sl
	str	r5, [ip, #208]
	ldr	ip, .L107+8
	mov	lr, pc
	bx	ip
	mov	r1, r6
	strh	r5, [r7, #6]	@ movhi
	ldr	r3, .L107+12
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r4, .L107+16
	mov	r3, r3, lsr #16
	strh	r3, [r7, #4]	@ movhi
	mov	r3, #1
	str	r3, [r4, #12]
	mov	r3, #128	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r9, .L107+20
	mov	r0, r8
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	fp, [r4, #16]
	str	sl, [r4, #0]
	mov	lr, pc
	bx	r9
	adr	r3, .L107
	ldmia	r3, {r2-r3}
	ldr	ip, .L107+24
	mov	lr, pc
	bx	ip
	mov	r7, r0
	mov	r0, r6
	mov	r8, r1
	mov	lr, pc
	bx	r9
	ldr	ip, .L107+28
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	mov	lr, pc
	bx	ip
	ldr	r3, .L107+32
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L108:
	.align	3
.L107:
	.word	1443109011
	.word	1078844686
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r3, #67108864
	add	r3, r3, #512
	ldrh	r2, [r3, #2]
	tst	r2, #1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L110
	ldr	r2, .L118
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r2, #28]
	ldr	r1, [r2, #20]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2, #28]
	ble	.L111
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L115
	mov	r1, #67108864
	add	r1, r1, #256
	mov	r0, #67108864
	str	r3, [r0, #196]
	str	r3, [r2, #12]
	strh	r3, [r1, #2]	@ movhi
.L111:
	ldr	r2, .L118+4
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L116
.L113:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L110:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L116:
	ldr	r3, [r2, #28]
	ldr	r1, [r2, #20]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2, #28]
	ble	.L113
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L117
	mov	r1, #67108864
	add	r1, r1, #256
	mov	r0, #67108864
	str	r3, [r0, #208]
	str	r3, [r2, #12]
	strh	r3, [r1, #6]	@ movhi
	b	.L113
.L115:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	b	.L111
.L117:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundB
	b	.L113
.L119:
	.align	2
.L118:
	.word	soundA
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	updateWin
	.type	updateWin, %function
updateWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L123
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L123+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L120
	ldr	r3, .L123+8
	ldr	ip, [r3, #0]
	ands	ip, ip, #8
	beq	.L122
.L120:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L122:
	mov	lr, #67108864
	mov	r1, #2572288
	mov	r3, lr
	add	r1, r1, #11584
	add	lr, lr, #256
	mov	r2, #11008
	str	ip, [r3, #196]
	ldr	r0, .L123+12
	str	ip, [r3, #208]
	add	r1, r1, #22
	strh	ip, [lr, #2]	@ movhi
	add	r2, r2, #17
	mov	r3, #1
	strh	ip, [lr, #6]	@ movhi
	bl	playSoundB
	ldmfd	sp!, {r4, lr}
	b	goToSplash
.L124:
	.align	2
.L123:
	.word	endAnimation
	.word	oldButtons
	.word	buttons
	.word	splashMusic
	.size	updateWin, .-updateWin
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #22016
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, #23296	@ movhi
	mov	r5, #67108864
	mov	r2, #4864	@ movhi
	add	r3, r3, #8
	strh	r1, [r5, #10]	@ movhi
	ldr	r0, .L130
	strh	r2, [r5, #0]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L130+4
	mov	lr, pc
	bx	r3
	mov	r2, #100663296
	ldr	r4, .L130+8
	mov	r0, #3
	ldr	r1, .L130+12
	add	r2, r2, #55296
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L130+16
	mov	r2, #100663296
	mov	r3, #672
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L130+20
	add	r2, r2, #45056
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L130+24
	add	r2, r2, #32768
	mov	r3, #880
	mov	lr, pc
	bx	r4
	mov	ip, #0	@ movhi
	mov	r2, #83886080
	strh	ip, [r5, #16]	@ movhi
	mov	r0, #3
	ldr	r1, .L130+28
	add	r2, r2, #512
	mov	r3, #16
	strh	ip, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #65536
	mov	r3, #16384
	mov	r0, #3
	ldr	r1, .L130+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L130+36
	mov	r3, #0
.L126:
	mov	r0, #512	@ movhi
	strh	r0, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L126
	ldr	r3, .L130+40
	ldr	r3, [r3, #0]
	mov	ip, #0
	cmp	r3, ip
	ldr	r3, .L130+44
	str	ip, [r3, #0]
	beq	.L125
	ldr	r3, .L130+48
	ldr	r3, [r3, #0]
	cmp	r3, ip
	bne	.L129
.L125:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L129:
	mov	lr, #67108864
	mov	r1, #266240
	mov	r3, lr
	mov	r0, #4352	@ movhi
	add	lr, lr, #256
	add	r1, r1, #1536
	mov	r2, #11008
	str	ip, [r3, #196]
	strh	r0, [r3, #0]	@ movhi
	str	ip, [r3, #208]
	ldr	r0, .L130+52
	strh	ip, [lr, #2]	@ movhi
	add	r1, r1, #10
	add	r2, r2, #17
	mov	r3, #1
	strh	ip, [lr, #6]	@ movhi
	bl	playSoundB
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToWin
.L131:
	.align	2
.L130:
	.word	bg1Pal
	.word	loadPalette
	.word	DMANow
	.word	bg1Map
	.word	bg1Tiles
	.word	bg2Map
	.word	bg2Tiles
	.word	hubSpritesPal
	.word	hubSpritesTiles
	.word	shadowOAM
	.word	virusOpen
	.word	state
	.word	tvOpen
	.word	Bill_Jump_Sound
	.size	goToGame, .-goToGame
	.align	2
	.global	updatePause
	.type	updatePause, %function
updatePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L137
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L133
	ldr	r2, .L137+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L135
.L133:
	tst	r3, #4
	beq	.L132
	ldr	r3, .L137+4
	ldr	r4, [r3, #0]
	ands	r4, r4, #4
	beq	.L136
.L132:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L136:
	bl	goToSplash
	mov	r3, #67108864
	mov	r1, #2572288
	mov	ip, r3
	add	r1, r1, #11584
	add	r3, r3, #256
	mov	r2, #11008
	ldr	r0, .L137+8
	str	r4, [ip, #196]
	add	r1, r1, #22
	str	r4, [ip, #208]
	add	r2, r2, #17
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	mov	r3, #1
	ldmfd	sp!, {r4, lr}
	b	playSoundB
.L135:
	mov	r3, #67108864
	add	r3, r3, #256
	mov	r2, #128	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldmfd	sp!, {r4, lr}
	b	goToGame
.L138:
	.align	2
.L137:
	.word	oldButtons
	.word	buttons
	.word	splashMusic
	.size	updatePause, .-updatePause
	.align	2
	.global	updateInstructions
	.type	updateInstructions, %function
updateInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L142
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L139
	ldr	r3, .L142+4
	ldr	r4, [r3, #0]
	ands	r4, r4, #8
	beq	.L141
.L139:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L141:
	bl	goToGame
	mov	r3, #67108864
	mov	ip, r3
	mov	r1, #2834432
	add	r3, r3, #256
	mov	r2, #11008
	ldr	r0, .L142+8
	str	r4, [ip, #196]
	sub	r1, r1, #3392
	str	r4, [ip, #208]
	add	r2, r2, #17
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #6]	@ movhi
	mov	r3, #1
	ldmfd	sp!, {r4, lr}
	b	playSoundB
.L143:
	.align	2
.L142:
	.word	oldButtons
	.word	buttons
	.word	hubMusic
	.size	updateInstructions, .-updateInstructions
	.align	2
	.global	init
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #4352	@ movhi
	ldr	r2, .L147
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, #0]	@ movhi
	mov	r3, #0
.L145:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L145
	ldr	ip, .L147+4
	mov	r4, #0
	str	r4, [ip, #0]
	mov	r0, #3
	ldr	r1, .L147
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L147+8
	mov	lr, pc
	bx	ip
	mvn	r3, #1264
	mov	r2, #67108864
	sub	r3, r3, #1
	mov	r1, #128	@ movhi
	strh	r1, [r2, #132]	@ movhi
	strh	r4, [r2, #128]	@ movhi
	strh	r3, [r2, #130]	@ movhi
	add	r3, r2, #512
	ldrh	r0, [r3, #0]
	ldr	ip, .L147+12
	mov	r1, #50331648
	orr	r0, r0, #1
	add	r1, r1, #28672
	str	ip, [r1, #4092]
	strh	r0, [r3, #0]	@ movhi
	ldrh	r1, [r2, #4]
	orr	r1, r1, #8
	strh	r1, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	bl	goToSplash
	mov	r1, #2572288
	add	r1, r1, #11584
	mov	r2, #11008
	ldr	r0, .L147+16
	add	r1, r1, #22
	add	r2, r2, #17
	mov	r3, #1
	ldmfd	sp!, {r4, lr}
	b	playSoundB
.L148:
	.align	2
.L147:
	.word	shadowOAM
	.word	hubTimer
	.word	DMANow
	.word	interruptHandler
	.word	splashMusic
	.size	init, .-init
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bl	init
	ldr	r4, .L165
	ldr	r7, .L165+4
	ldr	r6, .L165+8
	ldr	r9, .L165+12
	ldr	sl, .L165+16
	ldr	r8, .L165+20
	mov	r5, #67108864
.L164:
	ldr	r3, [r4, #0]
	ldr	r2, [r7, #0]
.L151:
	str	r3, [r6, #0]
	ldr	r3, [r5, #304]
	str	r3, [r4, #0]
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L151
.L161:
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L156
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L160
.L160:
	mov	lr, pc
	bx	r8
	b	.L164
.L159:
	mov	lr, pc
	bx	sl
	b	.L164
.L158:
	mov	lr, pc
	bx	r9
	b	.L164
.L157:
	bl	updatePause
	b	.L164
.L156:
	bl	updateLose
	b	.L164
.L155:
	bl	updateWin
	b	.L164
.L154:
	bl	updateInstructions
	b	.L164
.L153:
	bl	updateSplash
	b	.L164
.L152:
	bl	updateGame
	b	.L164
.L166:
	.align	2
.L165:
	.word	buttons
	.word	state
	.word	oldButtons
	.word	pTUpdate
	.word	vUpdate
	.word	titleAnimation
	.size	main, .-main
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	add	r3, r3, #256
	mov	r2, #0
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	add	r3, r3, #256
	mov	r2, #128
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	mov	r3, #0
	add	r1, r2, #256
	str	r3, [r2, #196]
	str	r3, [r2, #208]
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	bx	lr
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r3, r2, #512
	str	r4, [sp, #-4]!
	ldrh	r0, [r2, #4]
	ldrh	ip, [r3, #0]
	mov	r1, #50331648
	ldr	r4, .L171
	add	r1, r1, #28672
	orr	ip, ip, #1
	orr	r0, r0, #8
	str	r4, [r1, #4092]
	strh	ip, [r3, #0]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L172:
	.align	2
.L171:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.global	hOff
	.global	vOff
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	shadowOAM,1024,4
	.comm	hubBill,40,4
	.comm	hubTimer,4,4
	.comm	state,4,4
	.comm	game,4,4
	.comm	virusOpen,4,4
	.comm	tvOpen,4,4
	.comm	soundA,32,4
	.comm	soundB,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
