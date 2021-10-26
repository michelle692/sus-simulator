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
	.file	"main.c"
	.text
	.align	2
	.global	start
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	ldr	r2, .L12+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #4
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L12+8
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #4
	beq	.L11
	pop	{r4, lr}
	bx	lr
.L11:
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+16
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.word	fillScreen
	.word	state
	.size	start, .-start
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"[THE VERY SUS SIMULATOR]\000"
	.align	2
.LC1:
	.ascii	"Press SELECT to play\000"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+4
	mov	r3, #31
	mov	r1, #70
	mov	r0, #48
	ldr	r2, .L16+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+12
	ldr	r2, .L16+16
	mov	r1, #100
	mov	r0, #60
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L16+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	32767
	.word	.LC1
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L19
	strh	r2, [r3]	@ movhi
	b	goToStart
.L20:
	.align	2
.L19:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L24:
	.align	2
.L23:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	win.part.0
.L28:
	.align	2
.L27:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L42
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L31
	ldr	r2, .L42+4
	ldrh	r0, [r2]
	ands	r0, r0, #4
	beq	.L40
.L31:
	tst	r3, #8
	beq	.L30
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
.L30:
	pop	{r4, lr}
	bx	lr
.L41:
	pop	{r4, lr}
	b	goToStart
.L40:
	ldr	r3, .L42+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L42+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L31
.L43:
	.align	2
.L42:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L46
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L46+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Paused\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	mov	r1, #100
	ldr	r3, .L50+4
	ldr	r2, .L50+8
	ldr	r4, .L50+12
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L50+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	fillScreen
	.word	32767
	.word	.LC2
	.word	drawString
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"Congrats! You killed\000"
	.align	2
.LC4:
	.ascii	"all the crewmates >:)\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L54
	ldr	r3, .L54+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L54+8
	mov	r3, #31
	mov	r1, #80
	mov	r0, #50
	ldr	r2, .L54+12
	mov	lr, pc
	bx	r4
	mov	r3, #31
	ldr	r2, .L54+16
	mov	r1, #100
	mov	r0, #50
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L54+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	24319
	.word	fillScreen
	.word	drawString
	.word	.LC3
	.word	.LC4
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"Oh No! You were too sus...\000"
	.align	2
.LC6:
	.ascii	"the crewmates voted you off :(\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L58
	mov	r0, #0
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+8
	mov	r3, r5
	mov	r1, #80
	mov	r0, #30
	ldr	r2, .L58+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L58+16
	mov	r1, #100
	mov	r0, #30
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L58+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC5
	.word	.LC6
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"crew: %d\000"
	.text
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L71
	sub	sp, sp, #12
	ldr	r4, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r1, .L71+12
	ldr	r3, .L71+16
	ldr	r0, .L71+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r3, #20
	mov	r1, #9
	mov	r0, #36
	str	r2, [sp]
	ldr	r5, .L71+24
	mov	r2, #40
	mov	lr, pc
	bx	r5
	mov	r3, #31
	mov	r1, #9
	mov	r0, #2
	ldr	r2, .L71+20
	ldr	r5, .L71+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L71+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L68
	ldr	r3, .L71+36
	ldr	r3, [r3]
	cmp	r3, #6
	beq	.L69
.L62:
	ldr	r3, .L71+40
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L60
	ldr	r3, .L71+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L70
.L60:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L68:
	bl	goToWin
	ldr	r3, .L71+36
	ldr	r3, [r3]
	cmp	r3, #6
	bne	.L62
.L69:
	bl	goToLose
	b	.L62
.L70:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToPause
.L72:
	.align	2
.L71:
	.word	updateGame
	.word	crewRemaining
	.word	waitForVBlank
	.word	.LC7
	.word	sprintf
	.word	crewStr
	.word	drawRect
	.word	drawString
	.word	drawGame
	.word	sus
	.word	oldButtons
	.word	buttons
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L87
	ldr	r6, .L87+4
	ldr	r10, .L87+8
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r3, .L87+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L87+16
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L87+20
	ldr	r8, .L87+24
	ldr	r7, .L87+28
	ldr	fp, .L87+32
	ldr	r4, .L87+36
.L75:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L83
.L77:
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L76
.L76:
	tst	r0, #4
	beq	.L83
	ldr	r3, .L87+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L75
.L78:
	tst	r0, #4
	beq	.L83
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L75
.L79:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L75
.L80:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L75
.L81:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L75
.L83:
	mov	r0, r3
	b	.L75
.L88:
	.align	2
.L87:
	.word	1027
	.word	state
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.comm	sus,4,4
	.comm	crewStr,15,4
	.comm	crewRemaining,4,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
