	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	drawBar
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L4
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #3
	mov	r2, #240
	mov	r1, #120
	mov	r0, #0
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	26577
	.word	drawRect
	.size	drawBar, .-drawBar
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #140
	mov	r6, #1
	mov	r5, #19
	mov	r4, #18
	mov	lr, #31
	mov	r2, #118
	mov	ip, #20
	mov	r0, #0
	ldr	r3, .L8
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	strh	lr, [r3, #28]	@ movhi
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #32]
	str	r0, [r3, #36]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	imposter
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 1232
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L38
	mov	r9, #0
	mov	r5, r3
	sub	sp, sp, #1232
	sub	sp, sp, #12
	str	r9, [sp]
	ldr	r4, .L38+4
	ldr	r2, [r5, #24]
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	ldr	r3, [r3, #20]
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+8
	add	r0, sp, #16
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r10, r0
	str	r9, [sp, #12]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	ldr	fp, [r3, #4]
	mov	r3, r10
	mov	r10, fp
	mov	fp, r3
	ldr	r6, .L38+20
	ldr	r5, [r5]
	ldr	r8, .L38+24
.L11:
	mov	r7, fp
	mov	r4, #0
	ldr	r9, .L38+28
	b	.L25
.L36:
	cmp	r3, #5
	bne	.L33
	mov	r0, r10
	ldr	r2, .L38+32
	add	r1, r4, r5
	mov	lr, pc
	bx	r6
.L22:
	add	r4, r4, #1
	cmp	r4, #17
	add	r7, r7, #68
	beq	.L34
.L25:
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L18
	cmp	r3, #2
	beq	.L14
	cmp	r3, #3
	beq	.L35
	cmp	r3, #4
	bne	.L36
.L18:
	add	r1, r4, r5
	mov	r2, r9
	mov	r0, r10
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #17
	add	r7, r7, #68
	bne	.L25
.L34:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	cmp	r3, #18
	str	r3, [sp, #12]
	add	r10, r10, #1
	add	fp, fp, #4
	bne	.L11
	ldr	r1, .L38
	ldm	r1, {r2, r3}
	str	r2, [r1, #8]
	str	r3, [r1, #12]
	add	sp, sp, #1232
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L33:
	cmp	r3, #6
	bne	.L37
	mov	r0, r10
	ldr	r2, .L38+36
	add	r1, r4, r5
	mov	lr, pc
	bx	r6
	b	.L22
.L37:
	cmp	r3, #7
	bne	.L22
	mov	r0, r10
	ldr	r2, .L38+40
	add	r1, r5, r4
	mov	lr, pc
	bx	r6
	b	.L22
.L35:
	mov	r2, r8
	mov	r0, r10
	add	r1, r4, r5
	mov	lr, pc
	bx	r6
	b	.L22
.L14:
	mov	r2, #31
	mov	r0, r10
	add	r1, r4, r5
	mov	lr, pc
	bx	r6
	b	.L22
.L39:
	.align	2
.L38:
	.word	imposter
	.word	drawRect
	.word	memcpy
	.word	1224
	.word	.LANCHOR0
	.word	setPixel
	.word	32531
	.word	32767
	.word	15855
	.word	511
	.word	1023
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #2
	mov	r6, #1
	mvn	r5, #1
	mvn	r4, #2
	mvn	lr, #32768
	ldr	r1, .L44
	ldr	r3, .L44+4
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
	add	r1, r3, #120
.L41:
	str	r7, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3]
	str	r0, [r3, #12]
	str	r4, [r3, #16]
	strh	lr, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stmib	r3, {r2, ip}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L41
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	imposter
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L57
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L47
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L49
	ldr	r2, [r3, #112]
	cmp	r2, #0
	moveq	r2, #2
	bxne	lr
.L47:
	push	{r4, r5, r6, lr}
	mov	r5, #1
	mov	r4, #0
	ldr	lr, .L57+4
	add	r2, r2, r2, lsl #2
	ldr	r1, [lr, #24]
	ldr	r6, [lr]
	add	r0, r3, r2, lsl #3
	str	r6, [r3, r2, lsl #3]
	add	ip, r1, r1, lsr #31
	ldr	r3, [r0, #24]
	ldr	r1, [lr, #4]
	add	r3, r3, r3, lsr #31
	add	r1, r1, ip, asr r5
	add	r3, r1, r3, asr r5
	str	r5, [r0, #32]
	str	r4, [r0, #36]
	str	r3, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	mov	r2, #1
	b	.L47
.L58:
	.align	2
.L57:
	.word	bullets
	.word	imposter
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	ldrh	r3, [r3, #48]
	push	{r4, lr}
	ldr	r4, .L71+4
	tst	r3, #32
	ldr	r3, [r4, #16]
	bne	.L60
	ldr	r2, [r4, #4]
	cmp	r2, r3
	subge	r3, r2, r3
	strge	r3, [r4, #4]
	blt	.L60
.L61:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	ldr	r3, [r4, #32]
	beq	.L70
	ldr	r2, .L71+8
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L66
.L70:
	add	r3, r3, #1
.L65:
	str	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r2, .L71
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L62
	ldr	r0, [r4, #4]
	ldr	r1, [r4, #24]
	rsb	r2, r3, #240
	add	r1, r0, r1
	cmp	r1, r2
	addle	r3, r0, r3
	strle	r3, [r4, #4]
	ble	.L61
.L62:
	ldr	r2, .L71
	ldrh	r2, [r2, #48]
	tst	r2, #64
	ldr	r2, [r4]
	bne	.L63
	cmp	r3, r2
	suble	r3, r2, r3
	strle	r3, [r4]
	ble	.L61
.L63:
	ldr	r0, [r4, #20]
	rsb	r1, r3, #160
	add	r0, r2, r0
	cmp	r0, r1
	addle	r3, r3, r2
	strle	r3, [r4]
	b	.L61
.L66:
	ldr	r2, .L71+12
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L70
	cmp	r3, #19
	ble	.L70
	bl	fireBullet
	mov	r3, #1
	b	.L65
.L72:
	.align	2
.L71:
	.word	67109120
	.word	imposter
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r0]
	movlt	r3, #0
	strlt	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L81
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L82
.L79:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L82:
	str	r3, [sp]
	ldr	r5, .L83
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L79
.L81:
	mov	r2, #0
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L83
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L79
.L84:
	.align	2
.L83:
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initAstBtns
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAstBtns, %function
initAstBtns:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L89
	ldr	r5, .L89+4
	ldr	r9, .L89+8
	ldr	r8, .L89+12
	ldr	r7, .L89+16
	add	r6, r4, #176
.L86:
	mov	r3, #10
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r2, #1
	mov	r1, #0
	smull	r3, ip, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	ldr	r3, [r4]
	add	r0, r0, #42
	strh	r7, [r4, #32]	@ movhi
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L86
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	astbtns
	.word	rand
	.word	156180629
	.word	1717986919
	.word	15855
	.size	initAstBtns, .-initAstBtns
	.align	2
	.global	updateAstBtn
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAstBtn, %function
updateAstBtn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #20
	bne	.L112
.L92:
	mov	r2, #0
	ldr	r3, .L114
	str	r2, [r4]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L114+4
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	add	r0, r0, #42
	str	r0, [r4, #4]
	str	r1, [r4, #36]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L112:
	ldr	r2, [r0, #16]
	ldr	r3, [r0]
	ldr	r0, [r0, #24]
	add	r3, r3, r2
	add	r2, r3, r0
	cmp	r2, #160
	str	r3, [r4]
	bgt	.L93
	ldr	r2, [r4, #4]
.L94:
	mov	r9, #0
	ldr	r5, .L114+8
	ldr	ip, [r4, #28]
	ldr	r8, .L114+12
	ldr	r6, .L114+16
	add	r7, r5, #120
.L97:
	ldr	r1, [r5, #32]
	cmp	r1, #0
	bne	.L113
.L95:
	add	r5, r5, #40
	cmp	r5, r7
	bne	.L97
	stm	sp, {r2, r3, ip}
	str	r0, [sp, #12]
	ldr	r3, [r6, #20]
	ldr	r2, [r6, #24]
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L98
	mov	r1, #0
	ldr	r2, .L114+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
	b	.L92
.L98:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L92
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L113:
	stm	sp, {r2, r3, ip}
	str	r0, [sp, #12]
	ldr	r2, [r5, #24]
	ldr	r3, [r5, #20]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	strne	r9, [r5, #32]
	add	r0, r4, #24
	strne	r9, [r4, #36]
	ldrne	r2, [r4, #4]
	ldreq	r2, [r4, #4]
	strne	r9, [r6, #36]
	ldr	r3, [r4]
	ldm	r0, {r0, ip}
	b	.L95
.L93:
	mov	r2, #0
	ldr	r3, .L114
	str	r2, [r4]
	mov	lr, pc
	bx	r3
	ldr	r2, .L114+24
	smull	r1, r3, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #6
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r0, r0, r2, lsl #3
	add	r2, r0, #20
	str	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, [r4, #24]
	b	.L94
.L115:
	.align	2
.L114:
	.word	rand
	.word	1717986919
	.word	bullets
	.word	collision
	.word	imposter
	.word	sus
	.word	1374389535
	.size	updateAstBtn, .-updateAstBtn
	.align	2
	.global	drawAstBtn
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAstBtn, %function
drawAstBtn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L120
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L121
.L118:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L121:
	str	r3, [sp]
	ldr	r5, .L122
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L118
.L120:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L122
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L118
.L123:
	.align	2
.L122:
	.word	drawRect
	.size	drawAstBtn, .-drawAstBtn
	.align	2
	.global	initWeapons
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWeapons, %function
initWeapons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	mov	r8, #5
	ldr	r4, .L128
	ldr	r6, .L128+4
	ldr	r5, .L128+8
	ldr	r7, .L128+12
.L125:
	str	r8, [r4, #24]
	str	r8, [r4, #28]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	mov	r2, #1
	mov	r1, #0
	smull	ip, r3, r5, r0
	add	ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #7
	add	r3, r3, r3, lsl r2
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #2
	ldr	r3, [r4]
	add	r0, r0, #35
	cmp	r9, r2
	strh	r7, [r4, #32]	@ movhi
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	bne	.L126
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L126:
	mov	r9, r2
	b	.L125
.L129:
	.align	2
.L128:
	.word	weapons
	.word	rand
	.word	-1240768329
	.word	18367
	.size	initWeapons, .-initWeapons
	.align	2
	.global	updateWeapon
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWeapon, %function
updateWeapon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	bne	.L144
.L131:
	mov	r2, #0
	ldr	r3, .L145
	str	r2, [r4]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L145+4
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r3, r3, r3, lsl r1
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #35
	str	r0, [r4, #4]
	str	r1, [r4, #36]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	ldr	r3, [r0]
	ldr	r2, [r0, #16]
	ldr	r1, [r0, #24]
	add	r3, r3, r2
	add	r2, r3, r1
	cmp	r2, #160
	str	r3, [r0]
	bgt	.L132
	ldr	r2, [r0, #4]
.L133:
	ldr	r5, .L145+8
	ldr	ip, [r4, #28]
	ldr	r0, [r5, #4]
	stm	sp, {r2, r3}
	str	r1, [sp, #12]
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	ldr	r1, [r5]
	str	ip, [sp, #8]
	ldr	r6, .L145+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L134
	mov	r2, #1
	mov	r3, #0
	str	r2, [r5, #36]
	str	r3, [r4, #36]
	b	.L131
.L134:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L131
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L132:
	mov	r2, #0
	ldr	r3, .L145
	str	r2, [r0]
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+4
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	add	r3, r3, r0
	rsb	r2, r2, r3, asr #7
	add	r2, r2, r2, lsl #1
	rsb	r2, r2, r2, lsl #4
	sub	r0, r0, r2, lsl #2
	add	r2, r0, #35
	str	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r1, [r4, #24]
	b	.L133
.L146:
	.align	2
.L145:
	.word	rand
	.word	-1240768329
	.word	imposter
	.word	collision
	.size	updateWeapon, .-updateWeapon
	.align	2
	.global	drawWeapon
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWeapon, %function
drawWeapon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L151
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L152
.L149:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L152:
	str	r3, [sp]
	ldr	r5, .L153
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L149
.L151:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L153
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L149
.L154:
	.align	2
.L153:
	.word	drawRect
	.size	drawWeapon, .-drawWeapon
	.align	2
	.global	initCrew
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCrew, %function
initCrew:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L159
	mov	r10, #0
	mov	r4, r7
	mov	r9, #10
	ldr	r6, .L159+4
	ldr	r5, .L159+8
	ldr	r8, .L159+12
.L156:
	mov	r3, #5
	str	r9, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #20
	str	r0, [r4]
	mov	lr, pc
	bx	r6
	mov	r2, #1
	mov	ip, #0
	smull	r3, r1, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4]
	sub	r3, r0, r3, lsl r2
	cmp	r10, r2
	strh	r8, [r4, #32]	@ movhi
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	str	ip, [r4, #40]
	str	r1, [r4, #8]
	add	r4, r4, #44
	bne	.L157
	mvn	r3, #39
	str	r3, [r7, #48]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L157:
	mov	r10, r2
	b	.L156
.L160:
	.align	2
.L159:
	.word	crewmates
	.word	rand
	.word	1717986919
	.word	32736
	.size	initCrew, .-initCrew
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #140
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L165
	mov	r8, r1
	str	r1, [r3]
	str	r1, [r3, #8]
	mov	r1, #18
	str	r1, [r3, #24]
	mov	r1, #31	@ movhi
	mov	r10, #1
	mov	r9, #0
	mov	r2, #118
	strh	r1, [r3, #28]	@ movhi
	mov	fp, #19
	mov	r1, #20
	mov	r6, r10
	mov	r4, r9
	mov	r5, #2
	mvn	lr, #1
	mvn	ip, #2
	mvn	r0, #32768
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	mov	r7, r2
	ldr	r2, .L165+4
	str	fp, [r3, #20]
	str	r1, [r3, #32]
	str	r10, [r3, #16]
	str	r9, [r3, #36]
	add	r3, r2, #120
.L162:
	str	r5, [r2, #20]
	str	r6, [r2, #24]
	str	lr, [r2]
	str	r7, [r2, #12]
	str	ip, [r2, #16]
	strh	r0, [r2, #28]	@ movhi
	str	r4, [r2, #32]
	stmib	r2, {r4, r8}
	add	r2, r2, #40
	cmp	r2, r3
	bne	.L162
	bl	initAstBtns
	bl	initWeapons
	bl	initCrew
	mov	r1, #4
	ldr	r3, .L165+8
	ldr	r2, .L165+12
	str	r4, [r3]
	str	r1, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	imposter
	.word	bullets
	.word	sus
	.word	crewRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateCrewmate
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCrewmate, %function
updateCrewmate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	bne	.L189
.L168:
	mov	r2, #0
	ldr	r3, .L191
	str	r2, [r4, #4]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L191+4
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #20
	str	r0, [r4]
	str	r1, [r4, #36]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L189:
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #20]
	ldr	r1, [r0, #28]
	add	r3, r3, r2
	add	r2, r3, r1
	cmp	r2, #240
	str	r3, [r0, #4]
	bgt	.L169
	ldr	r2, [r0]
.L170:
	mov	r9, #0
	ldr	r5, .L191+8
	ldr	ip, [r4, #24]
	ldr	r8, .L191+12
	ldr	r6, .L191+16
	ldr	r10, .L191+20
	add	r7, r5, #80
.L173:
	ldr	r0, [r5, #32]
	cmp	r0, #0
	bne	.L190
.L171:
	add	r5, r5, #40
	cmp	r5, r7
	bne	.L173
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r6, #20]
	ldr	r2, [r6, #24]
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L174
	mov	r1, #0
	ldr	r2, .L191+24
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
	b	.L168
.L174:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L168
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L190:
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #24]
	ldr	r3, [r5, #20]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r10]
	strne	r9, [r5, #32]
	subne	r3, r3, #1
	strne	r9, [r4, #36]
	strne	r3, [r10]
	strne	r9, [r6, #36]
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #24]
	b	.L171
.L169:
	mov	r2, #0
	ldr	r3, .L191
	str	r2, [r0, #4]
	mov	lr, pc
	bx	r3
	ldr	r2, .L191+4
	smull	r1, r3, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #4
	add	r2, r2, r2, lsl #2
	sub	r0, r0, r2, lsl #3
	add	r2, r0, #20
	str	r2, [r4]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #28]
	b	.L170
.L192:
	.align	2
.L191:
	.word	rand
	.word	1717986919
	.word	bullets
	.word	collision
	.word	imposter
	.word	crewRemaining
	.word	sus
	.size	updateCrewmate, .-updateCrewmate
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"sus bar\000"
	.text
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	bl	updatePlayer
	mov	r1, #0
	mov	r3, #31
	ldr	r2, .L200
	ldr	r2, [r2]
	add	r2, r2, r2, lsl #2
	mov	r0, r1
	str	r3, [sp]
	ldr	r4, .L200+4
	mov	r3, #8
	lsl	r2, r2, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L200+8
	mov	r1, r3
	mov	r0, r3
	ldr	r4, .L200+12
	mov	lr, pc
	bx	r4
	mov	r0, #0
	ldr	r3, .L200+16
	add	r1, r3, #120
.L197:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L195
	ldr	r2, [r3]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r3]
	strlt	r0, [r3, #32]
.L195:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L197
	ldr	r0, .L200+20
	bl	updateAstBtn
	ldr	r0, .L200+24
	bl	updateAstBtn
	ldr	r0, .L200+28
	bl	updateAstBtn
	ldr	r0, .L200+32
	bl	updateAstBtn
	ldr	r0, .L200+36
	bl	updateWeapon
	ldr	r0, .L200+40
	bl	updateWeapon
	ldr	r0, .L200+44
	bl	updateCrewmate
	ldr	r0, .L200+48
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	updateCrewmate
.L201:
	.align	2
.L200:
	.word	sus
	.word	drawRect
	.word	.LC1
	.word	drawString
	.word	bullets
	.word	astbtns
	.word	astbtns+44
	.word	astbtns+88
	.word	astbtns+132
	.word	weapons
	.word	weapons+44
	.word	crewmates
	.word	crewmates+44
	.size	updateGame, .-updateGame
	.align	2
	.global	drawCrewmate
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCrewmate, %function
drawCrewmate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L206
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L207
.L204:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L207:
	str	r3, [sp]
	ldr	r5, .L208
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L204
.L206:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L208
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L204
.L209:
	.align	2
.L208:
	.word	drawRect
	.size	drawCrewmate, .-drawCrewmate
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L212
	bl	drawPlayer
	mov	r0, r5
	ldr	r4, .L212+4
	bl	drawBullet
	add	r0, r5, #40
	bl	drawBullet
	add	r0, r5, #80
	bl	drawBullet
	mov	r0, r4
	bl	drawAstBtn
	add	r0, r4, #44
	bl	drawAstBtn
	ldr	r5, .L212+8
	add	r0, r4, #88
	bl	drawAstBtn
	add	r0, r4, #132
	bl	drawAstBtn
	ldr	r4, .L212+12
	mov	r0, r5
	bl	drawWeapon
	add	r0, r5, #44
	bl	drawWeapon
	mov	r0, r4
	bl	drawCrewmate
	add	r0, r4, #44
	pop	{r4, r5, r6, lr}
	b	drawCrewmate
.L213:
	.align	2
.L212:
	.word	bullets
	.word	astbtns
	.word	weapons
	.word	crewmates
	.size	drawGame, .-drawGame
	.align	2
	.global	drawTaskBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTaskBar, %function
drawTaskBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mov	r3, #31
	push	{r4, lr}
	ldr	r2, .L216
	ldr	r2, [r2]
	sub	sp, sp, #8
	add	r2, r2, r2, lsl #2
	str	r3, [sp]
	mov	r0, r1
	mov	r3, #8
	ldr	r4, .L216+4
	lsl	r2, r2, #3
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L217:
	.align	2
.L216:
	.word	sus
	.word	drawRect
	.size	drawTaskBar, .-drawTaskBar
	.comm	delay,4,4
	.comm	sus,4,4
	.comm	crewRemaining,4,4
	.comm	crewmates,88,4
	.comm	weapons,88,4
	.comm	astbtns,176,4
	.comm	bullets,120,4
	.comm	imposter,40,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	3
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	5
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	5
	.word	5
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	5
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	6
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	6
	.word	7
	.word	6
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	6
	.word	7
	.word	6
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	6
	.word	6
	.word	6
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	6
	.word	0
	.ident	"GCC: (devkitARM release 53) 9.1.0"
