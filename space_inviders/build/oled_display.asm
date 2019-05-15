
build/oled_display.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001a2c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000279c  08001aec  08001aec  00011aec  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08004288  08004288  00014288  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08004290  08004290  00014290  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000454  20000000  08004294  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              000004b4  20000454  080046e8  00020454  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000908  080046e8  00020908  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020454  2**0  CONTENTS, READONLY
  9 .debug_info       00004f46  00000000  00000000  0002047c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000e5b  00000000  00000000  000253c2  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001c20  00000000  00000000  0002621d  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000004d8  00000000  00000000  00027e3d  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000450  00000000  00000000  00028315  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00002fe3  00000000  00000000  00028765  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00001554  00000000  00000000  0002b748  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          00000075  00000000  00000000  0002cc9c  2**0  CONTENTS, READONLY
 17 .debug_frame      000012f8  00000000  00000000  0002cd14  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000454 	.word	0x20000454
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08001ad4 	.word	0x08001ad4

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000458 	.word	0x20000458
 8000104:	08001ad4 	.word	0x08001ad4

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 fde7 	bl	8000e1c <SystemInit>
 800024e:	f001 fb3f 	bl	80018d0 <__libc_init_array>
 8000252:	f000 fd93 	bl	8000d7c <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000454 	.word	0x20000454
 8000264:	08004294 	.word	0x08004294
 8000268:	20000454 	.word	0x20000454
 800026c:	20000908 	.word	0x20000908

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <NVIC_EnableIRQ>:
 8000274:	b580      	push	{r7, lr}
 8000276:	b082      	sub	sp, #8
 8000278:	af00      	add	r7, sp, #0
 800027a:	0002      	movs	r2, r0
 800027c:	1dfb      	adds	r3, r7, #7
 800027e:	701a      	strb	r2, [r3, #0]
 8000280:	1dfb      	adds	r3, r7, #7
 8000282:	781b      	ldrb	r3, [r3, #0]
 8000284:	001a      	movs	r2, r3
 8000286:	231f      	movs	r3, #31
 8000288:	401a      	ands	r2, r3
 800028a:	4b04      	ldr	r3, [pc, #16]	; (800029c <NVIC_EnableIRQ+0x28>)
 800028c:	2101      	movs	r1, #1
 800028e:	4091      	lsls	r1, r2
 8000290:	000a      	movs	r2, r1
 8000292:	601a      	str	r2, [r3, #0]
 8000294:	46c0      	nop			; (mov r8, r8)
 8000296:	46bd      	mov	sp, r7
 8000298:	b002      	add	sp, #8
 800029a:	bd80      	pop	{r7, pc}
 800029c:	e000e100 	.word	0xe000e100

080002a0 <NVIC_SetPriority>:
 80002a0:	b590      	push	{r4, r7, lr}
 80002a2:	b083      	sub	sp, #12
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	0002      	movs	r2, r0
 80002a8:	6039      	str	r1, [r7, #0]
 80002aa:	1dfb      	adds	r3, r7, #7
 80002ac:	701a      	strb	r2, [r3, #0]
 80002ae:	1dfb      	adds	r3, r7, #7
 80002b0:	781b      	ldrb	r3, [r3, #0]
 80002b2:	2b7f      	cmp	r3, #127	; 0x7f
 80002b4:	d932      	bls.n	800031c <NVIC_SetPriority+0x7c>
 80002b6:	4a2f      	ldr	r2, [pc, #188]	; (8000374 <NVIC_SetPriority+0xd4>)
 80002b8:	1dfb      	adds	r3, r7, #7
 80002ba:	781b      	ldrb	r3, [r3, #0]
 80002bc:	0019      	movs	r1, r3
 80002be:	230f      	movs	r3, #15
 80002c0:	400b      	ands	r3, r1
 80002c2:	3b08      	subs	r3, #8
 80002c4:	089b      	lsrs	r3, r3, #2
 80002c6:	3306      	adds	r3, #6
 80002c8:	009b      	lsls	r3, r3, #2
 80002ca:	18d3      	adds	r3, r2, r3
 80002cc:	3304      	adds	r3, #4
 80002ce:	681b      	ldr	r3, [r3, #0]
 80002d0:	1dfa      	adds	r2, r7, #7
 80002d2:	7812      	ldrb	r2, [r2, #0]
 80002d4:	0011      	movs	r1, r2
 80002d6:	2203      	movs	r2, #3
 80002d8:	400a      	ands	r2, r1
 80002da:	00d2      	lsls	r2, r2, #3
 80002dc:	21ff      	movs	r1, #255	; 0xff
 80002de:	4091      	lsls	r1, r2
 80002e0:	000a      	movs	r2, r1
 80002e2:	43d2      	mvns	r2, r2
 80002e4:	401a      	ands	r2, r3
 80002e6:	0011      	movs	r1, r2
 80002e8:	683b      	ldr	r3, [r7, #0]
 80002ea:	019b      	lsls	r3, r3, #6
 80002ec:	22ff      	movs	r2, #255	; 0xff
 80002ee:	401a      	ands	r2, r3
 80002f0:	1dfb      	adds	r3, r7, #7
 80002f2:	781b      	ldrb	r3, [r3, #0]
 80002f4:	0018      	movs	r0, r3
 80002f6:	2303      	movs	r3, #3
 80002f8:	4003      	ands	r3, r0
 80002fa:	00db      	lsls	r3, r3, #3
 80002fc:	409a      	lsls	r2, r3
 80002fe:	481d      	ldr	r0, [pc, #116]	; (8000374 <NVIC_SetPriority+0xd4>)
 8000300:	1dfb      	adds	r3, r7, #7
 8000302:	781b      	ldrb	r3, [r3, #0]
 8000304:	001c      	movs	r4, r3
 8000306:	230f      	movs	r3, #15
 8000308:	4023      	ands	r3, r4
 800030a:	3b08      	subs	r3, #8
 800030c:	089b      	lsrs	r3, r3, #2
 800030e:	430a      	orrs	r2, r1
 8000310:	3306      	adds	r3, #6
 8000312:	009b      	lsls	r3, r3, #2
 8000314:	18c3      	adds	r3, r0, r3
 8000316:	3304      	adds	r3, #4
 8000318:	601a      	str	r2, [r3, #0]
 800031a:	e027      	b.n	800036c <NVIC_SetPriority+0xcc>
 800031c:	4a16      	ldr	r2, [pc, #88]	; (8000378 <NVIC_SetPriority+0xd8>)
 800031e:	1dfb      	adds	r3, r7, #7
 8000320:	781b      	ldrb	r3, [r3, #0]
 8000322:	b25b      	sxtb	r3, r3
 8000324:	089b      	lsrs	r3, r3, #2
 8000326:	33c0      	adds	r3, #192	; 0xc0
 8000328:	009b      	lsls	r3, r3, #2
 800032a:	589b      	ldr	r3, [r3, r2]
 800032c:	1dfa      	adds	r2, r7, #7
 800032e:	7812      	ldrb	r2, [r2, #0]
 8000330:	0011      	movs	r1, r2
 8000332:	2203      	movs	r2, #3
 8000334:	400a      	ands	r2, r1
 8000336:	00d2      	lsls	r2, r2, #3
 8000338:	21ff      	movs	r1, #255	; 0xff
 800033a:	4091      	lsls	r1, r2
 800033c:	000a      	movs	r2, r1
 800033e:	43d2      	mvns	r2, r2
 8000340:	401a      	ands	r2, r3
 8000342:	0011      	movs	r1, r2
 8000344:	683b      	ldr	r3, [r7, #0]
 8000346:	019b      	lsls	r3, r3, #6
 8000348:	22ff      	movs	r2, #255	; 0xff
 800034a:	401a      	ands	r2, r3
 800034c:	1dfb      	adds	r3, r7, #7
 800034e:	781b      	ldrb	r3, [r3, #0]
 8000350:	0018      	movs	r0, r3
 8000352:	2303      	movs	r3, #3
 8000354:	4003      	ands	r3, r0
 8000356:	00db      	lsls	r3, r3, #3
 8000358:	409a      	lsls	r2, r3
 800035a:	4807      	ldr	r0, [pc, #28]	; (8000378 <NVIC_SetPriority+0xd8>)
 800035c:	1dfb      	adds	r3, r7, #7
 800035e:	781b      	ldrb	r3, [r3, #0]
 8000360:	b25b      	sxtb	r3, r3
 8000362:	089b      	lsrs	r3, r3, #2
 8000364:	430a      	orrs	r2, r1
 8000366:	33c0      	adds	r3, #192	; 0xc0
 8000368:	009b      	lsls	r3, r3, #2
 800036a:	501a      	str	r2, [r3, r0]
 800036c:	46c0      	nop			; (mov r8, r8)
 800036e:	46bd      	mov	sp, r7
 8000370:	b003      	add	sp, #12
 8000372:	bd90      	pop	{r4, r7, pc}
 8000374:	e000ed00 	.word	0xe000ed00
 8000378:	e000e100 	.word	0xe000e100

0800037c <LL_RCC_HSI_Enable>:
 800037c:	b580      	push	{r7, lr}
 800037e:	af00      	add	r7, sp, #0
 8000380:	4b04      	ldr	r3, [pc, #16]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000382:	681a      	ldr	r2, [r3, #0]
 8000384:	4b03      	ldr	r3, [pc, #12]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000386:	2101      	movs	r1, #1
 8000388:	430a      	orrs	r2, r1
 800038a:	601a      	str	r2, [r3, #0]
 800038c:	46c0      	nop			; (mov r8, r8)
 800038e:	46bd      	mov	sp, r7
 8000390:	bd80      	pop	{r7, pc}
 8000392:	46c0      	nop			; (mov r8, r8)
 8000394:	40021000 	.word	0x40021000

08000398 <LL_RCC_HSI_IsReady>:
 8000398:	b580      	push	{r7, lr}
 800039a:	af00      	add	r7, sp, #0
 800039c:	4b05      	ldr	r3, [pc, #20]	; (80003b4 <LL_RCC_HSI_IsReady+0x1c>)
 800039e:	681b      	ldr	r3, [r3, #0]
 80003a0:	2202      	movs	r2, #2
 80003a2:	4013      	ands	r3, r2
 80003a4:	3b02      	subs	r3, #2
 80003a6:	425a      	negs	r2, r3
 80003a8:	4153      	adcs	r3, r2
 80003aa:	b2db      	uxtb	r3, r3
 80003ac:	0018      	movs	r0, r3
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bd80      	pop	{r7, pc}
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	40021000 	.word	0x40021000

080003b8 <LL_RCC_SetSysClkSource>:
 80003b8:	b580      	push	{r7, lr}
 80003ba:	b082      	sub	sp, #8
 80003bc:	af00      	add	r7, sp, #0
 80003be:	6078      	str	r0, [r7, #4]
 80003c0:	4b06      	ldr	r3, [pc, #24]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003c2:	685b      	ldr	r3, [r3, #4]
 80003c4:	2203      	movs	r2, #3
 80003c6:	4393      	bics	r3, r2
 80003c8:	0019      	movs	r1, r3
 80003ca:	4b04      	ldr	r3, [pc, #16]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003cc:	687a      	ldr	r2, [r7, #4]
 80003ce:	430a      	orrs	r2, r1
 80003d0:	605a      	str	r2, [r3, #4]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	b002      	add	sp, #8
 80003d8:	bd80      	pop	{r7, pc}
 80003da:	46c0      	nop			; (mov r8, r8)
 80003dc:	40021000 	.word	0x40021000

080003e0 <LL_RCC_GetSysClkSource>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	4b03      	ldr	r3, [pc, #12]	; (80003f4 <LL_RCC_GetSysClkSource+0x14>)
 80003e6:	685b      	ldr	r3, [r3, #4]
 80003e8:	220c      	movs	r2, #12
 80003ea:	4013      	ands	r3, r2
 80003ec:	0018      	movs	r0, r3
 80003ee:	46bd      	mov	sp, r7
 80003f0:	bd80      	pop	{r7, pc}
 80003f2:	46c0      	nop			; (mov r8, r8)
 80003f4:	40021000 	.word	0x40021000

080003f8 <LL_RCC_SetAHBPrescaler>:
 80003f8:	b580      	push	{r7, lr}
 80003fa:	b082      	sub	sp, #8
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	6078      	str	r0, [r7, #4]
 8000400:	4b06      	ldr	r3, [pc, #24]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 8000402:	685b      	ldr	r3, [r3, #4]
 8000404:	22f0      	movs	r2, #240	; 0xf0
 8000406:	4393      	bics	r3, r2
 8000408:	0019      	movs	r1, r3
 800040a:	4b04      	ldr	r3, [pc, #16]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 800040c:	687a      	ldr	r2, [r7, #4]
 800040e:	430a      	orrs	r2, r1
 8000410:	605a      	str	r2, [r3, #4]
 8000412:	46c0      	nop			; (mov r8, r8)
 8000414:	46bd      	mov	sp, r7
 8000416:	b002      	add	sp, #8
 8000418:	bd80      	pop	{r7, pc}
 800041a:	46c0      	nop			; (mov r8, r8)
 800041c:	40021000 	.word	0x40021000

08000420 <LL_RCC_SetAPB1Prescaler>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b082      	sub	sp, #8
 8000424:	af00      	add	r7, sp, #0
 8000426:	6078      	str	r0, [r7, #4]
 8000428:	4b06      	ldr	r3, [pc, #24]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 800042a:	685b      	ldr	r3, [r3, #4]
 800042c:	4a06      	ldr	r2, [pc, #24]	; (8000448 <LL_RCC_SetAPB1Prescaler+0x28>)
 800042e:	4013      	ands	r3, r2
 8000430:	0019      	movs	r1, r3
 8000432:	4b04      	ldr	r3, [pc, #16]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000434:	687a      	ldr	r2, [r7, #4]
 8000436:	430a      	orrs	r2, r1
 8000438:	605a      	str	r2, [r3, #4]
 800043a:	46c0      	nop			; (mov r8, r8)
 800043c:	46bd      	mov	sp, r7
 800043e:	b002      	add	sp, #8
 8000440:	bd80      	pop	{r7, pc}
 8000442:	46c0      	nop			; (mov r8, r8)
 8000444:	40021000 	.word	0x40021000
 8000448:	fffff8ff 	.word	0xfffff8ff

0800044c <LL_RCC_PLL_Enable>:
 800044c:	b580      	push	{r7, lr}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b04      	ldr	r3, [pc, #16]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000452:	681a      	ldr	r2, [r3, #0]
 8000454:	4b03      	ldr	r3, [pc, #12]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000456:	2180      	movs	r1, #128	; 0x80
 8000458:	0449      	lsls	r1, r1, #17
 800045a:	430a      	orrs	r2, r1
 800045c:	601a      	str	r2, [r3, #0]
 800045e:	46c0      	nop			; (mov r8, r8)
 8000460:	46bd      	mov	sp, r7
 8000462:	bd80      	pop	{r7, pc}
 8000464:	40021000 	.word	0x40021000

08000468 <LL_RCC_PLL_IsReady>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b07      	ldr	r3, [pc, #28]	; (800048c <LL_RCC_PLL_IsReady+0x24>)
 800046e:	681a      	ldr	r2, [r3, #0]
 8000470:	2380      	movs	r3, #128	; 0x80
 8000472:	049b      	lsls	r3, r3, #18
 8000474:	4013      	ands	r3, r2
 8000476:	22fe      	movs	r2, #254	; 0xfe
 8000478:	0612      	lsls	r2, r2, #24
 800047a:	4694      	mov	ip, r2
 800047c:	4463      	add	r3, ip
 800047e:	425a      	negs	r2, r3
 8000480:	4153      	adcs	r3, r2
 8000482:	b2db      	uxtb	r3, r3
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	bd80      	pop	{r7, pc}
 800048a:	46c0      	nop			; (mov r8, r8)
 800048c:	40021000 	.word	0x40021000

08000490 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000490:	b580      	push	{r7, lr}
 8000492:	b082      	sub	sp, #8
 8000494:	af00      	add	r7, sp, #0
 8000496:	6078      	str	r0, [r7, #4]
 8000498:	6039      	str	r1, [r7, #0]
 800049a:	4b0e      	ldr	r3, [pc, #56]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800049c:	685b      	ldr	r3, [r3, #4]
 800049e:	4a0e      	ldr	r2, [pc, #56]	; (80004d8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004a0:	4013      	ands	r3, r2
 80004a2:	0019      	movs	r1, r3
 80004a4:	687a      	ldr	r2, [r7, #4]
 80004a6:	2380      	movs	r3, #128	; 0x80
 80004a8:	025b      	lsls	r3, r3, #9
 80004aa:	401a      	ands	r2, r3
 80004ac:	683b      	ldr	r3, [r7, #0]
 80004ae:	431a      	orrs	r2, r3
 80004b0:	4b08      	ldr	r3, [pc, #32]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b2:	430a      	orrs	r2, r1
 80004b4:	605a      	str	r2, [r3, #4]
 80004b6:	4b07      	ldr	r3, [pc, #28]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ba:	220f      	movs	r2, #15
 80004bc:	4393      	bics	r3, r2
 80004be:	0019      	movs	r1, r3
 80004c0:	687b      	ldr	r3, [r7, #4]
 80004c2:	220f      	movs	r2, #15
 80004c4:	401a      	ands	r2, r3
 80004c6:	4b03      	ldr	r3, [pc, #12]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004c8:	430a      	orrs	r2, r1
 80004ca:	62da      	str	r2, [r3, #44]	; 0x2c
 80004cc:	46c0      	nop			; (mov r8, r8)
 80004ce:	46bd      	mov	sp, r7
 80004d0:	b002      	add	sp, #8
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	40021000 	.word	0x40021000
 80004d8:	ffc2ffff 	.word	0xffc2ffff

080004dc <LL_SYSCFG_SetEXTISource>:
 80004dc:	b590      	push	{r4, r7, lr}
 80004de:	b083      	sub	sp, #12
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	6078      	str	r0, [r7, #4]
 80004e4:	6039      	str	r1, [r7, #0]
 80004e6:	4a0f      	ldr	r2, [pc, #60]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 80004e8:	683b      	ldr	r3, [r7, #0]
 80004ea:	21ff      	movs	r1, #255	; 0xff
 80004ec:	400b      	ands	r3, r1
 80004ee:	3302      	adds	r3, #2
 80004f0:	009b      	lsls	r3, r3, #2
 80004f2:	589b      	ldr	r3, [r3, r2]
 80004f4:	683a      	ldr	r2, [r7, #0]
 80004f6:	0c12      	lsrs	r2, r2, #16
 80004f8:	210f      	movs	r1, #15
 80004fa:	4091      	lsls	r1, r2
 80004fc:	000a      	movs	r2, r1
 80004fe:	43d2      	mvns	r2, r2
 8000500:	401a      	ands	r2, r3
 8000502:	0011      	movs	r1, r2
 8000504:	683b      	ldr	r3, [r7, #0]
 8000506:	0c1b      	lsrs	r3, r3, #16
 8000508:	687a      	ldr	r2, [r7, #4]
 800050a:	409a      	lsls	r2, r3
 800050c:	4805      	ldr	r0, [pc, #20]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 800050e:	683b      	ldr	r3, [r7, #0]
 8000510:	24ff      	movs	r4, #255	; 0xff
 8000512:	4023      	ands	r3, r4
 8000514:	430a      	orrs	r2, r1
 8000516:	3302      	adds	r3, #2
 8000518:	009b      	lsls	r3, r3, #2
 800051a:	501a      	str	r2, [r3, r0]
 800051c:	46c0      	nop			; (mov r8, r8)
 800051e:	46bd      	mov	sp, r7
 8000520:	b003      	add	sp, #12
 8000522:	bd90      	pop	{r4, r7, pc}
 8000524:	40010000 	.word	0x40010000

08000528 <LL_FLASH_SetLatency>:
 8000528:	b580      	push	{r7, lr}
 800052a:	b082      	sub	sp, #8
 800052c:	af00      	add	r7, sp, #0
 800052e:	6078      	str	r0, [r7, #4]
 8000530:	4b06      	ldr	r3, [pc, #24]	; (800054c <LL_FLASH_SetLatency+0x24>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	2201      	movs	r2, #1
 8000536:	4393      	bics	r3, r2
 8000538:	0019      	movs	r1, r3
 800053a:	4b04      	ldr	r3, [pc, #16]	; (800054c <LL_FLASH_SetLatency+0x24>)
 800053c:	687a      	ldr	r2, [r7, #4]
 800053e:	430a      	orrs	r2, r1
 8000540:	601a      	str	r2, [r3, #0]
 8000542:	46c0      	nop			; (mov r8, r8)
 8000544:	46bd      	mov	sp, r7
 8000546:	b002      	add	sp, #8
 8000548:	bd80      	pop	{r7, pc}
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	40022000 	.word	0x40022000

08000550 <LL_AHB1_GRP1_EnableClock>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	4b07      	ldr	r3, [pc, #28]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055a:	6959      	ldr	r1, [r3, #20]
 800055c:	4b06      	ldr	r3, [pc, #24]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055e:	687a      	ldr	r2, [r7, #4]
 8000560:	430a      	orrs	r2, r1
 8000562:	615a      	str	r2, [r3, #20]
 8000564:	4b04      	ldr	r3, [pc, #16]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000566:	695b      	ldr	r3, [r3, #20]
 8000568:	687a      	ldr	r2, [r7, #4]
 800056a:	4013      	ands	r3, r2
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	68fb      	ldr	r3, [r7, #12]
 8000570:	46c0      	nop			; (mov r8, r8)
 8000572:	46bd      	mov	sp, r7
 8000574:	b004      	add	sp, #16
 8000576:	bd80      	pop	{r7, pc}
 8000578:	40021000 	.word	0x40021000

0800057c <LL_APB1_GRP1_EnableClock>:
 800057c:	b580      	push	{r7, lr}
 800057e:	b084      	sub	sp, #16
 8000580:	af00      	add	r7, sp, #0
 8000582:	6078      	str	r0, [r7, #4]
 8000584:	4b07      	ldr	r3, [pc, #28]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8000586:	69d9      	ldr	r1, [r3, #28]
 8000588:	4b06      	ldr	r3, [pc, #24]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 800058a:	687a      	ldr	r2, [r7, #4]
 800058c:	430a      	orrs	r2, r1
 800058e:	61da      	str	r2, [r3, #28]
 8000590:	4b04      	ldr	r3, [pc, #16]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8000592:	69db      	ldr	r3, [r3, #28]
 8000594:	687a      	ldr	r2, [r7, #4]
 8000596:	4013      	ands	r3, r2
 8000598:	60fb      	str	r3, [r7, #12]
 800059a:	68fb      	ldr	r3, [r7, #12]
 800059c:	46c0      	nop			; (mov r8, r8)
 800059e:	46bd      	mov	sp, r7
 80005a0:	b004      	add	sp, #16
 80005a2:	bd80      	pop	{r7, pc}
 80005a4:	40021000 	.word	0x40021000

080005a8 <LL_APB1_GRP2_EnableClock>:
 80005a8:	b580      	push	{r7, lr}
 80005aa:	b084      	sub	sp, #16
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	6078      	str	r0, [r7, #4]
 80005b0:	4b07      	ldr	r3, [pc, #28]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005b2:	6999      	ldr	r1, [r3, #24]
 80005b4:	4b06      	ldr	r3, [pc, #24]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005b6:	687a      	ldr	r2, [r7, #4]
 80005b8:	430a      	orrs	r2, r1
 80005ba:	619a      	str	r2, [r3, #24]
 80005bc:	4b04      	ldr	r3, [pc, #16]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005be:	699b      	ldr	r3, [r3, #24]
 80005c0:	687a      	ldr	r2, [r7, #4]
 80005c2:	4013      	ands	r3, r2
 80005c4:	60fb      	str	r3, [r7, #12]
 80005c6:	68fb      	ldr	r3, [r7, #12]
 80005c8:	46c0      	nop			; (mov r8, r8)
 80005ca:	46bd      	mov	sp, r7
 80005cc:	b004      	add	sp, #16
 80005ce:	bd80      	pop	{r7, pc}
 80005d0:	40021000 	.word	0x40021000

080005d4 <LL_GPIO_SetPinMode>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	b084      	sub	sp, #16
 80005d8:	af00      	add	r7, sp, #0
 80005da:	60f8      	str	r0, [r7, #12]
 80005dc:	60b9      	str	r1, [r7, #8]
 80005de:	607a      	str	r2, [r7, #4]
 80005e0:	68fb      	ldr	r3, [r7, #12]
 80005e2:	6819      	ldr	r1, [r3, #0]
 80005e4:	68bb      	ldr	r3, [r7, #8]
 80005e6:	68ba      	ldr	r2, [r7, #8]
 80005e8:	435a      	muls	r2, r3
 80005ea:	0013      	movs	r3, r2
 80005ec:	005b      	lsls	r3, r3, #1
 80005ee:	189b      	adds	r3, r3, r2
 80005f0:	43db      	mvns	r3, r3
 80005f2:	400b      	ands	r3, r1
 80005f4:	001a      	movs	r2, r3
 80005f6:	68bb      	ldr	r3, [r7, #8]
 80005f8:	68b9      	ldr	r1, [r7, #8]
 80005fa:	434b      	muls	r3, r1
 80005fc:	6879      	ldr	r1, [r7, #4]
 80005fe:	434b      	muls	r3, r1
 8000600:	431a      	orrs	r2, r3
 8000602:	68fb      	ldr	r3, [r7, #12]
 8000604:	601a      	str	r2, [r3, #0]
 8000606:	46c0      	nop			; (mov r8, r8)
 8000608:	46bd      	mov	sp, r7
 800060a:	b004      	add	sp, #16
 800060c:	bd80      	pop	{r7, pc}

0800060e <LL_GPIO_SetPinPull>:
 800060e:	b580      	push	{r7, lr}
 8000610:	b084      	sub	sp, #16
 8000612:	af00      	add	r7, sp, #0
 8000614:	60f8      	str	r0, [r7, #12]
 8000616:	60b9      	str	r1, [r7, #8]
 8000618:	607a      	str	r2, [r7, #4]
 800061a:	68fb      	ldr	r3, [r7, #12]
 800061c:	68d9      	ldr	r1, [r3, #12]
 800061e:	68bb      	ldr	r3, [r7, #8]
 8000620:	68ba      	ldr	r2, [r7, #8]
 8000622:	435a      	muls	r2, r3
 8000624:	0013      	movs	r3, r2
 8000626:	005b      	lsls	r3, r3, #1
 8000628:	189b      	adds	r3, r3, r2
 800062a:	43db      	mvns	r3, r3
 800062c:	400b      	ands	r3, r1
 800062e:	001a      	movs	r2, r3
 8000630:	68bb      	ldr	r3, [r7, #8]
 8000632:	68b9      	ldr	r1, [r7, #8]
 8000634:	434b      	muls	r3, r1
 8000636:	6879      	ldr	r1, [r7, #4]
 8000638:	434b      	muls	r3, r1
 800063a:	431a      	orrs	r2, r3
 800063c:	68fb      	ldr	r3, [r7, #12]
 800063e:	60da      	str	r2, [r3, #12]
 8000640:	46c0      	nop			; (mov r8, r8)
 8000642:	46bd      	mov	sp, r7
 8000644:	b004      	add	sp, #16
 8000646:	bd80      	pop	{r7, pc}

08000648 <LL_GPIO_SetAFPin_0_7>:
 8000648:	b580      	push	{r7, lr}
 800064a:	b084      	sub	sp, #16
 800064c:	af00      	add	r7, sp, #0
 800064e:	60f8      	str	r0, [r7, #12]
 8000650:	60b9      	str	r1, [r7, #8]
 8000652:	607a      	str	r2, [r7, #4]
 8000654:	68fb      	ldr	r3, [r7, #12]
 8000656:	6a19      	ldr	r1, [r3, #32]
 8000658:	68bb      	ldr	r3, [r7, #8]
 800065a:	68ba      	ldr	r2, [r7, #8]
 800065c:	4353      	muls	r3, r2
 800065e:	68ba      	ldr	r2, [r7, #8]
 8000660:	4353      	muls	r3, r2
 8000662:	68ba      	ldr	r2, [r7, #8]
 8000664:	435a      	muls	r2, r3
 8000666:	0013      	movs	r3, r2
 8000668:	011b      	lsls	r3, r3, #4
 800066a:	1a9b      	subs	r3, r3, r2
 800066c:	43db      	mvns	r3, r3
 800066e:	400b      	ands	r3, r1
 8000670:	001a      	movs	r2, r3
 8000672:	68bb      	ldr	r3, [r7, #8]
 8000674:	68b9      	ldr	r1, [r7, #8]
 8000676:	434b      	muls	r3, r1
 8000678:	68b9      	ldr	r1, [r7, #8]
 800067a:	434b      	muls	r3, r1
 800067c:	68b9      	ldr	r1, [r7, #8]
 800067e:	434b      	muls	r3, r1
 8000680:	6879      	ldr	r1, [r7, #4]
 8000682:	434b      	muls	r3, r1
 8000684:	431a      	orrs	r2, r3
 8000686:	68fb      	ldr	r3, [r7, #12]
 8000688:	621a      	str	r2, [r3, #32]
 800068a:	46c0      	nop			; (mov r8, r8)
 800068c:	46bd      	mov	sp, r7
 800068e:	b004      	add	sp, #16
 8000690:	bd80      	pop	{r7, pc}

08000692 <LL_GPIO_ReadInputPort>:
 8000692:	b580      	push	{r7, lr}
 8000694:	b082      	sub	sp, #8
 8000696:	af00      	add	r7, sp, #0
 8000698:	6078      	str	r0, [r7, #4]
 800069a:	687b      	ldr	r3, [r7, #4]
 800069c:	691b      	ldr	r3, [r3, #16]
 800069e:	0018      	movs	r0, r3
 80006a0:	46bd      	mov	sp, r7
 80006a2:	b002      	add	sp, #8
 80006a4:	bd80      	pop	{r7, pc}
	...

080006a8 <LL_EXTI_EnableIT_0_31>:
 80006a8:	b580      	push	{r7, lr}
 80006aa:	b082      	sub	sp, #8
 80006ac:	af00      	add	r7, sp, #0
 80006ae:	6078      	str	r0, [r7, #4]
 80006b0:	4b04      	ldr	r3, [pc, #16]	; (80006c4 <LL_EXTI_EnableIT_0_31+0x1c>)
 80006b2:	6819      	ldr	r1, [r3, #0]
 80006b4:	4b03      	ldr	r3, [pc, #12]	; (80006c4 <LL_EXTI_EnableIT_0_31+0x1c>)
 80006b6:	687a      	ldr	r2, [r7, #4]
 80006b8:	430a      	orrs	r2, r1
 80006ba:	601a      	str	r2, [r3, #0]
 80006bc:	46c0      	nop			; (mov r8, r8)
 80006be:	46bd      	mov	sp, r7
 80006c0:	b002      	add	sp, #8
 80006c2:	bd80      	pop	{r7, pc}
 80006c4:	40010400 	.word	0x40010400

080006c8 <LL_EXTI_EnableRisingTrig_0_31>:
 80006c8:	b580      	push	{r7, lr}
 80006ca:	b082      	sub	sp, #8
 80006cc:	af00      	add	r7, sp, #0
 80006ce:	6078      	str	r0, [r7, #4]
 80006d0:	4b04      	ldr	r3, [pc, #16]	; (80006e4 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80006d2:	6899      	ldr	r1, [r3, #8]
 80006d4:	4b03      	ldr	r3, [pc, #12]	; (80006e4 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80006d6:	687a      	ldr	r2, [r7, #4]
 80006d8:	430a      	orrs	r2, r1
 80006da:	609a      	str	r2, [r3, #8]
 80006dc:	46c0      	nop			; (mov r8, r8)
 80006de:	46bd      	mov	sp, r7
 80006e0:	b002      	add	sp, #8
 80006e2:	bd80      	pop	{r7, pc}
 80006e4:	40010400 	.word	0x40010400

080006e8 <LL_EXTI_EnableFallingTrig_0_31>:
 80006e8:	b580      	push	{r7, lr}
 80006ea:	b082      	sub	sp, #8
 80006ec:	af00      	add	r7, sp, #0
 80006ee:	6078      	str	r0, [r7, #4]
 80006f0:	4b04      	ldr	r3, [pc, #16]	; (8000704 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80006f2:	68d9      	ldr	r1, [r3, #12]
 80006f4:	4b03      	ldr	r3, [pc, #12]	; (8000704 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80006f6:	687a      	ldr	r2, [r7, #4]
 80006f8:	430a      	orrs	r2, r1
 80006fa:	60da      	str	r2, [r3, #12]
 80006fc:	46c0      	nop			; (mov r8, r8)
 80006fe:	46bd      	mov	sp, r7
 8000700:	b002      	add	sp, #8
 8000702:	bd80      	pop	{r7, pc}
 8000704:	40010400 	.word	0x40010400

08000708 <LL_EXTI_IsActiveFlag_0_31>:
 8000708:	b580      	push	{r7, lr}
 800070a:	b082      	sub	sp, #8
 800070c:	af00      	add	r7, sp, #0
 800070e:	6078      	str	r0, [r7, #4]
 8000710:	4b06      	ldr	r3, [pc, #24]	; (800072c <LL_EXTI_IsActiveFlag_0_31+0x24>)
 8000712:	695b      	ldr	r3, [r3, #20]
 8000714:	687a      	ldr	r2, [r7, #4]
 8000716:	4013      	ands	r3, r2
 8000718:	687a      	ldr	r2, [r7, #4]
 800071a:	1ad3      	subs	r3, r2, r3
 800071c:	425a      	negs	r2, r3
 800071e:	4153      	adcs	r3, r2
 8000720:	b2db      	uxtb	r3, r3
 8000722:	0018      	movs	r0, r3
 8000724:	46bd      	mov	sp, r7
 8000726:	b002      	add	sp, #8
 8000728:	bd80      	pop	{r7, pc}
 800072a:	46c0      	nop			; (mov r8, r8)
 800072c:	40010400 	.word	0x40010400

08000730 <LL_EXTI_ClearFlag_0_31>:
 8000730:	b580      	push	{r7, lr}
 8000732:	b082      	sub	sp, #8
 8000734:	af00      	add	r7, sp, #0
 8000736:	6078      	str	r0, [r7, #4]
 8000738:	4b03      	ldr	r3, [pc, #12]	; (8000748 <LL_EXTI_ClearFlag_0_31+0x18>)
 800073a:	687a      	ldr	r2, [r7, #4]
 800073c:	615a      	str	r2, [r3, #20]
 800073e:	46c0      	nop			; (mov r8, r8)
 8000740:	46bd      	mov	sp, r7
 8000742:	b002      	add	sp, #8
 8000744:	bd80      	pop	{r7, pc}
 8000746:	46c0      	nop			; (mov r8, r8)
 8000748:	40010400 	.word	0x40010400

0800074c <LL_TIM_EnableCounter>:
 800074c:	b580      	push	{r7, lr}
 800074e:	b082      	sub	sp, #8
 8000750:	af00      	add	r7, sp, #0
 8000752:	6078      	str	r0, [r7, #4]
 8000754:	687b      	ldr	r3, [r7, #4]
 8000756:	681b      	ldr	r3, [r3, #0]
 8000758:	2201      	movs	r2, #1
 800075a:	431a      	orrs	r2, r3
 800075c:	687b      	ldr	r3, [r7, #4]
 800075e:	601a      	str	r2, [r3, #0]
 8000760:	46c0      	nop			; (mov r8, r8)
 8000762:	46bd      	mov	sp, r7
 8000764:	b002      	add	sp, #8
 8000766:	bd80      	pop	{r7, pc}

08000768 <LL_TIM_SetCounterMode>:
 8000768:	b580      	push	{r7, lr}
 800076a:	b082      	sub	sp, #8
 800076c:	af00      	add	r7, sp, #0
 800076e:	6078      	str	r0, [r7, #4]
 8000770:	6039      	str	r1, [r7, #0]
 8000772:	687b      	ldr	r3, [r7, #4]
 8000774:	681b      	ldr	r3, [r3, #0]
 8000776:	2270      	movs	r2, #112	; 0x70
 8000778:	4393      	bics	r3, r2
 800077a:	001a      	movs	r2, r3
 800077c:	683b      	ldr	r3, [r7, #0]
 800077e:	431a      	orrs	r2, r3
 8000780:	687b      	ldr	r3, [r7, #4]
 8000782:	601a      	str	r2, [r3, #0]
 8000784:	46c0      	nop			; (mov r8, r8)
 8000786:	46bd      	mov	sp, r7
 8000788:	b002      	add	sp, #8
 800078a:	bd80      	pop	{r7, pc}

0800078c <LL_TIM_SetPrescaler>:
 800078c:	b580      	push	{r7, lr}
 800078e:	b082      	sub	sp, #8
 8000790:	af00      	add	r7, sp, #0
 8000792:	6078      	str	r0, [r7, #4]
 8000794:	6039      	str	r1, [r7, #0]
 8000796:	687b      	ldr	r3, [r7, #4]
 8000798:	683a      	ldr	r2, [r7, #0]
 800079a:	629a      	str	r2, [r3, #40]	; 0x28
 800079c:	46c0      	nop			; (mov r8, r8)
 800079e:	46bd      	mov	sp, r7
 80007a0:	b002      	add	sp, #8
 80007a2:	bd80      	pop	{r7, pc}

080007a4 <LL_TIM_SetAutoReload>:
 80007a4:	b580      	push	{r7, lr}
 80007a6:	b082      	sub	sp, #8
 80007a8:	af00      	add	r7, sp, #0
 80007aa:	6078      	str	r0, [r7, #4]
 80007ac:	6039      	str	r1, [r7, #0]
 80007ae:	687b      	ldr	r3, [r7, #4]
 80007b0:	683a      	ldr	r2, [r7, #0]
 80007b2:	62da      	str	r2, [r3, #44]	; 0x2c
 80007b4:	46c0      	nop			; (mov r8, r8)
 80007b6:	46bd      	mov	sp, r7
 80007b8:	b002      	add	sp, #8
 80007ba:	bd80      	pop	{r7, pc}

080007bc <LL_TIM_CC_EnableChannel>:
 80007bc:	b580      	push	{r7, lr}
 80007be:	b082      	sub	sp, #8
 80007c0:	af00      	add	r7, sp, #0
 80007c2:	6078      	str	r0, [r7, #4]
 80007c4:	6039      	str	r1, [r7, #0]
 80007c6:	687b      	ldr	r3, [r7, #4]
 80007c8:	6a1a      	ldr	r2, [r3, #32]
 80007ca:	683b      	ldr	r3, [r7, #0]
 80007cc:	431a      	orrs	r2, r3
 80007ce:	687b      	ldr	r3, [r7, #4]
 80007d0:	621a      	str	r2, [r3, #32]
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	46bd      	mov	sp, r7
 80007d6:	b002      	add	sp, #8
 80007d8:	bd80      	pop	{r7, pc}
	...

080007dc <LL_TIM_OC_SetMode>:
 80007dc:	b5b0      	push	{r4, r5, r7, lr}
 80007de:	b084      	sub	sp, #16
 80007e0:	af00      	add	r7, sp, #0
 80007e2:	60f8      	str	r0, [r7, #12]
 80007e4:	60b9      	str	r1, [r7, #8]
 80007e6:	607a      	str	r2, [r7, #4]
 80007e8:	68bb      	ldr	r3, [r7, #8]
 80007ea:	2b01      	cmp	r3, #1
 80007ec:	d01e      	beq.n	800082c <LL_TIM_OC_SetMode+0x50>
 80007ee:	68bb      	ldr	r3, [r7, #8]
 80007f0:	2b04      	cmp	r3, #4
 80007f2:	d019      	beq.n	8000828 <LL_TIM_OC_SetMode+0x4c>
 80007f4:	68bb      	ldr	r3, [r7, #8]
 80007f6:	2b10      	cmp	r3, #16
 80007f8:	d014      	beq.n	8000824 <LL_TIM_OC_SetMode+0x48>
 80007fa:	68bb      	ldr	r3, [r7, #8]
 80007fc:	2b40      	cmp	r3, #64	; 0x40
 80007fe:	d00f      	beq.n	8000820 <LL_TIM_OC_SetMode+0x44>
 8000800:	68ba      	ldr	r2, [r7, #8]
 8000802:	2380      	movs	r3, #128	; 0x80
 8000804:	005b      	lsls	r3, r3, #1
 8000806:	429a      	cmp	r2, r3
 8000808:	d008      	beq.n	800081c <LL_TIM_OC_SetMode+0x40>
 800080a:	68ba      	ldr	r2, [r7, #8]
 800080c:	2380      	movs	r3, #128	; 0x80
 800080e:	00db      	lsls	r3, r3, #3
 8000810:	429a      	cmp	r2, r3
 8000812:	d101      	bne.n	8000818 <LL_TIM_OC_SetMode+0x3c>
 8000814:	2305      	movs	r3, #5
 8000816:	e00a      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 8000818:	2306      	movs	r3, #6
 800081a:	e008      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 800081c:	2304      	movs	r3, #4
 800081e:	e006      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 8000820:	2303      	movs	r3, #3
 8000822:	e004      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 8000824:	2302      	movs	r3, #2
 8000826:	e002      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 8000828:	2301      	movs	r3, #1
 800082a:	e000      	b.n	800082e <LL_TIM_OC_SetMode+0x52>
 800082c:	2300      	movs	r3, #0
 800082e:	001d      	movs	r5, r3
 8000830:	68fb      	ldr	r3, [r7, #12]
 8000832:	3318      	adds	r3, #24
 8000834:	001a      	movs	r2, r3
 8000836:	0029      	movs	r1, r5
 8000838:	4b0c      	ldr	r3, [pc, #48]	; (800086c <LL_TIM_OC_SetMode+0x90>)
 800083a:	5c5b      	ldrb	r3, [r3, r1]
 800083c:	18d3      	adds	r3, r2, r3
 800083e:	001c      	movs	r4, r3
 8000840:	6823      	ldr	r3, [r4, #0]
 8000842:	0029      	movs	r1, r5
 8000844:	4a0a      	ldr	r2, [pc, #40]	; (8000870 <LL_TIM_OC_SetMode+0x94>)
 8000846:	5c52      	ldrb	r2, [r2, r1]
 8000848:	0011      	movs	r1, r2
 800084a:	2273      	movs	r2, #115	; 0x73
 800084c:	408a      	lsls	r2, r1
 800084e:	43d2      	mvns	r2, r2
 8000850:	401a      	ands	r2, r3
 8000852:	0029      	movs	r1, r5
 8000854:	4b06      	ldr	r3, [pc, #24]	; (8000870 <LL_TIM_OC_SetMode+0x94>)
 8000856:	5c5b      	ldrb	r3, [r3, r1]
 8000858:	0019      	movs	r1, r3
 800085a:	687b      	ldr	r3, [r7, #4]
 800085c:	408b      	lsls	r3, r1
 800085e:	4313      	orrs	r3, r2
 8000860:	6023      	str	r3, [r4, #0]
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	46bd      	mov	sp, r7
 8000866:	b004      	add	sp, #16
 8000868:	bdb0      	pop	{r4, r5, r7, pc}
 800086a:	46c0      	nop			; (mov r8, r8)
 800086c:	08001aec 	.word	0x08001aec
 8000870:	08001af4 	.word	0x08001af4

08000874 <LL_TIM_OC_SetPolarity>:
 8000874:	b590      	push	{r4, r7, lr}
 8000876:	b085      	sub	sp, #20
 8000878:	af00      	add	r7, sp, #0
 800087a:	60f8      	str	r0, [r7, #12]
 800087c:	60b9      	str	r1, [r7, #8]
 800087e:	607a      	str	r2, [r7, #4]
 8000880:	68bb      	ldr	r3, [r7, #8]
 8000882:	2b01      	cmp	r3, #1
 8000884:	d01e      	beq.n	80008c4 <LL_TIM_OC_SetPolarity+0x50>
 8000886:	68bb      	ldr	r3, [r7, #8]
 8000888:	2b04      	cmp	r3, #4
 800088a:	d019      	beq.n	80008c0 <LL_TIM_OC_SetPolarity+0x4c>
 800088c:	68bb      	ldr	r3, [r7, #8]
 800088e:	2b10      	cmp	r3, #16
 8000890:	d014      	beq.n	80008bc <LL_TIM_OC_SetPolarity+0x48>
 8000892:	68bb      	ldr	r3, [r7, #8]
 8000894:	2b40      	cmp	r3, #64	; 0x40
 8000896:	d00f      	beq.n	80008b8 <LL_TIM_OC_SetPolarity+0x44>
 8000898:	68ba      	ldr	r2, [r7, #8]
 800089a:	2380      	movs	r3, #128	; 0x80
 800089c:	005b      	lsls	r3, r3, #1
 800089e:	429a      	cmp	r2, r3
 80008a0:	d008      	beq.n	80008b4 <LL_TIM_OC_SetPolarity+0x40>
 80008a2:	68ba      	ldr	r2, [r7, #8]
 80008a4:	2380      	movs	r3, #128	; 0x80
 80008a6:	00db      	lsls	r3, r3, #3
 80008a8:	429a      	cmp	r2, r3
 80008aa:	d101      	bne.n	80008b0 <LL_TIM_OC_SetPolarity+0x3c>
 80008ac:	2305      	movs	r3, #5
 80008ae:	e00a      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008b0:	2306      	movs	r3, #6
 80008b2:	e008      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008b4:	2304      	movs	r3, #4
 80008b6:	e006      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008b8:	2303      	movs	r3, #3
 80008ba:	e004      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008bc:	2302      	movs	r3, #2
 80008be:	e002      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008c0:	2301      	movs	r3, #1
 80008c2:	e000      	b.n	80008c6 <LL_TIM_OC_SetPolarity+0x52>
 80008c4:	2300      	movs	r3, #0
 80008c6:	001c      	movs	r4, r3
 80008c8:	68fb      	ldr	r3, [r7, #12]
 80008ca:	6a1b      	ldr	r3, [r3, #32]
 80008cc:	0021      	movs	r1, r4
 80008ce:	4a0a      	ldr	r2, [pc, #40]	; (80008f8 <LL_TIM_OC_SetPolarity+0x84>)
 80008d0:	5c52      	ldrb	r2, [r2, r1]
 80008d2:	0011      	movs	r1, r2
 80008d4:	2202      	movs	r2, #2
 80008d6:	408a      	lsls	r2, r1
 80008d8:	43d2      	mvns	r2, r2
 80008da:	401a      	ands	r2, r3
 80008dc:	0021      	movs	r1, r4
 80008de:	4b06      	ldr	r3, [pc, #24]	; (80008f8 <LL_TIM_OC_SetPolarity+0x84>)
 80008e0:	5c5b      	ldrb	r3, [r3, r1]
 80008e2:	0019      	movs	r1, r3
 80008e4:	687b      	ldr	r3, [r7, #4]
 80008e6:	408b      	lsls	r3, r1
 80008e8:	431a      	orrs	r2, r3
 80008ea:	68fb      	ldr	r3, [r7, #12]
 80008ec:	621a      	str	r2, [r3, #32]
 80008ee:	46c0      	nop			; (mov r8, r8)
 80008f0:	46bd      	mov	sp, r7
 80008f2:	b005      	add	sp, #20
 80008f4:	bd90      	pop	{r4, r7, pc}
 80008f6:	46c0      	nop			; (mov r8, r8)
 80008f8:	08001afc 	.word	0x08001afc

080008fc <LL_TIM_OC_SetCompareCH1>:
 80008fc:	b580      	push	{r7, lr}
 80008fe:	b082      	sub	sp, #8
 8000900:	af00      	add	r7, sp, #0
 8000902:	6078      	str	r0, [r7, #4]
 8000904:	6039      	str	r1, [r7, #0]
 8000906:	687b      	ldr	r3, [r7, #4]
 8000908:	683a      	ldr	r2, [r7, #0]
 800090a:	635a      	str	r2, [r3, #52]	; 0x34
 800090c:	46c0      	nop			; (mov r8, r8)
 800090e:	46bd      	mov	sp, r7
 8000910:	b002      	add	sp, #8
 8000912:	bd80      	pop	{r7, pc}

08000914 <LL_TIM_EnableIT_CC1>:
 8000914:	b580      	push	{r7, lr}
 8000916:	b082      	sub	sp, #8
 8000918:	af00      	add	r7, sp, #0
 800091a:	6078      	str	r0, [r7, #4]
 800091c:	687b      	ldr	r3, [r7, #4]
 800091e:	68db      	ldr	r3, [r3, #12]
 8000920:	2202      	movs	r2, #2
 8000922:	431a      	orrs	r2, r3
 8000924:	687b      	ldr	r3, [r7, #4]
 8000926:	60da      	str	r2, [r3, #12]
 8000928:	46c0      	nop			; (mov r8, r8)
 800092a:	46bd      	mov	sp, r7
 800092c:	b002      	add	sp, #8
 800092e:	bd80      	pop	{r7, pc}

08000930 <LL_InitTick>:
 8000930:	b580      	push	{r7, lr}
 8000932:	b082      	sub	sp, #8
 8000934:	af00      	add	r7, sp, #0
 8000936:	6078      	str	r0, [r7, #4]
 8000938:	6039      	str	r1, [r7, #0]
 800093a:	6839      	ldr	r1, [r7, #0]
 800093c:	6878      	ldr	r0, [r7, #4]
 800093e:	f7ff fbe3 	bl	8000108 <__udivsi3>
 8000942:	0003      	movs	r3, r0
 8000944:	001a      	movs	r2, r3
 8000946:	4b06      	ldr	r3, [pc, #24]	; (8000960 <LL_InitTick+0x30>)
 8000948:	3a01      	subs	r2, #1
 800094a:	605a      	str	r2, [r3, #4]
 800094c:	4b04      	ldr	r3, [pc, #16]	; (8000960 <LL_InitTick+0x30>)
 800094e:	2200      	movs	r2, #0
 8000950:	609a      	str	r2, [r3, #8]
 8000952:	4b03      	ldr	r3, [pc, #12]	; (8000960 <LL_InitTick+0x30>)
 8000954:	2205      	movs	r2, #5
 8000956:	601a      	str	r2, [r3, #0]
 8000958:	46c0      	nop			; (mov r8, r8)
 800095a:	46bd      	mov	sp, r7
 800095c:	b002      	add	sp, #8
 800095e:	bd80      	pop	{r7, pc}
 8000960:	e000e010 	.word	0xe000e010

08000964 <LL_SYSTICK_EnableIT>:
 8000964:	b580      	push	{r7, lr}
 8000966:	af00      	add	r7, sp, #0
 8000968:	4b04      	ldr	r3, [pc, #16]	; (800097c <LL_SYSTICK_EnableIT+0x18>)
 800096a:	681a      	ldr	r2, [r3, #0]
 800096c:	4b03      	ldr	r3, [pc, #12]	; (800097c <LL_SYSTICK_EnableIT+0x18>)
 800096e:	2102      	movs	r1, #2
 8000970:	430a      	orrs	r2, r1
 8000972:	601a      	str	r2, [r3, #0]
 8000974:	46c0      	nop			; (mov r8, r8)
 8000976:	46bd      	mov	sp, r7
 8000978:	bd80      	pop	{r7, pc}
 800097a:	46c0      	nop			; (mov r8, r8)
 800097c:	e000e010 	.word	0xe000e010

08000980 <systick_config>:
 8000980:	b580      	push	{r7, lr}
 8000982:	af00      	add	r7, sp, #0
 8000984:	23fa      	movs	r3, #250	; 0xfa
 8000986:	009b      	lsls	r3, r3, #2
 8000988:	4a07      	ldr	r2, [pc, #28]	; (80009a8 <systick_config+0x28>)
 800098a:	0019      	movs	r1, r3
 800098c:	0010      	movs	r0, r2
 800098e:	f7ff ffcf 	bl	8000930 <LL_InitTick>
 8000992:	f7ff ffe7 	bl	8000964 <LL_SYSTICK_EnableIT>
 8000996:	2301      	movs	r3, #1
 8000998:	425b      	negs	r3, r3
 800099a:	2100      	movs	r1, #0
 800099c:	0018      	movs	r0, r3
 800099e:	f7ff fc7f 	bl	80002a0 <NVIC_SetPriority>
 80009a2:	46c0      	nop			; (mov r8, r8)
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bd80      	pop	{r7, pc}
 80009a8:	02dc6c00 	.word	0x02dc6c00

080009ac <exti_config>:
 80009ac:	b580      	push	{r7, lr}
 80009ae:	af00      	add	r7, sp, #0
 80009b0:	2001      	movs	r0, #1
 80009b2:	f7ff fdf9 	bl	80005a8 <LL_APB1_GRP2_EnableClock>
 80009b6:	2380      	movs	r3, #128	; 0x80
 80009b8:	031b      	lsls	r3, r3, #12
 80009ba:	0019      	movs	r1, r3
 80009bc:	2001      	movs	r0, #1
 80009be:	f7ff fd8d 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 80009c2:	2380      	movs	r3, #128	; 0x80
 80009c4:	02db      	lsls	r3, r3, #11
 80009c6:	0019      	movs	r1, r3
 80009c8:	2000      	movs	r0, #0
 80009ca:	f7ff fd87 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 80009ce:	2100      	movs	r1, #0
 80009d0:	2000      	movs	r0, #0
 80009d2:	f7ff fd83 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 80009d6:	2004      	movs	r0, #4
 80009d8:	f7ff fe66 	bl	80006a8 <LL_EXTI_EnableIT_0_31>
 80009dc:	2002      	movs	r0, #2
 80009de:	f7ff fe63 	bl	80006a8 <LL_EXTI_EnableIT_0_31>
 80009e2:	2001      	movs	r0, #1
 80009e4:	f7ff fe60 	bl	80006a8 <LL_EXTI_EnableIT_0_31>
 80009e8:	2004      	movs	r0, #4
 80009ea:	f7ff fe6d 	bl	80006c8 <LL_EXTI_EnableRisingTrig_0_31>
 80009ee:	2002      	movs	r0, #2
 80009f0:	f7ff fe7a 	bl	80006e8 <LL_EXTI_EnableFallingTrig_0_31>
 80009f4:	2002      	movs	r0, #2
 80009f6:	f7ff fe67 	bl	80006c8 <LL_EXTI_EnableRisingTrig_0_31>
 80009fa:	2001      	movs	r0, #1
 80009fc:	f7ff fe74 	bl	80006e8 <LL_EXTI_EnableFallingTrig_0_31>
 8000a00:	2001      	movs	r0, #1
 8000a02:	f7ff fe61 	bl	80006c8 <LL_EXTI_EnableRisingTrig_0_31>
 8000a06:	2005      	movs	r0, #5
 8000a08:	f7ff fc34 	bl	8000274 <NVIC_EnableIRQ>
 8000a0c:	2100      	movs	r1, #0
 8000a0e:	2005      	movs	r0, #5
 8000a10:	f7ff fc46 	bl	80002a0 <NVIC_SetPriority>
 8000a14:	2006      	movs	r0, #6
 8000a16:	f7ff fc2d 	bl	8000274 <NVIC_EnableIRQ>
 8000a1a:	2100      	movs	r1, #0
 8000a1c:	2006      	movs	r0, #6
 8000a1e:	f7ff fc3f 	bl	80002a0 <NVIC_SetPriority>
 8000a22:	46c0      	nop			; (mov r8, r8)
 8000a24:	46bd      	mov	sp, r7
 8000a26:	bd80      	pop	{r7, pc}

08000a28 <timers_config>:
 8000a28:	b580      	push	{r7, lr}
 8000a2a:	af00      	add	r7, sp, #0
 8000a2c:	2380      	movs	r3, #128	; 0x80
 8000a2e:	029b      	lsls	r3, r3, #10
 8000a30:	0018      	movs	r0, r3
 8000a32:	f7ff fd8d 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000a36:	2390      	movs	r3, #144	; 0x90
 8000a38:	05db      	lsls	r3, r3, #23
 8000a3a:	2202      	movs	r2, #2
 8000a3c:	2120      	movs	r1, #32
 8000a3e:	0018      	movs	r0, r3
 8000a40:	f7ff fdc8 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000a44:	2390      	movs	r3, #144	; 0x90
 8000a46:	05db      	lsls	r3, r3, #23
 8000a48:	2202      	movs	r2, #2
 8000a4a:	2120      	movs	r1, #32
 8000a4c:	0018      	movs	r0, r3
 8000a4e:	f7ff fdfb 	bl	8000648 <LL_GPIO_SetAFPin_0_7>
 8000a52:	2001      	movs	r0, #1
 8000a54:	f7ff fd92 	bl	800057c <LL_APB1_GRP1_EnableClock>
 8000a58:	2380      	movs	r3, #128	; 0x80
 8000a5a:	05db      	lsls	r3, r3, #23
 8000a5c:	2100      	movs	r1, #0
 8000a5e:	0018      	movs	r0, r3
 8000a60:	f7ff fe94 	bl	800078c <LL_TIM_SetPrescaler>
 8000a64:	4a1a      	ldr	r2, [pc, #104]	; (8000ad0 <timers_config+0xa8>)
 8000a66:	2380      	movs	r3, #128	; 0x80
 8000a68:	05db      	lsls	r3, r3, #23
 8000a6a:	0011      	movs	r1, r2
 8000a6c:	0018      	movs	r0, r3
 8000a6e:	f7ff fe99 	bl	80007a4 <LL_TIM_SetAutoReload>
 8000a72:	23e1      	movs	r3, #225	; 0xe1
 8000a74:	009a      	lsls	r2, r3, #2
 8000a76:	2380      	movs	r3, #128	; 0x80
 8000a78:	05db      	lsls	r3, r3, #23
 8000a7a:	0011      	movs	r1, r2
 8000a7c:	0018      	movs	r0, r3
 8000a7e:	f7ff ff3d 	bl	80008fc <LL_TIM_OC_SetCompareCH1>
 8000a82:	2380      	movs	r3, #128	; 0x80
 8000a84:	05db      	lsls	r3, r3, #23
 8000a86:	2101      	movs	r1, #1
 8000a88:	0018      	movs	r0, r3
 8000a8a:	f7ff fe97 	bl	80007bc <LL_TIM_CC_EnableChannel>
 8000a8e:	2380      	movs	r3, #128	; 0x80
 8000a90:	05db      	lsls	r3, r3, #23
 8000a92:	2200      	movs	r2, #0
 8000a94:	2101      	movs	r1, #1
 8000a96:	0018      	movs	r0, r3
 8000a98:	f7ff feec 	bl	8000874 <LL_TIM_OC_SetPolarity>
 8000a9c:	2380      	movs	r3, #128	; 0x80
 8000a9e:	05db      	lsls	r3, r3, #23
 8000aa0:	2260      	movs	r2, #96	; 0x60
 8000aa2:	2101      	movs	r1, #1
 8000aa4:	0018      	movs	r0, r3
 8000aa6:	f7ff fe99 	bl	80007dc <LL_TIM_OC_SetMode>
 8000aaa:	2380      	movs	r3, #128	; 0x80
 8000aac:	05db      	lsls	r3, r3, #23
 8000aae:	2100      	movs	r1, #0
 8000ab0:	0018      	movs	r0, r3
 8000ab2:	f7ff fe59 	bl	8000768 <LL_TIM_SetCounterMode>
 8000ab6:	2380      	movs	r3, #128	; 0x80
 8000ab8:	05db      	lsls	r3, r3, #23
 8000aba:	0018      	movs	r0, r3
 8000abc:	f7ff ff2a 	bl	8000914 <LL_TIM_EnableIT_CC1>
 8000ac0:	2380      	movs	r3, #128	; 0x80
 8000ac2:	05db      	lsls	r3, r3, #23
 8000ac4:	0018      	movs	r0, r3
 8000ac6:	f7ff fe41 	bl	800074c <LL_TIM_EnableCounter>
 8000aca:	46c0      	nop			; (mov r8, r8)
 8000acc:	46bd      	mov	sp, r7
 8000ace:	bd80      	pop	{r7, pc}
 8000ad0:	000003e7 	.word	0x000003e7

08000ad4 <EXTI2_3_IRQHandler>:
 8000ad4:	b580      	push	{r7, lr}
 8000ad6:	af00      	add	r7, sp, #0
 8000ad8:	2004      	movs	r0, #4
 8000ada:	f7ff fe15 	bl	8000708 <LL_EXTI_IsActiveFlag_0_31>
 8000ade:	1e03      	subs	r3, r0, #0
 8000ae0:	d002      	beq.n	8000ae8 <EXTI2_3_IRQHandler+0x14>
 8000ae2:	4b04      	ldr	r3, [pc, #16]	; (8000af4 <EXTI2_3_IRQHandler+0x20>)
 8000ae4:	2200      	movs	r2, #0
 8000ae6:	601a      	str	r2, [r3, #0]
 8000ae8:	2004      	movs	r0, #4
 8000aea:	f7ff fe21 	bl	8000730 <LL_EXTI_ClearFlag_0_31>
 8000aee:	46c0      	nop			; (mov r8, r8)
 8000af0:	46bd      	mov	sp, r7
 8000af2:	bd80      	pop	{r7, pc}
 8000af4:	20000000 	.word	0x20000000

08000af8 <SysTick_Handler>:
 8000af8:	b5b0      	push	{r4, r5, r7, lr}
 8000afa:	b086      	sub	sp, #24
 8000afc:	af00      	add	r7, sp, #0
 8000afe:	4b30      	ldr	r3, [pc, #192]	; (8000bc0 <SysTick_Handler+0xc8>)
 8000b00:	681b      	ldr	r3, [r3, #0]
 8000b02:	1c5a      	adds	r2, r3, #1
 8000b04:	4b2e      	ldr	r3, [pc, #184]	; (8000bc0 <SysTick_Handler+0xc8>)
 8000b06:	601a      	str	r2, [r3, #0]
 8000b08:	4b2e      	ldr	r3, [pc, #184]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b0a:	881b      	ldrh	r3, [r3, #0]
 8000b0c:	2b00      	cmp	r3, #0
 8000b0e:	d020      	beq.n	8000b52 <SysTick_Handler+0x5a>
 8000b10:	4b2c      	ldr	r3, [pc, #176]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b12:	881b      	ldrh	r3, [r3, #0]
 8000b14:	3b01      	subs	r3, #1
 8000b16:	b29a      	uxth	r2, r3
 8000b18:	4b2a      	ldr	r3, [pc, #168]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b1a:	801a      	strh	r2, [r3, #0]
 8000b1c:	4b29      	ldr	r3, [pc, #164]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b1e:	881b      	ldrh	r3, [r3, #0]
 8000b20:	085b      	lsrs	r3, r3, #1
 8000b22:	b29b      	uxth	r3, r3
 8000b24:	001a      	movs	r2, r3
 8000b26:	2396      	movs	r3, #150	; 0x96
 8000b28:	1a9b      	subs	r3, r3, r2
 8000b2a:	001a      	movs	r2, r3
 8000b2c:	2380      	movs	r3, #128	; 0x80
 8000b2e:	05db      	lsls	r3, r3, #23
 8000b30:	0011      	movs	r1, r2
 8000b32:	0018      	movs	r0, r3
 8000b34:	f7ff fe2a 	bl	800078c <LL_TIM_SetPrescaler>
 8000b38:	4b22      	ldr	r3, [pc, #136]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b3a:	881b      	ldrh	r3, [r3, #0]
 8000b3c:	001a      	movs	r2, r3
 8000b3e:	23e6      	movs	r3, #230	; 0xe6
 8000b40:	1a9b      	subs	r3, r3, r2
 8000b42:	2bc7      	cmp	r3, #199	; 0xc7
 8000b44:	dd05      	ble.n	8000b52 <SysTick_Handler+0x5a>
 8000b46:	2380      	movs	r3, #128	; 0x80
 8000b48:	05db      	lsls	r3, r3, #23
 8000b4a:	2100      	movs	r1, #0
 8000b4c:	0018      	movs	r0, r3
 8000b4e:	f7ff fe1d 	bl	800078c <LL_TIM_SetPrescaler>
 8000b52:	4b1b      	ldr	r3, [pc, #108]	; (8000bc0 <SysTick_Handler+0xc8>)
 8000b54:	681b      	ldr	r3, [r3, #0]
 8000b56:	2b96      	cmp	r3, #150	; 0x96
 8000b58:	d12e      	bne.n	8000bb8 <SysTick_Handler+0xc0>
 8000b5a:	4b1a      	ldr	r3, [pc, #104]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000b5c:	881b      	ldrh	r3, [r3, #0]
 8000b5e:	2b00      	cmp	r3, #0
 8000b60:	d12a      	bne.n	8000bb8 <SysTick_Handler+0xc0>
 8000b62:	4b19      	ldr	r3, [pc, #100]	; (8000bc8 <SysTick_Handler+0xd0>)
 8000b64:	781b      	ldrb	r3, [r3, #0]
 8000b66:	b25b      	sxtb	r3, r3
 8000b68:	b2db      	uxtb	r3, r3
 8000b6a:	3305      	adds	r3, #5
 8000b6c:	b2d9      	uxtb	r1, r3
 8000b6e:	4b17      	ldr	r3, [pc, #92]	; (8000bcc <SysTick_Handler+0xd4>)
 8000b70:	781b      	ldrb	r3, [r3, #0]
 8000b72:	001a      	movs	r2, r3
 8000b74:	2303      	movs	r3, #3
 8000b76:	4013      	ands	r3, r2
 8000b78:	4d15      	ldr	r5, [pc, #84]	; (8000bd0 <SysTick_Handler+0xd8>)
 8000b7a:	001c      	movs	r4, r3
 8000b7c:	0064      	lsls	r4, r4, #1
 8000b7e:	18e4      	adds	r4, r4, r3
 8000b80:	00e3      	lsls	r3, r4, #3
 8000b82:	001c      	movs	r4, r3
 8000b84:	003b      	movs	r3, r7
 8000b86:	2231      	movs	r2, #49	; 0x31
 8000b88:	0018      	movs	r0, r3
 8000b8a:	f000 fa01 	bl	8000f90 <ship_fire>
 8000b8e:	003a      	movs	r2, r7
 8000b90:	192b      	adds	r3, r5, r4
 8000b92:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000b94:	c313      	stmia	r3!, {r0, r1, r4}
 8000b96:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000b98:	c313      	stmia	r3!, {r0, r1, r4}
 8000b9a:	4b0c      	ldr	r3, [pc, #48]	; (8000bcc <SysTick_Handler+0xd4>)
 8000b9c:	781b      	ldrb	r3, [r3, #0]
 8000b9e:	3301      	adds	r3, #1
 8000ba0:	b2da      	uxtb	r2, r3
 8000ba2:	4b0a      	ldr	r3, [pc, #40]	; (8000bcc <SysTick_Handler+0xd4>)
 8000ba4:	701a      	strb	r2, [r3, #0]
 8000ba6:	4b07      	ldr	r3, [pc, #28]	; (8000bc4 <SysTick_Handler+0xcc>)
 8000ba8:	22e6      	movs	r2, #230	; 0xe6
 8000baa:	801a      	strh	r2, [r3, #0]
 8000bac:	2380      	movs	r3, #128	; 0x80
 8000bae:	05db      	lsls	r3, r3, #23
 8000bb0:	2100      	movs	r1, #0
 8000bb2:	0018      	movs	r0, r3
 8000bb4:	f7ff fdea 	bl	800078c <LL_TIM_SetPrescaler>
 8000bb8:	46c0      	nop			; (mov r8, r8)
 8000bba:	46bd      	mov	sp, r7
 8000bbc:	b006      	add	sp, #24
 8000bbe:	bdb0      	pop	{r4, r5, r7, pc}
 8000bc0:	20000000 	.word	0x20000000
 8000bc4:	20000470 	.word	0x20000470
 8000bc8:	20000024 	.word	0x20000024
 8000bcc:	20000474 	.word	0x20000474
 8000bd0:	2000087c 	.word	0x2000087c

08000bd4 <EXTI0_1_IRQHandler>:
 8000bd4:	b580      	push	{r7, lr}
 8000bd6:	b082      	sub	sp, #8
 8000bd8:	af00      	add	r7, sp, #0
 8000bda:	1dfb      	adds	r3, r7, #7
 8000bdc:	2200      	movs	r2, #0
 8000bde:	701a      	strb	r2, [r3, #0]
 8000be0:	2390      	movs	r3, #144	; 0x90
 8000be2:	05db      	lsls	r3, r3, #23
 8000be4:	0018      	movs	r0, r3
 8000be6:	f7ff fd54 	bl	8000692 <LL_GPIO_ReadInputPort>
 8000bea:	0003      	movs	r3, r0
 8000bec:	b2da      	uxtb	r2, r3
 8000bee:	1dfb      	adds	r3, r7, #7
 8000bf0:	2103      	movs	r1, #3
 8000bf2:	400a      	ands	r2, r1
 8000bf4:	701a      	strb	r2, [r3, #0]
 8000bf6:	4b2a      	ldr	r3, [pc, #168]	; (8000ca0 <EXTI0_1_IRQHandler+0xcc>)
 8000bf8:	781b      	ldrb	r3, [r3, #0]
 8000bfa:	009b      	lsls	r3, r3, #2
 8000bfc:	b25b      	sxtb	r3, r3
 8000bfe:	220c      	movs	r2, #12
 8000c00:	4013      	ands	r3, r2
 8000c02:	b25a      	sxtb	r2, r3
 8000c04:	1dfb      	adds	r3, r7, #7
 8000c06:	781b      	ldrb	r3, [r3, #0]
 8000c08:	b25b      	sxtb	r3, r3
 8000c0a:	4313      	orrs	r3, r2
 8000c0c:	b25b      	sxtb	r3, r3
 8000c0e:	b2da      	uxtb	r2, r3
 8000c10:	4b23      	ldr	r3, [pc, #140]	; (8000ca0 <EXTI0_1_IRQHandler+0xcc>)
 8000c12:	701a      	strb	r2, [r3, #0]
 8000c14:	4b22      	ldr	r3, [pc, #136]	; (8000ca0 <EXTI0_1_IRQHandler+0xcc>)
 8000c16:	781b      	ldrb	r3, [r3, #0]
 8000c18:	001a      	movs	r2, r3
 8000c1a:	4b22      	ldr	r3, [pc, #136]	; (8000ca4 <EXTI0_1_IRQHandler+0xd0>)
 8000c1c:	569b      	ldrsb	r3, [r3, r2]
 8000c1e:	b2da      	uxtb	r2, r3
 8000c20:	4b21      	ldr	r3, [pc, #132]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c22:	781b      	ldrb	r3, [r3, #0]
 8000c24:	b25b      	sxtb	r3, r3
 8000c26:	b2db      	uxtb	r3, r3
 8000c28:	18d3      	adds	r3, r2, r3
 8000c2a:	b2db      	uxtb	r3, r3
 8000c2c:	b25a      	sxtb	r2, r3
 8000c2e:	4b1e      	ldr	r3, [pc, #120]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c30:	701a      	strb	r2, [r3, #0]
 8000c32:	4b1d      	ldr	r3, [pc, #116]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c34:	781b      	ldrb	r3, [r3, #0]
 8000c36:	b25b      	sxtb	r3, r3
 8000c38:	2b03      	cmp	r3, #3
 8000c3a:	d111      	bne.n	8000c60 <EXTI0_1_IRQHandler+0x8c>
 8000c3c:	4b1b      	ldr	r3, [pc, #108]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c3e:	781b      	ldrb	r3, [r3, #0]
 8000c40:	b25b      	sxtb	r3, r3
 8000c42:	2b74      	cmp	r3, #116	; 0x74
 8000c44:	dc08      	bgt.n	8000c58 <EXTI0_1_IRQHandler+0x84>
 8000c46:	4b19      	ldr	r3, [pc, #100]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c48:	781b      	ldrb	r3, [r3, #0]
 8000c4a:	b25b      	sxtb	r3, r3
 8000c4c:	b2db      	uxtb	r3, r3
 8000c4e:	3301      	adds	r3, #1
 8000c50:	b2db      	uxtb	r3, r3
 8000c52:	b25a      	sxtb	r2, r3
 8000c54:	4b15      	ldr	r3, [pc, #84]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c56:	701a      	strb	r2, [r3, #0]
 8000c58:	4b13      	ldr	r3, [pc, #76]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c5a:	2200      	movs	r2, #0
 8000c5c:	701a      	strb	r2, [r3, #0]
 8000c5e:	e015      	b.n	8000c8c <EXTI0_1_IRQHandler+0xb8>
 8000c60:	4b11      	ldr	r3, [pc, #68]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c62:	781b      	ldrb	r3, [r3, #0]
 8000c64:	b25b      	sxtb	r3, r3
 8000c66:	3303      	adds	r3, #3
 8000c68:	d110      	bne.n	8000c8c <EXTI0_1_IRQHandler+0xb8>
 8000c6a:	4b10      	ldr	r3, [pc, #64]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c6c:	781b      	ldrb	r3, [r3, #0]
 8000c6e:	b25b      	sxtb	r3, r3
 8000c70:	2b00      	cmp	r3, #0
 8000c72:	dd08      	ble.n	8000c86 <EXTI0_1_IRQHandler+0xb2>
 8000c74:	4b0d      	ldr	r3, [pc, #52]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c76:	781b      	ldrb	r3, [r3, #0]
 8000c78:	b25b      	sxtb	r3, r3
 8000c7a:	b2db      	uxtb	r3, r3
 8000c7c:	3b01      	subs	r3, #1
 8000c7e:	b2db      	uxtb	r3, r3
 8000c80:	b25a      	sxtb	r2, r3
 8000c82:	4b0a      	ldr	r3, [pc, #40]	; (8000cac <EXTI0_1_IRQHandler+0xd8>)
 8000c84:	701a      	strb	r2, [r3, #0]
 8000c86:	4b08      	ldr	r3, [pc, #32]	; (8000ca8 <EXTI0_1_IRQHandler+0xd4>)
 8000c88:	2200      	movs	r2, #0
 8000c8a:	701a      	strb	r2, [r3, #0]
 8000c8c:	2002      	movs	r0, #2
 8000c8e:	f7ff fd4f 	bl	8000730 <LL_EXTI_ClearFlag_0_31>
 8000c92:	2001      	movs	r0, #1
 8000c94:	f7ff fd4c 	bl	8000730 <LL_EXTI_ClearFlag_0_31>
 8000c98:	46c0      	nop			; (mov r8, r8)
 8000c9a:	46bd      	mov	sp, r7
 8000c9c:	b002      	add	sp, #8
 8000c9e:	bd80      	pop	{r7, pc}
 8000ca0:	20000472 	.word	0x20000472
 8000ca4:	20000004 	.word	0x20000004
 8000ca8:	20000473 	.word	0x20000473
 8000cac:	20000024 	.word	0x20000024

08000cb0 <rcc_config>:
 8000cb0:	b580      	push	{r7, lr}
 8000cb2:	af00      	add	r7, sp, #0
 8000cb4:	2001      	movs	r0, #1
 8000cb6:	f7ff fc37 	bl	8000528 <LL_FLASH_SetLatency>
 8000cba:	f7ff fb5f 	bl	800037c <LL_RCC_HSI_Enable>
 8000cbe:	46c0      	nop			; (mov r8, r8)
 8000cc0:	f7ff fb6a 	bl	8000398 <LL_RCC_HSI_IsReady>
 8000cc4:	0003      	movs	r3, r0
 8000cc6:	2b01      	cmp	r3, #1
 8000cc8:	d1fa      	bne.n	8000cc0 <rcc_config+0x10>
 8000cca:	23a0      	movs	r3, #160	; 0xa0
 8000ccc:	039b      	lsls	r3, r3, #14
 8000cce:	0019      	movs	r1, r3
 8000cd0:	2000      	movs	r0, #0
 8000cd2:	f7ff fbdd 	bl	8000490 <LL_RCC_PLL_ConfigDomain_SYS>
 8000cd6:	f7ff fbb9 	bl	800044c <LL_RCC_PLL_Enable>
 8000cda:	46c0      	nop			; (mov r8, r8)
 8000cdc:	f7ff fbc4 	bl	8000468 <LL_RCC_PLL_IsReady>
 8000ce0:	0003      	movs	r3, r0
 8000ce2:	2b01      	cmp	r3, #1
 8000ce4:	d1fa      	bne.n	8000cdc <rcc_config+0x2c>
 8000ce6:	2000      	movs	r0, #0
 8000ce8:	f7ff fb86 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 8000cec:	2002      	movs	r0, #2
 8000cee:	f7ff fb63 	bl	80003b8 <LL_RCC_SetSysClkSource>
 8000cf2:	46c0      	nop			; (mov r8, r8)
 8000cf4:	f7ff fb74 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000cf8:	0003      	movs	r3, r0
 8000cfa:	2b08      	cmp	r3, #8
 8000cfc:	d1fa      	bne.n	8000cf4 <rcc_config+0x44>
 8000cfe:	2000      	movs	r0, #0
 8000d00:	f7ff fb8e 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 8000d04:	4b02      	ldr	r3, [pc, #8]	; (8000d10 <rcc_config+0x60>)
 8000d06:	4a03      	ldr	r2, [pc, #12]	; (8000d14 <rcc_config+0x64>)
 8000d08:	601a      	str	r2, [r3, #0]
 8000d0a:	46c0      	nop			; (mov r8, r8)
 8000d0c:	46bd      	mov	sp, r7
 8000d0e:	bd80      	pop	{r7, pc}
 8000d10:	20000014 	.word	0x20000014
 8000d14:	02dc6c00 	.word	0x02dc6c00

08000d18 <gpio_config>:
 8000d18:	b580      	push	{r7, lr}
 8000d1a:	af00      	add	r7, sp, #0
 8000d1c:	2380      	movs	r3, #128	; 0x80
 8000d1e:	029b      	lsls	r3, r3, #10
 8000d20:	0018      	movs	r0, r3
 8000d22:	f7ff fc15 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000d26:	2380      	movs	r3, #128	; 0x80
 8000d28:	02db      	lsls	r3, r3, #11
 8000d2a:	0018      	movs	r0, r3
 8000d2c:	f7ff fc10 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000d30:	2390      	movs	r3, #144	; 0x90
 8000d32:	05db      	lsls	r3, r3, #23
 8000d34:	2202      	movs	r2, #2
 8000d36:	2102      	movs	r1, #2
 8000d38:	0018      	movs	r0, r3
 8000d3a:	f7ff fc68 	bl	800060e <LL_GPIO_SetPinPull>
 8000d3e:	2390      	movs	r3, #144	; 0x90
 8000d40:	05db      	lsls	r3, r3, #23
 8000d42:	2202      	movs	r2, #2
 8000d44:	2101      	movs	r1, #1
 8000d46:	0018      	movs	r0, r3
 8000d48:	f7ff fc61 	bl	800060e <LL_GPIO_SetPinPull>
 8000d4c:	4b04      	ldr	r3, [pc, #16]	; (8000d60 <gpio_config+0x48>)
 8000d4e:	2202      	movs	r2, #2
 8000d50:	2104      	movs	r1, #4
 8000d52:	0018      	movs	r0, r3
 8000d54:	f7ff fc5b 	bl	800060e <LL_GPIO_SetPinPull>
 8000d58:	46c0      	nop			; (mov r8, r8)
 8000d5a:	46bd      	mov	sp, r7
 8000d5c:	bd80      	pop	{r7, pc}
 8000d5e:	46c0      	nop			; (mov r8, r8)
 8000d60:	48000400 	.word	0x48000400

08000d64 <printf_config>:
 8000d64:	b580      	push	{r7, lr}
 8000d66:	af00      	add	r7, sp, #0
 8000d68:	4b02      	ldr	r3, [pc, #8]	; (8000d74 <printf_config+0x10>)
 8000d6a:	4a03      	ldr	r2, [pc, #12]	; (8000d78 <printf_config+0x14>)
 8000d6c:	601a      	str	r2, [r3, #0]
 8000d6e:	46c0      	nop			; (mov r8, r8)
 8000d70:	46bd      	mov	sp, r7
 8000d72:	bd80      	pop	{r7, pc}
 8000d74:	200008e0 	.word	0x200008e0
 8000d78:	08001725 	.word	0x08001725

08000d7c <main>:
 8000d7c:	b580      	push	{r7, lr}
 8000d7e:	b082      	sub	sp, #8
 8000d80:	af00      	add	r7, sp, #0
 8000d82:	f7ff ff95 	bl	8000cb0 <rcc_config>
 8000d86:	f7ff ffc7 	bl	8000d18 <gpio_config>
 8000d8a:	f000 fc0f 	bl	80015ac <oled_config>
 8000d8e:	f7ff ffe9 	bl	8000d64 <printf_config>
 8000d92:	f7ff fe0b 	bl	80009ac <exti_config>
 8000d96:	f7ff fe47 	bl	8000a28 <timers_config>
 8000d9a:	f7ff fdf1 	bl	8000980 <systick_config>
 8000d9e:	1dfb      	adds	r3, r7, #7
 8000da0:	2200      	movs	r2, #0
 8000da2:	701a      	strb	r2, [r3, #0]
 8000da4:	e02e      	b.n	8000e04 <main+0x88>
 8000da6:	1dfb      	adds	r3, r7, #7
 8000da8:	781a      	ldrb	r2, [r3, #0]
 8000daa:	4b1a      	ldr	r3, [pc, #104]	; (8000e14 <main+0x98>)
 8000dac:	0092      	lsls	r2, r2, #2
 8000dae:	58d3      	ldr	r3, [r2, r3]
 8000db0:	001a      	movs	r2, r3
 8000db2:	2380      	movs	r3, #128	; 0x80
 8000db4:	05db      	lsls	r3, r3, #23
 8000db6:	0011      	movs	r1, r2
 8000db8:	0018      	movs	r0, r3
 8000dba:	f7ff fce7 	bl	800078c <LL_TIM_SetPrescaler>
 8000dbe:	1dfb      	adds	r3, r7, #7
 8000dc0:	781a      	ldrb	r2, [r3, #0]
 8000dc2:	4b15      	ldr	r3, [pc, #84]	; (8000e18 <main+0x9c>)
 8000dc4:	0092      	lsls	r2, r2, #2
 8000dc6:	58d3      	ldr	r3, [r2, r3]
 8000dc8:	001a      	movs	r2, r3
 8000dca:	2380      	movs	r3, #128	; 0x80
 8000dcc:	05db      	lsls	r3, r3, #23
 8000dce:	0011      	movs	r1, r2
 8000dd0:	0018      	movs	r0, r3
 8000dd2:	f7ff fd93 	bl	80008fc <LL_TIM_OC_SetCompareCH1>
 8000dd6:	1dbb      	adds	r3, r7, #6
 8000dd8:	2200      	movs	r2, #0
 8000dda:	701a      	strb	r2, [r3, #0]
 8000ddc:	e004      	b.n	8000de8 <main+0x6c>
 8000dde:	1dbb      	adds	r3, r7, #6
 8000de0:	781a      	ldrb	r2, [r3, #0]
 8000de2:	1dbb      	adds	r3, r7, #6
 8000de4:	3201      	adds	r2, #1
 8000de6:	701a      	strb	r2, [r3, #0]
 8000de8:	1dbb      	adds	r3, r7, #6
 8000dea:	781a      	ldrb	r2, [r3, #0]
 8000dec:	1dfb      	adds	r3, r7, #7
 8000dee:	7819      	ldrb	r1, [r3, #0]
 8000df0:	4b09      	ldr	r3, [pc, #36]	; (8000e18 <main+0x9c>)
 8000df2:	0089      	lsls	r1, r1, #2
 8000df4:	58cb      	ldr	r3, [r1, r3]
 8000df6:	429a      	cmp	r2, r3
 8000df8:	dbf1      	blt.n	8000dde <main+0x62>
 8000dfa:	1dfb      	adds	r3, r7, #7
 8000dfc:	781a      	ldrb	r2, [r3, #0]
 8000dfe:	1dfb      	adds	r3, r7, #7
 8000e00:	3201      	adds	r2, #1
 8000e02:	701a      	strb	r2, [r3, #0]
 8000e04:	1dfb      	adds	r3, r7, #7
 8000e06:	781b      	ldrb	r3, [r3, #0]
 8000e08:	2b26      	cmp	r3, #38	; 0x26
 8000e0a:	d9cc      	bls.n	8000da6 <main+0x2a>
 8000e0c:	f000 f880 	bl	8000f10 <start>
 8000e10:	e7fc      	b.n	8000e0c <main+0x90>
 8000e12:	46c0      	nop			; (mov r8, r8)
 8000e14:	08001b04 	.word	0x08001b04
 8000e18:	08001ba0 	.word	0x08001ba0

08000e1c <SystemInit>:
 8000e1c:	b580      	push	{r7, lr}
 8000e1e:	af00      	add	r7, sp, #0
 8000e20:	4b1a      	ldr	r3, [pc, #104]	; (8000e8c <SystemInit+0x70>)
 8000e22:	681a      	ldr	r2, [r3, #0]
 8000e24:	4b19      	ldr	r3, [pc, #100]	; (8000e8c <SystemInit+0x70>)
 8000e26:	2101      	movs	r1, #1
 8000e28:	430a      	orrs	r2, r1
 8000e2a:	601a      	str	r2, [r3, #0]
 8000e2c:	4b17      	ldr	r3, [pc, #92]	; (8000e8c <SystemInit+0x70>)
 8000e2e:	685a      	ldr	r2, [r3, #4]
 8000e30:	4b16      	ldr	r3, [pc, #88]	; (8000e8c <SystemInit+0x70>)
 8000e32:	4917      	ldr	r1, [pc, #92]	; (8000e90 <SystemInit+0x74>)
 8000e34:	400a      	ands	r2, r1
 8000e36:	605a      	str	r2, [r3, #4]
 8000e38:	4b14      	ldr	r3, [pc, #80]	; (8000e8c <SystemInit+0x70>)
 8000e3a:	681a      	ldr	r2, [r3, #0]
 8000e3c:	4b13      	ldr	r3, [pc, #76]	; (8000e8c <SystemInit+0x70>)
 8000e3e:	4915      	ldr	r1, [pc, #84]	; (8000e94 <SystemInit+0x78>)
 8000e40:	400a      	ands	r2, r1
 8000e42:	601a      	str	r2, [r3, #0]
 8000e44:	4b11      	ldr	r3, [pc, #68]	; (8000e8c <SystemInit+0x70>)
 8000e46:	681a      	ldr	r2, [r3, #0]
 8000e48:	4b10      	ldr	r3, [pc, #64]	; (8000e8c <SystemInit+0x70>)
 8000e4a:	4913      	ldr	r1, [pc, #76]	; (8000e98 <SystemInit+0x7c>)
 8000e4c:	400a      	ands	r2, r1
 8000e4e:	601a      	str	r2, [r3, #0]
 8000e50:	4b0e      	ldr	r3, [pc, #56]	; (8000e8c <SystemInit+0x70>)
 8000e52:	685a      	ldr	r2, [r3, #4]
 8000e54:	4b0d      	ldr	r3, [pc, #52]	; (8000e8c <SystemInit+0x70>)
 8000e56:	4911      	ldr	r1, [pc, #68]	; (8000e9c <SystemInit+0x80>)
 8000e58:	400a      	ands	r2, r1
 8000e5a:	605a      	str	r2, [r3, #4]
 8000e5c:	4b0b      	ldr	r3, [pc, #44]	; (8000e8c <SystemInit+0x70>)
 8000e5e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000e60:	4b0a      	ldr	r3, [pc, #40]	; (8000e8c <SystemInit+0x70>)
 8000e62:	210f      	movs	r1, #15
 8000e64:	438a      	bics	r2, r1
 8000e66:	62da      	str	r2, [r3, #44]	; 0x2c
 8000e68:	4b08      	ldr	r3, [pc, #32]	; (8000e8c <SystemInit+0x70>)
 8000e6a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000e6c:	4b07      	ldr	r3, [pc, #28]	; (8000e8c <SystemInit+0x70>)
 8000e6e:	490c      	ldr	r1, [pc, #48]	; (8000ea0 <SystemInit+0x84>)
 8000e70:	400a      	ands	r2, r1
 8000e72:	631a      	str	r2, [r3, #48]	; 0x30
 8000e74:	4b05      	ldr	r3, [pc, #20]	; (8000e8c <SystemInit+0x70>)
 8000e76:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000e78:	4b04      	ldr	r3, [pc, #16]	; (8000e8c <SystemInit+0x70>)
 8000e7a:	2101      	movs	r1, #1
 8000e7c:	438a      	bics	r2, r1
 8000e7e:	635a      	str	r2, [r3, #52]	; 0x34
 8000e80:	4b02      	ldr	r3, [pc, #8]	; (8000e8c <SystemInit+0x70>)
 8000e82:	2200      	movs	r2, #0
 8000e84:	609a      	str	r2, [r3, #8]
 8000e86:	46c0      	nop			; (mov r8, r8)
 8000e88:	46bd      	mov	sp, r7
 8000e8a:	bd80      	pop	{r7, pc}
 8000e8c:	40021000 	.word	0x40021000
 8000e90:	f8ffb80c 	.word	0xf8ffb80c
 8000e94:	fef6ffff 	.word	0xfef6ffff
 8000e98:	fffbffff 	.word	0xfffbffff
 8000e9c:	ffc0ffff 	.word	0xffc0ffff
 8000ea0:	fffffeac 	.word	0xfffffeac

08000ea4 <get_pix>:
 8000ea4:	b590      	push	{r4, r7, lr}
 8000ea6:	b083      	sub	sp, #12
 8000ea8:	af00      	add	r7, sp, #0
 8000eaa:	0004      	movs	r4, r0
 8000eac:	0008      	movs	r0, r1
 8000eae:	0011      	movs	r1, r2
 8000eb0:	1dfb      	adds	r3, r7, #7
 8000eb2:	1c22      	adds	r2, r4, #0
 8000eb4:	701a      	strb	r2, [r3, #0]
 8000eb6:	1dbb      	adds	r3, r7, #6
 8000eb8:	1c02      	adds	r2, r0, #0
 8000eba:	701a      	strb	r2, [r3, #0]
 8000ebc:	1d7b      	adds	r3, r7, #5
 8000ebe:	1c0a      	adds	r2, r1, #0
 8000ec0:	701a      	strb	r2, [r3, #0]
 8000ec2:	1dfb      	adds	r3, r7, #7
 8000ec4:	781a      	ldrb	r2, [r3, #0]
 8000ec6:	0013      	movs	r3, r2
 8000ec8:	009b      	lsls	r3, r3, #2
 8000eca:	189a      	adds	r2, r3, r2
 8000ecc:	1dbb      	adds	r3, r7, #6
 8000ece:	781b      	ldrb	r3, [r3, #0]
 8000ed0:	18d3      	adds	r3, r2, r3
 8000ed2:	4a08      	ldr	r2, [pc, #32]	; (8000ef4 <get_pix+0x50>)
 8000ed4:	5cd3      	ldrb	r3, [r2, r3]
 8000ed6:	001a      	movs	r2, r3
 8000ed8:	1d7b      	adds	r3, r7, #5
 8000eda:	781b      	ldrb	r3, [r3, #0]
 8000edc:	411a      	asrs	r2, r3
 8000ede:	0013      	movs	r3, r2
 8000ee0:	2201      	movs	r2, #1
 8000ee2:	4013      	ands	r3, r2
 8000ee4:	1e5a      	subs	r2, r3, #1
 8000ee6:	4193      	sbcs	r3, r2
 8000ee8:	b2db      	uxtb	r3, r3
 8000eea:	0018      	movs	r0, r3
 8000eec:	46bd      	mov	sp, r7
 8000eee:	b003      	add	sp, #12
 8000ef0:	bd90      	pop	{r4, r7, pc}
 8000ef2:	46c0      	nop			; (mov r8, r8)
 8000ef4:	08003c3c 	.word	0x08003c3c

08000ef8 <LL_TIM_SetPrescaler>:
 8000ef8:	b580      	push	{r7, lr}
 8000efa:	b082      	sub	sp, #8
 8000efc:	af00      	add	r7, sp, #0
 8000efe:	6078      	str	r0, [r7, #4]
 8000f00:	6039      	str	r1, [r7, #0]
 8000f02:	687b      	ldr	r3, [r7, #4]
 8000f04:	683a      	ldr	r2, [r7, #0]
 8000f06:	629a      	str	r2, [r3, #40]	; 0x28
 8000f08:	46c0      	nop			; (mov r8, r8)
 8000f0a:	46bd      	mov	sp, r7
 8000f0c:	b002      	add	sp, #8
 8000f0e:	bd80      	pop	{r7, pc}

08000f10 <start>:
 8000f10:	b580      	push	{r7, lr}
 8000f12:	b082      	sub	sp, #8
 8000f14:	af00      	add	r7, sp, #0
 8000f16:	4b1b      	ldr	r3, [pc, #108]	; (8000f84 <start+0x74>)
 8000f18:	2164      	movs	r1, #100	; 0x64
 8000f1a:	0018      	movs	r0, r3
 8000f1c:	f000 fc7e 	bl	800181c <oled_pic>
 8000f20:	f000 fb18 	bl	8001554 <oled_update>
 8000f24:	1dfb      	adds	r3, r7, #7
 8000f26:	2200      	movs	r2, #0
 8000f28:	701a      	strb	r2, [r3, #0]
 8000f2a:	e022      	b.n	8000f72 <start+0x62>
 8000f2c:	1dfb      	adds	r3, r7, #7
 8000f2e:	781a      	ldrb	r2, [r3, #0]
 8000f30:	4b15      	ldr	r3, [pc, #84]	; (8000f88 <start+0x78>)
 8000f32:	0092      	lsls	r2, r2, #2
 8000f34:	58d3      	ldr	r3, [r2, r3]
 8000f36:	001a      	movs	r2, r3
 8000f38:	2380      	movs	r3, #128	; 0x80
 8000f3a:	05db      	lsls	r3, r3, #23
 8000f3c:	0011      	movs	r1, r2
 8000f3e:	0018      	movs	r0, r3
 8000f40:	f7ff ffda 	bl	8000ef8 <LL_TIM_SetPrescaler>
 8000f44:	1dbb      	adds	r3, r7, #6
 8000f46:	2200      	movs	r2, #0
 8000f48:	701a      	strb	r2, [r3, #0]
 8000f4a:	e004      	b.n	8000f56 <start+0x46>
 8000f4c:	1dbb      	adds	r3, r7, #6
 8000f4e:	781a      	ldrb	r2, [r3, #0]
 8000f50:	1dbb      	adds	r3, r7, #6
 8000f52:	3201      	adds	r2, #1
 8000f54:	701a      	strb	r2, [r3, #0]
 8000f56:	1dbb      	adds	r3, r7, #6
 8000f58:	781a      	ldrb	r2, [r3, #0]
 8000f5a:	1dfb      	adds	r3, r7, #7
 8000f5c:	7819      	ldrb	r1, [r3, #0]
 8000f5e:	4b0b      	ldr	r3, [pc, #44]	; (8000f8c <start+0x7c>)
 8000f60:	0089      	lsls	r1, r1, #2
 8000f62:	58cb      	ldr	r3, [r1, r3]
 8000f64:	429a      	cmp	r2, r3
 8000f66:	dbf1      	blt.n	8000f4c <start+0x3c>
 8000f68:	1dfb      	adds	r3, r7, #7
 8000f6a:	781a      	ldrb	r2, [r3, #0]
 8000f6c:	1dfb      	adds	r3, r7, #7
 8000f6e:	3201      	adds	r2, #1
 8000f70:	701a      	strb	r2, [r3, #0]
 8000f72:	1dfb      	adds	r3, r7, #7
 8000f74:	781b      	ldrb	r3, [r3, #0]
 8000f76:	2b26      	cmp	r3, #38	; 0x26
 8000f78:	d9d8      	bls.n	8000f2c <start+0x1c>
 8000f7a:	46c0      	nop			; (mov r8, r8)
 8000f7c:	46bd      	mov	sp, r7
 8000f7e:	b002      	add	sp, #8
 8000f80:	bd80      	pop	{r7, pc}
 8000f82:	46c0      	nop			; (mov r8, r8)
 8000f84:	08001c3c 	.word	0x08001c3c
 8000f88:	0800414c 	.word	0x0800414c
 8000f8c:	080041e8 	.word	0x080041e8

08000f90 <ship_fire>:
 8000f90:	b590      	push	{r4, r7, lr}
 8000f92:	b089      	sub	sp, #36	; 0x24
 8000f94:	af00      	add	r7, sp, #0
 8000f96:	6078      	str	r0, [r7, #4]
 8000f98:	0008      	movs	r0, r1
 8000f9a:	0011      	movs	r1, r2
 8000f9c:	1cfb      	adds	r3, r7, #3
 8000f9e:	1c02      	adds	r2, r0, #0
 8000fa0:	701a      	strb	r2, [r3, #0]
 8000fa2:	1cbb      	adds	r3, r7, #2
 8000fa4:	1c0a      	adds	r2, r1, #0
 8000fa6:	701a      	strb	r2, [r3, #0]
 8000fa8:	2108      	movs	r1, #8
 8000faa:	187b      	adds	r3, r7, r1
 8000fac:	22fd      	movs	r2, #253	; 0xfd
 8000fae:	701a      	strb	r2, [r3, #0]
 8000fb0:	1cfb      	adds	r3, r7, #3
 8000fb2:	2200      	movs	r2, #0
 8000fb4:	569a      	ldrsb	r2, [r3, r2]
 8000fb6:	187b      	adds	r3, r7, r1
 8000fb8:	705a      	strb	r2, [r3, #1]
 8000fba:	1cbb      	adds	r3, r7, #2
 8000fbc:	2200      	movs	r2, #0
 8000fbe:	569a      	ldrsb	r2, [r3, r2]
 8000fc0:	187b      	adds	r3, r7, r1
 8000fc2:	709a      	strb	r2, [r3, #2]
 8000fc4:	187b      	adds	r3, r7, r1
 8000fc6:	2201      	movs	r2, #1
 8000fc8:	70da      	strb	r2, [r3, #3]
 8000fca:	187b      	adds	r3, r7, r1
 8000fcc:	2207      	movs	r2, #7
 8000fce:	711a      	strb	r2, [r3, #4]
 8000fd0:	187b      	adds	r3, r7, r1
 8000fd2:	2200      	movs	r2, #0
 8000fd4:	715a      	strb	r2, [r3, #5]
 8000fd6:	187b      	adds	r3, r7, r1
 8000fd8:	4a0a      	ldr	r2, [pc, #40]	; (8001004 <ship_fire+0x74>)
 8000fda:	609a      	str	r2, [r3, #8]
 8000fdc:	187b      	adds	r3, r7, r1
 8000fde:	4a09      	ldr	r2, [pc, #36]	; (8001004 <ship_fire+0x74>)
 8000fe0:	60da      	str	r2, [r3, #12]
 8000fe2:	187b      	adds	r3, r7, r1
 8000fe4:	4a07      	ldr	r2, [pc, #28]	; (8001004 <ship_fire+0x74>)
 8000fe6:	611a      	str	r2, [r3, #16]
 8000fe8:	187b      	adds	r3, r7, r1
 8000fea:	4a06      	ldr	r2, [pc, #24]	; (8001004 <ship_fire+0x74>)
 8000fec:	615a      	str	r2, [r3, #20]
 8000fee:	687b      	ldr	r3, [r7, #4]
 8000ff0:	187a      	adds	r2, r7, r1
 8000ff2:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ff4:	c313      	stmia	r3!, {r0, r1, r4}
 8000ff6:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ff8:	c313      	stmia	r3!, {r0, r1, r4}
 8000ffa:	6878      	ldr	r0, [r7, #4]
 8000ffc:	46bd      	mov	sp, r7
 8000ffe:	b009      	add	sp, #36	; 0x24
 8001000:	bd90      	pop	{r4, r7, pc}
 8001002:	46c0      	nop			; (mov r8, r8)
 8001004:	08004138 	.word	0x08004138

08001008 <LL_AHB1_GRP1_EnableClock>:
 8001008:	b580      	push	{r7, lr}
 800100a:	b084      	sub	sp, #16
 800100c:	af00      	add	r7, sp, #0
 800100e:	6078      	str	r0, [r7, #4]
 8001010:	4b07      	ldr	r3, [pc, #28]	; (8001030 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001012:	6959      	ldr	r1, [r3, #20]
 8001014:	4b06      	ldr	r3, [pc, #24]	; (8001030 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001016:	687a      	ldr	r2, [r7, #4]
 8001018:	430a      	orrs	r2, r1
 800101a:	615a      	str	r2, [r3, #20]
 800101c:	4b04      	ldr	r3, [pc, #16]	; (8001030 <LL_AHB1_GRP1_EnableClock+0x28>)
 800101e:	695b      	ldr	r3, [r3, #20]
 8001020:	687a      	ldr	r2, [r7, #4]
 8001022:	4013      	ands	r3, r2
 8001024:	60fb      	str	r3, [r7, #12]
 8001026:	68fb      	ldr	r3, [r7, #12]
 8001028:	46c0      	nop			; (mov r8, r8)
 800102a:	46bd      	mov	sp, r7
 800102c:	b004      	add	sp, #16
 800102e:	bd80      	pop	{r7, pc}
 8001030:	40021000 	.word	0x40021000

08001034 <LL_APB1_GRP1_EnableClock>:
 8001034:	b580      	push	{r7, lr}
 8001036:	b084      	sub	sp, #16
 8001038:	af00      	add	r7, sp, #0
 800103a:	6078      	str	r0, [r7, #4]
 800103c:	4b07      	ldr	r3, [pc, #28]	; (800105c <LL_APB1_GRP1_EnableClock+0x28>)
 800103e:	69d9      	ldr	r1, [r3, #28]
 8001040:	4b06      	ldr	r3, [pc, #24]	; (800105c <LL_APB1_GRP1_EnableClock+0x28>)
 8001042:	687a      	ldr	r2, [r7, #4]
 8001044:	430a      	orrs	r2, r1
 8001046:	61da      	str	r2, [r3, #28]
 8001048:	4b04      	ldr	r3, [pc, #16]	; (800105c <LL_APB1_GRP1_EnableClock+0x28>)
 800104a:	69db      	ldr	r3, [r3, #28]
 800104c:	687a      	ldr	r2, [r7, #4]
 800104e:	4013      	ands	r3, r2
 8001050:	60fb      	str	r3, [r7, #12]
 8001052:	68fb      	ldr	r3, [r7, #12]
 8001054:	46c0      	nop			; (mov r8, r8)
 8001056:	46bd      	mov	sp, r7
 8001058:	b004      	add	sp, #16
 800105a:	bd80      	pop	{r7, pc}
 800105c:	40021000 	.word	0x40021000

08001060 <LL_GPIO_SetPinMode>:
 8001060:	b580      	push	{r7, lr}
 8001062:	b084      	sub	sp, #16
 8001064:	af00      	add	r7, sp, #0
 8001066:	60f8      	str	r0, [r7, #12]
 8001068:	60b9      	str	r1, [r7, #8]
 800106a:	607a      	str	r2, [r7, #4]
 800106c:	68fb      	ldr	r3, [r7, #12]
 800106e:	6819      	ldr	r1, [r3, #0]
 8001070:	68bb      	ldr	r3, [r7, #8]
 8001072:	68ba      	ldr	r2, [r7, #8]
 8001074:	435a      	muls	r2, r3
 8001076:	0013      	movs	r3, r2
 8001078:	005b      	lsls	r3, r3, #1
 800107a:	189b      	adds	r3, r3, r2
 800107c:	43db      	mvns	r3, r3
 800107e:	400b      	ands	r3, r1
 8001080:	001a      	movs	r2, r3
 8001082:	68bb      	ldr	r3, [r7, #8]
 8001084:	68b9      	ldr	r1, [r7, #8]
 8001086:	434b      	muls	r3, r1
 8001088:	6879      	ldr	r1, [r7, #4]
 800108a:	434b      	muls	r3, r1
 800108c:	431a      	orrs	r2, r3
 800108e:	68fb      	ldr	r3, [r7, #12]
 8001090:	601a      	str	r2, [r3, #0]
 8001092:	46c0      	nop			; (mov r8, r8)
 8001094:	46bd      	mov	sp, r7
 8001096:	b004      	add	sp, #16
 8001098:	bd80      	pop	{r7, pc}

0800109a <LL_GPIO_SetPinOutputType>:
 800109a:	b580      	push	{r7, lr}
 800109c:	b084      	sub	sp, #16
 800109e:	af00      	add	r7, sp, #0
 80010a0:	60f8      	str	r0, [r7, #12]
 80010a2:	60b9      	str	r1, [r7, #8]
 80010a4:	607a      	str	r2, [r7, #4]
 80010a6:	68fb      	ldr	r3, [r7, #12]
 80010a8:	685b      	ldr	r3, [r3, #4]
 80010aa:	68ba      	ldr	r2, [r7, #8]
 80010ac:	43d2      	mvns	r2, r2
 80010ae:	401a      	ands	r2, r3
 80010b0:	68bb      	ldr	r3, [r7, #8]
 80010b2:	6879      	ldr	r1, [r7, #4]
 80010b4:	434b      	muls	r3, r1
 80010b6:	431a      	orrs	r2, r3
 80010b8:	68fb      	ldr	r3, [r7, #12]
 80010ba:	605a      	str	r2, [r3, #4]
 80010bc:	46c0      	nop			; (mov r8, r8)
 80010be:	46bd      	mov	sp, r7
 80010c0:	b004      	add	sp, #16
 80010c2:	bd80      	pop	{r7, pc}

080010c4 <LL_GPIO_SetPinSpeed>:
 80010c4:	b580      	push	{r7, lr}
 80010c6:	b084      	sub	sp, #16
 80010c8:	af00      	add	r7, sp, #0
 80010ca:	60f8      	str	r0, [r7, #12]
 80010cc:	60b9      	str	r1, [r7, #8]
 80010ce:	607a      	str	r2, [r7, #4]
 80010d0:	68fb      	ldr	r3, [r7, #12]
 80010d2:	6899      	ldr	r1, [r3, #8]
 80010d4:	68bb      	ldr	r3, [r7, #8]
 80010d6:	68ba      	ldr	r2, [r7, #8]
 80010d8:	435a      	muls	r2, r3
 80010da:	0013      	movs	r3, r2
 80010dc:	005b      	lsls	r3, r3, #1
 80010de:	189b      	adds	r3, r3, r2
 80010e0:	43db      	mvns	r3, r3
 80010e2:	400b      	ands	r3, r1
 80010e4:	001a      	movs	r2, r3
 80010e6:	68bb      	ldr	r3, [r7, #8]
 80010e8:	68b9      	ldr	r1, [r7, #8]
 80010ea:	434b      	muls	r3, r1
 80010ec:	6879      	ldr	r1, [r7, #4]
 80010ee:	434b      	muls	r3, r1
 80010f0:	431a      	orrs	r2, r3
 80010f2:	68fb      	ldr	r3, [r7, #12]
 80010f4:	609a      	str	r2, [r3, #8]
 80010f6:	46c0      	nop			; (mov r8, r8)
 80010f8:	46bd      	mov	sp, r7
 80010fa:	b004      	add	sp, #16
 80010fc:	bd80      	pop	{r7, pc}

080010fe <LL_GPIO_SetAFPin_8_15>:
 80010fe:	b580      	push	{r7, lr}
 8001100:	b084      	sub	sp, #16
 8001102:	af00      	add	r7, sp, #0
 8001104:	60f8      	str	r0, [r7, #12]
 8001106:	60b9      	str	r1, [r7, #8]
 8001108:	607a      	str	r2, [r7, #4]
 800110a:	68fb      	ldr	r3, [r7, #12]
 800110c:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800110e:	68bb      	ldr	r3, [r7, #8]
 8001110:	0a1b      	lsrs	r3, r3, #8
 8001112:	68ba      	ldr	r2, [r7, #8]
 8001114:	0a12      	lsrs	r2, r2, #8
 8001116:	4353      	muls	r3, r2
 8001118:	68ba      	ldr	r2, [r7, #8]
 800111a:	0a12      	lsrs	r2, r2, #8
 800111c:	4353      	muls	r3, r2
 800111e:	68ba      	ldr	r2, [r7, #8]
 8001120:	0a12      	lsrs	r2, r2, #8
 8001122:	435a      	muls	r2, r3
 8001124:	0013      	movs	r3, r2
 8001126:	011b      	lsls	r3, r3, #4
 8001128:	1a9b      	subs	r3, r3, r2
 800112a:	43db      	mvns	r3, r3
 800112c:	400b      	ands	r3, r1
 800112e:	001a      	movs	r2, r3
 8001130:	68bb      	ldr	r3, [r7, #8]
 8001132:	0a1b      	lsrs	r3, r3, #8
 8001134:	68b9      	ldr	r1, [r7, #8]
 8001136:	0a09      	lsrs	r1, r1, #8
 8001138:	434b      	muls	r3, r1
 800113a:	68b9      	ldr	r1, [r7, #8]
 800113c:	0a09      	lsrs	r1, r1, #8
 800113e:	434b      	muls	r3, r1
 8001140:	68b9      	ldr	r1, [r7, #8]
 8001142:	0a09      	lsrs	r1, r1, #8
 8001144:	434b      	muls	r3, r1
 8001146:	6879      	ldr	r1, [r7, #4]
 8001148:	434b      	muls	r3, r1
 800114a:	431a      	orrs	r2, r3
 800114c:	68fb      	ldr	r3, [r7, #12]
 800114e:	625a      	str	r2, [r3, #36]	; 0x24
 8001150:	46c0      	nop			; (mov r8, r8)
 8001152:	46bd      	mov	sp, r7
 8001154:	b004      	add	sp, #16
 8001156:	bd80      	pop	{r7, pc}

08001158 <LL_RCC_SetI2CClockSource>:
 8001158:	b580      	push	{r7, lr}
 800115a:	b082      	sub	sp, #8
 800115c:	af00      	add	r7, sp, #0
 800115e:	6078      	str	r0, [r7, #4]
 8001160:	4b06      	ldr	r3, [pc, #24]	; (800117c <LL_RCC_SetI2CClockSource+0x24>)
 8001162:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001164:	2210      	movs	r2, #16
 8001166:	4393      	bics	r3, r2
 8001168:	0019      	movs	r1, r3
 800116a:	4b04      	ldr	r3, [pc, #16]	; (800117c <LL_RCC_SetI2CClockSource+0x24>)
 800116c:	687a      	ldr	r2, [r7, #4]
 800116e:	430a      	orrs	r2, r1
 8001170:	631a      	str	r2, [r3, #48]	; 0x30
 8001172:	46c0      	nop			; (mov r8, r8)
 8001174:	46bd      	mov	sp, r7
 8001176:	b002      	add	sp, #8
 8001178:	bd80      	pop	{r7, pc}
 800117a:	46c0      	nop			; (mov r8, r8)
 800117c:	40021000 	.word	0x40021000

08001180 <LL_I2C_Enable>:
 8001180:	b580      	push	{r7, lr}
 8001182:	b082      	sub	sp, #8
 8001184:	af00      	add	r7, sp, #0
 8001186:	6078      	str	r0, [r7, #4]
 8001188:	687b      	ldr	r3, [r7, #4]
 800118a:	681b      	ldr	r3, [r3, #0]
 800118c:	2201      	movs	r2, #1
 800118e:	431a      	orrs	r2, r3
 8001190:	687b      	ldr	r3, [r7, #4]
 8001192:	601a      	str	r2, [r3, #0]
 8001194:	46c0      	nop			; (mov r8, r8)
 8001196:	46bd      	mov	sp, r7
 8001198:	b002      	add	sp, #8
 800119a:	bd80      	pop	{r7, pc}

0800119c <LL_I2C_Disable>:
 800119c:	b580      	push	{r7, lr}
 800119e:	b082      	sub	sp, #8
 80011a0:	af00      	add	r7, sp, #0
 80011a2:	6078      	str	r0, [r7, #4]
 80011a4:	687b      	ldr	r3, [r7, #4]
 80011a6:	681b      	ldr	r3, [r3, #0]
 80011a8:	2201      	movs	r2, #1
 80011aa:	4393      	bics	r3, r2
 80011ac:	001a      	movs	r2, r3
 80011ae:	687b      	ldr	r3, [r7, #4]
 80011b0:	601a      	str	r2, [r3, #0]
 80011b2:	46c0      	nop			; (mov r8, r8)
 80011b4:	46bd      	mov	sp, r7
 80011b6:	b002      	add	sp, #8
 80011b8:	bd80      	pop	{r7, pc}
	...

080011bc <LL_I2C_SetDigitalFilter>:
 80011bc:	b580      	push	{r7, lr}
 80011be:	b082      	sub	sp, #8
 80011c0:	af00      	add	r7, sp, #0
 80011c2:	6078      	str	r0, [r7, #4]
 80011c4:	6039      	str	r1, [r7, #0]
 80011c6:	687b      	ldr	r3, [r7, #4]
 80011c8:	681b      	ldr	r3, [r3, #0]
 80011ca:	4a05      	ldr	r2, [pc, #20]	; (80011e0 <LL_I2C_SetDigitalFilter+0x24>)
 80011cc:	401a      	ands	r2, r3
 80011ce:	683b      	ldr	r3, [r7, #0]
 80011d0:	021b      	lsls	r3, r3, #8
 80011d2:	431a      	orrs	r2, r3
 80011d4:	687b      	ldr	r3, [r7, #4]
 80011d6:	601a      	str	r2, [r3, #0]
 80011d8:	46c0      	nop			; (mov r8, r8)
 80011da:	46bd      	mov	sp, r7
 80011dc:	b002      	add	sp, #8
 80011de:	bd80      	pop	{r7, pc}
 80011e0:	fffff0ff 	.word	0xfffff0ff

080011e4 <LL_I2C_DisableAnalogFilter>:
 80011e4:	b580      	push	{r7, lr}
 80011e6:	b082      	sub	sp, #8
 80011e8:	af00      	add	r7, sp, #0
 80011ea:	6078      	str	r0, [r7, #4]
 80011ec:	687b      	ldr	r3, [r7, #4]
 80011ee:	681b      	ldr	r3, [r3, #0]
 80011f0:	2280      	movs	r2, #128	; 0x80
 80011f2:	0152      	lsls	r2, r2, #5
 80011f4:	431a      	orrs	r2, r3
 80011f6:	687b      	ldr	r3, [r7, #4]
 80011f8:	601a      	str	r2, [r3, #0]
 80011fa:	46c0      	nop			; (mov r8, r8)
 80011fc:	46bd      	mov	sp, r7
 80011fe:	b002      	add	sp, #8
 8001200:	bd80      	pop	{r7, pc}

08001202 <LL_I2C_DisableClockStretching>:
 8001202:	b580      	push	{r7, lr}
 8001204:	b082      	sub	sp, #8
 8001206:	af00      	add	r7, sp, #0
 8001208:	6078      	str	r0, [r7, #4]
 800120a:	687b      	ldr	r3, [r7, #4]
 800120c:	681b      	ldr	r3, [r3, #0]
 800120e:	2280      	movs	r2, #128	; 0x80
 8001210:	0292      	lsls	r2, r2, #10
 8001212:	431a      	orrs	r2, r3
 8001214:	687b      	ldr	r3, [r7, #4]
 8001216:	601a      	str	r2, [r3, #0]
 8001218:	46c0      	nop			; (mov r8, r8)
 800121a:	46bd      	mov	sp, r7
 800121c:	b002      	add	sp, #8
 800121e:	bd80      	pop	{r7, pc}

08001220 <LL_I2C_SetMasterAddressingMode>:
 8001220:	b580      	push	{r7, lr}
 8001222:	b082      	sub	sp, #8
 8001224:	af00      	add	r7, sp, #0
 8001226:	6078      	str	r0, [r7, #4]
 8001228:	6039      	str	r1, [r7, #0]
 800122a:	687b      	ldr	r3, [r7, #4]
 800122c:	685b      	ldr	r3, [r3, #4]
 800122e:	4a05      	ldr	r2, [pc, #20]	; (8001244 <LL_I2C_SetMasterAddressingMode+0x24>)
 8001230:	401a      	ands	r2, r3
 8001232:	683b      	ldr	r3, [r7, #0]
 8001234:	431a      	orrs	r2, r3
 8001236:	687b      	ldr	r3, [r7, #4]
 8001238:	605a      	str	r2, [r3, #4]
 800123a:	46c0      	nop			; (mov r8, r8)
 800123c:	46bd      	mov	sp, r7
 800123e:	b002      	add	sp, #8
 8001240:	bd80      	pop	{r7, pc}
 8001242:	46c0      	nop			; (mov r8, r8)
 8001244:	fffff7ff 	.word	0xfffff7ff

08001248 <LL_I2C_SetTiming>:
 8001248:	b580      	push	{r7, lr}
 800124a:	b082      	sub	sp, #8
 800124c:	af00      	add	r7, sp, #0
 800124e:	6078      	str	r0, [r7, #4]
 8001250:	6039      	str	r1, [r7, #0]
 8001252:	687b      	ldr	r3, [r7, #4]
 8001254:	683a      	ldr	r2, [r7, #0]
 8001256:	611a      	str	r2, [r3, #16]
 8001258:	46c0      	nop			; (mov r8, r8)
 800125a:	46bd      	mov	sp, r7
 800125c:	b002      	add	sp, #8
 800125e:	bd80      	pop	{r7, pc}

08001260 <LL_I2C_SetMode>:
 8001260:	b580      	push	{r7, lr}
 8001262:	b082      	sub	sp, #8
 8001264:	af00      	add	r7, sp, #0
 8001266:	6078      	str	r0, [r7, #4]
 8001268:	6039      	str	r1, [r7, #0]
 800126a:	687b      	ldr	r3, [r7, #4]
 800126c:	681b      	ldr	r3, [r3, #0]
 800126e:	4a05      	ldr	r2, [pc, #20]	; (8001284 <LL_I2C_SetMode+0x24>)
 8001270:	401a      	ands	r2, r3
 8001272:	683b      	ldr	r3, [r7, #0]
 8001274:	431a      	orrs	r2, r3
 8001276:	687b      	ldr	r3, [r7, #4]
 8001278:	601a      	str	r2, [r3, #0]
 800127a:	46c0      	nop			; (mov r8, r8)
 800127c:	46bd      	mov	sp, r7
 800127e:	b002      	add	sp, #8
 8001280:	bd80      	pop	{r7, pc}
 8001282:	46c0      	nop			; (mov r8, r8)
 8001284:	ffcfffff 	.word	0xffcfffff

08001288 <LL_I2C_IsActiveFlag_TXIS>:
 8001288:	b580      	push	{r7, lr}
 800128a:	b082      	sub	sp, #8
 800128c:	af00      	add	r7, sp, #0
 800128e:	6078      	str	r0, [r7, #4]
 8001290:	687b      	ldr	r3, [r7, #4]
 8001292:	699b      	ldr	r3, [r3, #24]
 8001294:	2202      	movs	r2, #2
 8001296:	4013      	ands	r3, r2
 8001298:	3b02      	subs	r3, #2
 800129a:	425a      	negs	r2, r3
 800129c:	4153      	adcs	r3, r2
 800129e:	b2db      	uxtb	r3, r3
 80012a0:	0018      	movs	r0, r3
 80012a2:	46bd      	mov	sp, r7
 80012a4:	b002      	add	sp, #8
 80012a6:	bd80      	pop	{r7, pc}

080012a8 <LL_I2C_IsActiveFlag_TC>:
 80012a8:	b580      	push	{r7, lr}
 80012aa:	b082      	sub	sp, #8
 80012ac:	af00      	add	r7, sp, #0
 80012ae:	6078      	str	r0, [r7, #4]
 80012b0:	687b      	ldr	r3, [r7, #4]
 80012b2:	699b      	ldr	r3, [r3, #24]
 80012b4:	2240      	movs	r2, #64	; 0x40
 80012b6:	4013      	ands	r3, r2
 80012b8:	3b40      	subs	r3, #64	; 0x40
 80012ba:	425a      	negs	r2, r3
 80012bc:	4153      	adcs	r3, r2
 80012be:	b2db      	uxtb	r3, r3
 80012c0:	0018      	movs	r0, r3
 80012c2:	46bd      	mov	sp, r7
 80012c4:	b002      	add	sp, #8
 80012c6:	bd80      	pop	{r7, pc}

080012c8 <LL_I2C_HandleTransfer>:
 80012c8:	b580      	push	{r7, lr}
 80012ca:	b084      	sub	sp, #16
 80012cc:	af00      	add	r7, sp, #0
 80012ce:	60f8      	str	r0, [r7, #12]
 80012d0:	60b9      	str	r1, [r7, #8]
 80012d2:	607a      	str	r2, [r7, #4]
 80012d4:	603b      	str	r3, [r7, #0]
 80012d6:	68fb      	ldr	r3, [r7, #12]
 80012d8:	685b      	ldr	r3, [r3, #4]
 80012da:	4a09      	ldr	r2, [pc, #36]	; (8001300 <LL_I2C_HandleTransfer+0x38>)
 80012dc:	401a      	ands	r2, r3
 80012de:	68b9      	ldr	r1, [r7, #8]
 80012e0:	687b      	ldr	r3, [r7, #4]
 80012e2:	4319      	orrs	r1, r3
 80012e4:	683b      	ldr	r3, [r7, #0]
 80012e6:	041b      	lsls	r3, r3, #16
 80012e8:	4319      	orrs	r1, r3
 80012ea:	69bb      	ldr	r3, [r7, #24]
 80012ec:	4319      	orrs	r1, r3
 80012ee:	69fb      	ldr	r3, [r7, #28]
 80012f0:	430b      	orrs	r3, r1
 80012f2:	431a      	orrs	r2, r3
 80012f4:	68fb      	ldr	r3, [r7, #12]
 80012f6:	605a      	str	r2, [r3, #4]
 80012f8:	46c0      	nop			; (mov r8, r8)
 80012fa:	46bd      	mov	sp, r7
 80012fc:	b004      	add	sp, #16
 80012fe:	bd80      	pop	{r7, pc}
 8001300:	fc008000 	.word	0xfc008000

08001304 <LL_I2C_TransmitData8>:
 8001304:	b580      	push	{r7, lr}
 8001306:	b082      	sub	sp, #8
 8001308:	af00      	add	r7, sp, #0
 800130a:	6078      	str	r0, [r7, #4]
 800130c:	000a      	movs	r2, r1
 800130e:	1cfb      	adds	r3, r7, #3
 8001310:	701a      	strb	r2, [r3, #0]
 8001312:	1cfb      	adds	r3, r7, #3
 8001314:	781a      	ldrb	r2, [r3, #0]
 8001316:	687b      	ldr	r3, [r7, #4]
 8001318:	629a      	str	r2, [r3, #40]	; 0x28
 800131a:	46c0      	nop			; (mov r8, r8)
 800131c:	46bd      	mov	sp, r7
 800131e:	b002      	add	sp, #8
 8001320:	bd80      	pop	{r7, pc}
	...

08001324 <oled_hw_config>:
 8001324:	b580      	push	{r7, lr}
 8001326:	af00      	add	r7, sp, #0
 8001328:	2380      	movs	r3, #128	; 0x80
 800132a:	02db      	lsls	r3, r3, #11
 800132c:	0018      	movs	r0, r3
 800132e:	f7ff fe6b 	bl	8001008 <LL_AHB1_GRP1_EnableClock>
 8001332:	2380      	movs	r3, #128	; 0x80
 8001334:	00db      	lsls	r3, r3, #3
 8001336:	4833      	ldr	r0, [pc, #204]	; (8001404 <oled_hw_config+0xe0>)
 8001338:	2202      	movs	r2, #2
 800133a:	0019      	movs	r1, r3
 800133c:	f7ff fe90 	bl	8001060 <LL_GPIO_SetPinMode>
 8001340:	2380      	movs	r3, #128	; 0x80
 8001342:	00db      	lsls	r3, r3, #3
 8001344:	482f      	ldr	r0, [pc, #188]	; (8001404 <oled_hw_config+0xe0>)
 8001346:	2201      	movs	r2, #1
 8001348:	0019      	movs	r1, r3
 800134a:	f7ff fea6 	bl	800109a <LL_GPIO_SetPinOutputType>
 800134e:	2380      	movs	r3, #128	; 0x80
 8001350:	00db      	lsls	r3, r3, #3
 8001352:	482c      	ldr	r0, [pc, #176]	; (8001404 <oled_hw_config+0xe0>)
 8001354:	2201      	movs	r2, #1
 8001356:	0019      	movs	r1, r3
 8001358:	f7ff fed1 	bl	80010fe <LL_GPIO_SetAFPin_8_15>
 800135c:	2380      	movs	r3, #128	; 0x80
 800135e:	00db      	lsls	r3, r3, #3
 8001360:	4828      	ldr	r0, [pc, #160]	; (8001404 <oled_hw_config+0xe0>)
 8001362:	2203      	movs	r2, #3
 8001364:	0019      	movs	r1, r3
 8001366:	f7ff fead 	bl	80010c4 <LL_GPIO_SetPinSpeed>
 800136a:	2380      	movs	r3, #128	; 0x80
 800136c:	011b      	lsls	r3, r3, #4
 800136e:	4825      	ldr	r0, [pc, #148]	; (8001404 <oled_hw_config+0xe0>)
 8001370:	2202      	movs	r2, #2
 8001372:	0019      	movs	r1, r3
 8001374:	f7ff fe74 	bl	8001060 <LL_GPIO_SetPinMode>
 8001378:	2380      	movs	r3, #128	; 0x80
 800137a:	011b      	lsls	r3, r3, #4
 800137c:	4821      	ldr	r0, [pc, #132]	; (8001404 <oled_hw_config+0xe0>)
 800137e:	2201      	movs	r2, #1
 8001380:	0019      	movs	r1, r3
 8001382:	f7ff fe8a 	bl	800109a <LL_GPIO_SetPinOutputType>
 8001386:	2380      	movs	r3, #128	; 0x80
 8001388:	011b      	lsls	r3, r3, #4
 800138a:	481e      	ldr	r0, [pc, #120]	; (8001404 <oled_hw_config+0xe0>)
 800138c:	2201      	movs	r2, #1
 800138e:	0019      	movs	r1, r3
 8001390:	f7ff feb5 	bl	80010fe <LL_GPIO_SetAFPin_8_15>
 8001394:	2380      	movs	r3, #128	; 0x80
 8001396:	011b      	lsls	r3, r3, #4
 8001398:	481a      	ldr	r0, [pc, #104]	; (8001404 <oled_hw_config+0xe0>)
 800139a:	2203      	movs	r2, #3
 800139c:	0019      	movs	r1, r3
 800139e:	f7ff fe91 	bl	80010c4 <LL_GPIO_SetPinSpeed>
 80013a2:	2010      	movs	r0, #16
 80013a4:	f7ff fed8 	bl	8001158 <LL_RCC_SetI2CClockSource>
 80013a8:	4b17      	ldr	r3, [pc, #92]	; (8001408 <oled_hw_config+0xe4>)
 80013aa:	0018      	movs	r0, r3
 80013ac:	f7ff fef6 	bl	800119c <LL_I2C_Disable>
 80013b0:	2380      	movs	r3, #128	; 0x80
 80013b2:	03db      	lsls	r3, r3, #15
 80013b4:	0018      	movs	r0, r3
 80013b6:	f7ff fe3d 	bl	8001034 <LL_APB1_GRP1_EnableClock>
 80013ba:	4b13      	ldr	r3, [pc, #76]	; (8001408 <oled_hw_config+0xe4>)
 80013bc:	0018      	movs	r0, r3
 80013be:	f7ff ff11 	bl	80011e4 <LL_I2C_DisableAnalogFilter>
 80013c2:	4b11      	ldr	r3, [pc, #68]	; (8001408 <oled_hw_config+0xe4>)
 80013c4:	2101      	movs	r1, #1
 80013c6:	0018      	movs	r0, r3
 80013c8:	f7ff fef8 	bl	80011bc <LL_I2C_SetDigitalFilter>
 80013cc:	4a0f      	ldr	r2, [pc, #60]	; (800140c <oled_hw_config+0xe8>)
 80013ce:	4b0e      	ldr	r3, [pc, #56]	; (8001408 <oled_hw_config+0xe4>)
 80013d0:	0011      	movs	r1, r2
 80013d2:	0018      	movs	r0, r3
 80013d4:	f7ff ff38 	bl	8001248 <LL_I2C_SetTiming>
 80013d8:	4b0b      	ldr	r3, [pc, #44]	; (8001408 <oled_hw_config+0xe4>)
 80013da:	0018      	movs	r0, r3
 80013dc:	f7ff ff11 	bl	8001202 <LL_I2C_DisableClockStretching>
 80013e0:	4b09      	ldr	r3, [pc, #36]	; (8001408 <oled_hw_config+0xe4>)
 80013e2:	2100      	movs	r1, #0
 80013e4:	0018      	movs	r0, r3
 80013e6:	f7ff ff1b 	bl	8001220 <LL_I2C_SetMasterAddressingMode>
 80013ea:	4b07      	ldr	r3, [pc, #28]	; (8001408 <oled_hw_config+0xe4>)
 80013ec:	2100      	movs	r1, #0
 80013ee:	0018      	movs	r0, r3
 80013f0:	f7ff ff36 	bl	8001260 <LL_I2C_SetMode>
 80013f4:	4b04      	ldr	r3, [pc, #16]	; (8001408 <oled_hw_config+0xe4>)
 80013f6:	0018      	movs	r0, r3
 80013f8:	f7ff fec2 	bl	8001180 <LL_I2C_Enable>
 80013fc:	46c0      	nop			; (mov r8, r8)
 80013fe:	46bd      	mov	sp, r7
 8001400:	bd80      	pop	{r7, pc}
 8001402:	46c0      	nop			; (mov r8, r8)
 8001404:	48000400 	.word	0x48000400
 8001408:	40005800 	.word	0x40005800
 800140c:	50330309 	.word	0x50330309

08001410 <oled_cmd_send>:
 8001410:	b580      	push	{r7, lr}
 8001412:	b084      	sub	sp, #16
 8001414:	af02      	add	r7, sp, #8
 8001416:	0002      	movs	r2, r0
 8001418:	1dfb      	adds	r3, r7, #7
 800141a:	701a      	strb	r2, [r3, #0]
 800141c:	4818      	ldr	r0, [pc, #96]	; (8001480 <oled_cmd_send+0x70>)
 800141e:	2380      	movs	r3, #128	; 0x80
 8001420:	019b      	lsls	r3, r3, #6
 8001422:	9301      	str	r3, [sp, #4]
 8001424:	2380      	movs	r3, #128	; 0x80
 8001426:	049b      	lsls	r3, r3, #18
 8001428:	9300      	str	r3, [sp, #0]
 800142a:	2302      	movs	r3, #2
 800142c:	2200      	movs	r2, #0
 800142e:	2178      	movs	r1, #120	; 0x78
 8001430:	f7ff ff4a 	bl	80012c8 <LL_I2C_HandleTransfer>
 8001434:	46c0      	nop			; (mov r8, r8)
 8001436:	4b12      	ldr	r3, [pc, #72]	; (8001480 <oled_cmd_send+0x70>)
 8001438:	0018      	movs	r0, r3
 800143a:	f7ff ff25 	bl	8001288 <LL_I2C_IsActiveFlag_TXIS>
 800143e:	1e03      	subs	r3, r0, #0
 8001440:	d0f9      	beq.n	8001436 <oled_cmd_send+0x26>
 8001442:	4b0f      	ldr	r3, [pc, #60]	; (8001480 <oled_cmd_send+0x70>)
 8001444:	2100      	movs	r1, #0
 8001446:	0018      	movs	r0, r3
 8001448:	f7ff ff5c 	bl	8001304 <LL_I2C_TransmitData8>
 800144c:	46c0      	nop			; (mov r8, r8)
 800144e:	4b0c      	ldr	r3, [pc, #48]	; (8001480 <oled_cmd_send+0x70>)
 8001450:	0018      	movs	r0, r3
 8001452:	f7ff ff19 	bl	8001288 <LL_I2C_IsActiveFlag_TXIS>
 8001456:	1e03      	subs	r3, r0, #0
 8001458:	d0f9      	beq.n	800144e <oled_cmd_send+0x3e>
 800145a:	1dfb      	adds	r3, r7, #7
 800145c:	781b      	ldrb	r3, [r3, #0]
 800145e:	4a08      	ldr	r2, [pc, #32]	; (8001480 <oled_cmd_send+0x70>)
 8001460:	0019      	movs	r1, r3
 8001462:	0010      	movs	r0, r2
 8001464:	f7ff ff4e 	bl	8001304 <LL_I2C_TransmitData8>
 8001468:	46c0      	nop			; (mov r8, r8)
 800146a:	4b05      	ldr	r3, [pc, #20]	; (8001480 <oled_cmd_send+0x70>)
 800146c:	0018      	movs	r0, r3
 800146e:	f7ff ff1b 	bl	80012a8 <LL_I2C_IsActiveFlag_TC>
 8001472:	1e03      	subs	r3, r0, #0
 8001474:	d1f9      	bne.n	800146a <oled_cmd_send+0x5a>
 8001476:	2300      	movs	r3, #0
 8001478:	0018      	movs	r0, r3
 800147a:	46bd      	mov	sp, r7
 800147c:	b002      	add	sp, #8
 800147e:	bd80      	pop	{r7, pc}
 8001480:	40005800 	.word	0x40005800

08001484 <oled_data_send>:
 8001484:	b590      	push	{r4, r7, lr}
 8001486:	b087      	sub	sp, #28
 8001488:	af02      	add	r7, sp, #8
 800148a:	6078      	str	r0, [r7, #4]
 800148c:	000a      	movs	r2, r1
 800148e:	1cfb      	adds	r3, r7, #3
 8001490:	701a      	strb	r2, [r3, #0]
 8001492:	1cfb      	adds	r3, r7, #3
 8001494:	781b      	ldrb	r3, [r3, #0]
 8001496:	3301      	adds	r3, #1
 8001498:	001a      	movs	r2, r3
 800149a:	4823      	ldr	r0, [pc, #140]	; (8001528 <oled_data_send+0xa4>)
 800149c:	2380      	movs	r3, #128	; 0x80
 800149e:	019b      	lsls	r3, r3, #6
 80014a0:	9301      	str	r3, [sp, #4]
 80014a2:	2380      	movs	r3, #128	; 0x80
 80014a4:	049b      	lsls	r3, r3, #18
 80014a6:	9300      	str	r3, [sp, #0]
 80014a8:	0013      	movs	r3, r2
 80014aa:	2200      	movs	r2, #0
 80014ac:	2178      	movs	r1, #120	; 0x78
 80014ae:	f7ff ff0b 	bl	80012c8 <LL_I2C_HandleTransfer>
 80014b2:	46c0      	nop			; (mov r8, r8)
 80014b4:	4b1c      	ldr	r3, [pc, #112]	; (8001528 <oled_data_send+0xa4>)
 80014b6:	0018      	movs	r0, r3
 80014b8:	f7ff fee6 	bl	8001288 <LL_I2C_IsActiveFlag_TXIS>
 80014bc:	1e03      	subs	r3, r0, #0
 80014be:	d0f9      	beq.n	80014b4 <oled_data_send+0x30>
 80014c0:	4b19      	ldr	r3, [pc, #100]	; (8001528 <oled_data_send+0xa4>)
 80014c2:	2140      	movs	r1, #64	; 0x40
 80014c4:	0018      	movs	r0, r3
 80014c6:	f7ff ff1d 	bl	8001304 <LL_I2C_TransmitData8>
 80014ca:	230f      	movs	r3, #15
 80014cc:	18fb      	adds	r3, r7, r3
 80014ce:	2200      	movs	r2, #0
 80014d0:	701a      	strb	r2, [r3, #0]
 80014d2:	e016      	b.n	8001502 <oled_data_send+0x7e>
 80014d4:	46c0      	nop			; (mov r8, r8)
 80014d6:	4b14      	ldr	r3, [pc, #80]	; (8001528 <oled_data_send+0xa4>)
 80014d8:	0018      	movs	r0, r3
 80014da:	f7ff fed5 	bl	8001288 <LL_I2C_IsActiveFlag_TXIS>
 80014de:	1e03      	subs	r3, r0, #0
 80014e0:	d0f9      	beq.n	80014d6 <oled_data_send+0x52>
 80014e2:	240f      	movs	r4, #15
 80014e4:	193b      	adds	r3, r7, r4
 80014e6:	781b      	ldrb	r3, [r3, #0]
 80014e8:	687a      	ldr	r2, [r7, #4]
 80014ea:	18d3      	adds	r3, r2, r3
 80014ec:	781b      	ldrb	r3, [r3, #0]
 80014ee:	4a0e      	ldr	r2, [pc, #56]	; (8001528 <oled_data_send+0xa4>)
 80014f0:	0019      	movs	r1, r3
 80014f2:	0010      	movs	r0, r2
 80014f4:	f7ff ff06 	bl	8001304 <LL_I2C_TransmitData8>
 80014f8:	193b      	adds	r3, r7, r4
 80014fa:	781a      	ldrb	r2, [r3, #0]
 80014fc:	193b      	adds	r3, r7, r4
 80014fe:	3201      	adds	r2, #1
 8001500:	701a      	strb	r2, [r3, #0]
 8001502:	230f      	movs	r3, #15
 8001504:	18fa      	adds	r2, r7, r3
 8001506:	1cfb      	adds	r3, r7, #3
 8001508:	7812      	ldrb	r2, [r2, #0]
 800150a:	781b      	ldrb	r3, [r3, #0]
 800150c:	429a      	cmp	r2, r3
 800150e:	d3e1      	bcc.n	80014d4 <oled_data_send+0x50>
 8001510:	46c0      	nop			; (mov r8, r8)
 8001512:	4b05      	ldr	r3, [pc, #20]	; (8001528 <oled_data_send+0xa4>)
 8001514:	0018      	movs	r0, r3
 8001516:	f7ff fec7 	bl	80012a8 <LL_I2C_IsActiveFlag_TC>
 800151a:	1e03      	subs	r3, r0, #0
 800151c:	d1f9      	bne.n	8001512 <oled_data_send+0x8e>
 800151e:	2300      	movs	r3, #0
 8001520:	0018      	movs	r0, r3
 8001522:	46bd      	mov	sp, r7
 8001524:	b005      	add	sp, #20
 8001526:	bd90      	pop	{r4, r7, pc}
 8001528:	40005800 	.word	0x40005800

0800152c <oled_clr>:
 800152c:	b580      	push	{r7, lr}
 800152e:	b082      	sub	sp, #8
 8001530:	af00      	add	r7, sp, #0
 8001532:	0002      	movs	r2, r0
 8001534:	1dfb      	adds	r3, r7, #7
 8001536:	701a      	strb	r2, [r3, #0]
 8001538:	1dfb      	adds	r3, r7, #7
 800153a:	7819      	ldrb	r1, [r3, #0]
 800153c:	2380      	movs	r3, #128	; 0x80
 800153e:	00da      	lsls	r2, r3, #3
 8001540:	4b03      	ldr	r3, [pc, #12]	; (8001550 <oled_clr+0x24>)
 8001542:	0018      	movs	r0, r3
 8001544:	f000 f9e6 	bl	8001914 <memset>
 8001548:	46c0      	nop			; (mov r8, r8)
 800154a:	46bd      	mov	sp, r7
 800154c:	b002      	add	sp, #8
 800154e:	bd80      	pop	{r7, pc}
 8001550:	20000478 	.word	0x20000478

08001554 <oled_update>:
 8001554:	b580      	push	{r7, lr}
 8001556:	b082      	sub	sp, #8
 8001558:	af00      	add	r7, sp, #0
 800155a:	1dfb      	adds	r3, r7, #7
 800155c:	2200      	movs	r2, #0
 800155e:	701a      	strb	r2, [r3, #0]
 8001560:	e01a      	b.n	8001598 <oled_update+0x44>
 8001562:	1dfb      	adds	r3, r7, #7
 8001564:	781b      	ldrb	r3, [r3, #0]
 8001566:	3b50      	subs	r3, #80	; 0x50
 8001568:	b2db      	uxtb	r3, r3
 800156a:	0018      	movs	r0, r3
 800156c:	f7ff ff50 	bl	8001410 <oled_cmd_send>
 8001570:	2000      	movs	r0, #0
 8001572:	f7ff ff4d 	bl	8001410 <oled_cmd_send>
 8001576:	2010      	movs	r0, #16
 8001578:	f7ff ff4a 	bl	8001410 <oled_cmd_send>
 800157c:	1dfb      	adds	r3, r7, #7
 800157e:	781b      	ldrb	r3, [r3, #0]
 8001580:	01da      	lsls	r2, r3, #7
 8001582:	4b09      	ldr	r3, [pc, #36]	; (80015a8 <oled_update+0x54>)
 8001584:	18d3      	adds	r3, r2, r3
 8001586:	2180      	movs	r1, #128	; 0x80
 8001588:	0018      	movs	r0, r3
 800158a:	f7ff ff7b 	bl	8001484 <oled_data_send>
 800158e:	1dfb      	adds	r3, r7, #7
 8001590:	781a      	ldrb	r2, [r3, #0]
 8001592:	1dfb      	adds	r3, r7, #7
 8001594:	3201      	adds	r2, #1
 8001596:	701a      	strb	r2, [r3, #0]
 8001598:	1dfb      	adds	r3, r7, #7
 800159a:	781b      	ldrb	r3, [r3, #0]
 800159c:	2b07      	cmp	r3, #7
 800159e:	d9e0      	bls.n	8001562 <oled_update+0xe>
 80015a0:	46c0      	nop			; (mov r8, r8)
 80015a2:	46bd      	mov	sp, r7
 80015a4:	b002      	add	sp, #8
 80015a6:	bd80      	pop	{r7, pc}
 80015a8:	20000478 	.word	0x20000478

080015ac <oled_config>:
 80015ac:	b580      	push	{r7, lr}
 80015ae:	b082      	sub	sp, #8
 80015b0:	af00      	add	r7, sp, #0
 80015b2:	4b29      	ldr	r3, [pc, #164]	; (8001658 <oled_config+0xac>)
 80015b4:	607b      	str	r3, [r7, #4]
 80015b6:	f7ff feb5 	bl	8001324 <oled_hw_config>
 80015ba:	46c0      	nop			; (mov r8, r8)
 80015bc:	687b      	ldr	r3, [r7, #4]
 80015be:	1e5a      	subs	r2, r3, #1
 80015c0:	607a      	str	r2, [r7, #4]
 80015c2:	2b00      	cmp	r3, #0
 80015c4:	d1fa      	bne.n	80015bc <oled_config+0x10>
 80015c6:	20ae      	movs	r0, #174	; 0xae
 80015c8:	f7ff ff22 	bl	8001410 <oled_cmd_send>
 80015cc:	2020      	movs	r0, #32
 80015ce:	f7ff ff1f 	bl	8001410 <oled_cmd_send>
 80015d2:	2010      	movs	r0, #16
 80015d4:	f7ff ff1c 	bl	8001410 <oled_cmd_send>
 80015d8:	20c8      	movs	r0, #200	; 0xc8
 80015da:	f7ff ff19 	bl	8001410 <oled_cmd_send>
 80015de:	2040      	movs	r0, #64	; 0x40
 80015e0:	f7ff ff16 	bl	8001410 <oled_cmd_send>
 80015e4:	2081      	movs	r0, #129	; 0x81
 80015e6:	f7ff ff13 	bl	8001410 <oled_cmd_send>
 80015ea:	20ff      	movs	r0, #255	; 0xff
 80015ec:	f7ff ff10 	bl	8001410 <oled_cmd_send>
 80015f0:	20a1      	movs	r0, #161	; 0xa1
 80015f2:	f7ff ff0d 	bl	8001410 <oled_cmd_send>
 80015f6:	20a6      	movs	r0, #166	; 0xa6
 80015f8:	f7ff ff0a 	bl	8001410 <oled_cmd_send>
 80015fc:	20a8      	movs	r0, #168	; 0xa8
 80015fe:	f7ff ff07 	bl	8001410 <oled_cmd_send>
 8001602:	203f      	movs	r0, #63	; 0x3f
 8001604:	f7ff ff04 	bl	8001410 <oled_cmd_send>
 8001608:	20a4      	movs	r0, #164	; 0xa4
 800160a:	f7ff ff01 	bl	8001410 <oled_cmd_send>
 800160e:	20d3      	movs	r0, #211	; 0xd3
 8001610:	f7ff fefe 	bl	8001410 <oled_cmd_send>
 8001614:	2000      	movs	r0, #0
 8001616:	f7ff fefb 	bl	8001410 <oled_cmd_send>
 800161a:	20d5      	movs	r0, #213	; 0xd5
 800161c:	f7ff fef8 	bl	8001410 <oled_cmd_send>
 8001620:	20f0      	movs	r0, #240	; 0xf0
 8001622:	f7ff fef5 	bl	8001410 <oled_cmd_send>
 8001626:	20da      	movs	r0, #218	; 0xda
 8001628:	f7ff fef2 	bl	8001410 <oled_cmd_send>
 800162c:	2012      	movs	r0, #18
 800162e:	f7ff feef 	bl	8001410 <oled_cmd_send>
 8001632:	208d      	movs	r0, #141	; 0x8d
 8001634:	f7ff feec 	bl	8001410 <oled_cmd_send>
 8001638:	2014      	movs	r0, #20
 800163a:	f7ff fee9 	bl	8001410 <oled_cmd_send>
 800163e:	20af      	movs	r0, #175	; 0xaf
 8001640:	f7ff fee6 	bl	8001410 <oled_cmd_send>
 8001644:	2000      	movs	r0, #0
 8001646:	f7ff ff71 	bl	800152c <oled_clr>
 800164a:	f7ff ff83 	bl	8001554 <oled_update>
 800164e:	46c0      	nop			; (mov r8, r8)
 8001650:	46bd      	mov	sp, r7
 8001652:	b002      	add	sp, #8
 8001654:	bd80      	pop	{r7, pc}
 8001656:	46c0      	nop			; (mov r8, r8)
 8001658:	001e8480 	.word	0x001e8480

0800165c <oled_set_pix>:
 800165c:	b590      	push	{r4, r7, lr}
 800165e:	b083      	sub	sp, #12
 8001660:	af00      	add	r7, sp, #0
 8001662:	0004      	movs	r4, r0
 8001664:	0008      	movs	r0, r1
 8001666:	0011      	movs	r1, r2
 8001668:	1dfb      	adds	r3, r7, #7
 800166a:	1c22      	adds	r2, r4, #0
 800166c:	701a      	strb	r2, [r3, #0]
 800166e:	1dbb      	adds	r3, r7, #6
 8001670:	1c02      	adds	r2, r0, #0
 8001672:	701a      	strb	r2, [r3, #0]
 8001674:	1d7b      	adds	r3, r7, #5
 8001676:	1c0a      	adds	r2, r1, #0
 8001678:	701a      	strb	r2, [r3, #0]
 800167a:	1dfb      	adds	r3, r7, #7
 800167c:	781b      	ldrb	r3, [r3, #0]
 800167e:	b25b      	sxtb	r3, r3
 8001680:	2b00      	cmp	r3, #0
 8001682:	db48      	blt.n	8001716 <oled_set_pix+0xba>
 8001684:	1dbb      	adds	r3, r7, #6
 8001686:	781b      	ldrb	r3, [r3, #0]
 8001688:	2b3f      	cmp	r3, #63	; 0x3f
 800168a:	d844      	bhi.n	8001716 <oled_set_pix+0xba>
 800168c:	1d7b      	adds	r3, r7, #5
 800168e:	781b      	ldrb	r3, [r3, #0]
 8001690:	2b00      	cmp	r3, #0
 8001692:	d01e      	beq.n	80016d2 <oled_set_pix+0x76>
 8001694:	1dbb      	adds	r3, r7, #6
 8001696:	781b      	ldrb	r3, [r3, #0]
 8001698:	08db      	lsrs	r3, r3, #3
 800169a:	b2d8      	uxtb	r0, r3
 800169c:	0003      	movs	r3, r0
 800169e:	01da      	lsls	r2, r3, #7
 80016a0:	1dfb      	adds	r3, r7, #7
 80016a2:	781b      	ldrb	r3, [r3, #0]
 80016a4:	18d3      	adds	r3, r2, r3
 80016a6:	4a1e      	ldr	r2, [pc, #120]	; (8001720 <oled_set_pix+0xc4>)
 80016a8:	5cd3      	ldrb	r3, [r2, r3]
 80016aa:	b25a      	sxtb	r2, r3
 80016ac:	1dbb      	adds	r3, r7, #6
 80016ae:	781b      	ldrb	r3, [r3, #0]
 80016b0:	2107      	movs	r1, #7
 80016b2:	400b      	ands	r3, r1
 80016b4:	2101      	movs	r1, #1
 80016b6:	4099      	lsls	r1, r3
 80016b8:	000b      	movs	r3, r1
 80016ba:	b25b      	sxtb	r3, r3
 80016bc:	4313      	orrs	r3, r2
 80016be:	b259      	sxtb	r1, r3
 80016c0:	0003      	movs	r3, r0
 80016c2:	01da      	lsls	r2, r3, #7
 80016c4:	1dfb      	adds	r3, r7, #7
 80016c6:	781b      	ldrb	r3, [r3, #0]
 80016c8:	18d3      	adds	r3, r2, r3
 80016ca:	b2c9      	uxtb	r1, r1
 80016cc:	4a14      	ldr	r2, [pc, #80]	; (8001720 <oled_set_pix+0xc4>)
 80016ce:	54d1      	strb	r1, [r2, r3]
 80016d0:	e022      	b.n	8001718 <oled_set_pix+0xbc>
 80016d2:	1dbb      	adds	r3, r7, #6
 80016d4:	781b      	ldrb	r3, [r3, #0]
 80016d6:	08db      	lsrs	r3, r3, #3
 80016d8:	b2d8      	uxtb	r0, r3
 80016da:	0003      	movs	r3, r0
 80016dc:	01da      	lsls	r2, r3, #7
 80016de:	1dfb      	adds	r3, r7, #7
 80016e0:	781b      	ldrb	r3, [r3, #0]
 80016e2:	18d3      	adds	r3, r2, r3
 80016e4:	4a0e      	ldr	r2, [pc, #56]	; (8001720 <oled_set_pix+0xc4>)
 80016e6:	5cd3      	ldrb	r3, [r2, r3]
 80016e8:	b25b      	sxtb	r3, r3
 80016ea:	1dba      	adds	r2, r7, #6
 80016ec:	7812      	ldrb	r2, [r2, #0]
 80016ee:	2107      	movs	r1, #7
 80016f0:	400a      	ands	r2, r1
 80016f2:	2101      	movs	r1, #1
 80016f4:	4091      	lsls	r1, r2
 80016f6:	000a      	movs	r2, r1
 80016f8:	b252      	sxtb	r2, r2
 80016fa:	43d2      	mvns	r2, r2
 80016fc:	b252      	sxtb	r2, r2
 80016fe:	4013      	ands	r3, r2
 8001700:	b259      	sxtb	r1, r3
 8001702:	0003      	movs	r3, r0
 8001704:	01da      	lsls	r2, r3, #7
 8001706:	1dfb      	adds	r3, r7, #7
 8001708:	781b      	ldrb	r3, [r3, #0]
 800170a:	18d3      	adds	r3, r2, r3
 800170c:	b2c9      	uxtb	r1, r1
 800170e:	4a04      	ldr	r2, [pc, #16]	; (8001720 <oled_set_pix+0xc4>)
 8001710:	54d1      	strb	r1, [r2, r3]
 8001712:	46c0      	nop			; (mov r8, r8)
 8001714:	e000      	b.n	8001718 <oled_set_pix+0xbc>
 8001716:	46c0      	nop			; (mov r8, r8)
 8001718:	46bd      	mov	sp, r7
 800171a:	b003      	add	sp, #12
 800171c:	bd90      	pop	{r4, r7, pc}
 800171e:	46c0      	nop			; (mov r8, r8)
 8001720:	20000478 	.word	0x20000478

08001724 <oled_putc>:
 8001724:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001726:	b085      	sub	sp, #20
 8001728:	af00      	add	r7, sp, #0
 800172a:	0002      	movs	r2, r0
 800172c:	1dfb      	adds	r3, r7, #7
 800172e:	701a      	strb	r2, [r3, #0]
 8001730:	1dfb      	adds	r3, r7, #7
 8001732:	781b      	ldrb	r3, [r3, #0]
 8001734:	2b0a      	cmp	r3, #10
 8001736:	d106      	bne.n	8001746 <oled_putc+0x22>
 8001738:	4b35      	ldr	r3, [pc, #212]	; (8001810 <oled_putc+0xec>)
 800173a:	781b      	ldrb	r3, [r3, #0]
 800173c:	3301      	adds	r3, #1
 800173e:	b2da      	uxtb	r2, r3
 8001740:	4b33      	ldr	r3, [pc, #204]	; (8001810 <oled_putc+0xec>)
 8001742:	701a      	strb	r2, [r3, #0]
 8001744:	e061      	b.n	800180a <oled_putc+0xe6>
 8001746:	1dfb      	adds	r3, r7, #7
 8001748:	781b      	ldrb	r3, [r3, #0]
 800174a:	2b0d      	cmp	r3, #13
 800174c:	d103      	bne.n	8001756 <oled_putc+0x32>
 800174e:	4b31      	ldr	r3, [pc, #196]	; (8001814 <oled_putc+0xf0>)
 8001750:	2200      	movs	r2, #0
 8001752:	701a      	strb	r2, [r3, #0]
 8001754:	e059      	b.n	800180a <oled_putc+0xe6>
 8001756:	230e      	movs	r3, #14
 8001758:	18fb      	adds	r3, r7, r3
 800175a:	2200      	movs	r2, #0
 800175c:	701a      	strb	r2, [r3, #0]
 800175e:	e046      	b.n	80017ee <oled_putc+0xca>
 8001760:	230f      	movs	r3, #15
 8001762:	18fb      	adds	r3, r7, r3
 8001764:	2200      	movs	r2, #0
 8001766:	701a      	strb	r2, [r3, #0]
 8001768:	e034      	b.n	80017d4 <oled_putc+0xb0>
 800176a:	4b2b      	ldr	r3, [pc, #172]	; (8001818 <oled_putc+0xf4>)
 800176c:	689b      	ldr	r3, [r3, #8]
 800176e:	220d      	movs	r2, #13
 8001770:	18bc      	adds	r4, r7, r2
 8001772:	210e      	movs	r1, #14
 8001774:	187a      	adds	r2, r7, r1
 8001776:	7815      	ldrb	r5, [r2, #0]
 8001778:	260f      	movs	r6, #15
 800177a:	19ba      	adds	r2, r7, r6
 800177c:	7811      	ldrb	r1, [r2, #0]
 800177e:	1dfa      	adds	r2, r7, #7
 8001780:	7810      	ldrb	r0, [r2, #0]
 8001782:	002a      	movs	r2, r5
 8001784:	4798      	blx	r3
 8001786:	0003      	movs	r3, r0
 8001788:	7023      	strb	r3, [r4, #0]
 800178a:	4b23      	ldr	r3, [pc, #140]	; (8001818 <oled_putc+0xf4>)
 800178c:	791b      	ldrb	r3, [r3, #4]
 800178e:	3301      	adds	r3, #1
 8001790:	b2db      	uxtb	r3, r3
 8001792:	4a20      	ldr	r2, [pc, #128]	; (8001814 <oled_putc+0xf0>)
 8001794:	7812      	ldrb	r2, [r2, #0]
 8001796:	4353      	muls	r3, r2
 8001798:	b2da      	uxtb	r2, r3
 800179a:	0034      	movs	r4, r6
 800179c:	193b      	adds	r3, r7, r4
 800179e:	781b      	ldrb	r3, [r3, #0]
 80017a0:	18d3      	adds	r3, r2, r3
 80017a2:	b2d8      	uxtb	r0, r3
 80017a4:	4b1c      	ldr	r3, [pc, #112]	; (8001818 <oled_putc+0xf4>)
 80017a6:	795b      	ldrb	r3, [r3, #5]
 80017a8:	3302      	adds	r3, #2
 80017aa:	b2db      	uxtb	r3, r3
 80017ac:	4a18      	ldr	r2, [pc, #96]	; (8001810 <oled_putc+0xec>)
 80017ae:	7812      	ldrb	r2, [r2, #0]
 80017b0:	4353      	muls	r3, r2
 80017b2:	b2da      	uxtb	r2, r3
 80017b4:	210e      	movs	r1, #14
 80017b6:	187b      	adds	r3, r7, r1
 80017b8:	781b      	ldrb	r3, [r3, #0]
 80017ba:	18d3      	adds	r3, r2, r3
 80017bc:	b2d9      	uxtb	r1, r3
 80017be:	220d      	movs	r2, #13
 80017c0:	18bb      	adds	r3, r7, r2
 80017c2:	781b      	ldrb	r3, [r3, #0]
 80017c4:	001a      	movs	r2, r3
 80017c6:	f7ff ff49 	bl	800165c <oled_set_pix>
 80017ca:	193b      	adds	r3, r7, r4
 80017cc:	781a      	ldrb	r2, [r3, #0]
 80017ce:	193b      	adds	r3, r7, r4
 80017d0:	3201      	adds	r2, #1
 80017d2:	701a      	strb	r2, [r3, #0]
 80017d4:	4b10      	ldr	r3, [pc, #64]	; (8001818 <oled_putc+0xf4>)
 80017d6:	791b      	ldrb	r3, [r3, #4]
 80017d8:	220f      	movs	r2, #15
 80017da:	18ba      	adds	r2, r7, r2
 80017dc:	7812      	ldrb	r2, [r2, #0]
 80017de:	429a      	cmp	r2, r3
 80017e0:	d3c3      	bcc.n	800176a <oled_putc+0x46>
 80017e2:	210e      	movs	r1, #14
 80017e4:	187b      	adds	r3, r7, r1
 80017e6:	781a      	ldrb	r2, [r3, #0]
 80017e8:	187b      	adds	r3, r7, r1
 80017ea:	3201      	adds	r2, #1
 80017ec:	701a      	strb	r2, [r3, #0]
 80017ee:	4b0a      	ldr	r3, [pc, #40]	; (8001818 <oled_putc+0xf4>)
 80017f0:	795b      	ldrb	r3, [r3, #5]
 80017f2:	220e      	movs	r2, #14
 80017f4:	18ba      	adds	r2, r7, r2
 80017f6:	7812      	ldrb	r2, [r2, #0]
 80017f8:	429a      	cmp	r2, r3
 80017fa:	d3b1      	bcc.n	8001760 <oled_putc+0x3c>
 80017fc:	4b05      	ldr	r3, [pc, #20]	; (8001814 <oled_putc+0xf0>)
 80017fe:	781b      	ldrb	r3, [r3, #0]
 8001800:	3301      	adds	r3, #1
 8001802:	b2da      	uxtb	r2, r3
 8001804:	4b03      	ldr	r3, [pc, #12]	; (8001814 <oled_putc+0xf0>)
 8001806:	701a      	strb	r2, [r3, #0]
 8001808:	46c0      	nop			; (mov r8, r8)
 800180a:	46bd      	mov	sp, r7
 800180c:	b005      	add	sp, #20
 800180e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001810:	20000879 	.word	0x20000879
 8001814:	20000878 	.word	0x20000878
 8001818:	20000018 	.word	0x20000018

0800181c <oled_pic>:
 800181c:	b590      	push	{r4, r7, lr}
 800181e:	b085      	sub	sp, #20
 8001820:	af00      	add	r7, sp, #0
 8001822:	6078      	str	r0, [r7, #4]
 8001824:	000a      	movs	r2, r1
 8001826:	1cfb      	adds	r3, r7, #3
 8001828:	701a      	strb	r2, [r3, #0]
 800182a:	230e      	movs	r3, #14
 800182c:	18fb      	adds	r3, r7, r3
 800182e:	2200      	movs	r2, #0
 8001830:	701a      	strb	r2, [r3, #0]
 8001832:	e031      	b.n	8001898 <oled_pic+0x7c>
 8001834:	230f      	movs	r3, #15
 8001836:	18fb      	adds	r3, r7, r3
 8001838:	2200      	movs	r2, #0
 800183a:	701a      	strb	r2, [r3, #0]
 800183c:	e020      	b.n	8001880 <oled_pic+0x64>
 800183e:	210e      	movs	r1, #14
 8001840:	187b      	adds	r3, r7, r1
 8001842:	781b      	ldrb	r3, [r3, #0]
 8001844:	01da      	lsls	r2, r3, #7
 8001846:	200f      	movs	r0, #15
 8001848:	183b      	adds	r3, r7, r0
 800184a:	781b      	ldrb	r3, [r3, #0]
 800184c:	18d3      	adds	r3, r2, r3
 800184e:	001a      	movs	r2, r3
 8001850:	687b      	ldr	r3, [r7, #4]
 8001852:	189b      	adds	r3, r3, r2
 8001854:	781b      	ldrb	r3, [r3, #0]
 8001856:	1cfa      	adds	r2, r7, #3
 8001858:	7812      	ldrb	r2, [r2, #0]
 800185a:	429a      	cmp	r2, r3
 800185c:	419b      	sbcs	r3, r3
 800185e:	425b      	negs	r3, r3
 8001860:	b2db      	uxtb	r3, r3
 8001862:	001a      	movs	r2, r3
 8001864:	187b      	adds	r3, r7, r1
 8001866:	7819      	ldrb	r1, [r3, #0]
 8001868:	0004      	movs	r4, r0
 800186a:	183b      	adds	r3, r7, r0
 800186c:	781b      	ldrb	r3, [r3, #0]
 800186e:	0018      	movs	r0, r3
 8001870:	f7ff fef4 	bl	800165c <oled_set_pix>
 8001874:	0020      	movs	r0, r4
 8001876:	183b      	adds	r3, r7, r0
 8001878:	781a      	ldrb	r2, [r3, #0]
 800187a:	183b      	adds	r3, r7, r0
 800187c:	3201      	adds	r2, #1
 800187e:	701a      	strb	r2, [r3, #0]
 8001880:	230f      	movs	r3, #15
 8001882:	18fb      	adds	r3, r7, r3
 8001884:	781b      	ldrb	r3, [r3, #0]
 8001886:	b25b      	sxtb	r3, r3
 8001888:	2b00      	cmp	r3, #0
 800188a:	dad8      	bge.n	800183e <oled_pic+0x22>
 800188c:	210e      	movs	r1, #14
 800188e:	187b      	adds	r3, r7, r1
 8001890:	781a      	ldrb	r2, [r3, #0]
 8001892:	187b      	adds	r3, r7, r1
 8001894:	3201      	adds	r2, #1
 8001896:	701a      	strb	r2, [r3, #0]
 8001898:	230e      	movs	r3, #14
 800189a:	18fb      	adds	r3, r7, r3
 800189c:	781b      	ldrb	r3, [r3, #0]
 800189e:	2b3f      	cmp	r3, #63	; 0x3f
 80018a0:	d9c8      	bls.n	8001834 <oled_pic+0x18>
 80018a2:	46c0      	nop			; (mov r8, r8)
 80018a4:	46bd      	mov	sp, r7
 80018a6:	b005      	add	sp, #20
 80018a8:	bd90      	pop	{r4, r7, pc}

080018aa <NMI_Handler>:
 80018aa:	b580      	push	{r7, lr}
 80018ac:	af00      	add	r7, sp, #0
 80018ae:	46c0      	nop			; (mov r8, r8)
 80018b0:	46bd      	mov	sp, r7
 80018b2:	bd80      	pop	{r7, pc}

080018b4 <HardFault_Handler>:
 80018b4:	b580      	push	{r7, lr}
 80018b6:	af00      	add	r7, sp, #0
 80018b8:	e7fe      	b.n	80018b8 <HardFault_Handler+0x4>

080018ba <SVC_Handler>:
 80018ba:	b580      	push	{r7, lr}
 80018bc:	af00      	add	r7, sp, #0
 80018be:	46c0      	nop			; (mov r8, r8)
 80018c0:	46bd      	mov	sp, r7
 80018c2:	bd80      	pop	{r7, pc}

080018c4 <PendSV_Handler>:
 80018c4:	b580      	push	{r7, lr}
 80018c6:	af00      	add	r7, sp, #0
 80018c8:	46c0      	nop			; (mov r8, r8)
 80018ca:	46bd      	mov	sp, r7
 80018cc:	bd80      	pop	{r7, pc}
	...

080018d0 <__libc_init_array>:
 80018d0:	b570      	push	{r4, r5, r6, lr}
 80018d2:	4d0c      	ldr	r5, [pc, #48]	; (8001904 <__libc_init_array+0x34>)
 80018d4:	4e0c      	ldr	r6, [pc, #48]	; (8001908 <__libc_init_array+0x38>)
 80018d6:	1b76      	subs	r6, r6, r5
 80018d8:	10b6      	asrs	r6, r6, #2
 80018da:	d005      	beq.n	80018e8 <__libc_init_array+0x18>
 80018dc:	2400      	movs	r4, #0
 80018de:	cd08      	ldmia	r5!, {r3}
 80018e0:	3401      	adds	r4, #1
 80018e2:	4798      	blx	r3
 80018e4:	42a6      	cmp	r6, r4
 80018e6:	d1fa      	bne.n	80018de <__libc_init_array+0xe>
 80018e8:	f000 f8f4 	bl	8001ad4 <_init>
 80018ec:	4d07      	ldr	r5, [pc, #28]	; (800190c <__libc_init_array+0x3c>)
 80018ee:	4e08      	ldr	r6, [pc, #32]	; (8001910 <__libc_init_array+0x40>)
 80018f0:	1b76      	subs	r6, r6, r5
 80018f2:	10b6      	asrs	r6, r6, #2
 80018f4:	d005      	beq.n	8001902 <__libc_init_array+0x32>
 80018f6:	2400      	movs	r4, #0
 80018f8:	cd08      	ldmia	r5!, {r3}
 80018fa:	3401      	adds	r4, #1
 80018fc:	4798      	blx	r3
 80018fe:	42a6      	cmp	r6, r4
 8001900:	d1fa      	bne.n	80018f8 <__libc_init_array+0x28>
 8001902:	bd70      	pop	{r4, r5, r6, pc}
 8001904:	08004288 	.word	0x08004288
 8001908:	08004288 	.word	0x08004288
 800190c:	08004288 	.word	0x08004288
 8001910:	08004290 	.word	0x08004290

08001914 <memset>:
 8001914:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001916:	0005      	movs	r5, r0
 8001918:	0783      	lsls	r3, r0, #30
 800191a:	d04a      	beq.n	80019b2 <memset+0x9e>
 800191c:	1e54      	subs	r4, r2, #1
 800191e:	2a00      	cmp	r2, #0
 8001920:	d044      	beq.n	80019ac <memset+0x98>
 8001922:	b2ce      	uxtb	r6, r1
 8001924:	0003      	movs	r3, r0
 8001926:	2203      	movs	r2, #3
 8001928:	e002      	b.n	8001930 <memset+0x1c>
 800192a:	3501      	adds	r5, #1
 800192c:	3c01      	subs	r4, #1
 800192e:	d33d      	bcc.n	80019ac <memset+0x98>
 8001930:	3301      	adds	r3, #1
 8001932:	702e      	strb	r6, [r5, #0]
 8001934:	4213      	tst	r3, r2
 8001936:	d1f8      	bne.n	800192a <memset+0x16>
 8001938:	2c03      	cmp	r4, #3
 800193a:	d92f      	bls.n	800199c <memset+0x88>
 800193c:	22ff      	movs	r2, #255	; 0xff
 800193e:	400a      	ands	r2, r1
 8001940:	0215      	lsls	r5, r2, #8
 8001942:	4315      	orrs	r5, r2
 8001944:	042a      	lsls	r2, r5, #16
 8001946:	4315      	orrs	r5, r2
 8001948:	2c0f      	cmp	r4, #15
 800194a:	d935      	bls.n	80019b8 <memset+0xa4>
 800194c:	0027      	movs	r7, r4
 800194e:	3f10      	subs	r7, #16
 8001950:	093f      	lsrs	r7, r7, #4
 8001952:	013e      	lsls	r6, r7, #4
 8001954:	46b4      	mov	ip, r6
 8001956:	001e      	movs	r6, r3
 8001958:	001a      	movs	r2, r3
 800195a:	3610      	adds	r6, #16
 800195c:	4466      	add	r6, ip
 800195e:	6015      	str	r5, [r2, #0]
 8001960:	6055      	str	r5, [r2, #4]
 8001962:	6095      	str	r5, [r2, #8]
 8001964:	60d5      	str	r5, [r2, #12]
 8001966:	3210      	adds	r2, #16
 8001968:	42b2      	cmp	r2, r6
 800196a:	d1f8      	bne.n	800195e <memset+0x4a>
 800196c:	260f      	movs	r6, #15
 800196e:	220c      	movs	r2, #12
 8001970:	3701      	adds	r7, #1
 8001972:	013f      	lsls	r7, r7, #4
 8001974:	4026      	ands	r6, r4
 8001976:	19db      	adds	r3, r3, r7
 8001978:	0037      	movs	r7, r6
 800197a:	4222      	tst	r2, r4
 800197c:	d017      	beq.n	80019ae <memset+0x9a>
 800197e:	1f3e      	subs	r6, r7, #4
 8001980:	08b6      	lsrs	r6, r6, #2
 8001982:	00b4      	lsls	r4, r6, #2
 8001984:	46a4      	mov	ip, r4
 8001986:	001a      	movs	r2, r3
 8001988:	1d1c      	adds	r4, r3, #4
 800198a:	4464      	add	r4, ip
 800198c:	c220      	stmia	r2!, {r5}
 800198e:	42a2      	cmp	r2, r4
 8001990:	d1fc      	bne.n	800198c <memset+0x78>
 8001992:	2403      	movs	r4, #3
 8001994:	3601      	adds	r6, #1
 8001996:	00b6      	lsls	r6, r6, #2
 8001998:	199b      	adds	r3, r3, r6
 800199a:	403c      	ands	r4, r7
 800199c:	2c00      	cmp	r4, #0
 800199e:	d005      	beq.n	80019ac <memset+0x98>
 80019a0:	b2c9      	uxtb	r1, r1
 80019a2:	191c      	adds	r4, r3, r4
 80019a4:	7019      	strb	r1, [r3, #0]
 80019a6:	3301      	adds	r3, #1
 80019a8:	429c      	cmp	r4, r3
 80019aa:	d1fb      	bne.n	80019a4 <memset+0x90>
 80019ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80019ae:	0034      	movs	r4, r6
 80019b0:	e7f4      	b.n	800199c <memset+0x88>
 80019b2:	0014      	movs	r4, r2
 80019b4:	0003      	movs	r3, r0
 80019b6:	e7bf      	b.n	8001938 <memset+0x24>
 80019b8:	0027      	movs	r7, r4
 80019ba:	e7e0      	b.n	800197e <memset+0x6a>

080019bc <register_fini>:
 80019bc:	4b03      	ldr	r3, [pc, #12]	; (80019cc <register_fini+0x10>)
 80019be:	b510      	push	{r4, lr}
 80019c0:	2b00      	cmp	r3, #0
 80019c2:	d002      	beq.n	80019ca <register_fini+0xe>
 80019c4:	4802      	ldr	r0, [pc, #8]	; (80019d0 <register_fini+0x14>)
 80019c6:	f000 f805 	bl	80019d4 <atexit>
 80019ca:	bd10      	pop	{r4, pc}
 80019cc:	00000000 	.word	0x00000000
 80019d0:	080019e5 	.word	0x080019e5

080019d4 <atexit>:
 80019d4:	b510      	push	{r4, lr}
 80019d6:	0001      	movs	r1, r0
 80019d8:	2300      	movs	r3, #0
 80019da:	2200      	movs	r2, #0
 80019dc:	2000      	movs	r0, #0
 80019de:	f000 f819 	bl	8001a14 <__register_exitproc>
 80019e2:	bd10      	pop	{r4, pc}

080019e4 <__libc_fini_array>:
 80019e4:	b570      	push	{r4, r5, r6, lr}
 80019e6:	4d07      	ldr	r5, [pc, #28]	; (8001a04 <__libc_fini_array+0x20>)
 80019e8:	4c07      	ldr	r4, [pc, #28]	; (8001a08 <__libc_fini_array+0x24>)
 80019ea:	1b64      	subs	r4, r4, r5
 80019ec:	10a4      	asrs	r4, r4, #2
 80019ee:	d005      	beq.n	80019fc <__libc_fini_array+0x18>
 80019f0:	3c01      	subs	r4, #1
 80019f2:	00a3      	lsls	r3, r4, #2
 80019f4:	58eb      	ldr	r3, [r5, r3]
 80019f6:	4798      	blx	r3
 80019f8:	2c00      	cmp	r4, #0
 80019fa:	d1f9      	bne.n	80019f0 <__libc_fini_array+0xc>
 80019fc:	f000 f870 	bl	8001ae0 <_fini>
 8001a00:	bd70      	pop	{r4, r5, r6, pc}
 8001a02:	46c0      	nop			; (mov r8, r8)
 8001a04:	08004290 	.word	0x08004290
 8001a08:	08004294 	.word	0x08004294

08001a0c <__retarget_lock_acquire_recursive>:
 8001a0c:	4770      	bx	lr
 8001a0e:	46c0      	nop			; (mov r8, r8)

08001a10 <__retarget_lock_release_recursive>:
 8001a10:	4770      	bx	lr
 8001a12:	46c0      	nop			; (mov r8, r8)

08001a14 <__register_exitproc>:
 8001a14:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001a16:	46de      	mov	lr, fp
 8001a18:	4645      	mov	r5, r8
 8001a1a:	464e      	mov	r6, r9
 8001a1c:	4657      	mov	r7, sl
 8001a1e:	b5e0      	push	{r5, r6, r7, lr}
 8001a20:	4c2a      	ldr	r4, [pc, #168]	; (8001acc <__register_exitproc+0xb8>)
 8001a22:	b083      	sub	sp, #12
 8001a24:	0005      	movs	r5, r0
 8001a26:	6820      	ldr	r0, [r4, #0]
 8001a28:	4690      	mov	r8, r2
 8001a2a:	469b      	mov	fp, r3
 8001a2c:	000e      	movs	r6, r1
 8001a2e:	f7ff ffed 	bl	8001a0c <__retarget_lock_acquire_recursive>
 8001a32:	4b27      	ldr	r3, [pc, #156]	; (8001ad0 <__register_exitproc+0xbc>)
 8001a34:	681b      	ldr	r3, [r3, #0]
 8001a36:	9301      	str	r3, [sp, #4]
 8001a38:	23a4      	movs	r3, #164	; 0xa4
 8001a3a:	9a01      	ldr	r2, [sp, #4]
 8001a3c:	005b      	lsls	r3, r3, #1
 8001a3e:	58d2      	ldr	r2, [r2, r3]
 8001a40:	2a00      	cmp	r2, #0
 8001a42:	d038      	beq.n	8001ab6 <__register_exitproc+0xa2>
 8001a44:	6853      	ldr	r3, [r2, #4]
 8001a46:	6820      	ldr	r0, [r4, #0]
 8001a48:	2b1f      	cmp	r3, #31
 8001a4a:	dc3a      	bgt.n	8001ac2 <__register_exitproc+0xae>
 8001a4c:	2d00      	cmp	r5, #0
 8001a4e:	d10e      	bne.n	8001a6e <__register_exitproc+0x5a>
 8001a50:	1c59      	adds	r1, r3, #1
 8001a52:	3302      	adds	r3, #2
 8001a54:	009b      	lsls	r3, r3, #2
 8001a56:	6051      	str	r1, [r2, #4]
 8001a58:	509e      	str	r6, [r3, r2]
 8001a5a:	f7ff ffd9 	bl	8001a10 <__retarget_lock_release_recursive>
 8001a5e:	2000      	movs	r0, #0
 8001a60:	b003      	add	sp, #12
 8001a62:	bc3c      	pop	{r2, r3, r4, r5}
 8001a64:	4690      	mov	r8, r2
 8001a66:	4699      	mov	r9, r3
 8001a68:	46a2      	mov	sl, r4
 8001a6a:	46ab      	mov	fp, r5
 8001a6c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001a6e:	0099      	lsls	r1, r3, #2
 8001a70:	4689      	mov	r9, r1
 8001a72:	4491      	add	r9, r2
 8001a74:	4641      	mov	r1, r8
 8001a76:	2488      	movs	r4, #136	; 0x88
 8001a78:	464f      	mov	r7, r9
 8001a7a:	5139      	str	r1, [r7, r4]
 8001a7c:	21c4      	movs	r1, #196	; 0xc4
 8001a7e:	0049      	lsls	r1, r1, #1
 8001a80:	4688      	mov	r8, r1
 8001a82:	4490      	add	r8, r2
 8001a84:	4641      	mov	r1, r8
 8001a86:	3c87      	subs	r4, #135	; 0x87
 8001a88:	409c      	lsls	r4, r3
 8001a8a:	6809      	ldr	r1, [r1, #0]
 8001a8c:	46a2      	mov	sl, r4
 8001a8e:	4321      	orrs	r1, r4
 8001a90:	468c      	mov	ip, r1
 8001a92:	4641      	mov	r1, r8
 8001a94:	4664      	mov	r4, ip
 8001a96:	600c      	str	r4, [r1, #0]
 8001a98:	2184      	movs	r1, #132	; 0x84
 8001a9a:	464c      	mov	r4, r9
 8001a9c:	465f      	mov	r7, fp
 8001a9e:	0049      	lsls	r1, r1, #1
 8001aa0:	5067      	str	r7, [r4, r1]
 8001aa2:	2d02      	cmp	r5, #2
 8001aa4:	d1d4      	bne.n	8001a50 <__register_exitproc+0x3c>
 8001aa6:	0011      	movs	r1, r2
 8001aa8:	4655      	mov	r5, sl
 8001aaa:	318d      	adds	r1, #141	; 0x8d
 8001aac:	31ff      	adds	r1, #255	; 0xff
 8001aae:	680c      	ldr	r4, [r1, #0]
 8001ab0:	4325      	orrs	r5, r4
 8001ab2:	600d      	str	r5, [r1, #0]
 8001ab4:	e7cc      	b.n	8001a50 <__register_exitproc+0x3c>
 8001ab6:	9a01      	ldr	r2, [sp, #4]
 8001ab8:	9901      	ldr	r1, [sp, #4]
 8001aba:	324d      	adds	r2, #77	; 0x4d
 8001abc:	32ff      	adds	r2, #255	; 0xff
 8001abe:	50ca      	str	r2, [r1, r3]
 8001ac0:	e7c0      	b.n	8001a44 <__register_exitproc+0x30>
 8001ac2:	f7ff ffa5 	bl	8001a10 <__retarget_lock_release_recursive>
 8001ac6:	2001      	movs	r0, #1
 8001ac8:	4240      	negs	r0, r0
 8001aca:	e7c9      	b.n	8001a60 <__register_exitproc+0x4c>
 8001acc:	20000450 	.word	0x20000450
 8001ad0:	08004284 	.word	0x08004284

08001ad4 <_init>:
 8001ad4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001ad6:	46c0      	nop			; (mov r8, r8)
 8001ad8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001ada:	bc08      	pop	{r3}
 8001adc:	469e      	mov	lr, r3
 8001ade:	4770      	bx	lr

08001ae0 <_fini>:
 8001ae0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001ae2:	46c0      	nop			; (mov r8, r8)
 8001ae4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001ae6:	bc08      	pop	{r3}
 8001ae8:	469e      	mov	lr, r3
 8001aea:	4770      	bx	lr
