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
	.file	"animation.c"
	.text
	.align	2
	.global	startAnimation
	.type	startAnimation, %function
startAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, .L2+4
	str	r3, [r2, #0]
	bx	lr
.L3:
	.align	2
.L2:
	.word	aniTimer
	.word	aTimer2
	.size	startAnimation, .-startAnimation
	.align	2
	.global	titleAnimation
	.type	titleAnimation, %function
titleAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r5, .L59
	ldr	r4, [r5, #0]
	cmp	r4, #0
	beq	.L33
	cmp	r4, #4000
	beq	.L34
.L6:
	mov	r3, #4224
	add	r3, r3, #26
	cmp	r4, r3
	beq	.L35
.L7:
	mov	r3, #4480
	add	r3, r3, #20
	cmp	r4, r3
	beq	.L36
.L8:
	mov	r3, #4992
	add	r3, r3, #8
	cmp	r4, r3
	beq	.L37
.L9:
	mov	r3, #5440
	add	r3, r3, #60
	cmp	r4, r3
	beq	.L38
.L10:
	mov	r3, #5952
	add	r3, r3, #48
	cmp	r4, r3
	beq	.L39
.L11:
	mov	r3, #6464
	add	r3, r3, #36
	cmp	r4, r3
	beq	.L40
.L12:
	mov	r3, #6976
	add	r3, r3, #24
	cmp	r4, r3
	beq	.L41
.L13:
	mov	r3, #8448
	add	r3, r3, #52
	cmp	r4, r3
	beq	.L42
.L14:
	mov	r3, #8960
	add	r3, r3, #40
	cmp	r4, r3
	beq	.L43
.L15:
	mov	r3, #9472
	add	r3, r3, #28
	cmp	r4, r3
	beq	.L44
.L16:
	mov	r3, #9984
	add	r3, r3, #16
	cmp	r4, r3
	beq	.L45
.L17:
	mov	r3, #10496
	add	r3, r3, #4
	cmp	r4, r3
	beq	.L46
.L18:
	mov	r3, #10944
	add	r3, r3, #56
	cmp	r4, r3
	beq	.L47
.L19:
	mov	r3, #11456
	add	r3, r3, #44
	cmp	r4, r3
	beq	.L48
.L20:
	mov	r3, #11968
	add	r3, r3, #32
	cmp	r4, r3
	beq	.L49
.L21:
	mov	r3, #12480
	add	r3, r3, #20
	cmp	r4, r3
	beq	.L50
.L22:
	mov	r3, #13952
	add	r3, r3, #48
	cmp	r4, r3
	beq	.L51
.L23:
	mov	r3, #14208
	add	r3, r3, #42
	cmp	r4, r3
	beq	.L52
.L24:
	mov	r3, #14464
	add	r3, r3, #36
	cmp	r4, r3
	beq	.L53
.L25:
	mov	r3, #14720
	add	r3, r3, #30
	cmp	r4, r3
	beq	.L54
.L26:
	mov	r3, #14976
	add	r3, r3, #24
	cmp	r4, r3
	beq	.L55
.L27:
	mov	r3, #15232
	add	r3, r3, #18
	cmp	r4, r3
	beq	.L56
.L28:
	mov	r3, #15488
	add	r3, r3, #12
	cmp	r4, r3
	beq	.L57
.L29:
	ldr	r2, .L59+4
	ldr	r1, .L59+8
	ldr	r3, [r2, #0]
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #3
	add	r1, r1, r1, asl #2
	cmp	r3, r1, asl #2
	addeq	r4, r4, #1
	streq	r4, [r5, #0]
	add	r3, r3, #1
	cmp	r4, #16000
	str	r3, [r2, #0]
	beq	.L58
.L4:
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	aniTimer
	.word	aTimer2
	.word	1717986919
	.word	ani1Pal
	.word	ani1Map
	.word	ani1Tiles
	.word	ani2Pal
	.word	ani2Map
	.word	ani2Tiles
	.word	ani3Pal
	.word	ani3Map
	.word	ani3Tiles
	.word	ani4Pal
	.word	ani4Map
	.word	ani4Tiles
	.word	ani5Pal
	.word	ani5Map
	.word	ani5Tiles
	.word	ani6Pal
	.word	ani6Map
	.word	ani6Tiles
	.word	ani7Pal
	.word	ani7Map
	.word	ani7Tiles
	.word	ani8Pal
	.word	ani8Map
	.word	ani8Tiles
	.word	ani9Pal
	.word	ani9Map
	.word	ani9Tiles
	.word	ani10Pal
	.word	ani10Map
	.word	ani10Tiles
	.word	ani11Pal
	.word	ani11Map
	.word	ani11Tiles
	.word	ani12Pal
	.word	ani12Map
	.word	ani12Tiles
	.word	ani13Pal
	.word	ani13Map
	.word	ani13Tiles
	.word	ani14Pal
	.word	ani14Map
	.word	ani14Tiles
	.word	ani15Pal
	.word	ani15Map
	.word	ani15Tiles
	.word	ani16Pal
	.word	ani16Map
	.word	ani16Tiles
	.word	ani17Pal
	.word	ani17Map
	.word	ani17Tiles
	.word	ani18Pal
	.word	ani18Map
	.word	ani18Tiles
	.word	ani19Pal
	.word	ani19Map
	.word	ani19Tiles
	.word	ani20Pal
	.word	ani20Map
	.word	ani20Tiles
	.word	ani21Pal
	.word	ani21Map
	.word	ani21Tiles
	.word	shadowOAM
	.word	ani22Pal
	.word	loadPalette
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	ani22Map
	.word	ani22Tiles
	.word	hideSprites
.L33:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+12
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+16
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+20
	mov	r2, #100663296
	mov	r3, #2032
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	cmp	r4, #4000
	bne	.L6
.L34:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+24
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+28
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+32
	mov	r2, #100663296
	mov	r3, #2896
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #4224
	add	r3, r3, #26
	cmp	r4, r3
	bne	.L7
.L35:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+36
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+40
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+44
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #4480
	add	r3, r3, #20
	cmp	r4, r3
	bne	.L8
.L36:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+48
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+52
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+56
	mov	r2, #100663296
	mov	r3, #2672
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #4992
	add	r3, r3, #8
	cmp	r4, r3
	bne	.L9
.L37:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+60
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+64
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+68
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #5440
	add	r3, r3, #60
	cmp	r4, r3
	bne	.L10
.L38:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+72
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+76
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+80
	mov	r2, #100663296
	mov	r3, #2576
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #5952
	add	r3, r3, #48
	cmp	r4, r3
	bne	.L11
.L39:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+84
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+88
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+92
	mov	r2, #100663296
	mov	r3, #2560
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #6464
	add	r3, r3, #36
	cmp	r4, r3
	bne	.L12
.L40:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+96
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+100
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+104
	mov	r2, #100663296
	mov	r3, #2672
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #6976
	add	r3, r3, #24
	cmp	r4, r3
	bne	.L13
.L41:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+108
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+112
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+116
	mov	r2, #100663296
	mov	r3, #2352
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #8448
	add	r3, r3, #52
	cmp	r4, r3
	bne	.L14
.L42:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+120
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+124
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+128
	mov	r2, #100663296
	mov	r3, #1952
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #8960
	add	r3, r3, #40
	cmp	r4, r3
	bne	.L15
.L43:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+132
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+136
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+140
	mov	r2, #100663296
	mov	r3, #1664
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #9472
	add	r3, r3, #28
	cmp	r4, r3
	bne	.L16
.L44:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+144
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+148
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+152
	mov	r2, #100663296
	mov	r3, #1440
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #9984
	add	r3, r3, #16
	cmp	r4, r3
	bne	.L17
.L45:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+156
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+160
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+164
	mov	r2, #100663296
	mov	r3, #1184
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #10496
	add	r3, r3, #4
	cmp	r4, r3
	bne	.L18
.L46:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+168
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+172
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+176
	mov	r2, #100663296
	mov	r3, #1440
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #10944
	add	r3, r3, #56
	cmp	r4, r3
	bne	.L19
.L47:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+180
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+184
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+188
	mov	r2, #100663296
	mov	r3, #1632
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #11456
	add	r3, r3, #44
	cmp	r4, r3
	bne	.L20
.L48:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+192
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+196
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+200
	mov	r2, #100663296
	mov	r3, #1888
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #11968
	add	r3, r3, #32
	cmp	r4, r3
	bne	.L21
.L49:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+204
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+208
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+212
	mov	r2, #100663296
	mov	r3, #2160
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #12480
	add	r3, r3, #20
	cmp	r4, r3
	bne	.L22
.L50:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+216
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+220
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+224
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #13952
	add	r3, r3, #48
	cmp	r4, r3
	bne	.L23
.L51:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+228
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+232
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+236
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #14208
	add	r3, r3, #42
	cmp	r4, r3
	bne	.L24
.L52:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+240
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+244
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+248
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #14464
	add	r3, r3, #36
	cmp	r4, r3
	bne	.L25
.L53:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+252
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+256
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+260
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L59+264
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #14720
	add	r3, r3, #30
	cmp	r4, r3
	bne	.L26
.L54:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L59+268
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L59+272
	mov	lr, pc
	bx	r3
	ldr	ip, .L59+276
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L59+280
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L59+284
	mov	r0, #3
	ldr	r1, .L59+288
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L59+292
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L59+296
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L61
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #14976
	add	r3, r3, #24
	cmp	r4, r3
	bne	.L27
.L55:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L61+4
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	ip, .L61+12
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L61+16
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L61+20
	mov	r0, #3
	ldr	r1, .L61+24
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L61+28
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L61+32
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L61
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #15232
	add	r3, r3, #18
	cmp	r4, r3
	bne	.L28
.L56:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L61+36
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	ip, .L61+12
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L61+16
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L61+20
	mov	r0, #3
	ldr	r1, .L61+40
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L61+44
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L61+32
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L61
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #15488
	add	r3, r3, #12
	cmp	r4, r3
	bne	.L29
.L57:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L61+48
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	ip, .L61+12
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L61+16
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L61+20
	mov	r0, #3
	ldr	r1, .L61+52
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L61+56
	mov	r2, #100663296
	mov	r3, #2544
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L61+32
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L61
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	b	.L29
.L58:
	ldr	r3, .L61+60
	mov	lr, pc
	bx	r3
	b	.L4
.L62:
	.align	2
.L61:
	.word	shadowOAM
	.word	ani23Pal
	.word	loadPalette
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	ani23Map
	.word	ani23Tiles
	.word	hideSprites
	.word	ani24Pal
	.word	ani24Map
	.word	ani24Tiles
	.word	ani25Pal
	.word	ani25Map
	.word	ani25Tiles
	.word	goToInstructions
	.size	titleAnimation, .-titleAnimation
	.align	2
	.global	endAnimation
	.type	endAnimation, %function
endAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r5, .L73
	ldr	r4, [r5, #0]
	cmp	r4, #0
	beq	.L69
	mov	r3, #9984
	add	r3, r3, #16
	cmp	r4, r3
	beq	.L70
.L65:
	mov	r3, #29952
	add	r3, r3, #48
	cmp	r4, r3
	beq	.L71
.L66:
	mov	r3, #39936
	add	r3, r3, #64
	cmp	r4, r3
	beq	.L72
.L67:
	ldr	r2, .L73+4
	ldr	r1, .L73+8
	ldr	r3, [r2, #0]
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	add	r1, r1, r3
	rsb	r1, r0, r1, asr #2
	rsb	r1, r1, r1, asl #3
	cmp	r3, r1
	ldreq	r1, [r5, #0]
	add	r3, r3, #1
	addeq	r1, r1, #1
	streq	r1, [r5, #0]
	str	r3, [r2, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L69:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L73+12
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	ldr	ip, .L73+20
	str	r4, [ip, #0]
	ldr	ip, .L73+24
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L73+28
	mov	r0, #3
	ldr	r1, .L73+32
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L73+36
	mov	r2, #100663296
	mov	r3, #2352
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L73+40
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L73+44
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #9984
	add	r3, r3, #16
	cmp	r4, r3
	bne	.L65
.L70:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L73+48
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	ldr	ip, .L73+20
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L73+24
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L73+28
	mov	r0, #3
	ldr	r1, .L73+52
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L73+56
	mov	r2, #100663296
	mov	r3, #2064
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L73+40
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L73+44
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #29952
	add	r3, r3, #48
	cmp	r4, r3
	bne	.L66
.L71:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	ldr	r0, .L73+60
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	ldr	ip, .L73+20
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L73+24
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L73+28
	mov	r0, #3
	ldr	r1, .L73+64
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r1, .L73+68
	mov	r2, #100663296
	mov	r3, #3232
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L73+40
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L73+44
	mov	r2, #117440512
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #0]
	mov	r3, #39936
	add	r3, r3, #64
	cmp	r4, r3
	bne	.L67
.L72:
	mov	r7, #67108864
	mov	r3, #6656	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r0, .L73+72
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	ldr	ip, .L73+20
	mov	r4, #0
	str	r4, [ip, #0]
	ldr	ip, .L73+24
	mov	r2, #100663296
	str	r4, [ip, #0]
	ldr	r6, .L73+28
	mov	r0, #3
	ldr	r1, .L73+76
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r3, #4224
	mov	r0, #3
	ldr	r1, .L73+80
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r6
	strh	r4, [r7, #16]	@ movhi
	ldr	r3, .L73+40
	strh	r4, [r7, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L73+44
	mov	r2, #117440512
	mov	r3, #512
	mov	lr, pc
	bx	r6
	b	.L67
.L74:
	.align	2
.L73:
	.word	aniTimer
	.word	aTimer2
	.word	-1840700269
	.word	ani26Pal
	.word	loadPalette
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	ani26Map
	.word	ani26Tiles
	.word	hideSprites
	.word	shadowOAM
	.word	ani27Pal
	.word	ani27Map
	.word	ani27Tiles
	.word	ani28Pal
	.word	ani28Map
	.word	ani28Tiles
	.word	ani29Pal
	.word	ani29Map
	.word	ani29Tiles
	.size	endAnimation, .-endAnimation
	.comm	aniTimer,4,4
	.comm	aTimer2,4,4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
