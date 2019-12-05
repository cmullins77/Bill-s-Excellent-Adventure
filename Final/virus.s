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
	.file	"virus.c"
	.text
	.align	2
	.global	goToVPause
	.type	goToVPause, %function
goToVPause:
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
	.word	vState
	.word	pausePal
	.word	loadPalette
	.word	DMANow
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	shadowOAM
	.size	goToVPause, .-goToVPause
	.align	2
	.global	goToVLose
	.type	goToVLose, %function
goToVLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L5
	mov	r2, #1
	str	r2, [r3, #0]
	mov	r2, #6912	@ movhi
	mov	r3, #67108864
	mov	r5, #100663296
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L5+4
	ldr	r3, .L5+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L5+12
	add	r2, r5, #55296
	mov	r0, #3
	ldr	r1, .L5+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r2, r5
	mov	r0, #3
	ldr	r1, .L5+20
	mov	r3, #6144
	mov	lr, pc
	bx	r4
	ldr	r3, .L5+24
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L5+28
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	vState
	.word	virus_losePal
	.word	loadPalette
	.word	DMANow
	.word	virus_loseMap
	.word	virus_loseTiles
	.word	hideSprites
	.word	shadowOAM
	.size	goToVLose, .-goToVLose
	.align	2
	.global	updateVLose
	.type	updateVLose, %function
updateVLose:
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
	.size	updateVLose, .-updateVLose
	.align	2
	.global	goToVWin
	.type	goToVWin, %function
goToVWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L14
	mov	r2, #2
	str	r2, [r3, #0]
	mov	r2, #6656	@ movhi
	mov	r3, #67108864
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L14+4
	mov	r5, #100663296
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+12
	mov	r0, #3
	ldr	r1, .L14+16
	add	r2, r5, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L14+20
	mov	r2, r5
	mov	r3, #5248
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L14+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+32
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	vState
	.word	virus_winPal
	.word	loadPalette
	.word	DMANow
	.word	virus_winMap
	.word	virus_winTiles
	.word	hideSprites
	.word	shadowOAM
	.word	virusOpen
	.size	goToVWin, .-goToVWin
	.align	2
	.global	updateVWin
	.type	updateVWin, %function
updateVWin:
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
	.size	updateVWin, .-updateVWin
	.align	2
	.global	initVirusGame
	.type	initVirusGame, %function
initVirusGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	ldr	ip, .L24
	mov	r5, #6
	sub	sp, sp, #32
	mov	r1, #199680
	str	r5, [ip, #0]
	ldr	ip, .L24+4
	add	r1, r1, #320
	str	r1, [ip, #0]
	ldr	r1, .L24+8
	mov	r4, #0
	ldr	r3, .L24+12
	str	r4, [r1, #0]
	mov	r0, #50
	ldr	r1, .L24+16
	mov	r2, #4992
	add	r2, r2, #8
	str	r0, [r3, #0]
	stmib	r3, {r0, r4}	@ phole stm
	str	r4, [r3, #12]
	ldr	r3, .L24+20
	str	r2, [r1, #0]
	ldr	r1, .L24+24
	str	r4, [r3, #0]
	ldr	r3, .L24+28
	str	r2, [r1, #0]
	mov	r2, #20
	str	r2, [r3, #0]
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	ldr	r6, .L24+32
	add	r7, sp, #4
.L22:
	mov	r5, r7
	ldmia	r5!, {r0, r1, r2, r3}
	add	ip, r6, r4
	stmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, #28
	ldmia	r5, {r0, r1, r2}
	mov	r3, ip
	cmp	r4, #560
	ldr	ip, .L24+32
	stmia	r3, {r0, r1, r2}
	bne	.L22
	ldr	r2, .L24+36
	mov	r0, #8
	mov	r3, #0
	mov	r1, #1
	str	r0, [ip, #16]
	mov	r0, #64
	str	r3, [ip, #12]
	str	r1, [ip, #20]
	str	r1, [ip, #24]
	str	r3, [ip, #0]
	str	r0, [ip, #4]
	str	r3, [r2, #0]
	str	r3, [r2, #4]
	str	r3, [r2, #64]
	str	r1, [r2, #60]
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	maxVTime
	.word	timeToNextEnemy
	.word	crossHair
	.word	timeIncrease
	.word	vTimer
	.word	randTime
	.word	enemyCount
	.word	enemies
	.word	special
	.size	initVirusGame, .-initVirusGame
	.align	2
	.global	goToVirusInstructions
	.type	goToVirusInstructions, %function
goToVirusInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	initVirusGame
	ldr	r3, .L27
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r2, #7168	@ movhi
	mov	r3, #67108864
	mov	r5, #100663296
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L27+4
	ldr	r3, .L27+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L27+12
	add	r2, r5, #57344
	mov	r0, #3
	ldr	r1, .L27+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #4928
	mov	r0, #3
	ldr	r1, .L27+20
	mov	r2, r5
	add	r3, r3, #16
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	vState
	.word	virusInstructionsPal
	.word	loadPalette
	.word	DMANow
	.word	virusInstructionsMap
	.word	virusInstructionsTiles
	.size	goToVirusInstructions, .-goToVirusInstructions
	.align	2
	.global	initVirus
	.type	initVirus, %function
initVirus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	ldr	ip, .L30+4
	mov	r2, #83886080
	mov	lr, #0
	ldr	r4, .L30+8
	mov	r0, #3
	ldr	r1, .L30+12
	add	r2, r2, #512
	mov	r3, #16
	str	lr, [ip, #0]
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+16
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	b	goToVirusInstructions
.L31:
	.align	2
.L30:
	.word	stopSound
	.word	randNum
	.word	DMANow
	.word	virusSpritesPal
	.word	virusSpritesTiles
	.size	initVirus, .-initVirus
	.align	2
	.global	updateCrossHair
	.type	updateCrossHair, %function
updateCrossHair:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #32
	mvneq	r3, #0
	streq	r3, [r0, #8]
	beq	.L34
	ldr	r3, [r3, #304]
	tst	r3, #16
	moveq	r3, #1
	streq	r3, [r0, #8]
.L34:
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #64
	mvneq	r3, #0
	streq	r3, [r0, #12]
	beq	.L36
	ldr	r3, [r3, #304]
	tst	r3, #128
	moveq	r3, #1
	streq	r3, [r0, #12]
.L36:
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0]
	adds	r1, r3, r2
	bmi	.L41
	cmp	r1, #208
	movgt	r2, #208
	movgt	r3, #0
	strgt	r2, [r0, #0]
	strgt	r3, [r0, #8]
.L38:
	ldr	ip, [r0, #12]
	ldr	r1, [r0, #4]
	adds	r1, ip, r1
	movmi	r1, #0
	strmi	r1, [r0, #12]
	bmi	.L40
	cmp	r1, #128
	movgt	r1, #0
	strgt	r1, [r0, #12]
	movgt	r1, #128
.L40:
	add	r3, r2, r3
	str	r3, [r0, #0]
	str	r1, [r0, #4]
	bx	lr
.L41:
	mov	r2, #0
	mov	r3, r2
	str	r2, [r0, #0]
	str	r2, [r0, #8]
	b	.L38
	.size	updateCrossHair, .-updateCrossHair
	.align	2
	.global	drawCrossHair
	.type	drawCrossHair, %function
drawCrossHair:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]
	ldr	r3, .L43
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	ldrh	r0, [r0, #4]
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #26	@ movhi
	strh	r0, [r3, #0]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
	.word	shadowOAM
	.size	drawCrossHair, .-drawCrossHair
	.align	2
	.global	drawEnemies
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L56
	stmfd	sp!, {r4, r5, r6}
	ldr	r4, [r3, #0]
	cmp	r4, #0
	ble	.L45
	ldr	r3, .L56+4
	ldr	r2, .L56+8
	mov	r1, #1
	b	.L53
.L49:
	cmp	r0, #32
	beq	.L55
	add	r5, r0, #7
	cmp	r0, #0
	ldr	r6, [r3, #-16]
	movlt	r0, r5
	ldr	r5, [r3, #-24]
	mov	r6, r6, asl #5
	mov	r0, r0, asr #3
	mla	r0, r6, r0, r5
	ldr	r5, [r3, #-12]
	mvn	r5, r5, asl #18
	mvn	r5, r5, lsr #18
	strh	r5, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L48:
	cmp	r4, ip
	add	r3, r3, #28
	add	r1, r1, #1
	add	r2, r2, #8
	ble	.L45
.L53:
	ldr	r0, [r3, #0]
	cmp	r0, #0
	moveq	ip, r1
	beq	.L48
	ldr	r0, [r3, #-20]
	ldrh	r5, [r3, #-8]
	cmp	r0, #16
	mov	ip, r1
	strh	r5, [r2, #8]	@ movhi
	bne	.L49
	ldr	r5, [r3, #-4]
	ldr	r0, [r3, #-12]
	cmp	r5, #0
	orr	r0, r0, #16384
	strh	r0, [r2, #10]	@ movhi
	ldrgt	r0, [r3, #-16]
	ldrle	r0, [r3, #-24]
	movgt	r0, r0, asl #6
	ldrgt	r5, [r3, #-24]
	ldrle	r5, [r3, #-16]
	addgt	r0, r0, #128
	addgt	r0, r0, r5
	addle	r0, r0, r5, asl #6
	strgth	r0, [r2, #12]	@ movhi
	strleh	r0, [r2, #12]	@ movhi
	cmp	r4, ip
	add	r3, r3, #28
	add	r1, r1, #1
	add	r2, r2, #8
	bgt	.L53
.L45:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L55:
	ldr	r0, [r3, #-12]
	ldr	r5, [r3, #-4]
	mvn	r0, r0, asl #17
	cmp	r5, #0
	mvn	r0, r0, lsr #17
	strh	r0, [r2, #10]	@ movhi
	ldrgt	r0, [r3, #-16]
	ldrle	r0, [r3, #-24]
	movgt	r0, r0, asl #7
	ldrgt	r5, [r3, #-24]
	ldrle	r5, [r3, #-16]
	addgt	r0, r0, #256
	addgt	r0, r0, r5
	addle	r0, r0, r5, asl #7
	strgth	r0, [r2, #12]	@ movhi
	strleh	r0, [r2, #12]	@ movhi
	b	.L48
.L57:
	.align	2
.L56:
	.word	enemyCount
	.word	enemies+24
	.word	shadowOAM
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawHealth
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L63
	stmfd	sp!, {r4, r5}
	mov	r2, #0
	ldr	r4, .L63+4
	ldr	ip, [r3, #0]
	mov	r1, #48
	mov	r3, r2
.L61:
	cmp	ip, r3
	addgt	r0, r4, r2
	movgt	r5, #2	@ movhi
	addle	r0, r4, r2
	strgth	r5, [r0, #168]	@ movhi
	strgth	r1, [r0, #170]	@ movhi
	movgt	r5, #14	@ movhi
	movle	r5, #512	@ movhi
	add	r1, r1, #8
	add	r3, r3, #1
	strgth	r5, [r0, #172]	@ movhi
	strleh	r5, [r0, #168]	@ movhi
	mov	r1, r1, asl #16
	cmp	r3, #6
	add	r2, r2, #8
	mov	r1, r1, lsr #16
	bne	.L61
	ldmfd	sp!, {r4, r5}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawHealth, .-drawHealth
	.align	2
	.global	checkCollisionEnemy
	.type	checkCollisionEnemy, %function
checkCollisionEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #12]
	cmp	r3, #240
	mov	r4, r0
	mov	r5, r1
	bhi	.L68
.L66:
	ldr	r3, .L69
	ldr	r3, [r3, #0]
	tst	r3, #1
	beq	.L65
	ldr	r3, .L69+4
	ldr	r6, [r3, #0]
	ands	r6, r6, #1
	bne	.L65
	mov	r1, #10112
	mov	r2, #11008
	ldr	r0, .L69+8
	add	r1, r1, #47
	add	r2, r2, #17
	mov	r3, r6
	ldr	ip, .L69+12
	mov	lr, pc
	bx	ip
	ldr	r1, .L69+16
	ldr	r2, [r1, #0]
	ldr	r3, [r4, #12]
	add	r0, r2, #17
	cmp	r0, r3
	blt	.L65
	ldr	r0, [r4, #4]
	add	r2, r2, #12
	add	r3, r0, r3
	cmp	r3, r2
	ble	.L65
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #16]
	add	r1, r3, #17
	cmp	r1, r2
	blt	.L65
	add	r3, r3, #12
	add	r2, r2, r0
	cmp	r2, r3
	ldrgt	r3, .L69+20
	addgt	r5, r3, r5, asl #3
	movgt	r3, #512	@ movhi
	strgth	r3, [r5, #8]	@ movhi
	strgt	r6, [r4, #24]
.L65:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	ip, .L69+24
	ldr	r3, .L69+20
	ldr	lr, [ip, #0]
	add	r3, r3, r1, asl #3
	mov	r6, #512	@ movhi
	mov	r2, #10624
	strh	r6, [r3, #8]	@ movhi
	mov	r0, #0
	mov	r3, #83886080
	sub	lr, lr, #1
	add	r2, r2, #22
	mov	r1, #6400
	str	lr, [ip, #0]
	str	r0, [r4, #24]
	add	r1, r1, #22
	mov	ip, #16	@ movhi
	strh	r2, [r3, #6]	@ movhi
	mov	r2, #24	@ movhi
	strh	ip, [r3, #0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L69+28
	mov	r2, #1000
	str	r2, [r3, #0]
	bl	drawHealth
	b	.L66
.L70:
	.align	2
.L69:
	.word	oldButtons
	.word	buttons
	.word	shot
	.word	playSoundA
	.word	crossHair
	.word	shadowOAM
	.word	.LANCHOR0
	.word	paletteSwapped
	.size	checkCollisionEnemy, .-checkCollisionEnemy
	.align	2
	.global	goToVGame
	.type	goToVGame, %function
goToVGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L72
	ldr	r5, .L72+4
	mov	r4, #3
	ldr	r0, [r5, #0]
	str	r4, [r3, #0]
	ldr	r3, .L72+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r5, #0]
	mov	r2, #7936	@ movhi
	mov	r3, #67108864
	mov	r6, #100663296
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L72+12
	ldr	r3, .L72+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L72+20
	add	r2, r6, #63488
	mov	r0, r4
	ldr	r1, .L72+24
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r1, .L72+28
	mov	r2, r6
	mov	r3, #2544
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	drawHealth
.L73:
	.align	2
.L72:
	.word	vState
	.word	randNum
	.word	srand
	.word	virusBGPal
	.word	loadPalette
	.word	DMANow
	.word	virusBGMap
	.word	virusBGTiles
	.size	goToVGame, .-goToVGame
	.align	2
	.global	updateVPause
	.type	updateVPause, %function
updateVPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L79
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L79+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L77
.L75:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L79+4
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L78
.L74:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L78:
	ldr	r3, .L79+8
	mov	lr, pc
	bx	r3
	mov	r1, #2834432
	mov	r2, #11008
	ldr	r0, .L79+12
	sub	r1, r1, #3392
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L79+16
	mov	lr, pc
	bx	ip
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
	b	.L74
.L77:
	ldmfd	sp!, {r4, lr}
	b	goToVGame
.L80:
	.align	2
.L79:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	hubMusic
	.word	playSoundB
	.word	goToGame
	.size	updateVPause, .-updateVPause
	.align	2
	.global	updateVInstructions
	.type	updateVInstructions, %function
updateVInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L84
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L82
	ldr	r3, .L84+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L83
.L82:
	ldr	r3, .L84+8
	ldr	r2, [r3, #0]
	add	r2, r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L83:
	bl	goToVGame
	mov	r1, #2260992
	add	r1, r1, #592
	mov	r2, #11008
	ldr	r0, .L84+12
	add	r1, r1, #3
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L84+16
	mov	lr, pc
	bx	ip
	b	.L82
.L85:
	.align	2
.L84:
	.word	oldButtons
	.word	buttons
	.word	randNum
	.word	virusMusic
	.word	playSoundB
	.size	updateVInstructions, .-updateVInstructions
	.align	2
	.global	setVTimer
	.type	setVTimer, %function
setVTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L87
	str	r4, [sp, #-4]!
	ldr	r1, [r3, #0]
	ldr	r3, .L87+4
	ldr	r3, [r3, #0]
	rsb	r3, r3, r1
	ldr	r1, .L87+8
	smull	r2, r1, r3, r1
	ldr	r0, .L87+12
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
	ldr	r3, .L87+16
	add	r2, r2, #15
	mov	ip, ip, asl #5
	add	ip, ip, #15
	mov	r0, r0, asl #5
	strh	r2, [r3, #228]	@ movhi
	mov	r2, #27	@ movhi
	mov	r1, #2
	add	r0, r0, #15
	strh	ip, [r3, #220]	@ movhi
	strh	r2, [r3, #218]	@ movhi
	mov	ip, #21	@ movhi
	mov	r2, #15	@ movhi
	strh	r1, [r3, #216]	@ movhi
	strh	r1, [r3, #224]	@ movhi
	strh	r1, [r3, #232]	@ movhi
	strh	r0, [r3, #236]	@ movhi
	strh	ip, [r3, #226]	@ movhi
	strh	r2, [r3, #234]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L88:
	.align	2
.L87:
	.word	maxVTime
	.word	vTimer
	.word	274877907
	.word	1717986919
	.word	shadowOAM
	.size	setVTimer, .-setVTimer
	.align	2
	.global	updateSpecial
	.type	updateSpecial, %function
updateSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L93
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3, #0]
	ldr	r1, [r3, #8]
	add	r2, r1, r2
	cmp	r2, #0
	str	r2, [r3, #0]
	blt	.L92
	cmp	r2, #304
	bxle	lr
	ldr	r2, .L93+4
	mov	r1, #0
	str	r1, [r3, #64]
	mov	r1, #512	@ movhi
	mov	r3, #256
	strh	r1, [r2, #240]	@ movhi
	strh	r1, [r2, #248]	@ movhi
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L92:
	mov	r2, #0
	str	r2, [r3, #0]
	mov	r2, #2
	str	r2, [r3, #8]
	mov	r2, #120
	str	r2, [r3, #4]
	bx	lr
.L94:
	.align	2
.L93:
	.word	special
	.word	shadowOAM
	.size	updateSpecial, .-updateSpecial
	.align	2
	.global	drawSpecial
	.type	drawSpecial, %function
drawSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L98
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ble	.L97
	ldr	r2, [r3, #0]
	ldr	r1, [r3, #4]
	mvn	r2, r2, asl #18
	ldr	r3, .L98+4
	mvn	r2, r2, lsr #18
	orr	r1, r1, #16384
	strh	r2, [r3, #242]	@ movhi
	mov	r2, #512	@ movhi
	strh	r1, [r3, #240]	@ movhi
	strh	r2, [r3, #244]	@ movhi
	bx	lr
.L97:
	ldr	r2, [r3, #0]
	ldr	r1, [r3, #4]
	mvn	r2, r2, asl #18
	ldr	r3, .L98+4
	mvn	r2, r2, lsr #18
	orr	r1, r1, #16384
	strh	r2, [r3, #242]	@ movhi
	mov	r2, #640	@ movhi
	strh	r1, [r3, #240]	@ movhi
	strh	r2, [r3, #244]	@ movhi
	bx	lr
.L99:
	.align	2
.L98:
	.word	special
	.word	shadowOAM
	.size	drawSpecial, .-drawSpecial
	.align	2
	.global	checkCollisionEnemySpecial
	.type	checkCollisionEnemySpecial, %function
checkCollisionEnemySpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L102
	str	r4, [sp, #-4]!
	ldr	r2, [r3, #0]
	ldr	ip, [r0, #12]
	add	r4, r2, #63
	cmp	r4, ip
	blt	.L100
	ldr	r4, [r0, #4]
	add	ip, r4, ip
	cmp	r2, ip
	bge	.L100
	ldr	r3, [r3, #4]
	ldr	r2, [r0, #16]
	add	ip, r3, #31
	cmp	ip, r2
	blt	.L100
	add	r4, r2, r4
	cmp	r3, r4
	bge	.L100
	ldr	r3, .L102+4
	add	r1, r3, r1, asl #3
	mov	r3, #512	@ movhi
	strh	r3, [r1, #8]	@ movhi
	mov	r3, #0
	str	r3, [r0, #24]
.L100:
	ldmfd	sp!, {r4}
	bx	lr
.L103:
	.align	2
.L102:
	.word	special
	.word	shadowOAM
	.size	checkCollisionEnemySpecial, .-checkCollisionEnemySpecial
	.align	2
	.global	updateEnemies
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L111
	ldr	r3, [r6, #0]
	cmp	r3, #0
	ble	.L104
	ldr	fp, .L111+4
	ldr	sl, .L111+8
	ldr	r8, .L111+12
	ldr	r7, .L111+16
	mov	r4, fp
	mov	r5, #0
	mov	r9, #1
	b	.L109
.L106:
	ldr	r3, [r6, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #28
	ble	.L104
.L109:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L106
	ldr	r3, [sl, #0]
	smull	r2, r1, r8, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #6
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #20]
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	add	r1, r0, r1
	subs	r3, r3, r2, asl #3
	str	r1, [r4, #12]
	bne	.L107
	ldr	r2, [r4, #8]
	cmp	r2, #0
	moveq	r3, r9
	str	r3, [r4, #8]
.L107:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L106
	rsb	r0, r5, r5, asl #3
	mov	r1, r5
	add	r0, fp, r0, asl #2
	bl	checkCollisionEnemySpecial
	ldr	r3, [r6, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #28
	bgt	.L109
.L104:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	enemyCount
	.word	enemies
	.word	vTimer
	.word	1374389535
	.word	special
	.size	updateEnemies, .-updateEnemies
	.global	__aeabi_idivmod
	.align	2
	.global	updateVGame
	.type	updateVGame, %function
updateVGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, .L158
	sub	sp, sp, #4
	ldr	r3, [ip, #64]
	cmp	r3, #0
	bne	.L114
	ldr	r3, .L158+4
	ldr	r3, [r3, #0]
	tst	r3, #2
	bne	.L147
.L114:
	ldr	r4, .L158+8
	ldr	r3, [r4, #0]
	cmp	r3, #1
	beq	.L148
.L115:
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #0]
	ldr	r5, .L158+12
	ldr	r4, .L158+16
	ldr	r2, [r5, #0]
	ldr	r3, [r4, #0]
	cmp	r3, r2
	ldrne	r7, .L158+20
	beq	.L149
.L117:
	ldr	r5, .L158+24
	smull	r2, r1, r5, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2
	beq	.L150
.L133:
	ldr	r3, [r7, #0]
	cmp	r3, #0
	ble	.L134
	ldr	r8, .L158+28
	mov	r5, #0
	mov	r6, r8
	b	.L136
.L135:
	ldr	r3, [r7, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r6, r6, #28
	ble	.L134
.L136:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L135
	rsb	r0, r5, r5, asl #3
	mov	r1, r5
	add	r0, r8, r0, asl #2
	bl	checkCollisionEnemy
	ldr	r3, [r7, #0]
	add	r5, r5, #1
	cmp	r3, r5
	add	r6, r6, #28
	bgt	.L136
.L134:
	ldr	ip, [r4, #0]
	ldr	r2, .L158+32
	smull	r3, r2, ip, r2
	mov	r3, ip, asr #31
	rsb	r3, r3, r2, asr #6
	rsb	r2, r3, r3, asl #5
	add	r3, r3, r2, asl #2
	cmp	ip, r3, asl #3
	beq	.L151
.L137:
	add	ip, ip, #1
	mov	r3, #512
	str	ip, [r4, #0]
	mov	r0, #3
	ldr	r1, .L158+36
	mov	r2, #117440512
	ldr	ip, .L158+40
	mov	lr, pc
	bx	ip
	ldr	r3, .L158+44
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L152
	ldr	r3, .L158+16
	ldr	r2, [r3, #0]
	ldr	r3, .L158+48
	ldr	r3, [r3, #0]
	cmp	r2, r3
	beq	.L153
	ldr	r3, .L158+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L113
	ldr	r3, .L158+52
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L154
.L113:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L147:
	ldr	r3, .L158+52
	ldr	r3, [r3, #0]
	ands	r3, r3, #2
	bne	.L114
	mov	lr, #40
	str	lr, [ip, #4]
	mvn	lr, #1
	str	lr, [ip, #8]
	mov	lr, #240
	str	lr, [ip, #0]
	mov	r1, #30464
	mov	lr, #1
	mov	r2, #11008
	str	lr, [ip, #64]
	ldr	r0, .L158+56
	add	r1, r1, #105
	add	r2, r2, #17
	ldr	ip, .L158+60
	mov	lr, pc
	bx	ip
	b	.L114
.L151:
	bl	setVTimer
	ldr	r3, .L158+16
	ldr	ip, [r3, #0]
	b	.L137
.L150:
	ldr	r6, .L158+64
	mov	r0, r6
	bl	updateCrossHair
	ldr	r2, [r6, #0]
	ldr	r3, .L158+36
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	ldrh	r6, [r6, #4]
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #26	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r6, [r3, #0]	@ movhi
	bl	updateSpecial
	bl	drawSpecial
	ldr	r3, [r4, #0]
	smull	r2, r5, r3, r5
	mov	r2, r3, asr #31
	rsb	r2, r2, r5, asr #5
	add	r2, r2, r2, asl #2
	add	r2, r2, r2, asl #2
	cmp	r3, r2, asl #2
	bne	.L133
	bl	updateEnemies
	bl	drawEnemies
	b	.L133
.L149:
	ldr	r7, .L158+20
	ldr	ip, [r7, #0]
	cmp	ip, #0
	ble	.L117
	ldr	r8, .L158+28
	ldr	sl, [r8, #24]
	cmp	sl, #0
	movne	r1, r8
	movne	r2, #0
	beq	.L118
.L120:
	add	r2, r2, #1
	cmp	r2, ip
	bge	.L117
	ldr	r0, [r1, #52]
	cmp	r0, #0
	mov	sl, r2
	add	r1, r1, #28
	bne	.L120
.L118:
	ldr	r9, .L158+68
	mov	lr, pc
	bx	r9
	ldr	r2, .L158+72
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, asl #2
	sub	r3, r0, r3, asl #1
	cmp	r3, #4
	ble	.L155
	cmp	r3, #8
	ble	.L127
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	rsb	r3, r3, r3, asl #4
	mov	fp, sl, asl #3
	mov	r3, r3, asl #4
	rsb	r6, sl, fp
	add	r6, r8, r6, asl #2
	cmp	r3, #0
	str	r3, [r6, #12]
	beq	.L156
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	mvn	r3, r3
	str	r3, [r6, #20]
	mov	r3, #95
	str	r3, [r6, #16]
.L129:
	rsb	r2, sl, fp
	mov	r1, #10
	add	r3, r8, r2, asl #2
	str	r1, [r8, r2, asl #2]
	mov	r2, #32
	str	r2, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	b	.L126
.L152:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	goToVLose
.L154:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	goToVPause
.L148:
	mov	r3, #0
	str	r3, [r4, #0]
	ldr	r0, .L158+76
	ldr	r3, .L158+80
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	b	.L115
.L153:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	goToVWin
.L127:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	rsb	r3, r3, r3, asl #4
	mov	fp, sl, asl #3
	mov	r3, r3, asl #4
	rsb	r6, sl, fp
	add	r6, r8, r6, asl #2
	cmp	r3, #0
	str	r3, [r6, #12]
	beq	.L157
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	mvn	r3, r3
	str	r3, [r6, #20]
	mov	r3, #88
	str	r3, [r6, #16]
.L131:
	rsb	r1, sl, fp
	mov	r2, #0
	add	r3, r8, r1, asl #2
	str	r2, [r8, r1, asl #2]
	mov	r1, #64
	stmib	r3, {r1, r2}	@ phole stm
.L126:
	rsb	sl, sl, fp
	mov	r3, #1
	ldr	r6, .L158+84
	add	r8, r8, sl, asl #2
	str	r3, [r8, #24]
	mov	lr, pc
	bx	r9
	ldr	r8, [r6, #0]
	ldr	r3, .L158+88
	mov	r1, r8
	mov	lr, pc
	bx	r3
	ldr	r2, .L158+92
	ldr	r3, [r4, #0]
	ldr	r0, [r2, #0]
	add	ip, r0, r3
	add	r1, ip, r1
	sub	r0, r0, #10
	sub	r8, r8, #8
	str	r1, [r5, #0]
	str	r0, [r2, #0]
	str	r8, [r6, #0]
	b	.L117
.L157:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	add	r3, r3, #1
	str	r3, [r6, #20]
	mov	r3, #8
	str	r3, [r6, #16]
	b	.L131
.L156:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	add	r3, r3, #1
	str	r3, [r6, #20]
	mov	r3, #20
	str	r3, [r6, #16]
	b	.L129
.L155:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r3, r3, r0, lsr #31
	rsb	r3, r3, r3, asl #4
	mov	fp, sl, asl #3
	mov	r3, r3, asl #4
	rsb	r6, sl, fp
	add	r6, r8, r6, asl #2
	cmp	r3, #0
	str	r3, [r6, #12]
	bne	.L122
	mov	lr, pc
	bx	r9
	mov	r3, #28
	mla	r3, sl, r3, r8
	ands	r0, r0, #-2147483647
	submi	r0, r0, #1
	mvnmi	r0, r0, asl #31
	mvnmi	r0, r0, lsr #31
	addmi	r0, r0, #1
	add	r0, r0, #1
	mov	r2, #56
	str	r0, [r6, #20]
	str	r2, [r3, #16]
.L124:
	rsb	r2, sl, fp
	mov	r1, #8
	add	r3, r8, r2, asl #2
	str	r1, [r8, r2, asl #2]
	mov	r2, #16
	str	r2, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	b	.L126
.L122:
	mov	lr, pc
	bx	r9
	mov	r3, #28
	mla	r3, sl, r3, r8
	ands	r0, r0, #-2147483647
	submi	r0, r0, #1
	mvnmi	r0, r0, asl #31
	mvnmi	r0, r0, lsr #31
	addmi	r0, r0, #1
	rsb	r0, r0, #0
	mov	r2, #136
	str	r0, [r6, #20]
	str	r2, [r3, #16]
	b	.L124
.L159:
	.align	2
.L158:
	.word	special
	.word	oldButtons
	.word	paletteSwapped
	.word	timeToNextEnemy
	.word	vTimer
	.word	enemyCount
	.word	1374389535
	.word	enemies
	.word	274877907
	.word	shadowOAM
	.word	DMANow
	.word	.LANCHOR0
	.word	maxVTime
	.word	buttons
	.word	train
	.word	playSoundA
	.word	crossHair
	.word	rand
	.word	1717986919
	.word	virusBGPal
	.word	loadPalette
	.word	randTime
	.word	__aeabi_idivmod
	.word	timeIncrease
	.size	updateVGame, .-updateVGame
	.align	2
	.global	vUpdate
	.type	vUpdate, %function
vUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L168
	ldr	r3, [r3, #0]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L160
.L167:
	.word	.L162
	.word	.L163
	.word	.L164
	.word	.L165
	.word	.L166
.L166:
	b	updateVPause
.L162:
	b	updateVInstructions
.L163:
	b	updateVLose
.L164:
	b	updateVWin
.L165:
	b	updateVGame
.L160:
	bx	lr
.L169:
	.align	2
.L168:
	.word	vState
	.size	vUpdate, .-vUpdate
	.global	health
	.comm	vState,4,4
	.comm	crossHair,16,4
	.comm	vTimer,4,4
	.comm	maxVTime,4,4
	.comm	randNum,4,4
	.comm	special,68,4
	.comm	enemies,560,4
	.comm	enemyCount,4,4
	.comm	timeToNextEnemy,4,4
	.comm	timeIncrease,4,4
	.comm	randTime,4,4
	.comm	paletteSwapped,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	health, %object
	.size	health, 4
health:
	.word	6
	.ident	"GCC: (devkitARM release 31) 4.5.0"
