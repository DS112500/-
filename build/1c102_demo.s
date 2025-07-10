
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438016f 	lu12i.w	$r15,114699(0x1c00b)
1c00000c:	03b4d1ef 	ori	$r15,$r15,0xd34
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038301ef 	ori	$r15,$r15,0xc0
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	03b7a1ad 	ori	$r13,$r13,0xde8
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54398400 	bl	14724(0x3984) # 1c004a14 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5439cc00 	bl	14796(0x39cc) # 1c004a64 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543a5800 	bl	14936(0x3a58) # 1c004af8 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543a8c00 	bl	14988(0x3a8c) # 1c004b34 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5438ac00 	bl	14508(0x38ac) # 1c00495c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543c9800 	bl	15512(0x3c98) # 1c004d50 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543b4400 	bl	15172(0x3b44) # 1c004c0c <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b85084 	ld.w	$r4,$r4,-492(0xe14)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541e4c00 	bl	7756(0x1e4c) # 1c003220 <DisableInt>
1c0013d8:	541db000 	bl	7600(0x1db0) # 1c003188 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54258800 	bl	9608(0x2588) # 1c003968 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5424c800 	bl	9416(0x24c8) # 1c0038b0 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54175800 	bl	5976(0x1758) # 1c002b4c <Uart1_init>
1c0013f8:	54201c00 	bl	8220(0x201c) # 1c003414 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541e2800 	bl	7720(0x1e28) # 1c003244 <EnableInt>
1c001420:	5420bc00 	bl	8380(0x20bc) # 1c0034dc <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541e8400 	bl	7812(0x1e84) # 1c0032ac <Wake_Set>
1c00142c:	54251000 	bl	9488(0x2510) # 1c00393c <WDG_DogFeed>
1c001430:	541f2800 	bl	7976(0x1f28) # 1c003358 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c000124 	pcaddu12i	$r4,9(0x9)
1c001444:	02a97084 	addi.w	$r4,$r4,-1444(0xa5c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541f7800 	bl	8056(0x1f78) # 1c0033c4 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c000124 	pcaddu12i	$r4,9(0x9)
1c00145c:	02a95084 	addi.w	$r4,$r4,-1452(0xa54)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	54652800 	bl	25896(0x6528) # 1c00798c <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c000124 	pcaddu12i	$r4,9(0x9)
1c00147c:	02a90084 	addi.w	$r4,$r4,-1472(0xa40)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54650800 	bl	25864(0x6508) # 1c00798c <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c000124 	pcaddu12i	$r4,9(0x9)
1c00149c:	02a8c084 	addi.w	$r4,$r4,-1488(0xa30)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c001c30:	028aa18c 	addi.w	$r12,$r12,680(0x2a8)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	54184c00 	bl	6220(0x184c) # 1c0037a0 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	5417dc00 	bl	6108(0x17dc) # 1c003744 <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c0021c8:	02b9818c 	addi.w	$r12,$r12,-416(0xe60)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029b8:	0340818c 	andi	$r12,$r12,0x20
1c0029bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029ac <UART_SendData+0x1c>
1c0029c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029c4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029c8:	2900018d 	st.b	$r13,$r12,0
1c0029cc:	03400000 	andi	$r0,$r0,0x0
1c0029d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d8:	4c000020 	jirl	$r0,$r1,0

1c0029dc <UART_SendString>:
UART_SendString():
1c0029dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029f0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029f4:	50002800 	b	40(0x28) # 1c002a1c <UART_SendString+0x40>
1c0029f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029fc:	2800018c 	ld.b	$r12,$r12,0
1c002a00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a04:	00150185 	move	$r5,$r12
1c002a08:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c002a0c:	57ff87ff 	bl	-124(0xfffff84) # 1c002990 <UART_SendData>
1c002a10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a20:	2800018c 	ld.b	$r12,$r12,0
1c002a24:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c0029f8 <UART_SendString+0x1c>
1c002a28:	03400000 	andi	$r0,$r0,0x0
1c002a2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a38:	4c000020 	jirl	$r0,$r1,0

1c002a3c <UART_ReceiveData>:
UART_ReceiveData():
1c002a3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a40:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a50:	03400000 	andi	$r0,$r0,0x0
1c002a54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a58:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a60:	0340058c 	andi	$r12,$r12,0x1
1c002a64:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a54 <UART_ReceiveData+0x18>
1c002a68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a6c:	2a00018c 	ld.bu	$r12,$r12,0
1c002a70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a78:	00150184 	move	$r4,$r12
1c002a7c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a84:	4c000020 	jirl	$r0,$r1,0

1c002a88 <Uart0_init>:
Uart0_init():
1c002a88:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a8c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a90:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a94:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a98:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002aa0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002aa4:	57ebb3ff 	bl	-5200(0xfffebb0) # 1c001654 <gpio_pin_remap>
1c002aa8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002aac:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ab0:	57eba7ff 	bl	-5212(0xfffeba4) # 1c001654 <gpio_pin_remap>
1c002ab4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ab8:	00150184 	move	$r4,$r12
1c002abc:	57fdd3ff 	bl	-560(0xffffdd0) # 1c00288c <UART_StructInit>
1c002ac0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ac4:	2895c18c 	ld.w	$r12,$r12,1392(0x570)
1c002ac8:	2880018c 	ld.w	$r12,$r12,0
1c002acc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ad0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ad4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002ad8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002adc:	00150185 	move	$r5,$r12
1c002ae0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002ae4:	57faafff 	bl	-1364(0xffffaac) # 1c002590 <UART_Init>
1c002ae8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002aec:	0380098c 	ori	$r12,$r12,0x2
1c002af0:	2a00018c 	ld.bu	$r12,$r12,0
1c002af4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002af8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002afc:	0380098c 	ori	$r12,$r12,0x2
1c002b00:	038021ad 	ori	$r13,$r13,0x8
1c002b04:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b08:	2900018d 	st.b	$r13,$r12,0
1c002b0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b10:	2a00018c 	ld.bu	$r12,$r12,0
1c002b14:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b18:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b1c:	038021ad 	ori	$r13,$r13,0x8
1c002b20:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b24:	2900018d 	st.b	$r13,$r12,0
1c002b28:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b2c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b30:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b34:	57fdd7ff 	bl	-556(0xffffdd4) # 1c002908 <UART_ITConfig>
1c002b38:	03400000 	andi	$r0,$r0,0x0
1c002b3c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b40:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b48:	4c000020 	jirl	$r0,$r1,0

1c002b4c <Uart1_init>:
Uart1_init():
1c002b4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b5c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b64:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b68:	57eaefff 	bl	-5396(0xfffeaec) # 1c001654 <gpio_pin_remap>
1c002b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b70:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b74:	57eae3ff 	bl	-5408(0xfffeae0) # 1c001654 <gpio_pin_remap>
1c002b78:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b7c:	00150184 	move	$r4,$r12
1c002b80:	57fd0fff 	bl	-756(0xffffd0c) # 1c00288c <UART_StructInit>
1c002b84:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002b88:	2892b18c 	ld.w	$r12,$r12,1196(0x4ac)
1c002b8c:	2880018c 	ld.w	$r12,$r12,0
1c002b90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002b94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b98:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002b9c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ba0:	00150185 	move	$r5,$r12
1c002ba4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ba8:	57f9ebff 	bl	-1560(0xffff9e8) # 1c002590 <UART_Init>
1c002bac:	00150006 	move	$r6,$r0
1c002bb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bb4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bb8:	57fd53ff 	bl	-688(0xffffd50) # 1c002908 <UART_ITConfig>
1c002bbc:	03400000 	andi	$r0,$r0,0x0
1c002bc0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bc4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bcc:	4c000020 	jirl	$r0,$r1,0

1c002bd0 <Uart2_init>:
Uart2_init():
1c002bd0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002bd4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002bd8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002bdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002be0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002be4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002be8:	02809804 	addi.w	$r4,$r0,38(0x26)
1c002bec:	57ea6bff 	bl	-5528(0xfffea68) # 1c001654 <gpio_pin_remap>
1c002bf0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bf4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c002bf8:	57ea5fff 	bl	-5540(0xfffea5c) # 1c001654 <gpio_pin_remap>
1c002bfc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002c00:	00150184 	move	$r4,$r12
1c002c04:	57fc8bff 	bl	-888(0xffffc88) # 1c00288c <UART_StructInit>
1c002c08:	1400010c 	lu12i.w	$r12,8(0x8)
1c002c0c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c14:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002c18:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002c1c:	00150185 	move	$r5,$r12
1c002c20:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002c24:	57f96fff 	bl	-1684(0xffff96c) # 1c002590 <UART_Init>
1c002c28:	00150006 	move	$r6,$r0
1c002c2c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002c30:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002c34:	57fcd7ff 	bl	-812(0xffffcd4) # 1c002908 <UART_ITConfig>
1c002c38:	03400000 	andi	$r0,$r0,0x0
1c002c3c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c40:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c48:	4c000020 	jirl	$r0,$r1,0

1c002c4c <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002c4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c58:	1400006c 	lu12i.w	$r12,3(0x3)
1c002c5c:	03ba018c 	ori	$r12,$r12,0xe80
1c002c60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c64:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	2880018d 	ld.w	$r13,$r12,0
1c002c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c74:	038101ad 	ori	$r13,$r13,0x40
1c002c78:	2980018d 	st.w	$r13,$r12,0
1c002c7c:	03400000 	andi	$r0,$r0,0x0
1c002c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c84:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c88:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c8c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c80 <CLOCK_WaitForHSEStartUp+0x34>
1c002c90:	50001c00 	b	28(0x1c) # 1c002cac <CLOCK_WaitForHSEStartUp+0x60>
1c002c94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c98:	2880018e 	ld.w	$r14,$r12,0
1c002c9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002ca4:	0014b5cd 	and	$r13,$r14,$r13
1c002ca8:	2980018d 	st.w	$r13,$r12,0
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002cb4:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c94 <CLOCK_WaitForHSEStartUp+0x48>
1c002cb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cbc:	2880018d 	ld.w	$r13,$r12,0
1c002cc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc4:	038201ad 	ori	$r13,$r13,0x80
1c002cc8:	2980018d 	st.w	$r13,$r12,0
1c002ccc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cd0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cd8:	00150184 	move	$r4,$r12
1c002cdc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ce0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ce4:	4c000020 	jirl	$r0,$r1,0

1c002ce8 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002ce8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002cf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cf4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002cf8:	50008800 	b	136(0x88) # 1c002d80 <CLOCK_WaitForLSEStartUp+0x98>
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	2880018e 	ld.w	$r14,$r12,0
1c002d04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d08:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d0c:	0014b5cd 	and	$r13,$r14,$r13
1c002d10:	2980018d 	st.w	$r13,$r12,0
1c002d14:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d1c:	50001400 	b	20(0x14) # 1c002d30 <CLOCK_WaitForLSEStartUp+0x48>
1c002d20:	03400000 	andi	$r0,$r0,0x0
1c002d24:	03400000 	andi	$r0,$r0,0x0
1c002d28:	03400000 	andi	$r0,$r0,0x0
1c002d2c:	03400000 	andi	$r0,$r0,0x0
1c002d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d38:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002d3c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d20 <CLOCK_WaitForLSEStartUp+0x38>
1c002d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d44:	2880018d 	ld.w	$r13,$r12,0
1c002d48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d4c:	038081ad 	ori	$r13,$r13,0x20
1c002d50:	2980018d 	st.w	$r13,$r12,0
1c002d54:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d5c:	50001400 	b	20(0x14) # 1c002d70 <CLOCK_WaitForLSEStartUp+0x88>
1c002d60:	03400000 	andi	$r0,$r0,0x0
1c002d64:	03400000 	andi	$r0,$r0,0x0
1c002d68:	03400000 	andi	$r0,$r0,0x0
1c002d6c:	03400000 	andi	$r0,$r0,0x0
1c002d70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d78:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d7c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d60 <CLOCK_WaitForLSEStartUp+0x78>
1c002d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d84:	0380118c 	ori	$r12,$r12,0x4
1c002d88:	2880018d 	ld.w	$r13,$r12,0
1c002d8c:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d90:	0014b1ac 	and	$r12,$r13,$r12
1c002d94:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002cfc <CLOCK_WaitForLSEStartUp+0x14>
1c002d98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d9c:	0380118c 	ori	$r12,$r12,0x4
1c002da0:	2880018d 	ld.w	$r13,$r12,0
1c002da4:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002da8:	0014b1ac 	and	$r12,$r13,$r12
1c002dac:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002cfc <CLOCK_WaitForLSEStartUp+0x14>
1c002db0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002db4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002db8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002dbc:	00150184 	move	$r4,$r12
1c002dc0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002dc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002dc8:	4c000020 	jirl	$r0,$r1,0

1c002dcc <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002dcc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dd0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002dd4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002dd8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ddc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002de0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002de4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de8:	2880018e 	ld.w	$r14,$r12,0
1c002dec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002df0:	0014300d 	nor	$r13,$r0,$r12
1c002df4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df8:	0014b5cd 	and	$r13,$r14,$r13
1c002dfc:	2980018d 	st.w	$r13,$r12,0
1c002e00:	1400002c 	lu12i.w	$r12,1(0x1)
1c002e04:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002e08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e0c:	50001400 	b	20(0x14) # 1c002e20 <CLOCK_HSEConfig+0x54>
1c002e10:	03400000 	andi	$r0,$r0,0x0
1c002e14:	03400000 	andi	$r0,$r0,0x0
1c002e18:	03400000 	andi	$r0,$r0,0x0
1c002e1c:	03400000 	andi	$r0,$r0,0x0
1c002e20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002e24:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e28:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002e2c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002e10 <CLOCK_HSEConfig+0x44>
1c002e30:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e34:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002e38:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e48 <CLOCK_HSEConfig+0x7c>
1c002e3c:	57fe13ff 	bl	-496(0xffffe10) # 1c002c4c <CLOCK_WaitForHSEStartUp>
1c002e40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e44:	50002400 	b	36(0x24) # 1c002e68 <CLOCK_HSEConfig+0x9c>
1c002e48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e4c:	2880018e 	ld.w	$r14,$r12,0
1c002e50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e54:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002e58:	0014b5cd 	and	$r13,$r14,$r13
1c002e5c:	2980018d 	st.w	$r13,$r12,0
1c002e60:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e6c:	00150184 	move	$r4,$r12
1c002e70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e7c:	4c000020 	jirl	$r0,$r1,0

1c002e80 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e84:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e88:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e98:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e9c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002ea0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002eb0 <CLOCK_LSEConfig+0x30>
1c002ea4:	57fe47ff 	bl	-444(0xffffe44) # 1c002ce8 <CLOCK_WaitForLSEStartUp>
1c002ea8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002eac:	50002400 	b	36(0x24) # 1c002ed0 <CLOCK_LSEConfig+0x50>
1c002eb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb4:	2880018e 	ld.w	$r14,$r12,0
1c002eb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ebc:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002ec0:	0014b5cd 	and	$r13,$r14,$r13
1c002ec4:	2980018d 	st.w	$r13,$r12,0
1c002ec8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ecc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed4:	00150184 	move	$r4,$r12
1c002ed8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002edc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ee0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ee4:	4c000020 	jirl	$r0,$r1,0

1c002ee8 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002ee8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002eec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ef0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ef4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002efc:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002f00:	2980018d 	st.w	$r13,$r12,0
1c002f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f08:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002f0c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002f10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f14:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002f18:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f20:	29803180 	st.w	$r0,$r12,12(0xc)
1c002f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f28:	29804180 	st.w	$r0,$r12,16(0x10)
1c002f2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f30:	29805180 	st.w	$r0,$r12,20(0x14)
1c002f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f38:	29806180 	st.w	$r0,$r12,24(0x18)
1c002f3c:	03400000 	andi	$r0,$r0,0x0
1c002f40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002f44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f48:	4c000020 	jirl	$r0,$r1,0

1c002f4c <CLOCK_Init>:
CLOCK_Init():
1c002f4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002f54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f5c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f60:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f68:	2880018e 	ld.w	$r14,$r12,0
1c002f6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f70:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f74:	0014b5cd 	and	$r13,$r14,$r13
1c002f78:	2980018d 	st.w	$r13,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	2880018e 	ld.w	$r14,$r12,0
1c002f84:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f88:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f90:	001535cd 	or	$r13,$r14,$r13
1c002f94:	2980018d 	st.w	$r13,$r12,0
1c002f98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f9c:	2880018e 	ld.w	$r14,$r12,0
1c002fa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa4:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002fa8:	0014b5cd 	and	$r13,$r14,$r13
1c002fac:	2980018d 	st.w	$r13,$r12,0
1c002fb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fb4:	2880018e 	ld.w	$r14,$r12,0
1c002fb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fbc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002fc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fc4:	001535cd 	or	$r13,$r14,$r13
1c002fc8:	2980018d 	st.w	$r13,$r12,0
1c002fcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd0:	2880018e 	ld.w	$r14,$r12,0
1c002fd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd8:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002fdc:	039ffdad 	ori	$r13,$r13,0x7ff
1c002fe0:	0014b5cd 	and	$r13,$r14,$r13
1c002fe4:	2980018d 	st.w	$r13,$r12,0
1c002fe8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fec:	2880018e 	ld.w	$r14,$r12,0
1c002ff0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff4:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ff8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ffc:	001535cd 	or	$r13,$r14,$r13
1c003000:	2980018d 	st.w	$r13,$r12,0
1c003004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003008:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00300c:	00150184 	move	$r4,$r12
1c003010:	57fdbfff 	bl	-580(0xffffdbc) # 1c002dcc <CLOCK_HSEConfig>
1c003014:	0015008d 	move	$r13,$r4
1c003018:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00301c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003028 <CLOCK_Init+0xdc>
1c003020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003024:	50015000 	b	336(0x150) # 1c003174 <CLOCK_Init+0x228>
1c003028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00302c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c003030:	00150184 	move	$r4,$r12
1c003034:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e80 <CLOCK_LSEConfig>
1c003038:	0015008d 	move	$r13,$r4
1c00303c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003040:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00304c <CLOCK_Init+0x100>
1c003044:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003048:	50012c00 	b	300(0x12c) # 1c003174 <CLOCK_Init+0x228>
1c00304c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003050:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003054:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003058:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003154 <CLOCK_Init+0x208>
1c00305c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003060:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003064:	4000a180 	beqz	$r12,160(0xa0) # 1c003104 <CLOCK_Init+0x1b8>
1c003068:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00306c:	2880018e 	ld.w	$r14,$r12,0
1c003070:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003074:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003078:	03bffdad 	ori	$r13,$r13,0xfff
1c00307c:	0014b5cd 	and	$r13,$r14,$r13
1c003080:	2980018d 	st.w	$r13,$r12,0
1c003084:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003088:	2880018e 	ld.w	$r14,$r12,0
1c00308c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003090:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003094:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003098:	001535cd 	or	$r13,$r14,$r13
1c00309c:	2980018d 	st.w	$r13,$r12,0
1c0030a0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030a4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030a8:	2880018c 	ld.w	$r12,$r12,0
1c0030ac:	40004180 	beqz	$r12,64(0x40) # 1c0030ec <CLOCK_Init+0x1a0>
1c0030b0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030b4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030b8:	2880018c 	ld.w	$r12,$r12,0
1c0030bc:	0040898e 	slli.w	$r14,$r12,0x2
1c0030c0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0030c4:	002031cd 	div.w	$r13,$r14,$r12
1c0030c8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0030d0 <CLOCK_Init+0x184>
1c0030cc:	002a0007 	break	0x7
1c0030d0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030d4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030d8:	0015018d 	move	$r13,$r12
1c0030dc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030e0:	02bf618c 	addi.w	$r12,$r12,-40(0xfd8)
1c0030e4:	2980018d 	st.w	$r13,$r12,0
1c0030e8:	50008000 	b	128(0x80) # 1c003168 <CLOCK_Init+0x21c>
1c0030ec:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030f0:	02bf218c 	addi.w	$r12,$r12,-56(0xfc8)
1c0030f4:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0030f8:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0030fc:	2980018d 	st.w	$r13,$r12,0
1c003100:	50006800 	b	104(0x68) # 1c003168 <CLOCK_Init+0x21c>
1c003104:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003108:	0386c18c 	ori	$r12,$r12,0x1b0
1c00310c:	2880018c 	ld.w	$r12,$r12,0
1c003110:	40002d80 	beqz	$r12,44(0x2c) # 1c00313c <CLOCK_Init+0x1f0>
1c003114:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003118:	0386c18c 	ori	$r12,$r12,0x1b0
1c00311c:	2880018d 	ld.w	$r13,$r12,0
1c003120:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003124:	001c31ac 	mul.w	$r12,$r13,$r12
1c003128:	0015018d 	move	$r13,$r12
1c00312c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003130:	02be218c 	addi.w	$r12,$r12,-120(0xf88)
1c003134:	2980018d 	st.w	$r13,$r12,0
1c003138:	50003000 	b	48(0x30) # 1c003168 <CLOCK_Init+0x21c>
1c00313c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003140:	02bde18c 	addi.w	$r12,$r12,-136(0xf78)
1c003144:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003148:	038801ad 	ori	$r13,$r13,0x200
1c00314c:	2980018d 	st.w	$r13,$r12,0
1c003150:	50001800 	b	24(0x18) # 1c003168 <CLOCK_Init+0x21c>
1c003154:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003158:	02bd818c 	addi.w	$r12,$r12,-160(0xf60)
1c00315c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003160:	038801ad 	ori	$r13,$r13,0x200
1c003164:	2980018d 	st.w	$r13,$r12,0
1c003168:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00316c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003170:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003174:	00150184 	move	$r4,$r12
1c003178:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00317c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003180:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003184:	4c000020 	jirl	$r0,$r1,0

1c003188 <SystemClockInit>:
SystemClockInit():
1c003188:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00318c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003190:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003194:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003198:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c00319c:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0031a0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0031a4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0031a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0031ac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031b4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0031b8:	00150184 	move	$r4,$r12
1c0031bc:	57fd2fff 	bl	-724(0xffffd2c) # 1c002ee8 <CLOCK_StructInit>
1c0031c0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0031c4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0031c8:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0031cc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0031d0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0031d4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0031d8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0031dc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031e0:	1410000c 	lu12i.w	$r12,32768(0x8000)
1c0031e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031e8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0031ec:	00150184 	move	$r4,$r12
1c0031f0:	57fd5fff 	bl	-676(0xffffd5c) # 1c002f4c <CLOCK_Init>
1c0031f4:	0015008d 	move	$r13,$r4
1c0031f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031fc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003208 <SystemClockInit+0x80>
1c003200:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003204:	50000800 	b	8(0x8) # 1c00320c <SystemClockInit+0x84>
1c003208:	0015000c 	move	$r12,$r0
1c00320c:	00150184 	move	$r4,$r12
1c003210:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003214:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003218:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00321c:	4c000020 	jirl	$r0,$r1,0

1c003220 <DisableInt>:
DisableInt():
1c003220:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003224:	29803076 	st.w	$r22,$r3,12(0xc)
1c003228:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00322c:	0380100c 	ori	$r12,$r0,0x4
1c003230:	04000180 	csrxchg	$r0,$r12,0x0
1c003234:	03400000 	andi	$r0,$r0,0x0
1c003238:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00323c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003240:	4c000020 	jirl	$r0,$r1,0

1c003244 <EnableInt>:
EnableInt():
1c003244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003248:	29803076 	st.w	$r22,$r3,12(0xc)
1c00324c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003250:	0380100c 	ori	$r12,$r0,0x4
1c003254:	0400018c 	csrxchg	$r12,$r12,0x0
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003260:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003264:	4c000020 	jirl	$r0,$r1,0

1c003268 <Set_Timer_stop>:
Set_Timer_stop():
1c003268:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00326c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003274:	04010420 	csrwr	$r0,0x41
1c003278:	03400000 	andi	$r0,$r0,0x0
1c00327c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003284:	4c000020 	jirl	$r0,$r1,0

1c003288 <Set_Timer_clear>:
Set_Timer_clear():
1c003288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00328c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003290:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003294:	0380040c 	ori	$r12,$r0,0x1
1c003298:	0401102c 	csrwr	$r12,0x44
1c00329c:	03400000 	andi	$r0,$r0,0x0
1c0032a0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0032a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032a8:	4c000020 	jirl	$r0,$r1,0

1c0032ac <Wake_Set>:
Wake_Set():
1c0032ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032b0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0032b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0032b8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0032bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032c0:	40006980 	beqz	$r12,104(0x68) # 1c003328 <Wake_Set+0x7c>
1c0032c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032c8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0032cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d8:	0380218c 	ori	$r12,$r12,0x8
1c0032dc:	2880018d 	ld.w	$r13,$r12,0
1c0032e0:	14001fec 	lu12i.w	$r12,255(0xff)
1c0032e4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0032e8:	0014b1ac 	and	$r12,$r13,$r12
1c0032ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0032f0:	001031ac 	add.w	$r12,$r13,$r12
1c0032f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032fc:	0380318c 	ori	$r12,$r12,0xc
1c003300:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003304:	2980018d 	st.w	$r13,$r12,0
1c003308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00330c:	0380118c 	ori	$r12,$r12,0x4
1c003310:	2880018d 	ld.w	$r13,$r12,0
1c003314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003318:	0380118c 	ori	$r12,$r12,0x4
1c00331c:	038601ad 	ori	$r13,$r13,0x180
1c003320:	2980018d 	st.w	$r13,$r12,0
1c003324:	50002400 	b	36(0x24) # 1c003348 <Wake_Set+0x9c>
1c003328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00332c:	0380118c 	ori	$r12,$r12,0x4
1c003330:	2880018e 	ld.w	$r14,$r12,0
1c003334:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003338:	0380118c 	ori	$r12,$r12,0x4
1c00333c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003340:	0014b5cd 	and	$r13,$r14,$r13
1c003344:	2980018d 	st.w	$r13,$r12,0
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003350:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003354:	4c000020 	jirl	$r0,$r1,0

1c003358 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003358:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00335c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003360:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003364:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00336c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003370:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003374:	0014b1ac 	and	$r12,$r13,$r12
1c003378:	44000d80 	bnez	$r12,12(0xc) # 1c003384 <PMU_GetRstRrc+0x2c>
1c00337c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003380:	50003000 	b	48(0x30) # 1c0033b0 <PMU_GetRstRrc+0x58>
1c003384:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003388:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00338c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003390:	0014b1ad 	and	$r13,$r13,$r12
1c003394:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003398:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0033a8 <PMU_GetRstRrc+0x50>
1c00339c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0033a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033a4:	50000c00 	b	12(0xc) # 1c0033b0 <PMU_GetRstRrc+0x58>
1c0033a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033c0:	4c000020 	jirl	$r0,$r1,0

1c0033c4 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0033c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0033d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0033dc:	0380198c 	ori	$r12,$r12,0x6
1c0033e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0033e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0033ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033f0:	0340058c 	andi	$r12,$r12,0x1
1c0033f4:	40000d80 	beqz	$r12,12(0xc) # 1c003400 <PMU_GetBootSpiStatus+0x3c>
1c0033f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033fc:	50000800 	b	8(0x8) # 1c003404 <PMU_GetBootSpiStatus+0x40>
1c003400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003404:	00150184 	move	$r4,$r12
1c003408:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00340c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003410:	4c000020 	jirl	$r0,$r1,0

1c003414 <ls1x_logo>:
ls1x_logo():
1c003414:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003418:	29803061 	st.w	$r1,$r3,12(0xc)
1c00341c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003420:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003424:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003428:	02b54084 	addi.w	$r4,$r4,-688(0xd50)
1c00342c:	57e76bff 	bl	-6296(0xfffe768) # 1c001b94 <myprintf>
1c003430:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003434:	02b52084 	addi.w	$r4,$r4,-696(0xd48)
1c003438:	57e75fff 	bl	-6308(0xfffe75c) # 1c001b94 <myprintf>
1c00343c:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003440:	02b68084 	addi.w	$r4,$r4,-608(0xda0)
1c003444:	57e753ff 	bl	-6320(0xfffe750) # 1c001b94 <myprintf>
1c003448:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c00344c:	02b7e084 	addi.w	$r4,$r4,-520(0xdf8)
1c003450:	57e747ff 	bl	-6332(0xfffe744) # 1c001b94 <myprintf>
1c003454:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003458:	02b94084 	addi.w	$r4,$r4,-432(0xe50)
1c00345c:	57e73bff 	bl	-6344(0xfffe738) # 1c001b94 <myprintf>
1c003460:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003464:	02baa084 	addi.w	$r4,$r4,-344(0xea8)
1c003468:	57e72fff 	bl	-6356(0xfffe72c) # 1c001b94 <myprintf>
1c00346c:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003470:	02bc0084 	addi.w	$r4,$r4,-256(0xf00)
1c003474:	57e723ff 	bl	-6368(0xfffe720) # 1c001b94 <myprintf>
1c003478:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c00347c:	02bd6084 	addi.w	$r4,$r4,-168(0xf58)
1c003480:	57e717ff 	bl	-6380(0xfffe714) # 1c001b94 <myprintf>
1c003484:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003488:	02bec084 	addi.w	$r4,$r4,-80(0xfb0)
1c00348c:	57e70bff 	bl	-6392(0xfffe708) # 1c001b94 <myprintf>
1c003490:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003494:	02802084 	addi.w	$r4,$r4,8(0x8)
1c003498:	57e6ffff 	bl	-6404(0xfffe6fc) # 1c001b94 <myprintf>
1c00349c:	03400000 	andi	$r0,$r0,0x0
1c0034a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0034a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0034a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034ac:	4c000020 	jirl	$r0,$r1,0

1c0034b0 <get_count>:
get_count():
1c0034b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0034b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034c0:	0000600c 	rdtimel.w	$r12,$r0
1c0034c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034cc:	00150184 	move	$r4,$r12
1c0034d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0034d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034d8:	4c000020 	jirl	$r0,$r1,0

1c0034dc <open_count>:
open_count():
1c0034dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034e0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0034e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034e8:	0380400c 	ori	$r12,$r0,0x10
1c0034ec:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0034f0:	03400000 	andi	$r0,$r0,0x0
1c0034f4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034fc:	4c000020 	jirl	$r0,$r1,0

1c003500 <start_count>:
start_count():
1c003500:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003504:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003508:	29806076 	st.w	$r22,$r3,24(0x18)
1c00350c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003510:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003518:	29800180 	st.w	$r0,$r12,0
1c00351c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003520:	29801180 	st.w	$r0,$r12,4(0x4)
1c003524:	57ff8fff 	bl	-116(0xfffff8c) # 1c0034b0 <get_count>
1c003528:	0015008d 	move	$r13,$r4
1c00352c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003530:	2980018d 	st.w	$r13,$r12,0
1c003534:	03400000 	andi	$r0,$r0,0x0
1c003538:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00353c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003540:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003544:	4c000020 	jirl	$r0,$r1,0

1c003548 <stop_count>:
stop_count():
1c003548:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00354c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003550:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00355c:	57ff57ff 	bl	-172(0xfffff54) # 1c0034b0 <get_count>
1c003560:	0015008d 	move	$r13,$r4
1c003564:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003568:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00356c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003570:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003574:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003578:	2880018c 	ld.w	$r12,$r12,0
1c00357c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003598 <stop_count+0x50>
1c003580:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003584:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003588:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00358c:	2880018c 	ld.w	$r12,$r12,0
1c003590:	001131ac 	sub.w	$r12,$r13,$r12
1c003594:	50002800 	b	40(0x28) # 1c0035bc <stop_count+0x74>
1c003598:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00359c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035a4:	2880018c 	ld.w	$r12,$r12,0
1c0035a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035ac:	001131ad 	sub.w	$r13,$r13,$r12
1c0035b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035b4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0035b8:	001031ac 	add.w	$r12,$r13,$r12
1c0035bc:	00150184 	move	$r4,$r12
1c0035c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035cc:	4c000020 	jirl	$r0,$r1,0

1c0035d0 <delay_cycle>:
delay_cycle():
1c0035d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0035d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0035dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0035ec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035f0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035f4:	00150184 	move	$r4,$r12
1c0035f8:	57ff0bff 	bl	-248(0xfffff08) # 1c003500 <start_count>
1c0035fc:	50001400 	b	20(0x14) # 1c003610 <delay_cycle+0x40>
1c003600:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003604:	00150184 	move	$r4,$r12
1c003608:	57ff43ff 	bl	-192(0xfffff40) # 1c003548 <stop_count>
1c00360c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003610:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003614:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003618:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003600 <delay_cycle+0x30>
1c00361c:	03400000 	andi	$r0,$r0,0x0
1c003620:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003624:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003628:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00362c:	4c000020 	jirl	$r0,$r1,0

1c003630 <delay_us>:
delay_us():
1c003630:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003634:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003638:	29806076 	st.w	$r22,$r3,24(0x18)
1c00363c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003640:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003644:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003648:	00408d8c 	slli.w	$r12,$r12,0x3
1c00364c:	00150184 	move	$r4,$r12
1c003650:	57ff83ff 	bl	-128(0xfffff80) # 1c0035d0 <delay_cycle>
1c003654:	03400000 	andi	$r0,$r0,0x0
1c003658:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00365c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003660:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003664:	4c000020 	jirl	$r0,$r1,0

1c003668 <delay_ms>:
delay_ms():
1c003668:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00366c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003670:	29806076 	st.w	$r22,$r3,24(0x18)
1c003674:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003678:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00367c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003680:	1400002c 	lu12i.w	$r12,1(0x1)
1c003684:	03bd018c 	ori	$r12,$r12,0xf40
1c003688:	001c31ac 	mul.w	$r12,$r13,$r12
1c00368c:	00150184 	move	$r4,$r12
1c003690:	57ff43ff 	bl	-192(0xfffff40) # 1c0035d0 <delay_cycle>
1c003694:	03400000 	andi	$r0,$r0,0x0
1c003698:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00369c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036a4:	4c000020 	jirl	$r0,$r1,0

1c0036a8 <delay_s>:
delay_s():
1c0036a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0036b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0036b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0036c0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0036c4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0036c8:	00150184 	move	$r4,$r12
1c0036cc:	57ff9fff 	bl	-100(0xfffff9c) # 1c003668 <delay_ms>
1c0036d0:	03400000 	andi	$r0,$r0,0x0
1c0036d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0036d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036e0:	4c000020 	jirl	$r0,$r1,0

1c0036e4 <memset>:
memset():
1c0036e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036e8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036f4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036f8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0036fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003700:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003704:	50001c00 	b	28(0x1c) # 1c003720 <memset+0x3c>
1c003708:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00370c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003710:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003714:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003718:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00371c:	2900018d 	st.b	$r13,$r12,0
1c003720:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003724:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003728:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00372c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003708 <memset+0x24>
1c003730:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003734:	00150184 	move	$r4,$r12
1c003738:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00373c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003740:	4c000020 	jirl	$r0,$r1,0

1c003744 <strcpy>:
strcpy():
1c003744:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003748:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00374c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003750:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003754:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003758:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00375c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003760:	03400000 	andi	$r0,$r0,0x0
1c003764:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003768:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c00376c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003774:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c003778:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c00377c:	280001ad 	ld.b	$r13,$r13,0
1c003780:	2900018d 	st.b	$r13,$r12,0
1c003784:	2800018c 	ld.b	$r12,$r12,0
1c003788:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003764 <strcpy+0x20>
1c00378c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003790:	00150184 	move	$r4,$r12
1c003794:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003798:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00379c:	4c000020 	jirl	$r0,$r1,0

1c0037a0 <strlen>:
strlen():
1c0037a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037a4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037b4:	50001000 	b	16(0x10) # 1c0037c4 <strlen+0x24>
1c0037b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037c8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0037cc:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0037d0:	2800018c 	ld.b	$r12,$r12,0
1c0037d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037b8 <strlen+0x18>
1c0037d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037dc:	00150184 	move	$r4,$r12
1c0037e0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037e8:	4c000020 	jirl	$r0,$r1,0

1c0037ec <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0037ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037f0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0037fc:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003804:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00380c:	001531ad 	or	$r13,$r13,$r12
1c003810:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003814:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003818:	03400000 	andi	$r0,$r0,0x0
1c00381c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003820:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003824:	4c000020 	jirl	$r0,$r1,0

1c003828 <WDG_getOddValue>:
WDG_getOddValue():
1c003828:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00382c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003830:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003834:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003838:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00383c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003840:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003844:	50003800 	b	56(0x38) # 1c00387c <WDG_getOddValue+0x54>
1c003848:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00384c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003850:	001731ac 	sll.w	$r12,$r13,$r12
1c003854:	0015018d 	move	$r13,$r12
1c003858:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00385c:	0014b1ac 	and	$r12,$r13,$r12
1c003860:	40001180 	beqz	$r12,16(0x10) # 1c003870 <WDG_getOddValue+0x48>
1c003864:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003868:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00386c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003870:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003874:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003878:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00387c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003880:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003884:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003848 <WDG_getOddValue+0x20>
1c003888:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00388c:	0340058c 	andi	$r12,$r12,0x1
1c003890:	44000d80 	bnez	$r12,12(0xc) # 1c00389c <WDG_getOddValue+0x74>
1c003894:	1400010c 	lu12i.w	$r12,8(0x8)
1c003898:	50000800 	b	8(0x8) # 1c0038a0 <WDG_getOddValue+0x78>
1c00389c:	0015000c 	move	$r12,$r0
1c0038a0:	00150184 	move	$r4,$r12
1c0038a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0038a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038ac:	4c000020 	jirl	$r0,$r1,0

1c0038b0 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0038b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038c8:	140000ec 	lu12i.w	$r12,7(0x7)
1c0038cc:	03bffd8c 	ori	$r12,$r12,0xfff
1c0038d0:	0014b1ac 	and	$r12,$r13,$r12
1c0038d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038d8:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0038dc:	57ff4fff 	bl	-180(0xfffff4c) # 1c003828 <WDG_getOddValue>
1c0038e0:	0015008c 	move	$r12,$r4
1c0038e4:	0015018d 	move	$r13,$r12
1c0038e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038ec:	0015358c 	or	$r12,$r12,$r13
1c0038f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038f8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0038fc:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003900:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003904:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003908:	0014300c 	nor	$r12,$r0,$r12
1c00390c:	0040c18c 	slli.w	$r12,$r12,0x10
1c003910:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003914:	001531ac 	or	$r12,$r13,$r12
1c003918:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00391c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003920:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003924:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003928:	03400000 	andi	$r0,$r0,0x0
1c00392c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003930:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003934:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003938:	4c000020 	jirl	$r0,$r1,0

1c00393c <WDG_DogFeed>:
WDG_DogFeed():
1c00393c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003940:	29803076 	st.w	$r22,$r3,12(0xc)
1c003944:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00394c:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003950:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003954:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003960:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003964:	4c000020 	jirl	$r0,$r1,0

1c003968 <WdgInit>:
WdgInit():
1c003968:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00396c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003970:	29802076 	st.w	$r22,$r3,8(0x8)
1c003974:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003978:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c00397c:	03bffd84 	ori	$r4,$r12,0xfff
1c003980:	57ff33ff 	bl	-208(0xfffff30) # 1c0038b0 <WDG_SetWatchDog>
1c003984:	03400000 	andi	$r0,$r0,0x0
1c003988:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00398c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003990:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003994:	4c000020 	jirl	$r0,$r1,0

1c003998 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003998:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00399c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039a4:	0015008c 	move	$r12,$r4
1c0039a8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0039ac:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039b0:	0040898c 	slli.w	$r12,$r12,0x2
1c0039b4:	0015018d 	move	$r13,$r12
1c0039b8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0039bc:	0381018c 	ori	$r12,$r12,0x40
1c0039c0:	001031ac 	add.w	$r12,$r13,$r12
1c0039c4:	2880018c 	ld.w	$r12,$r12,0
1c0039c8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039cc:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039d0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039d4:	00150184 	move	$r4,$r12
1c0039d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039e0:	4c000020 	jirl	$r0,$r1,0

1c0039e4 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c0039e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039f0:	0015008c 	move	$r12,$r4
1c0039f4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0039f8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039fc:	0040898c 	slli.w	$r12,$r12,0x2
1c003a00:	0015018d 	move	$r13,$r12
1c003a04:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a08:	0382018c 	ori	$r12,$r12,0x80
1c003a0c:	001031ac 	add.w	$r12,$r13,$r12
1c003a10:	2880018c 	ld.w	$r12,$r12,0
1c003a14:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a18:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a20:	00150184 	move	$r4,$r12
1c003a24:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a2c:	4c000020 	jirl	$r0,$r1,0

1c003a30 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003a30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a40:	0015008c 	move	$r12,$r4
1c003a44:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003a48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a4c:	50003400 	b	52(0x34) # 1c003a80 <Printf_KeyChannel+0x50>
1c003a50:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a58:	001831ac 	sra.w	$r12,$r13,$r12
1c003a5c:	0340058c 	andi	$r12,$r12,0x1
1c003a60:	40001580 	beqz	$r12,20(0x14) # 1c003a74 <Printf_KeyChannel+0x44>
1c003a64:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003a68:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003a6c:	02aa5084 	addi.w	$r4,$r4,-1388(0xa94)
1c003a70:	57e127ff 	bl	-7900(0xfffe124) # 1c001b94 <myprintf>
1c003a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a84:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a88:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003a50 <Printf_KeyChannel+0x20>
1c003a8c:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003a90:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c003a94:	57e103ff 	bl	-7936(0xfffe100) # 1c001b94 <myprintf>
1c003a98:	03400000 	andi	$r0,$r0,0x0
1c003a9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003aa0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003aa4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003aa8:	4c000020 	jirl	$r0,$r1,0

1c003aac <Printf_KeyType>:
Printf_KeyType():
1c003aac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ab0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ab4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ab8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003abc:	0015008c 	move	$r12,$r4
1c003ac0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003ac4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ac8:	0340058c 	andi	$r12,$r12,0x1
1c003acc:	40001180 	beqz	$r12,16(0x10) # 1c003adc <Printf_KeyType+0x30>
1c003ad0:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003ad4:	02a8d084 	addi.w	$r4,$r4,-1484(0xa34)
1c003ad8:	57e0bfff 	bl	-8004(0xfffe0bc) # 1c001b94 <myprintf>
1c003adc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ae0:	0340098c 	andi	$r12,$r12,0x2
1c003ae4:	40001180 	beqz	$r12,16(0x10) # 1c003af4 <Printf_KeyType+0x48>
1c003ae8:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003aec:	02a89084 	addi.w	$r4,$r4,-1500(0xa24)
1c003af0:	57e0a7ff 	bl	-8028(0xfffe0a4) # 1c001b94 <myprintf>
1c003af4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003af8:	0340118c 	andi	$r12,$r12,0x4
1c003afc:	40001180 	beqz	$r12,16(0x10) # 1c003b0c <Printf_KeyType+0x60>
1c003b00:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003b04:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c003b08:	57e08fff 	bl	-8052(0xfffe08c) # 1c001b94 <myprintf>
1c003b0c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b10:	0340218c 	andi	$r12,$r12,0x8
1c003b14:	40001180 	beqz	$r12,16(0x10) # 1c003b24 <Printf_KeyType+0x78>
1c003b18:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003b1c:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c003b20:	57e077ff 	bl	-8076(0xfffe074) # 1c001b94 <myprintf>
1c003b24:	03400000 	andi	$r0,$r0,0x0
1c003b28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b34:	4c000020 	jirl	$r0,$r1,0

1c003b38 <Printf_KeyVal>:
Printf_KeyVal():
1c003b38:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003b3c:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003b40:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003b44:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003b48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b4c:	5000d800 	b	216(0xd8) # 1c003c24 <Printf_KeyVal+0xec>
1c003b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b58:	00150184 	move	$r4,$r12
1c003b5c:	57fe8bff 	bl	-376(0xffffe88) # 1c0039e4 <TOUCH_GetCountValue>
1c003b60:	0015008c 	move	$r12,$r4
1c003b64:	0015018d 	move	$r13,$r12
1c003b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b6c:	0040898c 	slli.w	$r12,$r12,0x2
1c003b70:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b74:	001031cc 	add.w	$r12,$r14,$r12
1c003b78:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b80:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b84:	00150184 	move	$r4,$r12
1c003b88:	57fe13ff 	bl	-496(0xffffe10) # 1c003998 <TOUCH_GetBaseVal>
1c003b8c:	0015008c 	move	$r12,$r4
1c003b90:	0015018d 	move	$r13,$r12
1c003b94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b98:	0040898c 	slli.w	$r12,$r12,0x2
1c003b9c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ba0:	001031cc 	add.w	$r12,$r14,$r12
1c003ba4:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bac:	0040898c 	slli.w	$r12,$r12,0x2
1c003bb0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bb4:	001031ac 	add.w	$r12,$r13,$r12
1c003bb8:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003bbc:	40004980 	beqz	$r12,72(0x48) # 1c003c04 <Printf_KeyVal+0xcc>
1c003bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc4:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bcc:	001031ac 	add.w	$r12,$r13,$r12
1c003bd0:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003bd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bd8:	0040898c 	slli.w	$r12,$r12,0x2
1c003bdc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003be0:	001031cc 	add.w	$r12,$r14,$r12
1c003be4:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003be8:	001131ad 	sub.w	$r13,$r13,$r12
1c003bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bf0:	0040898c 	slli.w	$r12,$r12,0x2
1c003bf4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bf8:	001031cc 	add.w	$r12,$r14,$r12
1c003bfc:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003c00:	50001800 	b	24(0x18) # 1c003c18 <Printf_KeyVal+0xe0>
1c003c04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c08:	0040898c 	slli.w	$r12,$r12,0x2
1c003c0c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c10:	001031ac 	add.w	$r12,$r13,$r12
1c003c14:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c28:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c2c:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003b50 <Printf_KeyVal+0x18>
1c003c30:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003c34:	02a3f084 	addi.w	$r4,$r4,-1796(0x8fc)
1c003c38:	57df5fff 	bl	-8356(0xfffdf5c) # 1c001b94 <myprintf>
1c003c3c:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003c40:	02a46084 	addi.w	$r4,$r4,-1768(0x918)
1c003c44:	57df53ff 	bl	-8368(0xfffdf50) # 1c001b94 <myprintf>
1c003c48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c4c:	50003400 	b	52(0x34) # 1c003c80 <Printf_KeyVal+0x148>
1c003c50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c54:	0040898c 	slli.w	$r12,$r12,0x2
1c003c58:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c5c:	001031ac 	add.w	$r12,$r13,$r12
1c003c60:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c64:	00150185 	move	$r5,$r12
1c003c68:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003c6c:	02a3d084 	addi.w	$r4,$r4,-1804(0x8f4)
1c003c70:	57df27ff 	bl	-8412(0xfffdf24) # 1c001b94 <myprintf>
1c003c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c84:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c88:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c50 <Printf_KeyVal+0x118>
1c003c8c:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003c90:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c003c94:	57df03ff 	bl	-8448(0xfffdf00) # 1c001b94 <myprintf>
1c003c98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c9c:	50003400 	b	52(0x34) # 1c003cd0 <Printf_KeyVal+0x198>
1c003ca0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cac:	001031ac 	add.w	$r12,$r13,$r12
1c003cb0:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003cb4:	00150185 	move	$r5,$r12
1c003cb8:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003cbc:	02a29084 	addi.w	$r4,$r4,-1884(0x8a4)
1c003cc0:	57ded7ff 	bl	-8492(0xfffded4) # 1c001b94 <myprintf>
1c003cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cd4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cd8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003ca0 <Printf_KeyVal+0x168>
1c003cdc:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003ce0:	02a25084 	addi.w	$r4,$r4,-1900(0x894)
1c003ce4:	57deb3ff 	bl	-8528(0xfffdeb0) # 1c001b94 <myprintf>
1c003ce8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003cec:	50007400 	b	116(0x74) # 1c003d60 <Printf_KeyVal+0x228>
1c003cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cf4:	0040898c 	slli.w	$r12,$r12,0x2
1c003cf8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cfc:	001031ac 	add.w	$r12,$r13,$r12
1c003d00:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d04:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003d30 <Printf_KeyVal+0x1f8>
1c003d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d0c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d14:	001031ac 	add.w	$r12,$r13,$r12
1c003d18:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d1c:	00150185 	move	$r5,$r12
1c003d20:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003d24:	02a17084 	addi.w	$r4,$r4,-1956(0x85c)
1c003d28:	57de6fff 	bl	-8596(0xfffde6c) # 1c001b94 <myprintf>
1c003d2c:	50002800 	b	40(0x28) # 1c003d54 <Printf_KeyVal+0x21c>
1c003d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d34:	0040898c 	slli.w	$r12,$r12,0x2
1c003d38:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d3c:	001031ac 	add.w	$r12,$r13,$r12
1c003d40:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d44:	00150185 	move	$r5,$r12
1c003d48:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c003d4c:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c003d50:	57de47ff 	bl	-8636(0xfffde44) # 1c001b94 <myprintf>
1c003d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d64:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d68:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003cf0 <Printf_KeyVal+0x1b8>
1c003d6c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c003d70:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c003d74:	57de23ff 	bl	-8672(0xfffde20) # 1c001b94 <myprintf>
1c003d78:	03400000 	andi	$r0,$r0,0x0
1c003d7c:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003d80:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003d84:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003d88:	4c000020 	jirl	$r0,$r1,0

1c003d8c <TIM_Init>:
TIM_Init():
1c003d8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003d9c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003da0:	29800180 	st.w	$r0,$r12,0
1c003da4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003da8:	0380118c 	ori	$r12,$r12,0x4
1c003dac:	29800180 	st.w	$r0,$r12,0
1c003db0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003db4:	0380218c 	ori	$r12,$r12,0x8
1c003db8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dbc:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003dc0:	2980018d 	st.w	$r13,$r12,0
1c003dc4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dc8:	0380318c 	ori	$r12,$r12,0xc
1c003dcc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dd0:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003dd4:	2980018d 	st.w	$r13,$r12,0
1c003dd8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ddc:	2880018e 	ld.w	$r14,$r12,0
1c003de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de4:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003de8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dec:	001535cd 	or	$r13,$r14,$r13
1c003df0:	2980018d 	st.w	$r13,$r12,0
1c003df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003df8:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003dfc:	40002180 	beqz	$r12,32(0x20) # 1c003e1c <TIM_Init+0x90>
1c003e00:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e04:	2a00018c 	ld.bu	$r12,$r12,0
1c003e08:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003e0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e10:	038005ad 	ori	$r13,$r13,0x1
1c003e14:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003e18:	2900018d 	st.b	$r13,$r12,0
1c003e1c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e20:	2880018e 	ld.w	$r14,$r12,0
1c003e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e28:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003e2c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e30:	001535cd 	or	$r13,$r14,$r13
1c003e34:	2980018d 	st.w	$r13,$r12,0
1c003e38:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e3c:	2880018e 	ld.w	$r14,$r12,0
1c003e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e44:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003e48:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e4c:	001535cd 	or	$r13,$r14,$r13
1c003e50:	2980018d 	st.w	$r13,$r12,0
1c003e54:	03400000 	andi	$r0,$r0,0x0
1c003e58:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e60:	4c000020 	jirl	$r0,$r1,0

1c003e64 <TIM_StructInit>:
TIM_StructInit():
1c003e64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e70:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e78:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003e7c:	038801ad 	ori	$r13,$r13,0x200
1c003e80:	2980018d 	st.w	$r13,$r12,0
1c003e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e88:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003e8c:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003e90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e94:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003e98:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003ea4:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003ea8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eac:	1400002d 	lu12i.w	$r13,1(0x1)
1c003eb0:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003eb4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ebc:	1400026d 	lu12i.w	$r13,19(0x13)
1c003ec0:	03a201ad 	ori	$r13,$r13,0x880
1c003ec4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ecc:	29803180 	st.w	$r0,$r12,12(0xc)
1c003ed0:	03400000 	andi	$r0,$r0,0x0
1c003ed4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ed8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003edc:	4c000020 	jirl	$r0,$r1,0

1c003ee0 <timer_init>:
timer_init():
1c003ee0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003ee4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003ee8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003eec:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003ef0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003ef4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003ef8:	00150184 	move	$r4,$r12
1c003efc:	57ff6bff 	bl	-152(0xfffff68) # 1c003e64 <TIM_StructInit>
1c003f00:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003f04:	1400002c 	lu12i.w	$r12,1(0x1)
1c003f08:	03bd018c 	ori	$r12,$r12,0xf40
1c003f0c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003f10:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003f14:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003f18:	00150184 	move	$r4,$r12
1c003f1c:	57fe73ff 	bl	-400(0xffffe70) # 1c003d8c <TIM_Init>
1c003f20:	03400000 	andi	$r0,$r0,0x0
1c003f24:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003f28:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003f2c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003f30:	4c000020 	jirl	$r0,$r1,0

1c003f34 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003f34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f38:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003f3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003f40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003f44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f48:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f4c:	2880018d 	ld.w	$r13,$r12,0
1c003f50:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f54:	0014b1ac 	and	$r12,$r13,$r12
1c003f58:	40001180 	beqz	$r12,16(0x10) # 1c003f68 <TIM_GetITStatus+0x34>
1c003f5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003f60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f64:	50000800 	b	8(0x8) # 1c003f6c <TIM_GetITStatus+0x38>
1c003f68:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f70:	00150184 	move	$r4,$r12
1c003f74:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003f78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f7c:	4c000020 	jirl	$r0,$r1,0

1c003f80 <TIM_ClearIT>:
TIM_ClearIT():
1c003f80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f84:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f8c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f90:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f94:	2880018e 	ld.w	$r14,$r12,0
1c003f98:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fa0:	001535cd 	or	$r13,$r14,$r13
1c003fa4:	2980018d 	st.w	$r13,$r12,0
1c003fa8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003fac:	03800d8c 	ori	$r12,$r12,0x3
1c003fb0:	2a00018c 	ld.bu	$r12,$r12,0
1c003fb4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003fb8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003fbc:	03800d8c 	ori	$r12,$r12,0x3
1c003fc0:	038005ad 	ori	$r13,$r13,0x1
1c003fc4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003fc8:	2900018d 	st.b	$r13,$r12,0
1c003fcc:	03400000 	andi	$r0,$r0,0x0
1c003fd0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003fd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fd8:	4c000020 	jirl	$r0,$r1,0

1c003fdc <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003fdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fe0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fe4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fec:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c003ff0:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c003ff4:	02806405 	addi.w	$r5,$r0,25(0x19)
1c003ff8:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c003ffc:	02965084 	addi.w	$r4,$r4,1428(0x594)
1c004000:	57db97ff 	bl	-9324(0xfffdb94) # 1c001b94 <myprintf>
1c004004:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004008:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00400c:	03808184 	ori	$r4,$r12,0x20
1c004010:	57f7dfff 	bl	-2084(0xffff7dc) # 1c0037ec <EXTI_ClearITPendingBit>
1c004014:	03400000 	andi	$r0,$r0,0x0
1c004018:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00401c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004020:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004024:	4c000020 	jirl	$r0,$r1,0

1c004028 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004028:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00402c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004030:	29802076 	st.w	$r22,$r3,8(0x8)
1c004034:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004038:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00403c:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c004040:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c004044:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004048:	02952084 	addi.w	$r4,$r4,1352(0x548)
1c00404c:	57db4bff 	bl	-9400(0xfffdb48) # 1c001b94 <myprintf>
1c004050:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004054:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004058:	03808184 	ori	$r4,$r12,0x20
1c00405c:	57f793ff 	bl	-2160(0xffff790) # 1c0037ec <EXTI_ClearITPendingBit>
1c004060:	03400000 	andi	$r0,$r0,0x0
1c004064:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004068:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00406c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004070:	4c000020 	jirl	$r0,$r1,0

1c004074 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004074:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004078:	29803061 	st.w	$r1,$r3,12(0xc)
1c00407c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004080:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004084:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004088:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c00408c:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c004090:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004094:	0293f084 	addi.w	$r4,$r4,1276(0x4fc)
1c004098:	57daffff 	bl	-9476(0xfffdafc) # 1c001b94 <myprintf>
1c00409c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0040a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040a4:	03808184 	ori	$r4,$r12,0x20
1c0040a8:	57f747ff 	bl	-2236(0xffff744) # 1c0037ec <EXTI_ClearITPendingBit>
1c0040ac:	03400000 	andi	$r0,$r0,0x0
1c0040b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040bc:	4c000020 	jirl	$r0,$r1,0

1c0040c0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c0040c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040d0:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0040d4:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c0040d8:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0040dc:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0040e0:	0292c084 	addi.w	$r4,$r4,1200(0x4b0)
1c0040e4:	57dab3ff 	bl	-9552(0xfffdab0) # 1c001b94 <myprintf>
1c0040e8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0040ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040f0:	03808184 	ori	$r4,$r12,0x20
1c0040f4:	57f6fbff 	bl	-2312(0xffff6f8) # 1c0037ec <EXTI_ClearITPendingBit>
1c0040f8:	03400000 	andi	$r0,$r0,0x0
1c0040fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004100:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004104:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004108:	4c000020 	jirl	$r0,$r1,0

1c00410c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00410c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004110:	29803061 	st.w	$r1,$r3,12(0xc)
1c004114:	29802076 	st.w	$r22,$r3,8(0x8)
1c004118:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00411c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004120:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c004124:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c004128:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00412c:	02919084 	addi.w	$r4,$r4,1124(0x464)
1c004130:	57da67ff 	bl	-9628(0xfffda64) # 1c001b94 <myprintf>
1c004134:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004138:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00413c:	03808184 	ori	$r4,$r12,0x20
1c004140:	57f6afff 	bl	-2388(0xffff6ac) # 1c0037ec <EXTI_ClearITPendingBit>
1c004144:	03400000 	andi	$r0,$r0,0x0
1c004148:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00414c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004154:	4c000020 	jirl	$r0,$r1,0

1c004158 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00415c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004160:	29802076 	st.w	$r22,$r3,8(0x8)
1c004164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004168:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00416c:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c004170:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c004174:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004178:	02906084 	addi.w	$r4,$r4,1048(0x418)
1c00417c:	57da1bff 	bl	-9704(0xfffda18) # 1c001b94 <myprintf>
1c004180:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004188:	03808184 	ori	$r4,$r12,0x20
1c00418c:	57f663ff 	bl	-2464(0xffff660) # 1c0037ec <EXTI_ClearITPendingBit>
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004198:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00419c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a0:	4c000020 	jirl	$r0,$r1,0

1c0041a4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c0041a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041b4:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0041b8:	0297a0c6 	addi.w	$r6,$r6,1512(0x5e8)
1c0041bc:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c0041c0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0041c4:	028f3084 	addi.w	$r4,$r4,972(0x3cc)
1c0041c8:	57d9cfff 	bl	-9780(0xfffd9cc) # 1c001b94 <myprintf>
1c0041cc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0041d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041d4:	03808184 	ori	$r4,$r12,0x20
1c0041d8:	57f617ff 	bl	-2540(0xffff614) # 1c0037ec <EXTI_ClearITPendingBit>
1c0041dc:	03400000 	andi	$r0,$r0,0x0
1c0041e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041ec:	4c000020 	jirl	$r0,$r1,0

1c0041f0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0041f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004200:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004204:	0296d0c6 	addi.w	$r6,$r6,1460(0x5b4)
1c004208:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c00420c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004210:	028e0084 	addi.w	$r4,$r4,896(0x380)
1c004214:	57d983ff 	bl	-9856(0xfffd980) # 1c001b94 <myprintf>
1c004218:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00421c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004220:	03808184 	ori	$r4,$r12,0x20
1c004224:	57f5cbff 	bl	-2616(0xffff5c8) # 1c0037ec <EXTI_ClearITPendingBit>
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004230:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004234:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004238:	4c000020 	jirl	$r0,$r1,0

1c00423c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00423c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004240:	29803061 	st.w	$r1,$r3,12(0xc)
1c004244:	29802076 	st.w	$r22,$r3,8(0x8)
1c004248:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00424c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004250:	029600c6 	addi.w	$r6,$r6,1408(0x580)
1c004254:	02810405 	addi.w	$r5,$r0,65(0x41)
1c004258:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00425c:	028cd084 	addi.w	$r4,$r4,820(0x334)
1c004260:	57d937ff 	bl	-9932(0xfffd934) # 1c001b94 <myprintf>
1c004264:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00426c:	03808184 	ori	$r4,$r12,0x20
1c004270:	57f57fff 	bl	-2692(0xffff57c) # 1c0037ec <EXTI_ClearITPendingBit>
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00427c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004284:	4c000020 	jirl	$r0,$r1,0

1c004288 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00428c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004290:	29802076 	st.w	$r22,$r3,8(0x8)
1c004294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004298:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00429c:	029530c6 	addi.w	$r6,$r6,1356(0x54c)
1c0042a0:	02811805 	addi.w	$r5,$r0,70(0x46)
1c0042a4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0042a8:	028ba084 	addi.w	$r4,$r4,744(0x2e8)
1c0042ac:	57d8ebff 	bl	-10008(0xfffd8e8) # 1c001b94 <myprintf>
1c0042b0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0042b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b8:	03808184 	ori	$r4,$r12,0x20
1c0042bc:	57f533ff 	bl	-2768(0xffff530) # 1c0037ec <EXTI_ClearITPendingBit>
1c0042c0:	03400000 	andi	$r0,$r0,0x0
1c0042c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042d0:	4c000020 	jirl	$r0,$r1,0

1c0042d4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0042d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042e4:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0042e8:	029460c6 	addi.w	$r6,$r6,1304(0x518)
1c0042ec:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c0042f0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0042f4:	028a7084 	addi.w	$r4,$r4,668(0x29c)
1c0042f8:	57d89fff 	bl	-10084(0xfffd89c) # 1c001b94 <myprintf>
1c0042fc:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004300:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004304:	03808184 	ori	$r4,$r12,0x20
1c004308:	57f4e7ff 	bl	-2844(0xffff4e4) # 1c0037ec <EXTI_ClearITPendingBit>
1c00430c:	03400000 	andi	$r0,$r0,0x0
1c004310:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004314:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004318:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00431c:	4c000020 	jirl	$r0,$r1,0

1c004320 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004320:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004324:	29803061 	st.w	$r1,$r3,12(0xc)
1c004328:	29802076 	st.w	$r22,$r3,8(0x8)
1c00432c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004330:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004334:	029390c6 	addi.w	$r6,$r6,1252(0x4e4)
1c004338:	02814005 	addi.w	$r5,$r0,80(0x50)
1c00433c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004340:	02894084 	addi.w	$r4,$r4,592(0x250)
1c004344:	57d853ff 	bl	-10160(0xfffd850) # 1c001b94 <myprintf>
1c004348:	03a00005 	ori	$r5,$r0,0x800
1c00434c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004350:	03808184 	ori	$r4,$r12,0x20
1c004354:	57f49bff 	bl	-2920(0xffff498) # 1c0037ec <EXTI_ClearITPendingBit>
1c004358:	03400000 	andi	$r0,$r0,0x0
1c00435c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004360:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004364:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004368:	4c000020 	jirl	$r0,$r1,0

1c00436c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00436c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004370:	29803061 	st.w	$r1,$r3,12(0xc)
1c004374:	29802076 	st.w	$r22,$r3,8(0x8)
1c004378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00437c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004380:	0292c0c6 	addi.w	$r6,$r6,1200(0x4b0)
1c004384:	02815405 	addi.w	$r5,$r0,85(0x55)
1c004388:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00438c:	02881084 	addi.w	$r4,$r4,516(0x204)
1c004390:	57d807ff 	bl	-10236(0xfffd804) # 1c001b94 <myprintf>
1c004394:	14000025 	lu12i.w	$r5,1(0x1)
1c004398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00439c:	03808184 	ori	$r4,$r12,0x20
1c0043a0:	57f44fff 	bl	-2996(0xffff44c) # 1c0037ec <EXTI_ClearITPendingBit>
1c0043a4:	03400000 	andi	$r0,$r0,0x0
1c0043a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043b4:	4c000020 	jirl	$r0,$r1,0

1c0043b8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0043b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c8:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0043cc:	0291f0c6 	addi.w	$r6,$r6,1148(0x47c)
1c0043d0:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c0043d4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0043d8:	0286e084 	addi.w	$r4,$r4,440(0x1b8)
1c0043dc:	57d7bbff 	bl	-10312(0xfffd7b8) # 1c001b94 <myprintf>
1c0043e0:	14000045 	lu12i.w	$r5,2(0x2)
1c0043e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e8:	03808184 	ori	$r4,$r12,0x20
1c0043ec:	57f403ff 	bl	-3072(0xffff400) # 1c0037ec <EXTI_ClearITPendingBit>
1c0043f0:	03400000 	andi	$r0,$r0,0x0
1c0043f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004400:	4c000020 	jirl	$r0,$r1,0

1c004404 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004408:	29803061 	st.w	$r1,$r3,12(0xc)
1c00440c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004410:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004414:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004418:	029120c6 	addi.w	$r6,$r6,1096(0x448)
1c00441c:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c004420:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004424:	0285b084 	addi.w	$r4,$r4,364(0x16c)
1c004428:	57d76fff 	bl	-10388(0xfffd76c) # 1c001b94 <myprintf>
1c00442c:	14000085 	lu12i.w	$r5,4(0x4)
1c004430:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004434:	03808184 	ori	$r4,$r12,0x20
1c004438:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c0037ec <EXTI_ClearITPendingBit>
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00444c:	4c000020 	jirl	$r0,$r1,0

1c004450 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004454:	29803061 	st.w	$r1,$r3,12(0xc)
1c004458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00445c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004460:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004464:	029050c6 	addi.w	$r6,$r6,1044(0x414)
1c004468:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00446c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004470:	02848084 	addi.w	$r4,$r4,288(0x120)
1c004474:	57d723ff 	bl	-10464(0xfffd720) # 1c001b94 <myprintf>
1c004478:	14000105 	lu12i.w	$r5,8(0x8)
1c00447c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004480:	03808184 	ori	$r4,$r12,0x20
1c004484:	57f36bff 	bl	-3224(0xffff368) # 1c0037ec <EXTI_ClearITPendingBit>
1c004488:	03400000 	andi	$r0,$r0,0x0
1c00448c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004490:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004498:	4c000020 	jirl	$r0,$r1,0

1c00449c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00449c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044ac:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0044b0:	028f80c6 	addi.w	$r6,$r6,992(0x3e0)
1c0044b4:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c0044b8:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0044bc:	02835084 	addi.w	$r4,$r4,212(0xd4)
1c0044c0:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c001b94 <myprintf>
1c0044c4:	14000205 	lu12i.w	$r5,16(0x10)
1c0044c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044cc:	03808184 	ori	$r4,$r12,0x20
1c0044d0:	57f31fff 	bl	-3300(0xffff31c) # 1c0037ec <EXTI_ClearITPendingBit>
1c0044d4:	03400000 	andi	$r0,$r0,0x0
1c0044d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044e4:	4c000020 	jirl	$r0,$r1,0

1c0044e8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0044e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f8:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0044fc:	028eb0c6 	addi.w	$r6,$r6,940(0x3ac)
1c004500:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c004504:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004508:	02822084 	addi.w	$r4,$r4,136(0x88)
1c00450c:	57d68bff 	bl	-10616(0xfffd688) # 1c001b94 <myprintf>
1c004510:	14000405 	lu12i.w	$r5,32(0x20)
1c004514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004518:	03808184 	ori	$r4,$r12,0x20
1c00451c:	57f2d3ff 	bl	-3376(0xffff2d0) # 1c0037ec <EXTI_ClearITPendingBit>
1c004520:	03400000 	andi	$r0,$r0,0x0
1c004524:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004528:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00452c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004530:	4c000020 	jirl	$r0,$r1,0

1c004534 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00453c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004544:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004548:	028de0c6 	addi.w	$r6,$r6,888(0x378)
1c00454c:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c004550:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004554:	0280f084 	addi.w	$r4,$r4,60(0x3c)
1c004558:	57d63fff 	bl	-10692(0xfffd63c) # 1c001b94 <myprintf>
1c00455c:	14000805 	lu12i.w	$r5,64(0x40)
1c004560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004564:	03808184 	ori	$r4,$r12,0x20
1c004568:	57f287ff 	bl	-3452(0xffff284) # 1c0037ec <EXTI_ClearITPendingBit>
1c00456c:	03400000 	andi	$r0,$r0,0x0
1c004570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00457c:	4c000020 	jirl	$r0,$r1,0

1c004580 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004584:	29803061 	st.w	$r1,$r3,12(0xc)
1c004588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00458c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004590:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004594:	028d10c6 	addi.w	$r6,$r6,836(0x344)
1c004598:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c00459c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0045a0:	02bfc084 	addi.w	$r4,$r4,-16(0xff0)
1c0045a4:	57d5f3ff 	bl	-10768(0xfffd5f0) # 1c001b94 <myprintf>
1c0045a8:	14001005 	lu12i.w	$r5,128(0x80)
1c0045ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b0:	03808184 	ori	$r4,$r12,0x20
1c0045b4:	57f23bff 	bl	-3528(0xffff238) # 1c0037ec <EXTI_ClearITPendingBit>
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045c8:	4c000020 	jirl	$r0,$r1,0

1c0045cc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0045cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045dc:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0045e0:	028c40c6 	addi.w	$r6,$r6,784(0x310)
1c0045e4:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c0045e8:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0045ec:	02be9084 	addi.w	$r4,$r4,-92(0xfa4)
1c0045f0:	57d5a7ff 	bl	-10844(0xfffd5a4) # 1c001b94 <myprintf>
1c0045f4:	14002005 	lu12i.w	$r5,256(0x100)
1c0045f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045fc:	03808184 	ori	$r4,$r12,0x20
1c004600:	57f1efff 	bl	-3604(0xffff1ec) # 1c0037ec <EXTI_ClearITPendingBit>
1c004604:	03400000 	andi	$r0,$r0,0x0
1c004608:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00460c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004610:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004614:	4c000020 	jirl	$r0,$r1,0

1c004618 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004618:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00461c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004620:	29802076 	st.w	$r22,$r3,8(0x8)
1c004624:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004628:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00462c:	028b70c6 	addi.w	$r6,$r6,732(0x2dc)
1c004630:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c004634:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004638:	02bd6084 	addi.w	$r4,$r4,-168(0xf58)
1c00463c:	57d55bff 	bl	-10920(0xfffd558) # 1c001b94 <myprintf>
1c004640:	14004005 	lu12i.w	$r5,512(0x200)
1c004644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004648:	03808184 	ori	$r4,$r12,0x20
1c00464c:	57f1a3ff 	bl	-3680(0xffff1a0) # 1c0037ec <EXTI_ClearITPendingBit>
1c004650:	03400000 	andi	$r0,$r0,0x0
1c004654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00465c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004660:	4c000020 	jirl	$r0,$r1,0

1c004664 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004668:	29803061 	st.w	$r1,$r3,12(0xc)
1c00466c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004670:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004674:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004678:	028aa0c6 	addi.w	$r6,$r6,680(0x2a8)
1c00467c:	02822005 	addi.w	$r5,$r0,136(0x88)
1c004680:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004684:	02bc3084 	addi.w	$r4,$r4,-244(0xf0c)
1c004688:	57d50fff 	bl	-10996(0xfffd50c) # 1c001b94 <myprintf>
1c00468c:	14008005 	lu12i.w	$r5,1024(0x400)
1c004690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004694:	03808184 	ori	$r4,$r12,0x20
1c004698:	57f157ff 	bl	-3756(0xffff154) # 1c0037ec <EXTI_ClearITPendingBit>
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046ac:	4c000020 	jirl	$r0,$r1,0

1c0046b0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0046b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046c0:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0046c4:	0289d0c6 	addi.w	$r6,$r6,628(0x274)
1c0046c8:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0046cc:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0046d0:	02bb0084 	addi.w	$r4,$r4,-320(0xec0)
1c0046d4:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c001b94 <myprintf>
1c0046d8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0046dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046e0:	03808184 	ori	$r4,$r12,0x20
1c0046e4:	57f10bff 	bl	-3832(0xffff108) # 1c0037ec <EXTI_ClearITPendingBit>
1c0046e8:	03400000 	andi	$r0,$r0,0x0
1c0046ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046f8:	4c000020 	jirl	$r0,$r1,0

1c0046fc <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0046fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004700:	29803061 	st.w	$r1,$r3,12(0xc)
1c004704:	29802076 	st.w	$r22,$r3,8(0x8)
1c004708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00470c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004710:	028900c6 	addi.w	$r6,$r6,576(0x240)
1c004714:	02824805 	addi.w	$r5,$r0,146(0x92)
1c004718:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00471c:	02b9d084 	addi.w	$r4,$r4,-396(0xe74)
1c004720:	57d477ff 	bl	-11148(0xfffd474) # 1c001b94 <myprintf>
1c004724:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00472c:	03808184 	ori	$r4,$r12,0x20
1c004730:	57f0bfff 	bl	-3908(0xffff0bc) # 1c0037ec <EXTI_ClearITPendingBit>
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00473c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004744:	4c000020 	jirl	$r0,$r1,0

1c004748 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00474c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004750:	29802076 	st.w	$r22,$r3,8(0x8)
1c004754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004758:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00475c:	028830c6 	addi.w	$r6,$r6,524(0x20c)
1c004760:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c004764:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004768:	02b8a084 	addi.w	$r4,$r4,-472(0xe28)
1c00476c:	57d42bff 	bl	-11224(0xfffd428) # 1c001b94 <myprintf>
1c004770:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004778:	03808184 	ori	$r4,$r12,0x20
1c00477c:	57f073ff 	bl	-3984(0xffff070) # 1c0037ec <EXTI_ClearITPendingBit>
1c004780:	03400000 	andi	$r0,$r0,0x0
1c004784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00478c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004790:	4c000020 	jirl	$r0,$r1,0

1c004794 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00479c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a4:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0047a8:	028760c6 	addi.w	$r6,$r6,472(0x1d8)
1c0047ac:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c0047b0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0047b4:	02b77084 	addi.w	$r4,$r4,-548(0xddc)
1c0047b8:	57d3dfff 	bl	-11300(0xfffd3dc) # 1c001b94 <myprintf>
1c0047bc:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0047c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c4:	03808184 	ori	$r4,$r12,0x20
1c0047c8:	57f027ff 	bl	-4060(0xffff024) # 1c0037ec <EXTI_ClearITPendingBit>
1c0047cc:	03400000 	andi	$r0,$r0,0x0
1c0047d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047dc:	4c000020 	jirl	$r0,$r1,0

1c0047e0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0047e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047f0:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0047f4:	028690c6 	addi.w	$r6,$r6,420(0x1a4)
1c0047f8:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c0047fc:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004800:	02b64084 	addi.w	$r4,$r4,-624(0xd90)
1c004804:	57d393ff 	bl	-11376(0xfffd390) # 1c001b94 <myprintf>
1c004808:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00480c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004810:	03808184 	ori	$r4,$r12,0x20
1c004814:	57efdbff 	bl	-4136(0xfffefd8) # 1c0037ec <EXTI_ClearITPendingBit>
1c004818:	03400000 	andi	$r0,$r0,0x0
1c00481c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004828:	4c000020 	jirl	$r0,$r1,0

1c00482c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00482c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004830:	29803061 	st.w	$r1,$r3,12(0xc)
1c004834:	29802076 	st.w	$r22,$r3,8(0x8)
1c004838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00483c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004840:	0285c0c6 	addi.w	$r6,$r6,368(0x170)
1c004844:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004848:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00484c:	02b51084 	addi.w	$r4,$r4,-700(0xd44)
1c004850:	57d347ff 	bl	-11452(0xfffd344) # 1c001b94 <myprintf>
1c004854:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00485c:	03808184 	ori	$r4,$r12,0x20
1c004860:	57ef8fff 	bl	-4212(0xfffef8c) # 1c0037ec <EXTI_ClearITPendingBit>
1c004864:	03400000 	andi	$r0,$r0,0x0
1c004868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00486c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004874:	4c000020 	jirl	$r0,$r1,0

1c004878 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00487c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004880:	29802076 	st.w	$r22,$r3,8(0x8)
1c004884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004888:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c00488c:	0284f0c6 	addi.w	$r6,$r6,316(0x13c)
1c004890:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004894:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004898:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c00489c:	57d2fbff 	bl	-11528(0xfffd2f8) # 1c001b94 <myprintf>
1c0048a0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0048a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048a8:	03808184 	ori	$r4,$r12,0x20
1c0048ac:	57ef43ff 	bl	-4288(0xfffef40) # 1c0037ec <EXTI_ClearITPendingBit>
1c0048b0:	03400000 	andi	$r0,$r0,0x0
1c0048b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c0:	4c000020 	jirl	$r0,$r1,0

1c0048c4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0048c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048d4:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0048d8:	028420c6 	addi.w	$r6,$r6,264(0x108)
1c0048dc:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c0048e0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0048e4:	02b2b084 	addi.w	$r4,$r4,-852(0xcac)
1c0048e8:	57d2afff 	bl	-11604(0xfffd2ac) # 1c001b94 <myprintf>
1c0048ec:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0048f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f4:	03808184 	ori	$r4,$r12,0x20
1c0048f8:	57eef7ff 	bl	-4364(0xfffeef4) # 1c0037ec <EXTI_ClearITPendingBit>
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00490c:	4c000020 	jirl	$r0,$r1,0

1c004910 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004914:	29803061 	st.w	$r1,$r3,12(0xc)
1c004918:	29802076 	st.w	$r22,$r3,8(0x8)
1c00491c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004920:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c004924:	028350c6 	addi.w	$r6,$r6,212(0xd4)
1c004928:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c00492c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004930:	02b18084 	addi.w	$r4,$r4,-928(0xc60)
1c004934:	57d263ff 	bl	-11680(0xfffd260) # 1c001b94 <myprintf>
1c004938:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00493c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004940:	03808184 	ori	$r4,$r12,0x20
1c004944:	57eeabff 	bl	-4440(0xfffeea8) # 1c0037ec <EXTI_ClearITPendingBit>
1c004948:	03400000 	andi	$r0,$r0,0x0
1c00494c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004950:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004954:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004958:	4c000020 	jirl	$r0,$r1,0

1c00495c <ext_handler>:
ext_handler():
1c00495c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004960:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004964:	29806076 	st.w	$r22,$r3,24(0x18)
1c004968:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00496c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004970:	0380f18c 	ori	$r12,$r12,0x3c
1c004974:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004978:	2980018d 	st.w	$r13,$r12,0
1c00497c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004980:	0380818c 	ori	$r12,$r12,0x20
1c004984:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004988:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00498c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004990:	0380818c 	ori	$r12,$r12,0x20
1c004994:	2880018c 	ld.w	$r12,$r12,0
1c004998:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00499c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049a0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0049a4:	0014b1ac 	and	$r12,$r13,$r12
1c0049a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049ac:	03400000 	andi	$r0,$r0,0x0
1c0049b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0049b4:	50004000 	b	64(0x40) # 1c0049f4 <ext_handler+0x98>
1c0049b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049c0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0049c4:	0340058c 	andi	$r12,$r12,0x1
1c0049c8:	40002180 	beqz	$r12,32(0x20) # 1c0049e8 <ext_handler+0x8c>
1c0049cc:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c0049d0:	02b1f1ad 	addi.w	$r13,$r13,-900(0xc7c)
1c0049d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049d8:	0040898c 	slli.w	$r12,$r12,0x2
1c0049dc:	001031ac 	add.w	$r12,$r13,$r12
1c0049e0:	2880018c 	ld.w	$r12,$r12,0
1c0049e4:	4c000181 	jirl	$r1,$r12,0
1c0049e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0049fc:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0049b8 <ext_handler+0x5c>
1c004a00:	03400000 	andi	$r0,$r0,0x0
1c004a04:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a08:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a10:	4c000020 	jirl	$r0,$r1,0

1c004a14 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004a14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a28:	0380f18c 	ori	$r12,$r12,0x3c
1c004a2c:	1400020d 	lu12i.w	$r13,16(0x10)
1c004a30:	2980018d 	st.w	$r13,$r12,0
1c004a34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a38:	0380118c 	ori	$r12,$r12,0x4
1c004a3c:	2880018c 	ld.w	$r12,$r12,0
1c004a40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a44:	57eefbff 	bl	-4360(0xfffeef8) # 1c00393c <WDG_DogFeed>
1c004a48:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a4c:	57e863ff 	bl	-6048(0xfffe860) # 1c0032ac <Wake_Set>
1c004a50:	03400000 	andi	$r0,$r0,0x0
1c004a54:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a58:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a60:	4c000020 	jirl	$r0,$r1,0

1c004a64 <TOUCH>:
TOUCH():
1c004a64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a74:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a78:	0380118c 	ori	$r12,$r12,0x4
1c004a7c:	2880018c 	ld.w	$r12,$r12,0
1c004a80:	0044c18c 	srli.w	$r12,$r12,0x10
1c004a84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004a88:	037ffd8c 	andi	$r12,$r12,0xfff
1c004a8c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004a90:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004a94:	0380118c 	ori	$r12,$r12,0x4
1c004a98:	2880018c 	ld.w	$r12,$r12,0
1c004a9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004aa0:	03403d8c 	andi	$r12,$r12,0xf
1c004aa4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004aac:	0380f18c 	ori	$r12,$r12,0x3c
1c004ab0:	1400040d 	lu12i.w	$r13,32(0x20)
1c004ab4:	2980018d 	st.w	$r13,$r12,0
1c004ab8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004abc:	0380118c 	ori	$r12,$r12,0x4
1c004ac0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004ac4:	2980018d 	st.w	$r13,$r12,0
1c004ac8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004acc:	00150184 	move	$r4,$r12
1c004ad0:	57efdfff 	bl	-4132(0xfffefdc) # 1c003aac <Printf_KeyType>
1c004ad4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004ad8:	00150184 	move	$r4,$r12
1c004adc:	57ef57ff 	bl	-4268(0xfffef54) # 1c003a30 <Printf_KeyChannel>
1c004ae0:	57f05bff 	bl	-4008(0xffff058) # 1c003b38 <Printf_KeyVal>
1c004ae4:	03400000 	andi	$r0,$r0,0x0
1c004ae8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004aec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004af0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004af4:	4c000020 	jirl	$r0,$r1,0

1c004af8 <UART2_INT>:
UART2_INT():
1c004af8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004afc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b08:	0380f18c 	ori	$r12,$r12,0x3c
1c004b0c:	1400080d 	lu12i.w	$r13,64(0x40)
1c004b10:	2980018d 	st.w	$r13,$r12,0
1c004b14:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004b18:	0380098c 	ori	$r12,$r12,0x2
1c004b1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004b20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b24:	03400000 	andi	$r0,$r0,0x0
1c004b28:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b30:	4c000020 	jirl	$r0,$r1,0

1c004b34 <BAT_FAIL>:
BAT_FAIL():
1c004b34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b48:	0380118c 	ori	$r12,$r12,0x4
1c004b4c:	2880018c 	ld.w	$r12,$r12,0
1c004b50:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004b54:	03407d8c 	andi	$r12,$r12,0x1f
1c004b58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b60:	0380118c 	ori	$r12,$r12,0x4
1c004b64:	2880018e 	ld.w	$r14,$r12,0
1c004b68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b6c:	0380f18c 	ori	$r12,$r12,0x3c
1c004b70:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004b74:	0014b5cd 	and	$r13,$r14,$r13
1c004b78:	2980018d 	st.w	$r13,$r12,0
1c004b7c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b80:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004b84:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004bf4 <BAT_FAIL+0xc0>
1c004b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b8c:	0040898d 	slli.w	$r13,$r12,0x2
1c004b90:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c004b94:	02ace18c 	addi.w	$r12,$r12,-1224(0xb38)
1c004b98:	001031ac 	add.w	$r12,$r13,$r12
1c004b9c:	2880018c 	ld.w	$r12,$r12,0
1c004ba0:	4c000180 	jirl	$r0,$r12,0
1c004ba4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004ba8:	02a8b084 	addi.w	$r4,$r4,-1492(0xa2c)
1c004bac:	57cfebff 	bl	-12312(0xfffcfe8) # 1c001b94 <myprintf>
1c004bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bb4:	0380118c 	ori	$r12,$r12,0x4
1c004bb8:	29800180 	st.w	$r0,$r12,0
1c004bbc:	50003c00 	b	60(0x3c) # 1c004bf8 <BAT_FAIL+0xc4>
1c004bc0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004bc4:	02a8e084 	addi.w	$r4,$r4,-1480(0xa38)
1c004bc8:	57cfcfff 	bl	-12340(0xfffcfcc) # 1c001b94 <myprintf>
1c004bcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bd0:	0380118c 	ori	$r12,$r12,0x4
1c004bd4:	2880018e 	ld.w	$r14,$r12,0
1c004bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bdc:	0380118c 	ori	$r12,$r12,0x4
1c004be0:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004be4:	03bffdad 	ori	$r13,$r13,0xfff
1c004be8:	0014b5cd 	and	$r13,$r14,$r13
1c004bec:	2980018d 	st.w	$r13,$r12,0
1c004bf0:	50000800 	b	8(0x8) # 1c004bf8 <BAT_FAIL+0xc4>
1c004bf4:	03400000 	andi	$r0,$r0,0x0
1c004bf8:	03400000 	andi	$r0,$r0,0x0
1c004bfc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c08:	4c000020 	jirl	$r0,$r1,0

1c004c0c <intc_handler>:
intc_handler():
1c004c0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c14:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c20:	0380158c 	ori	$r12,$r12,0x5
1c004c24:	2a00018c 	ld.bu	$r12,$r12,0
1c004c28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c30:	0340058c 	andi	$r12,$r12,0x1
1c004c34:	40002180 	beqz	$r12,32(0x20) # 1c004c54 <intc_handler+0x48>
1c004c38:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c3c:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003f34 <TIM_GetITStatus>
1c004c40:	0015008c 	move	$r12,$r4
1c004c44:	40001180 	beqz	$r12,16(0x10) # 1c004c54 <intc_handler+0x48>
1c004c48:	544e4000 	bl	20032(0x4e40) # 1c009a88 <Fall_check>
1c004c4c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c50:	57f333ff 	bl	-3280(0xffff330) # 1c003f80 <TIM_ClearIT>
1c004c54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c58:	0340118c 	andi	$r12,$r12,0x4
1c004c5c:	40001580 	beqz	$r12,20(0x14) # 1c004c70 <intc_handler+0x64>
1c004c60:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c64:	03800d8c 	ori	$r12,$r12,0x3
1c004c68:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004c6c:	2900018d 	st.b	$r13,$r12,0
1c004c70:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c74:	0340218c 	andi	$r12,$r12,0x8
1c004c78:	4000b580 	beqz	$r12,180(0xb4) # 1c004d2c <intc_handler+0x120>
1c004c7c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004c80:	57ddbfff 	bl	-8772(0xfffddbc) # 1c002a3c <UART_ReceiveData>
1c004c84:	0015008c 	move	$r12,$r4
1c004c88:	0015018d 	move	$r13,$r12
1c004c8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c90:	028dd18c 	addi.w	$r12,$r12,884(0x374)
1c004c94:	2900018d 	st.b	$r13,$r12,0
1c004c98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c9c:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c004ca0:	2a00018d 	ld.bu	$r13,$r12,0
1c004ca4:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c004ca8:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c004cc4 <intc_handler+0xb8>
1c004cac:	1c0000c5 	pcaddu12i	$r5,6(0x6)
1c004cb0:	02a5c0a5 	addi.w	$r5,$r5,-1680(0x970)
1c004cb4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004cb8:	57dd27ff 	bl	-8924(0xfffdd24) # 1c0029dc <UART_SendString>
1c004cbc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004cc0:	57e9ebff 	bl	-5656(0xfffe9e8) # 1c0036a8 <delay_s>
1c004cc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cc8:	028cf18c 	addi.w	$r12,$r12,828(0x33c)
1c004ccc:	2a00018d 	ld.bu	$r13,$r12,0
1c004cd0:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c004cd4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c004cf0 <intc_handler+0xe4>
1c004cd8:	1c0000c5 	pcaddu12i	$r5,6(0x6)
1c004cdc:	02a520a5 	addi.w	$r5,$r5,-1720(0x948)
1c004ce0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004ce4:	57dcfbff 	bl	-8968(0xfffdcf8) # 1c0029dc <UART_SendString>
1c004ce8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004cec:	57e9bfff 	bl	-5700(0xfffe9bc) # 1c0036a8 <delay_s>
1c004cf0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cf4:	028c418c 	addi.w	$r12,$r12,784(0x310)
1c004cf8:	2a00018d 	ld.bu	$r13,$r12,0
1c004cfc:	0280cc0c 	addi.w	$r12,$r0,51(0x33)
1c004d00:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c004d1c <intc_handler+0x110>
1c004d04:	1c0000c5 	pcaddu12i	$r5,6(0x6)
1c004d08:	02a480a5 	addi.w	$r5,$r5,-1760(0x920)
1c004d0c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004d10:	57dccfff 	bl	-9012(0xfffdccc) # 1c0029dc <UART_SendString>
1c004d14:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d18:	57e993ff 	bl	-5744(0xfffe990) # 1c0036a8 <delay_s>
1c004d1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d20:	03800d8c 	ori	$r12,$r12,0x3
1c004d24:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004d28:	2900018d 	st.b	$r13,$r12,0
1c004d2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d30:	03800d8c 	ori	$r12,$r12,0x3
1c004d34:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004d38:	2900018d 	st.b	$r13,$r12,0
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d4c:	4c000020 	jirl	$r0,$r1,0

1c004d50 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004d50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d60:	57e52bff 	bl	-6872(0xfffe528) # 1c003288 <Set_Timer_clear>
1c004d64:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c004d68:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c004d6c:	57ce2bff 	bl	-12760(0xfffce28) # 1c001b94 <myprintf>
1c004d70:	57e4fbff 	bl	-6920(0xfffe4f8) # 1c003268 <Set_Timer_stop>
1c004d74:	03400000 	andi	$r0,$r0,0x0
1c004d78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d84:	4c000020 	jirl	$r0,$r1,0

1c004d88 <IIC_Delay>:
IIC_Delay():
1c004d88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d8c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004d90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d9c:	50001000 	b	16(0x10) # 1c004dac <IIC_Delay+0x24>
1c004da0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004da4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004da8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004db0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004da0 <IIC_Delay+0x18>
1c004db4:	03400000 	andi	$r0,$r0,0x0
1c004db8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004dbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004dc0:	4c000020 	jirl	$r0,$r1,0

1c004dc4 <IIC_Init>:
IIC_Init():
1c004dc4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004dc8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004dcc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004dd0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004dd4:	00150005 	move	$r5,$r0
1c004dd8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ddc:	57c87bff 	bl	-14216(0xfffc878) # 1c001654 <gpio_pin_remap>
1c004de0:	00150005 	move	$r5,$r0
1c004de4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004de8:	57c86fff 	bl	-14228(0xfffc86c) # 1c001654 <gpio_pin_remap>
1c004dec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004df0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004df4:	57ca6fff 	bl	-13716(0xfffca6c) # 1c001860 <gpio_set_direction>
1c004df8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004dfc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e00:	57ca63ff 	bl	-13728(0xfffca60) # 1c001860 <gpio_set_direction>
1c004e04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e08:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e0c:	57c7d3ff 	bl	-14384(0xfffc7d0) # 1c0015dc <gpio_write_pin>
1c004e10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e14:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e18:	57c7c7ff 	bl	-14396(0xfffc7c4) # 1c0015dc <gpio_write_pin>
1c004e1c:	03400000 	andi	$r0,$r0,0x0
1c004e20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e2c:	4c000020 	jirl	$r0,$r1,0

1c004e30 <SDA_IN>:
SDA_IN():
1c004e30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e34:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e38:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e40:	00150005 	move	$r5,$r0
1c004e44:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e48:	57ca1bff 	bl	-13800(0xfffca18) # 1c001860 <gpio_set_direction>
1c004e4c:	03400000 	andi	$r0,$r0,0x0
1c004e50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e5c:	4c000020 	jirl	$r0,$r1,0

1c004e60 <SDA_OUT>:
SDA_OUT():
1c004e60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e64:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e68:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e78:	57c9ebff 	bl	-13848(0xfffc9e8) # 1c001860 <gpio_set_direction>
1c004e7c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e80:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e84:	57c75bff 	bl	-14504(0xfffc758) # 1c0015dc <gpio_write_pin>
1c004e88:	03400000 	andi	$r0,$r0,0x0
1c004e8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e98:	4c000020 	jirl	$r0,$r1,0

1c004e9c <IIC_Start>:
IIC_Start():
1c004e9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ea0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ea4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ea8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004eac:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004e60 <SDA_OUT>
1c004eb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004eb4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004eb8:	57c727ff 	bl	-14556(0xfffc724) # 1c0015dc <gpio_write_pin>
1c004ebc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ec0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ec4:	57c71bff 	bl	-14568(0xfffc718) # 1c0015dc <gpio_write_pin>
1c004ec8:	57fec3ff 	bl	-320(0xffffec0) # 1c004d88 <IIC_Delay>
1c004ecc:	00150005 	move	$r5,$r0
1c004ed0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ed4:	57c70bff 	bl	-14584(0xfffc708) # 1c0015dc <gpio_write_pin>
1c004ed8:	57feb3ff 	bl	-336(0xffffeb0) # 1c004d88 <IIC_Delay>
1c004edc:	00150005 	move	$r5,$r0
1c004ee0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ee4:	57c6fbff 	bl	-14600(0xfffc6f8) # 1c0015dc <gpio_write_pin>
1c004ee8:	03400000 	andi	$r0,$r0,0x0
1c004eec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ef0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ef4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ef8:	4c000020 	jirl	$r0,$r1,0

1c004efc <IIC_Stop>:
IIC_Stop():
1c004efc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f00:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f04:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f0c:	57ff57ff 	bl	-172(0xfffff54) # 1c004e60 <SDA_OUT>
1c004f10:	00150005 	move	$r5,$r0
1c004f14:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f18:	57c6c7ff 	bl	-14652(0xfffc6c4) # 1c0015dc <gpio_write_pin>
1c004f1c:	00150005 	move	$r5,$r0
1c004f20:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f24:	57c6bbff 	bl	-14664(0xfffc6b8) # 1c0015dc <gpio_write_pin>
1c004f28:	57fe63ff 	bl	-416(0xffffe60) # 1c004d88 <IIC_Delay>
1c004f2c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f30:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f34:	57c6abff 	bl	-14680(0xfffc6a8) # 1c0015dc <gpio_write_pin>
1c004f38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f3c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f40:	57c69fff 	bl	-14692(0xfffc69c) # 1c0015dc <gpio_write_pin>
1c004f44:	57fe47ff 	bl	-444(0xffffe44) # 1c004d88 <IIC_Delay>
1c004f48:	03400000 	andi	$r0,$r0,0x0
1c004f4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f58:	4c000020 	jirl	$r0,$r1,0

1c004f5c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004f5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f64:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f70:	57fec3ff 	bl	-320(0xffffec0) # 1c004e30 <SDA_IN>
1c004f74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f78:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f7c:	57c663ff 	bl	-14752(0xfffc660) # 1c0015dc <gpio_write_pin>
1c004f80:	57fe0bff 	bl	-504(0xffffe08) # 1c004d88 <IIC_Delay>
1c004f84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f88:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f8c:	57c653ff 	bl	-14768(0xfffc650) # 1c0015dc <gpio_write_pin>
1c004f90:	57fdfbff 	bl	-520(0xffffdf8) # 1c004d88 <IIC_Delay>
1c004f94:	50002800 	b	40(0x28) # 1c004fbc <IIC_Wait_Ack+0x60>
1c004f98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fa0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004fa4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004fa8:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c004fac:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c004fbc <IIC_Wait_Ack+0x60>
1c004fb0:	57ff4fff 	bl	-180(0xfffff4c) # 1c004efc <IIC_Stop>
1c004fb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004fb8:	50002400 	b	36(0x24) # 1c004fdc <IIC_Wait_Ack+0x80>
1c004fbc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fc0:	57c5cfff 	bl	-14900(0xfffc5cc) # 1c00158c <gpio_get_pin>
1c004fc4:	0015008c 	move	$r12,$r4
1c004fc8:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004f98 <IIC_Wait_Ack+0x3c>
1c004fcc:	00150005 	move	$r5,$r0
1c004fd0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fd4:	57c60bff 	bl	-14840(0xfffc608) # 1c0015dc <gpio_write_pin>
1c004fd8:	0015000c 	move	$r12,$r0
1c004fdc:	00150184 	move	$r4,$r12
1c004fe0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fe4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fe8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fec:	4c000020 	jirl	$r0,$r1,0

1c004ff0 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004ff0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ff4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004ff8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ffc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005000:	0015008c 	move	$r12,$r4
1c005004:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005008:	57fe5bff 	bl	-424(0xffffe58) # 1c004e60 <SDA_OUT>
1c00500c:	00150005 	move	$r5,$r0
1c005010:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005014:	57c5cbff 	bl	-14904(0xfffc5c8) # 1c0015dc <gpio_write_pin>
1c005018:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00501c:	50006000 	b	96(0x60) # 1c00507c <IIC_Send_Byte+0x8c>
1c005020:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005024:	64001580 	bge	$r12,$r0,20(0x14) # 1c005038 <IIC_Send_Byte+0x48>
1c005028:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00502c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005030:	57c5afff 	bl	-14932(0xfffc5ac) # 1c0015dc <gpio_write_pin>
1c005034:	50001000 	b	16(0x10) # 1c005044 <IIC_Send_Byte+0x54>
1c005038:	00150005 	move	$r5,$r0
1c00503c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005040:	57c59fff 	bl	-14948(0xfffc59c) # 1c0015dc <gpio_write_pin>
1c005044:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005048:	0040858c 	slli.w	$r12,$r12,0x1
1c00504c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005050:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005054:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005058:	57c587ff 	bl	-14972(0xfffc584) # 1c0015dc <gpio_write_pin>
1c00505c:	57fd2fff 	bl	-724(0xffffd2c) # 1c004d88 <IIC_Delay>
1c005060:	00150005 	move	$r5,$r0
1c005064:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005068:	57c577ff 	bl	-14988(0xfffc574) # 1c0015dc <gpio_write_pin>
1c00506c:	57fd1fff 	bl	-740(0xffffd1c) # 1c004d88 <IIC_Delay>
1c005070:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005074:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005078:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00507c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005080:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005084:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005020 <IIC_Send_Byte+0x30>
1c005088:	03400000 	andi	$r0,$r0,0x0
1c00508c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005090:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005094:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005098:	4c000020 	jirl	$r0,$r1,0

1c00509c <my_strstr>:
my_strstr():
1c00509c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050a0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0050a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0050a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0050ac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0050b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0050b4:	40000d80 	beqz	$r12,12(0xc) # 1c0050c0 <my_strstr+0x24>
1c0050b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050bc:	44000d80 	bnez	$r12,12(0xc) # 1c0050c8 <my_strstr+0x2c>
1c0050c0:	0015000c 	move	$r12,$r0
1c0050c4:	50009800 	b	152(0x98) # 1c00515c <my_strstr+0xc0>
1c0050c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0050cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0050d0:	50007c00 	b	124(0x7c) # 1c00514c <my_strstr+0xb0>
1c0050d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0050dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0050e4:	50001c00 	b	28(0x1c) # 1c005100 <my_strstr+0x64>
1c0050e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0050ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0050f4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0050f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005104:	2800018c 	ld.b	$r12,$r12,0
1c005108:	40002580 	beqz	$r12,36(0x24) # 1c00512c <my_strstr+0x90>
1c00510c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005110:	2800018c 	ld.b	$r12,$r12,0
1c005114:	40001980 	beqz	$r12,24(0x18) # 1c00512c <my_strstr+0x90>
1c005118:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00511c:	2800018d 	ld.b	$r13,$r12,0
1c005120:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005124:	2800018c 	ld.b	$r12,$r12,0
1c005128:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0050e8 <my_strstr+0x4c>
1c00512c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005130:	2800018c 	ld.b	$r12,$r12,0
1c005134:	44000d80 	bnez	$r12,12(0xc) # 1c005140 <my_strstr+0xa4>
1c005138:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00513c:	50002000 	b	32(0x20) # 1c00515c <my_strstr+0xc0>
1c005140:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005144:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005148:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00514c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005150:	2800018c 	ld.b	$r12,$r12,0
1c005154:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0050d4 <my_strstr+0x38>
1c005158:	0015000c 	move	$r12,$r0
1c00515c:	00150184 	move	$r4,$r12
1c005160:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005164:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005168:	4c000020 	jirl	$r0,$r1,0

1c00516c <my_strchr>:
my_strchr():
1c00516c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005170:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005174:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005178:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00517c:	001500ac 	move	$r12,$r5
1c005180:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005188:	44001980 	bnez	$r12,24(0x18) # 1c0051a0 <my_strchr+0x34>
1c00518c:	0015000c 	move	$r12,$r0
1c005190:	50004800 	b	72(0x48) # 1c0051d8 <my_strchr+0x6c>
1c005194:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005198:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00519c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0051a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051a4:	2800018c 	ld.b	$r12,$r12,0
1c0051a8:	40001580 	beqz	$r12,20(0x14) # 1c0051bc <my_strchr+0x50>
1c0051ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051b0:	2800018c 	ld.b	$r12,$r12,0
1c0051b4:	283faecd 	ld.b	$r13,$r22,-21(0xfeb)
1c0051b8:	5fffddac 	bne	$r13,$r12,-36(0x3ffdc) # 1c005194 <my_strchr+0x28>
1c0051bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051c0:	2800018c 	ld.b	$r12,$r12,0
1c0051c4:	283faecd 	ld.b	$r13,$r22,-21(0xfeb)
1c0051c8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0051d4 <my_strchr+0x68>
1c0051cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051d0:	50000800 	b	8(0x8) # 1c0051d8 <my_strchr+0x6c>
1c0051d4:	0015000c 	move	$r12,$r0
1c0051d8:	00150184 	move	$r4,$r12
1c0051dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0051e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0051e4:	4c000020 	jirl	$r0,$r1,0

1c0051e8 <processLocationData>:
processLocationData():
1c0051e8:	02bc8063 	addi.w	$r3,$r3,-224(0xf20)
1c0051ec:	29837061 	st.w	$r1,$r3,220(0xdc)
1c0051f0:	29836076 	st.w	$r22,$r3,216(0xd8)
1c0051f4:	02838076 	addi.w	$r22,$r3,224(0xe0)
1c0051f8:	02be22cd 	addi.w	$r13,$r22,-120(0xf88)
1c0051fc:	02811c0c 	addi.w	$r12,$r0,71(0x47)
1c005200:	00150186 	move	$r6,$r12
1c005204:	00150005 	move	$r5,$r0
1c005208:	001501a4 	move	$r4,$r13
1c00520c:	57e4dbff 	bl	-6952(0xfffe4d8) # 1c0036e4 <memset>
1c005210:	29bde2c0 	st.w	$r0,$r22,-136(0xf78)
1c005214:	29bdf2c0 	st.w	$r0,$r22,-132(0xf7c)
1c005218:	29be02c0 	st.w	$r0,$r22,-128(0xf80)
1c00521c:	297e12c0 	st.h	$r0,$r22,-124(0xf84)
1c005220:	293e1ac0 	st.b	$r0,$r22,-122(0xf86)
1c005224:	29bda2c0 	st.w	$r0,$r22,-152(0xf68)
1c005228:	29bdb2c0 	st.w	$r0,$r22,-148(0xf6c)
1c00522c:	29bdc2c0 	st.w	$r0,$r22,-144(0xf70)
1c005230:	297dd2c0 	st.h	$r0,$r22,-140(0xf74)
1c005234:	293ddac0 	st.b	$r0,$r22,-138(0xf76)
1c005238:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00523c:	50003000 	b	48(0x30) # 1c00526c <processLocationData+0x84>
1c005240:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005244:	57d7fbff 	bl	-10248(0xfffd7f8) # 1c002a3c <UART_ReceiveData>
1c005248:	0015008c 	move	$r12,$r4
1c00524c:	00005d8c 	ext.w.b	$r12,$r12
1c005250:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005254:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005258:	001035cd 	add.w	$r13,$r14,$r13
1c00525c:	293e61ac 	st.b	$r12,$r13,-104(0xf98)
1c005260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005268:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00526c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005270:	0281140c 	addi.w	$r12,$r0,69(0x45)
1c005274:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c005240 <processLocationData+0x58>
1c005278:	293f3ac0 	st.b	$r0,$r22,-50(0xfce)
1c00527c:	02be22cc 	addi.w	$r12,$r22,-120(0xf88)
1c005280:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005284:	029e30a5 	addi.w	$r5,$r5,1932(0x78c)
1c005288:	00150184 	move	$r4,$r12
1c00528c:	57fe13ff 	bl	-496(0xffffe10) # 1c00509c <my_strstr>
1c005290:	29bf62c4 	st.w	$r4,$r22,-40(0xfd8)
1c005294:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005298:	4001a580 	beqz	$r12,420(0x1a4) # 1c00543c <processLocationData+0x254>
1c00529c:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c0052a0:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c0052a4:	57fecbff 	bl	-312(0xffffec8) # 1c00516c <my_strchr>
1c0052a8:	29bf52c4 	st.w	$r4,$r22,-44(0xfd4)
1c0052ac:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0052b0:	40018d80 	beqz	$r12,396(0x18c) # 1c00543c <processLocationData+0x254>
1c0052b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0052b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0052bc:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c0052c0:	00150184 	move	$r4,$r12
1c0052c4:	57feabff 	bl	-344(0xffffea8) # 1c00516c <my_strchr>
1c0052c8:	29bf42c4 	st.w	$r4,$r22,-48(0xfd0)
1c0052cc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0052d0:	40016d80 	beqz	$r12,364(0x16c) # 1c00543c <processLocationData+0x254>
1c0052d4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0052d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0052dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0052e0:	02bde2cc 	addi.w	$r12,$r22,-136(0xf78)
1c0052e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0052e8:	50002400 	b	36(0x24) # 1c00530c <processLocationData+0x124>
1c0052ec:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0052f0:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0052f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0052f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0052fc:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c005300:	29bf92ce 	st.w	$r14,$r22,-28(0xfe4)
1c005304:	280001ad 	ld.b	$r13,$r13,0
1c005308:	2900018d 	st.b	$r13,$r12,0
1c00530c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005310:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005314:	6c0021ac 	bgeu	$r13,$r12,32(0x20) # 1c005334 <processLocationData+0x14c>
1c005318:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00531c:	2800018c 	ld.b	$r12,$r12,0
1c005320:	40001580 	beqz	$r12,20(0x14) # 1c005334 <processLocationData+0x14c>
1c005324:	02bde2cc 	addi.w	$r12,$r22,-136(0xf78)
1c005328:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c00532c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005330:	6bffbdac 	bltu	$r13,$r12,-68(0x3ffbc) # 1c0052ec <processLocationData+0x104>
1c005334:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005338:	29000180 	st.b	$r0,$r12,0
1c00533c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005340:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005344:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005348:	02bda2cc 	addi.w	$r12,$r22,-152(0xf68)
1c00534c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005350:	50002400 	b	36(0x24) # 1c005374 <processLocationData+0x18c>
1c005354:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005358:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c00535c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005360:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005364:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c005368:	29bf92ce 	st.w	$r14,$r22,-28(0xfe4)
1c00536c:	280001ad 	ld.b	$r13,$r13,0
1c005370:	2900018d 	st.b	$r13,$r12,0
1c005374:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005378:	2800018c 	ld.b	$r12,$r12,0
1c00537c:	40005580 	beqz	$r12,84(0x54) # 1c0053d0 <processLocationData+0x1e8>
1c005380:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005384:	2800018d 	ld.b	$r13,$r12,0
1c005388:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c00538c:	6400158d 	bge	$r12,$r13,20(0x14) # 1c0053a0 <processLocationData+0x1b8>
1c005390:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005394:	2800018d 	ld.b	$r13,$r12,0
1c005398:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00539c:	6400258d 	bge	$r12,$r13,36(0x24) # 1c0053c0 <processLocationData+0x1d8>
1c0053a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0053a4:	2800018d 	ld.b	$r13,$r12,0
1c0053a8:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c0053ac:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0053c0 <processLocationData+0x1d8>
1c0053b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0053b4:	2800018d 	ld.b	$r13,$r12,0
1c0053b8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
1c0053bc:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0053d0 <processLocationData+0x1e8>
1c0053c0:	02bda2cc 	addi.w	$r12,$r22,-152(0xf68)
1c0053c4:	0280398c 	addi.w	$r12,$r12,14(0xe)
1c0053c8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0053cc:	6bff89ac 	bltu	$r13,$r12,-120(0x3ff88) # 1c005354 <processLocationData+0x16c>
1c0053d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0053d4:	29000180 	st.b	$r0,$r12,0
1c0053d8:	02bda2ce 	addi.w	$r14,$r22,-152(0xf68)
1c0053dc:	02bde2cd 	addi.w	$r13,$r22,-136(0xf78)
1c0053e0:	02bcb2cc 	addi.w	$r12,$r22,-212(0xf2c)
1c0053e4:	001501c7 	move	$r7,$r14
1c0053e8:	001501a6 	move	$r6,$r13
1c0053ec:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0053f0:	0298b0a5 	addi.w	$r5,$r5,1580(0x62c)
1c0053f4:	00150184 	move	$r4,$r12
1c0053f8:	57d12fff 	bl	-11988(0xfffd12c) # 1c002524 <sprintf>
1c0053fc:	02bcb2cc 	addi.w	$r12,$r22,-212(0xf2c)
1c005400:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c005404:	50002800 	b	40(0x28) # 1c00542c <processLocationData+0x244>
1c005408:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00540c:	2800018c 	ld.b	$r12,$r12,0
1c005410:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005414:	00150185 	move	$r5,$r12
1c005418:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00541c:	57d577ff 	bl	-10892(0xfffd574) # 1c002990 <UART_SendData>
1c005420:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005424:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005428:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00542c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005430:	2800018c 	ld.b	$r12,$r12,0
1c005434:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c005408 <processLocationData+0x220>
1c005438:	50004400 	b	68(0x44) # 1c00547c <processLocationData+0x294>
1c00543c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005440:	50003000 	b	48(0x30) # 1c005470 <processLocationData+0x288>
1c005444:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005448:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00544c:	001031ac 	add.w	$r12,$r13,$r12
1c005450:	283e618c 	ld.b	$r12,$r12,-104(0xf98)
1c005454:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005458:	00150185 	move	$r5,$r12
1c00545c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005460:	57d533ff 	bl	-10960(0xfffd530) # 1c002990 <UART_SendData>
1c005464:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00546c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005470:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005474:	0281140c 	addi.w	$r12,$r0,69(0x45)
1c005478:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c005444 <processLocationData+0x25c>
1c00547c:	28837061 	ld.w	$r1,$r3,220(0xdc)
1c005480:	28836076 	ld.w	$r22,$r3,216(0xd8)
1c005484:	02838063 	addi.w	$r3,$r3,224(0xe0)
1c005488:	4c000020 	jirl	$r0,$r1,0

1c00548c <M780E_send_location_message>:
M780E_send_location_message():
1c00548c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005490:	29803061 	st.w	$r1,$r3,12(0xc)
1c005494:	29802076 	st.w	$r22,$r3,8(0x8)
1c005498:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00549c:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0054a0:	029640a5 	addi.w	$r5,$r5,1424(0x590)
1c0054a4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0054a8:	57d537ff 	bl	-10956(0xfffd534) # 1c0029dc <UART_SendString>
1c0054ac:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0054b0:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c0054b4:	029610c6 	addi.w	$r6,$r6,1412(0x584)
1c0054b8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0054bc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0054c0:	540cb000 	bl	3248(0xcb0) # 1c006170 <OLED_Show_Str>
1c0054c4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0054c8:	57e1a3ff 	bl	-7776(0xfffe1a0) # 1c003668 <delay_ms>
1c0054cc:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0054d0:	0295b0a5 	addi.w	$r5,$r5,1388(0x56c)
1c0054d4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0054d8:	57d507ff 	bl	-11004(0xfffd504) # 1c0029dc <UART_SendString>
1c0054dc:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0054e0:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c0054e4:	029580c6 	addi.w	$r6,$r6,1376(0x560)
1c0054e8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0054ec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0054f0:	540c8000 	bl	3200(0xc80) # 1c006170 <OLED_Show_Str>
1c0054f4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0054f8:	57e173ff 	bl	-7824(0xfffe170) # 1c003668 <delay_ms>
1c0054fc:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005500:	029520a5 	addi.w	$r5,$r5,1352(0x548)
1c005504:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005508:	57d4d7ff 	bl	-11052(0xfffd4d4) # 1c0029dc <UART_SendString>
1c00550c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005510:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c005514:	029500c6 	addi.w	$r6,$r6,1344(0x540)
1c005518:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00551c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005520:	540c5000 	bl	3152(0xc50) # 1c006170 <OLED_Show_Str>
1c005524:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005528:	57e143ff 	bl	-7872(0xfffe140) # 1c003668 <delay_ms>
1c00552c:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005530:	0294a0a5 	addi.w	$r5,$r5,1320(0x528)
1c005534:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005538:	57d4a7ff 	bl	-11100(0xfffd4a4) # 1c0029dc <UART_SendString>
1c00553c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005540:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c005544:	029480c6 	addi.w	$r6,$r6,1312(0x520)
1c005548:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00554c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005550:	540c2000 	bl	3104(0xc20) # 1c006170 <OLED_Show_Str>
1c005554:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005558:	57e113ff 	bl	-7920(0xfffe110) # 1c003668 <delay_ms>
1c00555c:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005560:	029420a5 	addi.w	$r5,$r5,1288(0x508)
1c005564:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005568:	57d477ff 	bl	-11148(0xfffd474) # 1c0029dc <UART_SendString>
1c00556c:	02808805 	addi.w	$r5,$r0,34(0x22)
1c005570:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005574:	57d41fff 	bl	-11236(0xfffd41c) # 1c002990 <UART_SendData>
1c005578:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c00557c:	0293f0a5 	addi.w	$r5,$r5,1276(0x4fc)
1c005580:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005584:	57d45bff 	bl	-11176(0xfffd458) # 1c0029dc <UART_SendString>
1c005588:	02808805 	addi.w	$r5,$r0,34(0x22)
1c00558c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005590:	57d403ff 	bl	-11264(0xfffd400) # 1c002990 <UART_SendData>
1c005594:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005598:	0293a0a5 	addi.w	$r5,$r5,1256(0x4e8)
1c00559c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0055a0:	57d43fff 	bl	-11204(0xfffd43c) # 1c0029dc <UART_SendString>
1c0055a4:	02808805 	addi.w	$r5,$r0,34(0x22)
1c0055a8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0055ac:	57d3e7ff 	bl	-11292(0xfffd3e4) # 1c002990 <UART_SendData>
1c0055b0:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0055b4:	029340a5 	addi.w	$r5,$r5,1232(0x4d0)
1c0055b8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0055bc:	57d423ff 	bl	-11232(0xfffd420) # 1c0029dc <UART_SendString>
1c0055c0:	02808805 	addi.w	$r5,$r0,34(0x22)
1c0055c4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0055c8:	57d3cbff 	bl	-11320(0xfffd3c8) # 1c002990 <UART_SendData>
1c0055cc:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0055d0:	0292f0a5 	addi.w	$r5,$r5,1212(0x4bc)
1c0055d4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0055d8:	57d407ff 	bl	-11260(0xfffd404) # 1c0029dc <UART_SendString>
1c0055dc:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0055e0:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c0055e4:	0292b0c6 	addi.w	$r6,$r6,1196(0x4ac)
1c0055e8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0055ec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0055f0:	540b8000 	bl	2944(0xb80) # 1c006170 <OLED_Show_Str>
1c0055f4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0055f8:	57e073ff 	bl	-8080(0xfffe070) # 1c003668 <delay_ms>
1c0055fc:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005600:	0291a0a5 	addi.w	$r5,$r5,1128(0x468)
1c005604:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005608:	57d3d7ff 	bl	-11308(0xfffd3d4) # 1c0029dc <UART_SendString>
1c00560c:	02808805 	addi.w	$r5,$r0,34(0x22)
1c005610:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005614:	57d37fff 	bl	-11396(0xfffd37c) # 1c002990 <UART_SendData>
1c005618:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c00561c:	0291e0a5 	addi.w	$r5,$r5,1144(0x478)
1c005620:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005624:	57d3bbff 	bl	-11336(0xfffd3b8) # 1c0029dc <UART_SendString>
1c005628:	02808805 	addi.w	$r5,$r0,34(0x22)
1c00562c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005630:	57d363ff 	bl	-11424(0xfffd360) # 1c002990 <UART_SendData>
1c005634:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005638:	029120a5 	addi.w	$r5,$r5,1096(0x448)
1c00563c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005640:	57d39fff 	bl	-11364(0xfffd39c) # 1c0029dc <UART_SendString>
1c005644:	02808805 	addi.w	$r5,$r0,34(0x22)
1c005648:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c00564c:	57d347ff 	bl	-11452(0xfffd344) # 1c002990 <UART_SendData>
1c005650:	02808805 	addi.w	$r5,$r0,34(0x22)
1c005654:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005658:	57d33bff 	bl	-11464(0xfffd338) # 1c002990 <UART_SendData>
1c00565c:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005660:	0290b0a5 	addi.w	$r5,$r5,1068(0x42c)
1c005664:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005668:	57d377ff 	bl	-11404(0xfffd374) # 1c0029dc <UART_SendString>
1c00566c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005670:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c005674:	029090c6 	addi.w	$r6,$r6,1060(0x424)
1c005678:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00567c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005680:	540af000 	bl	2800(0xaf0) # 1c006170 <OLED_Show_Str>
1c005684:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005688:	57dfe3ff 	bl	-8224(0xfffdfe0) # 1c003668 <delay_ms>
1c00568c:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c005690:	029030a5 	addi.w	$r5,$r5,1036(0x40c)
1c005694:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c005698:	57d347ff 	bl	-11452(0xfffd344) # 1c0029dc <UART_SendString>
1c00569c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0056a0:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c0056a4:	029020c6 	addi.w	$r6,$r6,1032(0x408)
1c0056a8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0056ac:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0056b0:	540ac000 	bl	2752(0xac0) # 1c006170 <OLED_Show_Str>
1c0056b4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0056b8:	57dfb3ff 	bl	-8272(0xfffdfb0) # 1c003668 <delay_ms>
1c0056bc:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0056c0:	028fc0a5 	addi.w	$r5,$r5,1008(0x3f0)
1c0056c4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0056c8:	57d317ff 	bl	-11500(0xfffd314) # 1c0029dc <UART_SendString>
1c0056cc:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0056d0:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c0056d4:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c0056d8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0056dc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0056e0:	540a9000 	bl	2704(0xa90) # 1c006170 <OLED_Show_Str>
1c0056e4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0056e8:	57df83ff 	bl	-8320(0xfffdf80) # 1c003668 <delay_ms>
1c0056ec:	1c0000a5 	pcaddu12i	$r5,5(0x5)
1c0056f0:	028f50a5 	addi.w	$r5,$r5,980(0x3d4)
1c0056f4:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0056f8:	57d2e7ff 	bl	-11548(0xfffd2e4) # 1c0029dc <UART_SendString>
1c0056fc:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005700:	1c0000a6 	pcaddu12i	$r6,5(0x5)
1c005704:	028f50c6 	addi.w	$r6,$r6,980(0x3d4)
1c005708:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00570c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005710:	540a6000 	bl	2656(0xa60) # 1c006170 <OLED_Show_Str>
1c005714:	57fad7ff 	bl	-1324(0xffffad4) # 1c0051e8 <processLocationData>
1c005718:	03400000 	andi	$r0,$r0,0x0
1c00571c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005720:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005724:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005728:	4c000020 	jirl	$r0,$r1,0

1c00572c <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c00572c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005730:	29803061 	st.w	$r1,$r3,12(0xc)
1c005734:	29802076 	st.w	$r22,$r3,8(0x8)
1c005738:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00573c:	57f68bff 	bl	-2424(0xffff688) # 1c004dc4 <IIC_Init>
1c005740:	03400000 	andi	$r0,$r0,0x0
1c005744:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005748:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00574c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005750:	4c000020 	jirl	$r0,$r1,0

1c005754 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005754:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005758:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00575c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005764:	0015008c 	move	$r12,$r4
1c005768:	001500ad 	move	$r13,$r5
1c00576c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005770:	001501ac 	move	$r12,$r13
1c005774:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005778:	57f727ff 	bl	-2268(0xffff724) # 1c004e9c <IIC_Start>
1c00577c:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005780:	57f873ff 	bl	-1936(0xffff870) # 1c004ff0 <IIC_Send_Byte>
1c005784:	57f7dbff 	bl	-2088(0xffff7d8) # 1c004f5c <IIC_Wait_Ack>
1c005788:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00578c:	00150184 	move	$r4,$r12
1c005790:	57f863ff 	bl	-1952(0xffff860) # 1c004ff0 <IIC_Send_Byte>
1c005794:	57f7cbff 	bl	-2104(0xffff7c8) # 1c004f5c <IIC_Wait_Ack>
1c005798:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00579c:	00150184 	move	$r4,$r12
1c0057a0:	57f853ff 	bl	-1968(0xffff850) # 1c004ff0 <IIC_Send_Byte>
1c0057a4:	57f7bbff 	bl	-2120(0xffff7b8) # 1c004f5c <IIC_Wait_Ack>
1c0057a8:	57f757ff 	bl	-2220(0xffff754) # 1c004efc <IIC_Stop>
1c0057ac:	03400000 	andi	$r0,$r0,0x0
1c0057b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0057b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0057b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0057bc:	4c000020 	jirl	$r0,$r1,0

1c0057c0 <OLED_Set_Pos>:
OLED_Set_Pos():
1c0057c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0057c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0057c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057d0:	0015008c 	move	$r12,$r4
1c0057d4:	001500ad 	move	$r13,$r5
1c0057d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057dc:	001501ac 	move	$r12,$r13
1c0057e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0057e4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057e8:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0057ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057f0:	00150005 	move	$r5,$r0
1c0057f4:	00150184 	move	$r4,$r12
1c0057f8:	57ff5fff 	bl	-164(0xfffff5c) # 1c005754 <OLED_WR_Byte>
1c0057fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005800:	0044918c 	srli.w	$r12,$r12,0x4
1c005804:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005808:	0380418c 	ori	$r12,$r12,0x10
1c00580c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005810:	00150005 	move	$r5,$r0
1c005814:	00150184 	move	$r4,$r12
1c005818:	57ff3fff 	bl	-196(0xfffff3c) # 1c005754 <OLED_WR_Byte>
1c00581c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005820:	03403d8c 	andi	$r12,$r12,0xf
1c005824:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005828:	00150005 	move	$r5,$r0
1c00582c:	00150184 	move	$r4,$r12
1c005830:	57ff27ff 	bl	-220(0xfffff24) # 1c005754 <OLED_WR_Byte>
1c005834:	03400000 	andi	$r0,$r0,0x0
1c005838:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00583c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005840:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005844:	4c000020 	jirl	$r0,$r1,0

1c005848 <OLED_Clear>:
OLED_Clear():
1c005848:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00584c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005850:	29806076 	st.w	$r22,$r3,24(0x18)
1c005854:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005858:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00585c:	50006800 	b	104(0x68) # 1c0058c4 <OLED_Clear+0x7c>
1c005860:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005864:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005868:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00586c:	00150005 	move	$r5,$r0
1c005870:	00150184 	move	$r4,$r12
1c005874:	57fee3ff 	bl	-288(0xffffee0) # 1c005754 <OLED_WR_Byte>
1c005878:	00150005 	move	$r5,$r0
1c00587c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005880:	57fed7ff 	bl	-300(0xffffed4) # 1c005754 <OLED_WR_Byte>
1c005884:	00150005 	move	$r5,$r0
1c005888:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00588c:	57fecbff 	bl	-312(0xffffec8) # 1c005754 <OLED_WR_Byte>
1c005890:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005894:	50001c00 	b	28(0x1c) # 1c0058b0 <OLED_Clear+0x68>
1c005898:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00589c:	00150004 	move	$r4,$r0
1c0058a0:	57feb7ff 	bl	-332(0xffffeb4) # 1c005754 <OLED_WR_Byte>
1c0058a4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058ac:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0058b0:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c0058b4:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005898 <OLED_Clear+0x50>
1c0058b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058c8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0058cc:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005860 <OLED_Clear+0x18>
1c0058d0:	03400000 	andi	$r0,$r0,0x0
1c0058d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0058d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0058dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0058e0:	4c000020 	jirl	$r0,$r1,0

1c0058e4 <OLED_Init>:
OLED_Init():
1c0058e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058f4:	57fe3bff 	bl	-456(0xffffe38) # 1c00572c <OLED_Hardware_Init>
1c0058f8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058fc:	57dd6fff 	bl	-8852(0xfffdd6c) # 1c003668 <delay_ms>
1c005900:	57ff4bff 	bl	-184(0xfffff48) # 1c005848 <OLED_Clear>
1c005904:	00150005 	move	$r5,$r0
1c005908:	00150004 	move	$r4,$r0
1c00590c:	57feb7ff 	bl	-332(0xffffeb4) # 1c0057c0 <OLED_Set_Pos>
1c005910:	00150005 	move	$r5,$r0
1c005914:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005918:	57fe3fff 	bl	-452(0xffffe3c) # 1c005754 <OLED_WR_Byte>
1c00591c:	00150005 	move	$r5,$r0
1c005920:	00150004 	move	$r4,$r0
1c005924:	57fe33ff 	bl	-464(0xffffe30) # 1c005754 <OLED_WR_Byte>
1c005928:	00150005 	move	$r5,$r0
1c00592c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005930:	57fe27ff 	bl	-476(0xffffe24) # 1c005754 <OLED_WR_Byte>
1c005934:	00150005 	move	$r5,$r0
1c005938:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00593c:	57fe1bff 	bl	-488(0xffffe18) # 1c005754 <OLED_WR_Byte>
1c005940:	00150005 	move	$r5,$r0
1c005944:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005948:	57fe0fff 	bl	-500(0xffffe0c) # 1c005754 <OLED_WR_Byte>
1c00594c:	00150005 	move	$r5,$r0
1c005950:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005954:	57fe03ff 	bl	-512(0xffffe00) # 1c005754 <OLED_WR_Byte>
1c005958:	00150005 	move	$r5,$r0
1c00595c:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005960:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005754 <OLED_WR_Byte>
1c005964:	00150005 	move	$r5,$r0
1c005968:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c00596c:	57fdebff 	bl	-536(0xffffde8) # 1c005754 <OLED_WR_Byte>
1c005970:	00150005 	move	$r5,$r0
1c005974:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005978:	57fddfff 	bl	-548(0xffffddc) # 1c005754 <OLED_WR_Byte>
1c00597c:	00150005 	move	$r5,$r0
1c005980:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005984:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005754 <OLED_WR_Byte>
1c005988:	00150005 	move	$r5,$r0
1c00598c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005990:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005754 <OLED_WR_Byte>
1c005994:	00150005 	move	$r5,$r0
1c005998:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00599c:	57fdbbff 	bl	-584(0xffffdb8) # 1c005754 <OLED_WR_Byte>
1c0059a0:	00150005 	move	$r5,$r0
1c0059a4:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0059a8:	57fdafff 	bl	-596(0xffffdac) # 1c005754 <OLED_WR_Byte>
1c0059ac:	00150005 	move	$r5,$r0
1c0059b0:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0059b4:	57fda3ff 	bl	-608(0xffffda0) # 1c005754 <OLED_WR_Byte>
1c0059b8:	00150005 	move	$r5,$r0
1c0059bc:	00150004 	move	$r4,$r0
1c0059c0:	57fd97ff 	bl	-620(0xffffd94) # 1c005754 <OLED_WR_Byte>
1c0059c4:	00150005 	move	$r5,$r0
1c0059c8:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c0059cc:	57fd8bff 	bl	-632(0xffffd88) # 1c005754 <OLED_WR_Byte>
1c0059d0:	00150005 	move	$r5,$r0
1c0059d4:	02820004 	addi.w	$r4,$r0,128(0x80)
1c0059d8:	57fd7fff 	bl	-644(0xffffd7c) # 1c005754 <OLED_WR_Byte>
1c0059dc:	00150005 	move	$r5,$r0
1c0059e0:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0059e4:	57fd73ff 	bl	-656(0xffffd70) # 1c005754 <OLED_WR_Byte>
1c0059e8:	00150005 	move	$r5,$r0
1c0059ec:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c0059f0:	57fd67ff 	bl	-668(0xffffd64) # 1c005754 <OLED_WR_Byte>
1c0059f4:	00150005 	move	$r5,$r0
1c0059f8:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0059fc:	57fd5bff 	bl	-680(0xffffd58) # 1c005754 <OLED_WR_Byte>
1c005a00:	00150005 	move	$r5,$r0
1c005a04:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005a08:	57fd4fff 	bl	-692(0xffffd4c) # 1c005754 <OLED_WR_Byte>
1c005a0c:	00150005 	move	$r5,$r0
1c005a10:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005a14:	57fd43ff 	bl	-704(0xffffd40) # 1c005754 <OLED_WR_Byte>
1c005a18:	00150005 	move	$r5,$r0
1c005a1c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005a20:	57fd37ff 	bl	-716(0xffffd34) # 1c005754 <OLED_WR_Byte>
1c005a24:	00150005 	move	$r5,$r0
1c005a28:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005a2c:	57fd2bff 	bl	-728(0xffffd28) # 1c005754 <OLED_WR_Byte>
1c005a30:	00150005 	move	$r5,$r0
1c005a34:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005a38:	57fd1fff 	bl	-740(0xffffd1c) # 1c005754 <OLED_WR_Byte>
1c005a3c:	00150005 	move	$r5,$r0
1c005a40:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005a44:	57fd13ff 	bl	-752(0xffffd10) # 1c005754 <OLED_WR_Byte>
1c005a48:	00150005 	move	$r5,$r0
1c005a4c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005a50:	57fd07ff 	bl	-764(0xffffd04) # 1c005754 <OLED_WR_Byte>
1c005a54:	00150005 	move	$r5,$r0
1c005a58:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005a5c:	57fcfbff 	bl	-776(0xffffcf8) # 1c005754 <OLED_WR_Byte>
1c005a60:	00150005 	move	$r5,$r0
1c005a64:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005a68:	57fcefff 	bl	-788(0xffffcec) # 1c005754 <OLED_WR_Byte>
1c005a6c:	00150005 	move	$r5,$r0
1c005a70:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005a74:	57fce3ff 	bl	-800(0xffffce0) # 1c005754 <OLED_WR_Byte>
1c005a78:	00150005 	move	$r5,$r0
1c005a7c:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005a80:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005754 <OLED_WR_Byte>
1c005a84:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005848 <OLED_Clear>
1c005a88:	00150005 	move	$r5,$r0
1c005a8c:	00150004 	move	$r4,$r0
1c005a90:	57fd33ff 	bl	-720(0xffffd30) # 1c0057c0 <OLED_Set_Pos>
1c005a94:	03400000 	andi	$r0,$r0,0x0
1c005a98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005a9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005aa0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005aa4:	4c000020 	jirl	$r0,$r1,0

1c005aa8 <OLED_ShowChar>:
OLED_ShowChar():
1c005aa8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005aac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ab0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ab4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ab8:	0015008c 	move	$r12,$r4
1c005abc:	001500af 	move	$r15,$r5
1c005ac0:	001500ce 	move	$r14,$r6
1c005ac4:	001500ed 	move	$r13,$r7
1c005ac8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005acc:	001501ec 	move	$r12,$r15
1c005ad0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005ad4:	001501cc 	move	$r12,$r14
1c005ad8:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005adc:	001501ac 	move	$r12,$r13
1c005ae0:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005ae4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ae8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005aec:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c005af0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005af4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005b00 <OLED_ShowChar+0x58>
1c005af8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005afc:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005b00:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005b04:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005b08:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005b0c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b10:	50009800 	b	152(0x98) # 1c005ba8 <OLED_ShowChar+0x100>
1c005b14:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b18:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005b1c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b20:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b28:	001031ac 	add.w	$r12,$r13,$r12
1c005b2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b30:	00150185 	move	$r5,$r12
1c005b34:	001501c4 	move	$r4,$r14
1c005b38:	57fc8bff 	bl	-888(0xffffc88) # 1c0057c0 <OLED_Set_Pos>
1c005b3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005b40:	50004800 	b	72(0x48) # 1c005b88 <OLED_ShowChar+0xe0>
1c005b44:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c005b48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b4c:	00408d8e 	slli.w	$r14,$r12,0x3
1c005b50:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005b54:	001031cc 	add.w	$r12,$r14,$r12
1c005b58:	1c0000ae 	pcaddu12i	$r14,5(0x5)
1c005b5c:	02be01ce 	addi.w	$r14,$r14,-128(0xf80)
1c005b60:	004091ad 	slli.w	$r13,$r13,0x4
1c005b64:	001035cd 	add.w	$r13,$r14,$r13
1c005b68:	001031ac 	add.w	$r12,$r13,$r12
1c005b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c005b70:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005b74:	00150184 	move	$r4,$r12
1c005b78:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005754 <OLED_WR_Byte>
1c005b7c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005b80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b84:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005b88:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005b8c:	0044858c 	srli.w	$r12,$r12,0x1
1c005b90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b94:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005b98:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c005b44 <OLED_ShowChar+0x9c>
1c005b9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ba0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ba4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ba8:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005bac:	00448d8c 	srli.w	$r12,$r12,0x3
1c005bb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005bb4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005bb8:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005b14 <OLED_ShowChar+0x6c>
1c005bbc:	03400000 	andi	$r0,$r0,0x0
1c005bc0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005bc4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005bc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bcc:	4c000020 	jirl	$r0,$r1,0

1c005bd0 <OLED_ShowString>:
OLED_ShowString():
1c005bd0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005bd4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005bd8:	29806076 	st.w	$r22,$r3,24(0x18)
1c005bdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005be0:	0015008c 	move	$r12,$r4
1c005be4:	001500ae 	move	$r14,$r5
1c005be8:	29bfa2c6 	st.w	$r6,$r22,-24(0xfe8)
1c005bec:	001500ed 	move	$r13,$r7
1c005bf0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005bf4:	001501cc 	move	$r12,$r14
1c005bf8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005bfc:	001501ac 	move	$r12,$r13
1c005c00:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c005c04:	5000c400 	b	196(0xc4) # 1c005cc8 <OLED_ShowString+0xf8>
1c005c08:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c005c0c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005c10:	0044858c 	srli.w	$r12,$r12,0x1
1c005c14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c18:	0015018e 	move	$r14,$r12
1c005c1c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005c20:	0011398c 	sub.w	$r12,$r12,$r14
1c005c24:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005c50 <OLED_ShowString+0x80>
1c005c28:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c005c2c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005c30:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c38:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c3c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005c40:	001031ac 	add.w	$r12,$r13,$r12
1c005c44:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c48:	03401d8c 	andi	$r12,$r12,0x7
1c005c4c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005c50:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005c54:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005c58:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c60:	0015018e 	move	$r14,$r12
1c005c64:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c68:	0011398c 	sub.w	$r12,$r12,$r14
1c005c6c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005c74 <OLED_ShowString+0xa4>
1c005c70:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005c74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005c78:	2800018c 	ld.b	$r12,$r12,0
1c005c7c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005c80:	2a3f9ecf 	ld.bu	$r15,$r22,-25(0xfe7)
1c005c84:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005c88:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005c8c:	001501e7 	move	$r7,$r15
1c005c90:	001501c6 	move	$r6,$r14
1c005c94:	001501a5 	move	$r5,$r13
1c005c98:	00150184 	move	$r4,$r12
1c005c9c:	57fe0fff 	bl	-500(0xffffe0c) # 1c005aa8 <OLED_ShowChar>
1c005ca0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005ca4:	0044858c 	srli.w	$r12,$r12,0x1
1c005ca8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005cac:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005cb0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005cb4:	001031ac 	add.w	$r12,$r13,$r12
1c005cb8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005cbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005cc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005cc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ccc:	2800018d 	ld.b	$r13,$r12,0
1c005cd0:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005cd4:	580015ac 	beq	$r13,$r12,20(0x14) # 1c005ce8 <OLED_ShowString+0x118>
1c005cd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005cdc:	2800018d 	ld.b	$r13,$r12,0
1c005ce0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005ce4:	63ff258d 	blt	$r12,$r13,-220(0x3ff24) # 1c005c08 <OLED_ShowString+0x38>
1c005ce8:	03400000 	andi	$r0,$r0,0x0
1c005cec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005cf0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005cf4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005cf8:	4c000020 	jirl	$r0,$r1,0

1c005cfc <OLED_ShowInt32Num>:
OLED_ShowInt32Num():
1c005cfc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005d00:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005d04:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005d08:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005d0c:	0015008c 	move	$r12,$r4
1c005d10:	001500af 	move	$r15,$r5
1c005d14:	29bf22c6 	st.w	$r6,$r22,-56(0xfc8)
1c005d18:	001500ee 	move	$r14,$r7
1c005d1c:	0015010d 	move	$r13,$r8
1c005d20:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c005d24:	001501ec 	move	$r12,$r15
1c005d28:	297f32cc 	st.h	$r12,$r22,-52(0xfcc)
1c005d2c:	001501cc 	move	$r12,$r14
1c005d30:	293f1ecc 	st.b	$r12,$r22,-57(0xfc7)
1c005d34:	001501ac 	move	$r12,$r13
1c005d38:	293f1acc 	st.b	$r12,$r22,-58(0xfc6)
1c005d3c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005d40:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005d44:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c005d48:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005d4c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005d50:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d54:	2a3f1ecd 	ld.bu	$r13,$r22,-57(0xfc7)
1c005d58:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005d5c:	6800bd8d 	bltu	$r12,$r13,188(0xbc) # 1c005e18 <OLED_ShowInt32Num+0x11c>
1c005d60:	2a3f1ecc 	ld.bu	$r12,$r22,-57(0xfc7)
1c005d64:	02bf92cd 	addi.w	$r13,$r22,-28(0xfe4)
1c005d68:	00150186 	move	$r6,$r12
1c005d6c:	1c0000c5 	pcaddu12i	$r5,6(0x6)
1c005d70:	02bac0a5 	addi.w	$r5,$r5,-336(0xeb0)
1c005d74:	001501a4 	move	$r4,$r13
1c005d78:	57c7afff 	bl	-14420(0xfffc7ac) # 1c002524 <sprintf>
1c005d7c:	02bf92cd 	addi.w	$r13,$r22,-28(0xfe4)
1c005d80:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c005d84:	28bf22c6 	ld.w	$r6,$r22,-56(0xfc8)
1c005d88:	001501a5 	move	$r5,$r13
1c005d8c:	00150184 	move	$r4,$r12
1c005d90:	57c797ff 	bl	-14444(0xfffc794) # 1c002524 <sprintf>
1c005d94:	50006c00 	b	108(0x6c) # 1c005e00 <OLED_ShowInt32Num+0x104>
1c005d98:	2a3f1acc 	ld.bu	$r12,$r22,-58(0xfc6)
1c005d9c:	0044858c 	srli.w	$r12,$r12,0x1
1c005da0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005da4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005da8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005dac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005db0:	001c31ac 	mul.w	$r12,$r13,$r12
1c005db4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005db8:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c005dbc:	001031ac 	add.w	$r12,$r13,$r12
1c005dc0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005dc4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005dc8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005dcc:	001035cd 	add.w	$r13,$r14,$r13
1c005dd0:	283fa1ad 	ld.b	$r13,$r13,-24(0xfe8)
1c005dd4:	006781ae 	bstrpick.w	$r14,$r13,0x7,0x0
1c005dd8:	2a3f1acf 	ld.bu	$r15,$r22,-58(0xfc6)
1c005ddc:	2a7f32cd 	ld.hu	$r13,$r22,-52(0xfcc)
1c005de0:	001501e7 	move	$r7,$r15
1c005de4:	001501c6 	move	$r6,$r14
1c005de8:	001501a5 	move	$r5,$r13
1c005dec:	00150184 	move	$r4,$r12
1c005df0:	57fcbbff 	bl	-840(0xffffcb8) # 1c005aa8 <OLED_ShowChar>
1c005df4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005df8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dfc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e04:	02bf62cd 	addi.w	$r13,$r22,-40(0xfd8)
1c005e08:	001031ac 	add.w	$r12,$r13,$r12
1c005e0c:	2800018c 	ld.b	$r12,$r12,0
1c005e10:	47ff899f 	bnez	$r12,-120(0x7fff88) # 1c005d98 <OLED_ShowInt32Num+0x9c>
1c005e14:	50000800 	b	8(0x8) # 1c005e1c <OLED_ShowInt32Num+0x120>
1c005e18:	03400000 	andi	$r0,$r0,0x0
1c005e1c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005e20:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005e24:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005e28:	4c000020 	jirl	$r0,$r1,0

1c005e2c <OLED_DrawFont16>:
OLED_DrawFont16():
1c005e2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e3c:	0015008c 	move	$r12,$r4
1c005e40:	001500ad 	move	$r13,$r5
1c005e44:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005e48:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005e4c:	001501ac 	move	$r12,$r13
1c005e50:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005e54:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e58:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005e5c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005e60:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005e64:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005e68:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005e6c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005e70:	50013800 	b	312(0x138) # 1c005fa8 <OLED_DrawFont16+0x17c>
1c005e74:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005e78:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e7c:	028941ad 	addi.w	$r13,$r13,592(0x250)
1c005e80:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005e84:	001c31cc 	mul.w	$r12,$r14,$r12
1c005e88:	001031ac 	add.w	$r12,$r13,$r12
1c005e8c:	2a00018d 	ld.bu	$r13,$r12,0
1c005e90:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e94:	2a00018c 	ld.bu	$r12,$r12,0
1c005e98:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c005f9c <OLED_DrawFont16+0x170>
1c005e9c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005ea0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005ea4:	0288a1ad 	addi.w	$r13,$r13,552(0x228)
1c005ea8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005eac:	001c31cc 	mul.w	$r12,$r14,$r12
1c005eb0:	001031ac 	add.w	$r12,$r13,$r12
1c005eb4:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005eb8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ebc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ec0:	2a00018c 	ld.bu	$r12,$r12,0
1c005ec4:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c005f9c <OLED_DrawFont16+0x170>
1c005ec8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005ecc:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005ed0:	0287f1ad 	addi.w	$r13,$r13,508(0x1fc)
1c005ed4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005ed8:	001c31cc 	mul.w	$r12,$r14,$r12
1c005edc:	001031ac 	add.w	$r12,$r13,$r12
1c005ee0:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c005ee4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ee8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005eec:	2a00018c 	ld.bu	$r12,$r12,0
1c005ef0:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005f9c <OLED_DrawFont16+0x170>
1c005ef4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005ef8:	50009400 	b	148(0x94) # 1c005f8c <OLED_DrawFont16+0x160>
1c005efc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005f00:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005f04:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005f08:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005f0c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f10:	001031ac 	add.w	$r12,$r13,$r12
1c005f14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005f18:	00150185 	move	$r5,$r12
1c005f1c:	001501c4 	move	$r4,$r14
1c005f20:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c0057c0 <OLED_Set_Pos>
1c005f24:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f28:	50004c00 	b	76(0x4c) # 1c005f74 <OLED_DrawFont16+0x148>
1c005f2c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005f30:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f34:	0040918d 	slli.w	$r13,$r12,0x4
1c005f38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f3c:	001031ad 	add.w	$r13,$r13,$r12
1c005f40:	1c0000ae 	pcaddu12i	$r14,5(0x5)
1c005f44:	028621ce 	addi.w	$r14,$r14,392(0x188)
1c005f48:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005f4c:	001c31ec 	mul.w	$r12,$r15,$r12
1c005f50:	001031cc 	add.w	$r12,$r14,$r12
1c005f54:	0010358c 	add.w	$r12,$r12,$r13
1c005f58:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005f5c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005f60:	00150184 	move	$r4,$r12
1c005f64:	57f7f3ff 	bl	-2064(0xffff7f0) # 1c005754 <OLED_WR_Byte>
1c005f68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f74:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f78:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005f7c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005f2c <OLED_DrawFont16+0x100>
1c005f80:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f88:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f8c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005f90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f94:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005efc <OLED_DrawFont16+0xd0>
1c005f98:	50001c00 	b	28(0x1c) # 1c005fb4 <OLED_DrawFont16+0x188>
1c005f9c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005fa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fa4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005fa8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005fac:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005fb0:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c005e74 <OLED_DrawFont16+0x48>
1c005fb4:	03400000 	andi	$r0,$r0,0x0
1c005fb8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fc4:	4c000020 	jirl	$r0,$r1,0

1c005fc8 <OLED_DrawFont32>:
OLED_DrawFont32():
1c005fc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005fcc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005fd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005fd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005fd8:	0015008c 	move	$r12,$r4
1c005fdc:	001500ad 	move	$r13,$r5
1c005fe0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005fe4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005fe8:	001501ac 	move	$r12,$r13
1c005fec:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005ff0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ff4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005ff8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005ffc:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c006000:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c006004:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006008:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00600c:	50014400 	b	324(0x144) # 1c006150 <OLED_DrawFont32+0x188>
1c006010:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006014:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c006018:	0282d1ad 	addi.w	$r13,$r13,180(0xb4)
1c00601c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c006020:	001c31cc 	mul.w	$r12,$r14,$r12
1c006024:	001031ac 	add.w	$r12,$r13,$r12
1c006028:	2a00018c 	ld.bu	$r12,$r12,0
1c00602c:	0015018d 	move	$r13,$r12
1c006030:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006034:	2800018c 	ld.b	$r12,$r12,0
1c006038:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c006144 <OLED_DrawFont32+0x17c>
1c00603c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006040:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c006044:	028221ad 	addi.w	$r13,$r13,136(0x88)
1c006048:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00604c:	001c31cc 	mul.w	$r12,$r14,$r12
1c006050:	001031ac 	add.w	$r12,$r13,$r12
1c006054:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006058:	0015018d 	move	$r13,$r12
1c00605c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006060:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006064:	2800018c 	ld.b	$r12,$r12,0
1c006068:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c006144 <OLED_DrawFont32+0x17c>
1c00606c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c006070:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c006074:	028161ad 	addi.w	$r13,$r13,88(0x58)
1c006078:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00607c:	001c31cc 	mul.w	$r12,$r14,$r12
1c006080:	001031ac 	add.w	$r12,$r13,$r12
1c006084:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006088:	0015018d 	move	$r13,$r12
1c00608c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006090:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006094:	2800018c 	ld.b	$r12,$r12,0
1c006098:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c006144 <OLED_DrawFont32+0x17c>
1c00609c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0060a0:	50009400 	b	148(0x94) # 1c006134 <OLED_DrawFont32+0x16c>
1c0060a4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0060a8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0060ac:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0060b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0060b4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060b8:	001031ac 	add.w	$r12,$r13,$r12
1c0060bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0060c0:	00150185 	move	$r5,$r12
1c0060c4:	001501c4 	move	$r4,$r14
1c0060c8:	57f6fbff 	bl	-2312(0xffff6f8) # 1c0057c0 <OLED_Set_Pos>
1c0060cc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0060d0:	50004c00 	b	76(0x4c) # 1c00611c <OLED_DrawFont32+0x154>
1c0060d4:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0060d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0060dc:	0040958d 	slli.w	$r13,$r12,0x5
1c0060e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0060e4:	001031ad 	add.w	$r13,$r13,$r12
1c0060e8:	1c0000ae 	pcaddu12i	$r14,5(0x5)
1c0060ec:	0283e1ce 	addi.w	$r14,$r14,248(0xf8)
1c0060f0:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0060f4:	001c31ec 	mul.w	$r12,$r15,$r12
1c0060f8:	001031cc 	add.w	$r12,$r14,$r12
1c0060fc:	0010358c 	add.w	$r12,$r12,$r13
1c006100:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006104:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006108:	00150184 	move	$r4,$r12
1c00610c:	57f64bff 	bl	-2488(0xffff648) # 1c005754 <OLED_WR_Byte>
1c006110:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006114:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006118:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00611c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006120:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c006124:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0060d4 <OLED_DrawFont32+0x10c>
1c006128:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00612c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006130:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006134:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006138:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00613c:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0060a4 <OLED_DrawFont32+0xdc>
1c006140:	50001c00 	b	28(0x1c) # 1c00615c <OLED_DrawFont32+0x194>
1c006144:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006148:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00614c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006150:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006154:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006158:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c006010 <OLED_DrawFont32+0x48>
1c00615c:	03400000 	andi	$r0,$r0,0x0
1c006160:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006164:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006168:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00616c:	4c000020 	jirl	$r0,$r1,0

1c006170 <OLED_Show_Str>:
OLED_Show_Str():
1c006170:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006174:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006178:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00617c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006180:	0015008c 	move	$r12,$r4
1c006184:	001500ae 	move	$r14,$r5
1c006188:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00618c:	001500ed 	move	$r13,$r7
1c006190:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006194:	001501cc 	move	$r12,$r14
1c006198:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00619c:	001501ac 	move	$r12,$r13
1c0061a0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0061a4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0061a8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0061ac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0061b0:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0061b4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0061b8:	580209ac 	beq	$r13,$r12,520(0x208) # 1c0063c0 <OLED_Show_Str+0x250>
1c0061bc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0061c0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0061c4:	5001fc00 	b	508(0x1fc) # 1c0063c0 <OLED_Show_Str+0x250>
1c0061c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061cc:	44012580 	bnez	$r12,292(0x124) # 1c0062f0 <OLED_Show_Str+0x180>
1c0061d0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0061d4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0061d8:	0044858c 	srli.w	$r12,$r12,0x1
1c0061dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0061e0:	0015018e 	move	$r14,$r12
1c0061e4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0061e8:	0011398c 	sub.w	$r12,$r12,$r14
1c0061ec:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006218 <OLED_Show_Str+0xa8>
1c0061f0:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c0061f4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0061f8:	00448d8c 	srli.w	$r12,$r12,0x3
1c0061fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006200:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006204:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006208:	001031ac 	add.w	$r12,$r13,$r12
1c00620c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006210:	03401d8c 	andi	$r12,$r12,0x7
1c006214:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006218:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00621c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006220:	00448d8c 	srli.w	$r12,$r12,0x3
1c006224:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006228:	0015018e 	move	$r14,$r12
1c00622c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006230:	0011398c 	sub.w	$r12,$r12,$r14
1c006234:	6400098d 	bge	$r12,$r13,8(0x8) # 1c00623c <OLED_Show_Str+0xcc>
1c006238:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c00623c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006240:	2800018c 	ld.b	$r12,$r12,0
1c006244:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006248:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c00624c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c00625c <OLED_Show_Str+0xec>
1c006250:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006254:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006258:	50016800 	b	360(0x168) # 1c0063c0 <OLED_Show_Str+0x250>
1c00625c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006260:	2800018d 	ld.b	$r13,$r12,0
1c006264:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006268:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c006298 <OLED_Show_Str+0x128>
1c00626c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006270:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006274:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006278:	001031ac 	add.w	$r12,$r13,$r12
1c00627c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006280:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006284:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006288:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00628c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006290:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006294:	50004c00 	b	76(0x4c) # 1c0062e0 <OLED_Show_Str+0x170>
1c006298:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00629c:	2800018c 	ld.b	$r12,$r12,0
1c0062a0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0062a4:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c0062a8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0062ac:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0062b0:	001501e7 	move	$r7,$r15
1c0062b4:	001501c6 	move	$r6,$r14
1c0062b8:	001501a5 	move	$r5,$r13
1c0062bc:	00150184 	move	$r4,$r12
1c0062c0:	57f7ebff 	bl	-2072(0xffff7e8) # 1c005aa8 <OLED_ShowChar>
1c0062c4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0062c8:	0044858c 	srli.w	$r12,$r12,0x1
1c0062cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0062d0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0062d4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0062d8:	001031ac 	add.w	$r12,$r13,$r12
1c0062dc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0062e0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0062e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062e8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0062ec:	5000d400 	b	212(0xd4) # 1c0063c0 <OLED_Show_Str+0x250>
1c0062f0:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0062f4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0062f8:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c0062fc:	001131cc 	sub.w	$r12,$r14,$r12
1c006300:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c00632c <OLED_Show_Str+0x1bc>
1c006304:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006308:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00630c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006310:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006314:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006318:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00631c:	001031ac 	add.w	$r12,$r13,$r12
1c006320:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006324:	03401d8c 	andi	$r12,$r12,0x7
1c006328:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00632c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006330:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006334:	00448d8c 	srli.w	$r12,$r12,0x3
1c006338:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00633c:	0015018e 	move	$r14,$r12
1c006340:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006344:	0011398c 	sub.w	$r12,$r12,$r14
1c006348:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006350 <OLED_Show_Str+0x1e0>
1c00634c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006350:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006354:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006358:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00635c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00637c <OLED_Show_Str+0x20c>
1c006360:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006364:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006368:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c00636c:	001501a5 	move	$r5,$r13
1c006370:	00150184 	move	$r4,$r12
1c006374:	57fc57ff 	bl	-940(0xffffc54) # 1c005fc8 <OLED_DrawFont32>
1c006378:	50002800 	b	40(0x28) # 1c0063a0 <OLED_Show_Str+0x230>
1c00637c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006380:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006384:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0063a0 <OLED_Show_Str+0x230>
1c006388:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00638c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006390:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006394:	001501a5 	move	$r5,$r13
1c006398:	00150184 	move	$r4,$r12
1c00639c:	57fa93ff 	bl	-1392(0xffffa90) # 1c005e2c <OLED_DrawFont16>
1c0063a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0063a4:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0063a8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0063ac:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0063b0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0063b4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0063b8:	001031ac 	add.w	$r12,$r13,$r12
1c0063bc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0063c0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0063c4:	2800018c 	ld.b	$r12,$r12,0
1c0063c8:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c0061c8 <OLED_Show_Str+0x58>
1c0063cc:	03400000 	andi	$r0,$r0,0x0
1c0063d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063dc:	4c000020 	jirl	$r0,$r1,0

1c0063e0 <MyI2C_W_SCL>:
MyI2C_W_SCL():
1c0063e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0063e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0063e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0063ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0063f0:	0015008c 	move	$r12,$r4
1c0063f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0063f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0063fc:	00150185 	move	$r5,$r12
1c006400:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006404:	57b1dbff 	bl	-20008(0xfffb1d8) # 1c0015dc <gpio_write_pin>
1c006408:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00640c:	57d227ff 	bl	-11740(0xfffd224) # 1c003630 <delay_us>
1c006410:	03400000 	andi	$r0,$r0,0x0
1c006414:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006418:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00641c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006420:	4c000020 	jirl	$r0,$r1,0

1c006424 <MyI2C_W_SDA>:
MyI2C_W_SDA():
1c006424:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006428:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00642c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006430:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006434:	0015008c 	move	$r12,$r4
1c006438:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00643c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006440:	00150185 	move	$r5,$r12
1c006444:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006448:	57b197ff 	bl	-20076(0xfffb194) # 1c0015dc <gpio_write_pin>
1c00644c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006450:	57d1e3ff 	bl	-11808(0xfffd1e0) # 1c003630 <delay_us>
1c006454:	03400000 	andi	$r0,$r0,0x0
1c006458:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00645c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006460:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006464:	4c000020 	jirl	$r0,$r1,0

1c006468 <MyI2C_R_SDA>:
MyI2C_R_SDA():
1c006468:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00646c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006470:	29806076 	st.w	$r22,$r3,24(0x18)
1c006474:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006478:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00647c:	57b113ff 	bl	-20208(0xfffb110) # 1c00158c <gpio_get_pin>
1c006480:	0015008c 	move	$r12,$r4
1c006484:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006488:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00648c:	57d1a7ff 	bl	-11868(0xfffd1a4) # 1c003630 <delay_us>
1c006490:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006494:	00150184 	move	$r4,$r12
1c006498:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00649c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0064a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0064a4:	4c000020 	jirl	$r0,$r1,0

1c0064a8 <MyI2C_Init>:
MyI2C_Init():
1c0064a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0064b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0064b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064b8:	00150005 	move	$r5,$r0
1c0064bc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0064c0:	57b197ff 	bl	-20076(0xfffb194) # 1c001654 <gpio_pin_remap>
1c0064c4:	00150005 	move	$r5,$r0
1c0064c8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0064cc:	57b18bff 	bl	-20088(0xfffb188) # 1c001654 <gpio_pin_remap>
1c0064d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0064d4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0064d8:	57b38bff 	bl	-19576(0xfffb388) # 1c001860 <gpio_set_direction>
1c0064dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0064e0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0064e4:	57b37fff 	bl	-19588(0xfffb37c) # 1c001860 <gpio_set_direction>
1c0064e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0064ec:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0064f0:	57b0efff 	bl	-20244(0xfffb0ec) # 1c0015dc <gpio_write_pin>
1c0064f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0064f8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0064fc:	57b0e3ff 	bl	-20256(0xfffb0e0) # 1c0015dc <gpio_write_pin>
1c006500:	03400000 	andi	$r0,$r0,0x0
1c006504:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006508:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00650c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006510:	4c000020 	jirl	$r0,$r1,0

1c006514 <MyI2C_Start>:
MyI2C_Start():
1c006514:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006518:	29803061 	st.w	$r1,$r3,12(0xc)
1c00651c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006520:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006524:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006528:	57feffff 	bl	-260(0xffffefc) # 1c006424 <MyI2C_W_SDA>
1c00652c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006530:	57feb3ff 	bl	-336(0xffffeb0) # 1c0063e0 <MyI2C_W_SCL>
1c006534:	00150004 	move	$r4,$r0
1c006538:	57feefff 	bl	-276(0xffffeec) # 1c006424 <MyI2C_W_SDA>
1c00653c:	00150004 	move	$r4,$r0
1c006540:	57fea3ff 	bl	-352(0xffffea0) # 1c0063e0 <MyI2C_W_SCL>
1c006544:	03400000 	andi	$r0,$r0,0x0
1c006548:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00654c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006550:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006554:	4c000020 	jirl	$r0,$r1,0

1c006558 <MyI2C_Stop>:
MyI2C_Stop():
1c006558:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00655c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006560:	29802076 	st.w	$r22,$r3,8(0x8)
1c006564:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006568:	00150004 	move	$r4,$r0
1c00656c:	57fe77ff 	bl	-396(0xffffe74) # 1c0063e0 <MyI2C_W_SCL>
1c006570:	00150004 	move	$r4,$r0
1c006574:	57feb3ff 	bl	-336(0xffffeb0) # 1c006424 <MyI2C_W_SDA>
1c006578:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00657c:	57fe67ff 	bl	-412(0xffffe64) # 1c0063e0 <MyI2C_W_SCL>
1c006580:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006584:	57fea3ff 	bl	-352(0xffffea0) # 1c006424 <MyI2C_W_SDA>
1c006588:	03400000 	andi	$r0,$r0,0x0
1c00658c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006590:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006594:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006598:	4c000020 	jirl	$r0,$r1,0

1c00659c <MyI2C_SendByte>:
MyI2C_SendByte():
1c00659c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0065a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0065a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0065a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0065ac:	0015008c 	move	$r12,$r4
1c0065b0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0065b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0065b8:	50004400 	b	68(0x44) # 1c0065fc <MyI2C_SendByte+0x60>
1c0065bc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0065c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0065c4:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c0065c8:	001831cc 	sra.w	$r12,$r14,$r12
1c0065cc:	0014b1ac 	and	$r12,$r13,$r12
1c0065d0:	0012b00c 	sltu	$r12,$r0,$r12
1c0065d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0065d8:	00150184 	move	$r4,$r12
1c0065dc:	57fe4bff 	bl	-440(0xffffe48) # 1c006424 <MyI2C_W_SDA>
1c0065e0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0065e4:	57fdffff 	bl	-516(0xffffdfc) # 1c0063e0 <MyI2C_W_SCL>
1c0065e8:	00150004 	move	$r4,$r0
1c0065ec:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0063e0 <MyI2C_W_SCL>
1c0065f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0065f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0065fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006600:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006604:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0065bc <MyI2C_SendByte+0x20>
1c006608:	03400000 	andi	$r0,$r0,0x0
1c00660c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006610:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006614:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006618:	4c000020 	jirl	$r0,$r1,0

1c00661c <MyI2C_ReceiveByte>:
MyI2C_ReceiveByte():
1c00661c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006620:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006624:	29806076 	st.w	$r22,$r3,24(0x18)
1c006628:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00662c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006630:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006634:	57fdf3ff 	bl	-528(0xffffdf0) # 1c006424 <MyI2C_W_SDA>
1c006638:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00663c:	50004c00 	b	76(0x4c) # 1c006688 <MyI2C_ReceiveByte+0x6c>
1c006640:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006644:	57fd9fff 	bl	-612(0xffffd9c) # 1c0063e0 <MyI2C_W_SCL>
1c006648:	57fe23ff 	bl	-480(0xffffe20) # 1c006468 <MyI2C_R_SDA>
1c00664c:	0015008c 	move	$r12,$r4
1c006650:	40002580 	beqz	$r12,36(0x24) # 1c006674 <MyI2C_ReceiveByte+0x58>
1c006654:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006658:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c00665c:	001831ac 	sra.w	$r12,$r13,$r12
1c006660:	00005d8d 	ext.w.b	$r13,$r12
1c006664:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c006668:	001531ac 	or	$r12,$r13,$r12
1c00666c:	00005d8c 	ext.w.b	$r12,$r12
1c006670:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006674:	00150004 	move	$r4,$r0
1c006678:	57fd6bff 	bl	-664(0xffffd68) # 1c0063e0 <MyI2C_W_SCL>
1c00667c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006680:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006684:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006688:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00668c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006690:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c006640 <MyI2C_ReceiveByte+0x24>
1c006694:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006698:	00150184 	move	$r4,$r12
1c00669c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0066a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0066a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0066a8:	4c000020 	jirl	$r0,$r1,0

1c0066ac <MyI2C_SendAck>:
MyI2C_SendAck():
1c0066ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0066b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0066b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0066b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0066bc:	0015008c 	move	$r12,$r4
1c0066c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0066c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0066c8:	00150184 	move	$r4,$r12
1c0066cc:	57fd5bff 	bl	-680(0xffffd58) # 1c006424 <MyI2C_W_SDA>
1c0066d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0066d4:	57fd0fff 	bl	-756(0xffffd0c) # 1c0063e0 <MyI2C_W_SCL>
1c0066d8:	00150004 	move	$r4,$r0
1c0066dc:	57fd07ff 	bl	-764(0xffffd04) # 1c0063e0 <MyI2C_W_SCL>
1c0066e0:	03400000 	andi	$r0,$r0,0x0
1c0066e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0066e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0066ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0066f0:	4c000020 	jirl	$r0,$r1,0

1c0066f4 <MyI2C_ReceiveAck>:
MyI2C_ReceiveAck():
1c0066f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0066f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0066fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c006700:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006704:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006708:	57fd1fff 	bl	-740(0xffffd1c) # 1c006424 <MyI2C_W_SDA>
1c00670c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006710:	57fcd3ff 	bl	-816(0xffffcd0) # 1c0063e0 <MyI2C_W_SCL>
1c006714:	57fd57ff 	bl	-684(0xffffd54) # 1c006468 <MyI2C_R_SDA>
1c006718:	0015008c 	move	$r12,$r4
1c00671c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006720:	00150004 	move	$r4,$r0
1c006724:	57fcbfff 	bl	-836(0xffffcbc) # 1c0063e0 <MyI2C_W_SCL>
1c006728:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00672c:	00150184 	move	$r4,$r12
1c006730:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006734:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006738:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00673c:	4c000020 	jirl	$r0,$r1,0

1c006740 <maxim_heart_rate_and_oxygen_saturation>:
maxim_heart_rate_and_oxygen_saturation():
1c006740:	02bcc063 	addi.w	$r3,$r3,-208(0xf30)
1c006744:	29833061 	st.w	$r1,$r3,204(0xcc)
1c006748:	29832076 	st.w	$r22,$r3,200(0xc8)
1c00674c:	02834076 	addi.w	$r22,$r3,208(0xd0)
1c006750:	29bd32c4 	st.w	$r4,$r22,-180(0xf4c)
1c006754:	29bd22c5 	st.w	$r5,$r22,-184(0xf48)
1c006758:	29bd12c6 	st.w	$r6,$r22,-188(0xf44)
1c00675c:	29bd02c7 	st.w	$r7,$r22,-192(0xf40)
1c006760:	29bcf2c8 	st.w	$r8,$r22,-196(0xf3c)
1c006764:	29bce2c9 	st.w	$r9,$r22,-200(0xf38)
1c006768:	29bcd2ca 	st.w	$r10,$r22,-204(0xf34)
1c00676c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006770:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006774:	50003000 	b	48(0x30) # 1c0067a4 <maxim_heart_rate_and_oxygen_saturation+0x64>
1c006778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00677c:	0040898c 	slli.w	$r12,$r12,0x2
1c006780:	28bd32cd 	ld.w	$r13,$r22,-180(0xf4c)
1c006784:	001031ac 	add.w	$r12,$r13,$r12
1c006788:	2880018c 	ld.w	$r12,$r12,0
1c00678c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006790:	001031ac 	add.w	$r12,$r13,$r12
1c006794:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006798:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00679c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0067a4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0067a8:	28bd22cc 	ld.w	$r12,$r22,-184(0xf48)
1c0067ac:	63ffcdac 	blt	$r13,$r12,-52(0x3ffcc) # 1c006778 <maxim_heart_rate_and_oxygen_saturation+0x38>
1c0067b0:	28bd22cd 	ld.w	$r13,$r22,-184(0xf48)
1c0067b4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0067b8:	002135cc 	div.wu	$r12,$r14,$r13
1c0067bc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0067c4 <maxim_heart_rate_and_oxygen_saturation+0x84>
1c0067c0:	002a0007 	break	0x7
1c0067c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0067c8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0067cc:	50004800 	b	72(0x48) # 1c006814 <maxim_heart_rate_and_oxygen_saturation+0xd4>
1c0067d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0067d4:	0040898c 	slli.w	$r12,$r12,0x2
1c0067d8:	28bd32cd 	ld.w	$r13,$r22,-180(0xf4c)
1c0067dc:	001031ac 	add.w	$r12,$r13,$r12
1c0067e0:	2880018d 	ld.w	$r13,$r12,0
1c0067e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067e8:	001131ac 	sub.w	$r12,$r13,$r12
1c0067ec:	0015018e 	move	$r14,$r12
1c0067f0:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0067f4:	02a051ad 	addi.w	$r13,$r13,-2028(0x814)
1c0067f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0067fc:	0040898c 	slli.w	$r12,$r12,0x2
1c006800:	001031ac 	add.w	$r12,$r13,$r12
1c006804:	2980018e 	st.w	$r14,$r12,0
1c006808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00680c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006810:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006814:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006818:	28bd22cc 	ld.w	$r12,$r22,-184(0xf48)
1c00681c:	63ffb5ac 	blt	$r13,$r12,-76(0x3ffb4) # 1c0067d0 <maxim_heart_rate_and_oxygen_saturation+0x90>
1c006820:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006824:	5000bc00 	b	188(0xbc) # 1c0068e0 <maxim_heart_rate_and_oxygen_saturation+0x1a0>
1c006828:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c00682c:	029f71ad 	addi.w	$r13,$r13,2012(0x7dc)
1c006830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006834:	0040898c 	slli.w	$r12,$r12,0x2
1c006838:	001031ac 	add.w	$r12,$r13,$r12
1c00683c:	2880018d 	ld.w	$r13,$r12,0
1c006840:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006844:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006848:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c00684c:	029ef1ce 	addi.w	$r14,$r14,1980(0x7bc)
1c006850:	0040898c 	slli.w	$r12,$r12,0x2
1c006854:	001031cc 	add.w	$r12,$r14,$r12
1c006858:	2880018c 	ld.w	$r12,$r12,0
1c00685c:	001031ad 	add.w	$r13,$r13,$r12
1c006860:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006864:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c006868:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c00686c:	029e71ce 	addi.w	$r14,$r14,1948(0x79c)
1c006870:	0040898c 	slli.w	$r12,$r12,0x2
1c006874:	001031cc 	add.w	$r12,$r14,$r12
1c006878:	2880018c 	ld.w	$r12,$r12,0
1c00687c:	001031ad 	add.w	$r13,$r13,$r12
1c006880:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006884:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006888:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c00688c:	029df1ce 	addi.w	$r14,$r14,1916(0x77c)
1c006890:	0040898c 	slli.w	$r12,$r12,0x2
1c006894:	001031cc 	add.w	$r12,$r14,$r12
1c006898:	2880018c 	ld.w	$r12,$r12,0
1c00689c:	001031ac 	add.w	$r12,$r13,$r12
1c0068a0:	02800d8e 	addi.w	$r14,$r12,3(0x3)
1c0068a4:	0200018d 	slti	$r13,$r12,0
1c0068a8:	001335ce 	maskeqz	$r14,$r14,$r13
1c0068ac:	0013b58c 	masknez	$r12,$r12,$r13
1c0068b0:	001531cc 	or	$r12,$r14,$r12
1c0068b4:	0048898c 	srai.w	$r12,$r12,0x2
1c0068b8:	0015018e 	move	$r14,$r12
1c0068bc:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0068c0:	029d21ad 	addi.w	$r13,$r13,1864(0x748)
1c0068c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0068c8:	0040898c 	slli.w	$r12,$r12,0x2
1c0068cc:	001031ac 	add.w	$r12,$r13,$r12
1c0068d0:	2980018e 	st.w	$r14,$r12,0
1c0068d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0068d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0068e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0068e4:	0282440c 	addi.w	$r12,$r0,145(0x91)
1c0068e8:	67ff418d 	bge	$r12,$r13,-192(0x3ff40) # 1c006828 <maxim_heart_rate_and_oxygen_saturation+0xe8>
1c0068ec:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0068f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0068f4:	50003400 	b	52(0x34) # 1c006928 <maxim_heart_rate_and_oxygen_saturation+0x1e8>
1c0068f8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0068fc:	029c31ad 	addi.w	$r13,$r13,1804(0x70c)
1c006900:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006904:	0040898c 	slli.w	$r12,$r12,0x2
1c006908:	001031ac 	add.w	$r12,$r13,$r12
1c00690c:	2880018c 	ld.w	$r12,$r12,0
1c006910:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006914:	001031ac 	add.w	$r12,$r13,$r12
1c006918:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00691c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006920:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006924:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006928:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00692c:	0282540c 	addi.w	$r12,$r0,149(0x95)
1c006930:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0068f8 <maxim_heart_rate_and_oxygen_saturation+0x1b8>
1c006934:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006938:	0282580d 	addi.w	$r13,$r0,150(0x96)
1c00693c:	002035cc 	div.w	$r12,$r14,$r13
1c006940:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006948 <maxim_heart_rate_and_oxygen_saturation+0x208>
1c006944:	002a0007 	break	0x7
1c006948:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00694c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006950:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c006954:	60000d8d 	blt	$r12,$r13,12(0xc) # 1c006960 <maxim_heart_rate_and_oxygen_saturation+0x220>
1c006958:	0280780c 	addi.w	$r12,$r0,30(0x1e)
1c00695c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006960:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006964:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006968:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c006974 <maxim_heart_rate_and_oxygen_saturation+0x234>
1c00696c:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006970:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006974:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006978:	50002400 	b	36(0x24) # 1c00699c <maxim_heart_rate_and_oxygen_saturation+0x25c>
1c00697c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006980:	0040898c 	slli.w	$r12,$r12,0x2
1c006984:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006988:	001031ac 	add.w	$r12,$r13,$r12
1c00698c:	29bde180 	st.w	$r0,$r12,-136(0xf78)
1c006990:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006994:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006998:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00699c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0069a0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0069a4:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c00697c <maxim_heart_rate_and_oxygen_saturation+0x23c>
1c0069a8:	02be92cd 	addi.w	$r13,$r22,-92(0xfa4)
1c0069ac:	02bda2cc 	addi.w	$r12,$r22,-152(0xf68)
1c0069b0:	02803c0a 	addi.w	$r10,$r0,15(0xf)
1c0069b4:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0069b8:	28bf72c8 	ld.w	$r8,$r22,-36(0xfdc)
1c0069bc:	02825807 	addi.w	$r7,$r0,150(0x96)
1c0069c0:	1cc7ff26 	pcaddu12i	$r6,409593(0x63ff9)
1c0069c4:	029910c6 	addi.w	$r6,$r6,1604(0x644)
1c0069c8:	001501a5 	move	$r5,$r13
1c0069cc:	00150184 	move	$r4,$r12
1c0069d0:	5406c000 	bl	1728(0x6c0) # 1c007090 <maxim_find_peaks>
1c0069d4:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0069d8:	28be92cd 	ld.w	$r13,$r22,-92(0xfa4)
1c0069dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069e0:	6400ad8d 	bge	$r12,$r13,172(0xac) # 1c006a8c <maxim_heart_rate_and_oxygen_saturation+0x34c>
1c0069e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0069ec:	50004c00 	b	76(0x4c) # 1c006a38 <maxim_heart_rate_and_oxygen_saturation+0x2f8>
1c0069f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0069f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0069f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0069fc:	001031ac 	add.w	$r12,$r13,$r12
1c006a00:	28bde18d 	ld.w	$r13,$r12,-136(0xf78)
1c006a04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006a0c:	0040898c 	slli.w	$r12,$r12,0x2
1c006a10:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006a14:	001031cc 	add.w	$r12,$r14,$r12
1c006a18:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006a1c:	001131ac 	sub.w	$r12,$r13,$r12
1c006a20:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006a24:	001031ac 	add.w	$r12,$r13,$r12
1c006a28:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006a2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006a38:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c006a3c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006a40:	63ffb1ac 	blt	$r13,$r12,-80(0x3ffb0) # 1c0069f0 <maxim_heart_rate_and_oxygen_saturation+0x2b0>
1c006a44:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c006a48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006a4c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c006a50:	002035cc 	div.w	$r12,$r14,$r13
1c006a54:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006a5c <maxim_heart_rate_and_oxygen_saturation+0x31c>
1c006a58:	002a0007 	break	0x7
1c006a5c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006a60:	03aee00e 	ori	$r14,$r0,0xbb8
1c006a64:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006a68:	002031cd 	div.w	$r13,$r14,$r12
1c006a6c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006a74 <maxim_heart_rate_and_oxygen_saturation+0x334>
1c006a70:	002a0007 	break	0x7
1c006a74:	28bce2cc 	ld.w	$r12,$r22,-200(0xf38)
1c006a78:	2980018d 	st.w	$r13,$r12,0
1c006a7c:	28bcd2cc 	ld.w	$r12,$r22,-204(0xf34)
1c006a80:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006a84:	2900018d 	st.b	$r13,$r12,0
1c006a88:	50001800 	b	24(0x18) # 1c006aa0 <maxim_heart_rate_and_oxygen_saturation+0x360>
1c006a8c:	28bce2cc 	ld.w	$r12,$r22,-200(0xf38)
1c006a90:	02b0640d 	addi.w	$r13,$r0,-999(0xc19)
1c006a94:	2980018d 	st.w	$r13,$r12,0
1c006a98:	28bcd2cc 	ld.w	$r12,$r22,-204(0xf34)
1c006a9c:	29000180 	st.b	$r0,$r12,0
1c006aa0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006aa4:	50007000 	b	112(0x70) # 1c006b14 <maxim_heart_rate_and_oxygen_saturation+0x3d4>
1c006aa8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006aac:	0040898c 	slli.w	$r12,$r12,0x2
1c006ab0:	28bd32cd 	ld.w	$r13,$r22,-180(0xf4c)
1c006ab4:	001031ac 	add.w	$r12,$r13,$r12
1c006ab8:	2880018c 	ld.w	$r12,$r12,0
1c006abc:	0015018e 	move	$r14,$r12
1c006ac0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006ac4:	029511ad 	addi.w	$r13,$r13,1348(0x544)
1c006ac8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006acc:	0040898c 	slli.w	$r12,$r12,0x2
1c006ad0:	001031ac 	add.w	$r12,$r13,$r12
1c006ad4:	2980018e 	st.w	$r14,$r12,0
1c006ad8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006adc:	0040898c 	slli.w	$r12,$r12,0x2
1c006ae0:	28bd12cd 	ld.w	$r13,$r22,-188(0xf44)
1c006ae4:	001031ac 	add.w	$r12,$r13,$r12
1c006ae8:	2880018c 	ld.w	$r12,$r12,0
1c006aec:	0015018e 	move	$r14,$r12
1c006af0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006af4:	029db1ad 	addi.w	$r13,$r13,1900(0x76c)
1c006af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006afc:	0040898c 	slli.w	$r12,$r12,0x2
1c006b00:	001031ac 	add.w	$r12,$r13,$r12
1c006b04:	2980018e 	st.w	$r14,$r12,0
1c006b08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006b14:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006b18:	28bd22cc 	ld.w	$r12,$r22,-184(0xf48)
1c006b1c:	63ff8dac 	blt	$r13,$r12,-116(0x3ff8c) # 1c006aa8 <maxim_heart_rate_and_oxygen_saturation+0x368>
1c006b20:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c006b24:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c006b28:	29bf12c0 	st.w	$r0,$r22,-60(0xfc4)
1c006b2c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006b30:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006b34:	50002400 	b	36(0x24) # 1c006b58 <maxim_heart_rate_and_oxygen_saturation+0x418>
1c006b38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b3c:	0040898c 	slli.w	$r12,$r12,0x2
1c006b40:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006b44:	001031ac 	add.w	$r12,$r13,$r12
1c006b48:	29bd9180 	st.w	$r0,$r12,-156(0xf64)
1c006b4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006b58:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006b5c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006b60:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c006b38 <maxim_heart_rate_and_oxygen_saturation+0x3f8>
1c006b64:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006b68:	50004400 	b	68(0x44) # 1c006bac <maxim_heart_rate_and_oxygen_saturation+0x46c>
1c006b6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b70:	0040898c 	slli.w	$r12,$r12,0x2
1c006b74:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006b78:	001031ac 	add.w	$r12,$r13,$r12
1c006b7c:	28bde18d 	ld.w	$r13,$r12,-136(0xf78)
1c006b80:	0282580c 	addi.w	$r12,$r0,150(0x96)
1c006b84:	64001d8d 	bge	$r12,$r13,28(0x1c) # 1c006ba0 <maxim_heart_rate_and_oxygen_saturation+0x460>
1c006b88:	28bd02cc 	ld.w	$r12,$r22,-192(0xf40)
1c006b8c:	02b0640d 	addi.w	$r13,$r0,-999(0xc19)
1c006b90:	2980018d 	st.w	$r13,$r12,0
1c006b94:	28bcf2cc 	ld.w	$r12,$r22,-196(0xf3c)
1c006b98:	29000180 	st.b	$r0,$r12,0
1c006b9c:	5004e400 	b	1252(0x4e4) # 1c007080 <maxim_heart_rate_and_oxygen_saturation+0x940>
1c006ba0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ba8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006bac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006bb0:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c006bb4:	63ffb9ac 	blt	$r13,$r12,-72(0x3ffb8) # 1c006b6c <maxim_heart_rate_and_oxygen_saturation+0x42c>
1c006bb8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006bbc:	5003c800 	b	968(0x3c8) # 1c006f84 <maxim_heart_rate_and_oxygen_saturation+0x844>
1c006bc0:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c006bc4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c006bc8:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c006bcc:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c006bd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bd8:	0040898c 	slli.w	$r12,$r12,0x2
1c006bdc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006be0:	001031ac 	add.w	$r12,$r13,$r12
1c006be4:	28bde18d 	ld.w	$r13,$r12,-136(0xf78)
1c006be8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006bec:	0040898c 	slli.w	$r12,$r12,0x2
1c006bf0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006bf4:	001031cc 	add.w	$r12,$r14,$r12
1c006bf8:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006bfc:	001131ad 	sub.w	$r13,$r13,$r12
1c006c00:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006c04:	6403758d 	bge	$r12,$r13,884(0x374) # 1c006f78 <maxim_heart_rate_and_oxygen_saturation+0x838>
1c006c08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c0c:	0040898c 	slli.w	$r12,$r12,0x2
1c006c10:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006c14:	001031ac 	add.w	$r12,$r13,$r12
1c006c18:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006c1c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006c20:	50009800 	b	152(0x98) # 1c006cb8 <maxim_heart_rate_and_oxygen_saturation+0x578>
1c006c24:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006c28:	028f81ad 	addi.w	$r13,$r13,992(0x3e0)
1c006c2c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006c30:	0040898c 	slli.w	$r12,$r12,0x2
1c006c34:	001031ac 	add.w	$r12,$r13,$r12
1c006c38:	2880018c 	ld.w	$r12,$r12,0
1c006c3c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006c40:	640029ac 	bge	$r13,$r12,40(0x28) # 1c006c68 <maxim_heart_rate_and_oxygen_saturation+0x528>
1c006c44:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006c48:	028f01ad 	addi.w	$r13,$r13,960(0x3c0)
1c006c4c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006c50:	0040898c 	slli.w	$r12,$r12,0x2
1c006c54:	001031ac 	add.w	$r12,$r13,$r12
1c006c58:	2880018c 	ld.w	$r12,$r12,0
1c006c5c:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c006c60:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006c64:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c006c68:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006c6c:	0297d1ad 	addi.w	$r13,$r13,1524(0x5f4)
1c006c70:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006c74:	0040898c 	slli.w	$r12,$r12,0x2
1c006c78:	001031ac 	add.w	$r12,$r13,$r12
1c006c7c:	2880018c 	ld.w	$r12,$r12,0
1c006c80:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006c84:	640029ac 	bge	$r13,$r12,40(0x28) # 1c006cac <maxim_heart_rate_and_oxygen_saturation+0x56c>
1c006c88:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006c8c:	029751ad 	addi.w	$r13,$r13,1492(0x5d4)
1c006c90:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006c94:	0040898c 	slli.w	$r12,$r12,0x2
1c006c98:	001031ac 	add.w	$r12,$r13,$r12
1c006c9c:	2880018c 	ld.w	$r12,$r12,0
1c006ca0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c006ca4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006ca8:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c006cac:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006cb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cb4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cc0:	0040898c 	slli.w	$r12,$r12,0x2
1c006cc4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006cc8:	001031ac 	add.w	$r12,$r13,$r12
1c006ccc:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006cd0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006cd4:	63ff51ac 	blt	$r13,$r12,-176(0x3ff50) # 1c006c24 <maxim_heart_rate_and_oxygen_saturation+0x4e4>
1c006cd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ce0:	0040898c 	slli.w	$r12,$r12,0x2
1c006ce4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006ce8:	001031ac 	add.w	$r12,$r13,$r12
1c006cec:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006cf0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006cf4:	0295b1ad 	addi.w	$r13,$r13,1388(0x56c)
1c006cf8:	0040898c 	slli.w	$r12,$r12,0x2
1c006cfc:	001031ac 	add.w	$r12,$r13,$r12
1c006d00:	2880018d 	ld.w	$r13,$r12,0
1c006d04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d08:	0040898c 	slli.w	$r12,$r12,0x2
1c006d0c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006d10:	001031cc 	add.w	$r12,$r14,$r12
1c006d14:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006d18:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c006d1c:	029511ce 	addi.w	$r14,$r14,1348(0x544)
1c006d20:	0040898c 	slli.w	$r12,$r12,0x2
1c006d24:	001031cc 	add.w	$r12,$r14,$r12
1c006d28:	2880018c 	ld.w	$r12,$r12,0
1c006d2c:	001131ad 	sub.w	$r13,$r13,$r12
1c006d30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d34:	0040898c 	slli.w	$r12,$r12,0x2
1c006d38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006d3c:	001031cc 	add.w	$r12,$r14,$r12
1c006d40:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006d44:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c006d48:	001131cc 	sub.w	$r12,$r14,$r12
1c006d4c:	001c31ac 	mul.w	$r12,$r13,$r12
1c006d50:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c006d54:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d58:	0040898c 	slli.w	$r12,$r12,0x2
1c006d5c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006d60:	001031ac 	add.w	$r12,$r13,$r12
1c006d64:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006d68:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006d6c:	0293d1ad 	addi.w	$r13,$r13,1268(0x4f4)
1c006d70:	0040898c 	slli.w	$r12,$r12,0x2
1c006d74:	001031ac 	add.w	$r12,$r13,$r12
1c006d78:	2880018d 	ld.w	$r13,$r12,0
1c006d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d84:	0040898c 	slli.w	$r12,$r12,0x2
1c006d88:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006d8c:	001031cc 	add.w	$r12,$r14,$r12
1c006d90:	28bde18e 	ld.w	$r14,$r12,-136(0xf78)
1c006d94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d98:	0040898c 	slli.w	$r12,$r12,0x2
1c006d9c:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c006da0:	001031ec 	add.w	$r12,$r15,$r12
1c006da4:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006da8:	001131ce 	sub.w	$r14,$r14,$r12
1c006dac:	28bef2cf 	ld.w	$r15,$r22,-68(0xfbc)
1c006db0:	002039ec 	div.w	$r12,$r15,$r14
1c006db4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c006dbc <maxim_heart_rate_and_oxygen_saturation+0x67c>
1c006db8:	002a0007 	break	0x7
1c006dbc:	001031ac 	add.w	$r12,$r13,$r12
1c006dc0:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c006dc4:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006dc8:	029261ad 	addi.w	$r13,$r13,1176(0x498)
1c006dcc:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006dd0:	0040898c 	slli.w	$r12,$r12,0x2
1c006dd4:	001031ac 	add.w	$r12,$r13,$r12
1c006dd8:	2880018d 	ld.w	$r13,$r12,0
1c006ddc:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c006de0:	001131ac 	sub.w	$r12,$r13,$r12
1c006de4:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c006de8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006df0:	0040898c 	slli.w	$r12,$r12,0x2
1c006df4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006df8:	001031ac 	add.w	$r12,$r13,$r12
1c006dfc:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006e00:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006e04:	028811ad 	addi.w	$r13,$r13,516(0x204)
1c006e08:	0040898c 	slli.w	$r12,$r12,0x2
1c006e0c:	001031ac 	add.w	$r12,$r13,$r12
1c006e10:	2880018d 	ld.w	$r13,$r12,0
1c006e14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006e18:	0040898c 	slli.w	$r12,$r12,0x2
1c006e1c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e20:	001031cc 	add.w	$r12,$r14,$r12
1c006e24:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006e28:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c006e2c:	028771ce 	addi.w	$r14,$r14,476(0x1dc)
1c006e30:	0040898c 	slli.w	$r12,$r12,0x2
1c006e34:	001031cc 	add.w	$r12,$r14,$r12
1c006e38:	2880018c 	ld.w	$r12,$r12,0
1c006e3c:	001131ad 	sub.w	$r13,$r13,$r12
1c006e40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006e44:	0040898c 	slli.w	$r12,$r12,0x2
1c006e48:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e4c:	001031cc 	add.w	$r12,$r14,$r12
1c006e50:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006e54:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c006e58:	001131cc 	sub.w	$r12,$r14,$r12
1c006e5c:	001c31ac 	mul.w	$r12,$r13,$r12
1c006e60:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c006e64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006e68:	0040898c 	slli.w	$r12,$r12,0x2
1c006e6c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006e70:	001031ac 	add.w	$r12,$r13,$r12
1c006e74:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006e78:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006e7c:	028631ad 	addi.w	$r13,$r13,396(0x18c)
1c006e80:	0040898c 	slli.w	$r12,$r12,0x2
1c006e84:	001031ac 	add.w	$r12,$r13,$r12
1c006e88:	2880018d 	ld.w	$r13,$r12,0
1c006e8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006e90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e94:	0040898c 	slli.w	$r12,$r12,0x2
1c006e98:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006e9c:	001031cc 	add.w	$r12,$r14,$r12
1c006ea0:	28bde18e 	ld.w	$r14,$r12,-136(0xf78)
1c006ea4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ea8:	0040898c 	slli.w	$r12,$r12,0x2
1c006eac:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c006eb0:	001031ec 	add.w	$r12,$r15,$r12
1c006eb4:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c006eb8:	001131ce 	sub.w	$r14,$r14,$r12
1c006ebc:	28bee2cf 	ld.w	$r15,$r22,-72(0xfb8)
1c006ec0:	002039ec 	div.w	$r12,$r15,$r14
1c006ec4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c006ecc <maxim_heart_rate_and_oxygen_saturation+0x78c>
1c006ec8:	002a0007 	break	0x7
1c006ecc:	001031ac 	add.w	$r12,$r13,$r12
1c006ed0:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c006ed4:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c006ed8:	0284c1ad 	addi.w	$r13,$r13,304(0x130)
1c006edc:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006ee0:	0040898c 	slli.w	$r12,$r12,0x2
1c006ee4:	001031ac 	add.w	$r12,$r13,$r12
1c006ee8:	2880018d 	ld.w	$r13,$r12,0
1c006eec:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c006ef0:	001131ac 	sub.w	$r12,$r13,$r12
1c006ef4:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c006ef8:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c006efc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c006f00:	001c31ac 	mul.w	$r12,$r13,$r12
1c006f04:	00489d8c 	srai.w	$r12,$r12,0x7
1c006f08:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c006f0c:	28bee2cd 	ld.w	$r13,$r22,-72(0xfb8)
1c006f10:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006f14:	001c31ac 	mul.w	$r12,$r13,$r12
1c006f18:	00489d8c 	srai.w	$r12,$r12,0x7
1c006f1c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c006f20:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c006f24:	6400540c 	bge	$r0,$r12,84(0x54) # 1c006f78 <maxim_heart_rate_and_oxygen_saturation+0x838>
1c006f28:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006f2c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006f30:	6000498d 	blt	$r12,$r13,72(0x48) # 1c006f78 <maxim_heart_rate_and_oxygen_saturation+0x838>
1c006f34:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c006f38:	40004180 	beqz	$r12,64(0x40) # 1c006f78 <maxim_heart_rate_and_oxygen_saturation+0x838>
1c006f3c:	28bed2cd 	ld.w	$r13,$r22,-76(0xfb4)
1c006f40:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c006f44:	001c31ae 	mul.w	$r14,$r13,$r12
1c006f48:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c006f4c:	002031cd 	div.w	$r13,$r14,$r12
1c006f50:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006f58 <maxim_heart_rate_and_oxygen_saturation+0x818>
1c006f54:	002a0007 	break	0x7
1c006f58:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006f5c:	0040898c 	slli.w	$r12,$r12,0x2
1c006f60:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006f64:	001031cc 	add.w	$r12,$r14,$r12
1c006f68:	29bd918d 	st.w	$r13,$r12,-156(0xf64)
1c006f6c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006f70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f74:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006f78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006f7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006f84:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c006f88:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006f8c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006f90:	63fc31ac 	blt	$r13,$r12,-976(0x3fc30) # 1c006bc0 <maxim_heart_rate_and_oxygen_saturation+0x480>
1c006f94:	02bd52cc 	addi.w	$r12,$r22,-172(0xf54)
1c006f98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c006f9c:	00150184 	move	$r4,$r12
1c006fa0:	5404b800 	bl	1208(0x4b8) # 1c007458 <maxim_sort_ascend>
1c006fa4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006fa8:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006fac:	001031ac 	add.w	$r12,$r13,$r12
1c006fb0:	0048858c 	srai.w	$r12,$r12,0x1
1c006fb4:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c006fb8:	28beb2cd 	ld.w	$r13,$r22,-84(0xfac)
1c006fbc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006fc0:	6400498d 	bge	$r12,$r13,72(0x48) # 1c007008 <maxim_heart_rate_and_oxygen_saturation+0x8c8>
1c006fc4:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c006fc8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006fcc:	0040898c 	slli.w	$r12,$r12,0x2
1c006fd0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006fd4:	001031ac 	add.w	$r12,$r13,$r12
1c006fd8:	28bd918d 	ld.w	$r13,$r12,-156(0xf64)
1c006fdc:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c006fe0:	0040898c 	slli.w	$r12,$r12,0x2
1c006fe4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c006fe8:	001031cc 	add.w	$r12,$r14,$r12
1c006fec:	28bd918c 	ld.w	$r12,$r12,-156(0xf64)
1c006ff0:	001031ac 	add.w	$r12,$r13,$r12
1c006ff4:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006ff8:	001031ac 	add.w	$r12,$r13,$r12
1c006ffc:	0048858c 	srai.w	$r12,$r12,0x1
1c007000:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c007004:	50001c00 	b	28(0x1c) # 1c007020 <maxim_heart_rate_and_oxygen_saturation+0x8e0>
1c007008:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c00700c:	0040898c 	slli.w	$r12,$r12,0x2
1c007010:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007014:	001031ac 	add.w	$r12,$r13,$r12
1c007018:	28bd918c 	ld.w	$r12,$r12,-156(0xf64)
1c00701c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c007020:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c007024:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c007028:	6400458d 	bge	$r12,$r13,68(0x44) # 1c00706c <maxim_heart_rate_and_oxygen_saturation+0x92c>
1c00702c:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c007030:	0282dc0c 	addi.w	$r12,$r0,183(0xb7)
1c007034:	6000398d 	blt	$r12,$r13,56(0x38) # 1c00706c <maxim_heart_rate_and_oxygen_saturation+0x92c>
1c007038:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c00703c:	02afb1ad 	addi.w	$r13,$r13,-1044(0xbec)
1c007040:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c007044:	001031ac 	add.w	$r12,$r13,$r12
1c007048:	2a00018c 	ld.bu	$r12,$r12,0
1c00704c:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c007050:	28bd02cc 	ld.w	$r12,$r22,-192(0xf40)
1c007054:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c007058:	2980018d 	st.w	$r13,$r12,0
1c00705c:	28bcf2cc 	ld.w	$r12,$r22,-196(0xf3c)
1c007060:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007064:	2900018d 	st.b	$r13,$r12,0
1c007068:	50001800 	b	24(0x18) # 1c007080 <maxim_heart_rate_and_oxygen_saturation+0x940>
1c00706c:	28bd02cc 	ld.w	$r12,$r22,-192(0xf40)
1c007070:	02b0640d 	addi.w	$r13,$r0,-999(0xc19)
1c007074:	2980018d 	st.w	$r13,$r12,0
1c007078:	28bcf2cc 	ld.w	$r12,$r22,-196(0xf3c)
1c00707c:	29000180 	st.b	$r0,$r12,0
1c007080:	28833061 	ld.w	$r1,$r3,204(0xcc)
1c007084:	28832076 	ld.w	$r22,$r3,200(0xc8)
1c007088:	02834063 	addi.w	$r3,$r3,208(0xd0)
1c00708c:	4c000020 	jirl	$r0,$r1,0

1c007090 <maxim_find_peaks>:
maxim_find_peaks():
1c007090:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007094:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c007098:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00709c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0070a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0070a4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0070a8:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0070ac:	29bf82c7 	st.w	$r7,$r22,-32(0xfe0)
1c0070b0:	29bf72c8 	st.w	$r8,$r22,-36(0xfdc)
1c0070b4:	29bf62c9 	st.w	$r9,$r22,-40(0xfd8)
1c0070b8:	29bf52ca 	st.w	$r10,$r22,-44(0xfd4)
1c0070bc:	28bf72c8 	ld.w	$r8,$r22,-36(0xfdc)
1c0070c0:	28bf82c7 	ld.w	$r7,$r22,-32(0xfe0)
1c0070c4:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0070c8:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c0070cc:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0070d0:	54005400 	bl	84(0x54) # 1c007124 <maxim_peaks_above_min_height>
1c0070d4:	28bf62c7 	ld.w	$r7,$r22,-40(0xfd8)
1c0070d8:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0070dc:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c0070e0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0070e4:	54021000 	bl	528(0x210) # 1c0072f4 <maxim_remove_close_peaks>
1c0070e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0070ec:	2880018c 	ld.w	$r12,$r12,0
1c0070f0:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0070f4:	28bf52ce 	ld.w	$r14,$r22,-44(0xfd4)
1c0070f8:	0012358d 	slt	$r13,$r12,$r13
1c0070fc:	0013b5ce 	masknez	$r14,$r14,$r13
1c007100:	0013358c 	maskeqz	$r12,$r12,$r13
1c007104:	001531cd 	or	$r13,$r14,$r12
1c007108:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00710c:	2980018d 	st.w	$r13,$r12,0
1c007110:	03400000 	andi	$r0,$r0,0x0
1c007114:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007118:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00711c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007120:	4c000020 	jirl	$r0,$r1,0

1c007124 <maxim_peaks_above_min_height>:
maxim_peaks_above_min_height():
1c007124:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c007128:	29813076 	st.w	$r22,$r3,76(0x4c)
1c00712c:	02814076 	addi.w	$r22,$r3,80(0x50)
1c007130:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c007134:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c007138:	29bf12c6 	st.w	$r6,$r22,-60(0xfc4)
1c00713c:	29bf02c7 	st.w	$r7,$r22,-64(0xfc0)
1c007140:	29bef2c8 	st.w	$r8,$r22,-68(0xfbc)
1c007144:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007148:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00714c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007150:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c007154:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c007158:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00715c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007160:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007164:	29800180 	st.w	$r0,$r12,0
1c007168:	50016c00 	b	364(0x16c) # 1c0072d4 <maxim_peaks_above_min_height+0x1b0>
1c00716c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007170:	44014d80 	bnez	$r12,332(0x14c) # 1c0072bc <maxim_peaks_above_min_height+0x198>
1c007174:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007178:	0040898c 	slli.w	$r12,$r12,0x2
1c00717c:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c007180:	001031ac 	add.w	$r12,$r13,$r12
1c007184:	2880018c 	ld.w	$r12,$r12,0
1c007188:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c00718c:	640045ac 	bge	$r13,$r12,68(0x44) # 1c0071d0 <maxim_peaks_above_min_height+0xac>
1c007190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007194:	0040898c 	slli.w	$r12,$r12,0x2
1c007198:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c00719c:	001031ac 	add.w	$r12,$r13,$r12
1c0071a0:	2880018d 	ld.w	$r13,$r12,0
1c0071a4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0071a8:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c0071ac:	03bffd8c 	ori	$r12,$r12,0xfff
1c0071b0:	001031cc 	add.w	$r12,$r14,$r12
1c0071b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0071b8:	28bf12ce 	ld.w	$r14,$r22,-60(0xfc4)
1c0071bc:	001031cc 	add.w	$r12,$r14,$r12
1c0071c0:	2880018c 	ld.w	$r12,$r12,0
1c0071c4:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c0071d0 <maxim_peaks_above_min_height+0xac>
1c0071c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0071cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0071d0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0071d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0071d8:	5c00f1ac 	bne	$r13,$r12,240(0xf0) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c0071dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071e0:	0040898c 	slli.w	$r12,$r12,0x2
1c0071e4:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c0071e8:	001031ac 	add.w	$r12,$r13,$r12
1c0071ec:	2880018c 	ld.w	$r12,$r12,0
1c0071f0:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c0071f4:	64001d8d 	bge	$r12,$r13,28(0x1c) # 1c007210 <maxim_peaks_above_min_height+0xec>
1c0071f8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0071fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007200:	640011ac 	bge	$r13,$r12,16(0x10) # 1c007210 <maxim_peaks_above_min_height+0xec>
1c007204:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007208:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00720c:	5000bc00 	b	188(0xbc) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c007210:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c007214:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007218:	5c0095ac 	bne	$r13,$r12,148(0x94) # 1c0072ac <maxim_peaks_above_min_height+0x188>
1c00721c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007220:	0040898c 	slli.w	$r12,$r12,0x2
1c007224:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c007228:	001031ac 	add.w	$r12,$r13,$r12
1c00722c:	2880018c 	ld.w	$r12,$r12,0
1c007230:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c007234:	6400958d 	bge	$r12,$r13,148(0x94) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c007238:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00723c:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c007240:	03bffd8c 	ori	$r12,$r12,0xfff
1c007244:	001031ac 	add.w	$r12,$r13,$r12
1c007248:	0040898c 	slli.w	$r12,$r12,0x2
1c00724c:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c007250:	001031ac 	add.w	$r12,$r13,$r12
1c007254:	2880018c 	ld.w	$r12,$r12,0
1c007258:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c00725c:	60006d8d 	blt	$r12,$r13,108(0x6c) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c007260:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007264:	2880018d 	ld.w	$r13,$r12,0
1c007268:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00726c:	60002d8d 	blt	$r12,$r13,44(0x2c) # 1c007298 <maxim_peaks_above_min_height+0x174>
1c007270:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007274:	2880018c 	ld.w	$r12,$r12,0
1c007278:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c00727c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c007280:	298001ae 	st.w	$r14,$r13,0
1c007284:	0040898c 	slli.w	$r12,$r12,0x2
1c007288:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00728c:	001031ac 	add.w	$r12,$r13,$r12
1c007290:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007294:	2980018d 	st.w	$r13,$r12,0
1c007298:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00729c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0072a0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0072a4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0072a8:	50002000 	b	32(0x20) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c0072ac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0072b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0072b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0072b8:	50001000 	b	16(0x10) # 1c0072c8 <maxim_peaks_above_min_height+0x1a4>
1c0072bc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0072c0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0072c4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0072c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0072cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0072d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0072d4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c0072d8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0072dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0072e0:	63fe8dac 	blt	$r13,$r12,-372(0x3fe8c) # 1c00716c <maxim_peaks_above_min_height+0x48>
1c0072e4:	03400000 	andi	$r0,$r0,0x0
1c0072e8:	28813076 	ld.w	$r22,$r3,76(0x4c)
1c0072ec:	02814063 	addi.w	$r3,$r3,80(0x50)
1c0072f0:	4c000020 	jirl	$r0,$r1,0

1c0072f4 <maxim_remove_close_peaks>:
maxim_remove_close_peaks():
1c0072f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0072f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0072fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c007300:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007304:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c007308:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00730c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c007310:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c007314:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007318:	2880018c 	ld.w	$r12,$r12,0
1c00731c:	00150186 	move	$r6,$r12
1c007320:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c007324:	28bf52c4 	ld.w	$r4,$r22,-44(0xfd4)
1c007328:	54022400 	bl	548(0x224) # 1c00754c <maxim_sort_indices_descend>
1c00732c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c007330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007334:	5000ec00 	b	236(0xec) # 1c007420 <maxim_remove_close_peaks+0x12c>
1c007338:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00733c:	2880018c 	ld.w	$r12,$r12,0
1c007340:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007344:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007348:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00734c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007350:	2980018d 	st.w	$r13,$r12,0
1c007354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007358:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00735c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007360:	5000a800 	b	168(0xa8) # 1c007408 <maxim_remove_close_peaks+0x114>
1c007364:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007368:	0040898c 	slli.w	$r12,$r12,0x2
1c00736c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c007370:	001031ac 	add.w	$r12,$r13,$r12
1c007374:	2880018d 	ld.w	$r13,$r12,0
1c007378:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00737c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c007380:	58001dcc 	beq	$r14,$r12,28(0x1c) # 1c00739c <maxim_remove_close_peaks+0xa8>
1c007384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007388:	0040898c 	slli.w	$r12,$r12,0x2
1c00738c:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c007390:	001031cc 	add.w	$r12,$r14,$r12
1c007394:	2880018c 	ld.w	$r12,$r12,0
1c007398:	50000800 	b	8(0x8) # 1c0073a0 <maxim_remove_close_peaks+0xac>
1c00739c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0073a0:	001131ac 	sub.w	$r12,$r13,$r12
1c0073a4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0073a8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0073ac:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0073b0:	6000158d 	blt	$r12,$r13,20(0x14) # 1c0073c4 <maxim_remove_close_peaks+0xd0>
1c0073b4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0073b8:	0011300c 	sub.w	$r12,$r0,$r12
1c0073bc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0073c0:	64003dac 	bge	$r13,$r12,60(0x3c) # 1c0073fc <maxim_remove_close_peaks+0x108>
1c0073c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0073c8:	0040898c 	slli.w	$r12,$r12,0x2
1c0073cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0073d0:	001031ad 	add.w	$r13,$r13,$r12
1c0073d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0073d8:	2880018c 	ld.w	$r12,$r12,0
1c0073dc:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c0073e0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0073e4:	298001cf 	st.w	$r15,$r14,0
1c0073e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0073ec:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0073f0:	001031cc 	add.w	$r12,$r14,$r12
1c0073f4:	288001ad 	ld.w	$r13,$r13,0
1c0073f8:	2980018d 	st.w	$r13,$r12,0
1c0073fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007404:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007408:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00740c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007410:	63ff55ac 	blt	$r13,$r12,-172(0x3ff54) # 1c007364 <maxim_remove_close_peaks+0x70>
1c007414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00741c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007420:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007424:	2880018c 	ld.w	$r12,$r12,0
1c007428:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00742c:	63ff0dac 	blt	$r13,$r12,-244(0x3ff0c) # 1c007338 <maxim_remove_close_peaks+0x44>
1c007430:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007434:	2880018c 	ld.w	$r12,$r12,0
1c007438:	00150185 	move	$r5,$r12
1c00743c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c007440:	54001800 	bl	24(0x18) # 1c007458 <maxim_sort_ascend>
1c007444:	03400000 	andi	$r0,$r0,0x0
1c007448:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00744c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007450:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007454:	4c000020 	jirl	$r0,$r1,0

1c007458 <maxim_sort_ascend>:
maxim_sort_ascend():
1c007458:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00745c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c007460:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007464:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c007468:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00746c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007470:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007474:	5000bc00 	b	188(0xbc) # 1c007530 <maxim_sort_ascend+0xd8>
1c007478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00747c:	0040898c 	slli.w	$r12,$r12,0x2
1c007480:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c007484:	001031ac 	add.w	$r12,$r13,$r12
1c007488:	2880018c 	ld.w	$r12,$r12,0
1c00748c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007494:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007498:	50004400 	b	68(0x44) # 1c0074dc <maxim_sort_ascend+0x84>
1c00749c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0074a0:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c0074a4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0074a8:	001031ac 	add.w	$r12,$r13,$r12
1c0074ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0074b0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0074b4:	001031ad 	add.w	$r13,$r13,$r12
1c0074b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0074bc:	0040898c 	slli.w	$r12,$r12,0x2
1c0074c0:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0074c4:	001031cc 	add.w	$r12,$r14,$r12
1c0074c8:	288001ad 	ld.w	$r13,$r13,0
1c0074cc:	2980018d 	st.w	$r13,$r12,0
1c0074d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0074d4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0074d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0074dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0074e0:	64002c0c 	bge	$r0,$r12,44(0x2c) # 1c00750c <maxim_sort_ascend+0xb4>
1c0074e4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0074e8:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c0074ec:	03bffd8c 	ori	$r12,$r12,0xfff
1c0074f0:	001031ac 	add.w	$r12,$r13,$r12
1c0074f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0074f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0074fc:	001031ac 	add.w	$r12,$r13,$r12
1c007500:	2880018c 	ld.w	$r12,$r12,0
1c007504:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c007508:	63ff95ac 	blt	$r13,$r12,-108(0x3ff94) # 1c00749c <maxim_sort_ascend+0x44>
1c00750c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007510:	0040898c 	slli.w	$r12,$r12,0x2
1c007514:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c007518:	001031ac 	add.w	$r12,$r13,$r12
1c00751c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c007520:	2980018d 	st.w	$r13,$r12,0
1c007524:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007528:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00752c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007530:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007534:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007538:	63ff41ac 	blt	$r13,$r12,-192(0x3ff40) # 1c007478 <maxim_sort_ascend+0x20>
1c00753c:	03400000 	andi	$r0,$r0,0x0
1c007540:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c007544:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007548:	4c000020 	jirl	$r0,$r1,0

1c00754c <maxim_sort_indices_descend>:
maxim_sort_indices_descend():
1c00754c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007550:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c007554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00755c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c007560:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c007564:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007568:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00756c:	5000dc00 	b	220(0xdc) # 1c007648 <maxim_sort_indices_descend+0xfc>
1c007570:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007574:	0040898c 	slli.w	$r12,$r12,0x2
1c007578:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00757c:	001031ac 	add.w	$r12,$r13,$r12
1c007580:	2880018c 	ld.w	$r12,$r12,0
1c007584:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00758c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007590:	50004400 	b	68(0x44) # 1c0075d4 <maxim_sort_indices_descend+0x88>
1c007594:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c007598:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c00759c:	03bffd8c 	ori	$r12,$r12,0xfff
1c0075a0:	001031ac 	add.w	$r12,$r13,$r12
1c0075a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0075a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0075ac:	001031ad 	add.w	$r13,$r13,$r12
1c0075b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0075b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0075b8:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0075bc:	001031cc 	add.w	$r12,$r14,$r12
1c0075c0:	288001ad 	ld.w	$r13,$r13,0
1c0075c4:	2980018d 	st.w	$r13,$r12,0
1c0075c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0075cc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0075d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0075d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0075d8:	64004c0c 	bge	$r0,$r12,76(0x4c) # 1c007624 <maxim_sort_indices_descend+0xd8>
1c0075dc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0075e0:	0040898c 	slli.w	$r12,$r12,0x2
1c0075e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0075e8:	001031ac 	add.w	$r12,$r13,$r12
1c0075ec:	2880018d 	ld.w	$r13,$r12,0
1c0075f0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0075f4:	147fffec 	lu12i.w	$r12,262143(0x3ffff)
1c0075f8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0075fc:	001031cc 	add.w	$r12,$r14,$r12
1c007600:	0040898c 	slli.w	$r12,$r12,0x2
1c007604:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c007608:	001031cc 	add.w	$r12,$r14,$r12
1c00760c:	2880018c 	ld.w	$r12,$r12,0
1c007610:	0040898c 	slli.w	$r12,$r12,0x2
1c007614:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c007618:	001031cc 	add.w	$r12,$r14,$r12
1c00761c:	2880018c 	ld.w	$r12,$r12,0
1c007620:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c007594 <maxim_sort_indices_descend+0x48>
1c007624:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007628:	0040898c 	slli.w	$r12,$r12,0x2
1c00762c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c007630:	001031ac 	add.w	$r12,$r13,$r12
1c007634:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c007638:	2980018d 	st.w	$r13,$r12,0
1c00763c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007640:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007644:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007648:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00764c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c007650:	63ff21ac 	blt	$r13,$r12,-224(0x3ff20) # 1c007570 <maxim_sort_indices_descend+0x24>
1c007654:	03400000 	andi	$r0,$r0,0x0
1c007658:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00765c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007660:	4c000020 	jirl	$r0,$r1,0

1c007664 <MPU6050_WriteReg>:
MPU6050_WriteReg():
1c007664:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007668:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00766c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007670:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007674:	0015008c 	move	$r12,$r4
1c007678:	001500ad 	move	$r13,$r5
1c00767c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007680:	001501ac 	move	$r12,$r13
1c007684:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007688:	57ee8fff 	bl	-4468(0xfffee8c) # 1c006514 <MyI2C_Start>
1c00768c:	02834004 	addi.w	$r4,$r0,208(0xd0)
1c007690:	57ef0fff 	bl	-4340(0xfffef0c) # 1c00659c <MyI2C_SendByte>
1c007694:	57f063ff 	bl	-4000(0xffff060) # 1c0066f4 <MyI2C_ReceiveAck>
1c007698:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00769c:	00150184 	move	$r4,$r12
1c0076a0:	57eeffff 	bl	-4356(0xfffeefc) # 1c00659c <MyI2C_SendByte>
1c0076a4:	57f053ff 	bl	-4016(0xffff050) # 1c0066f4 <MyI2C_ReceiveAck>
1c0076a8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0076ac:	00150184 	move	$r4,$r12
1c0076b0:	57eeefff 	bl	-4372(0xfffeeec) # 1c00659c <MyI2C_SendByte>
1c0076b4:	57f043ff 	bl	-4032(0xffff040) # 1c0066f4 <MyI2C_ReceiveAck>
1c0076b8:	57eea3ff 	bl	-4448(0xfffeea0) # 1c006558 <MyI2C_Stop>
1c0076bc:	03400000 	andi	$r0,$r0,0x0
1c0076c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0076c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0076c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0076cc:	4c000020 	jirl	$r0,$r1,0

1c0076d0 <MPU6050_ReadReg>:
MPU6050_ReadReg():
1c0076d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0076d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0076d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0076dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0076e0:	0015008c 	move	$r12,$r4
1c0076e4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0076e8:	57ee2fff 	bl	-4564(0xfffee2c) # 1c006514 <MyI2C_Start>
1c0076ec:	02834004 	addi.w	$r4,$r0,208(0xd0)
1c0076f0:	57eeafff 	bl	-4436(0xfffeeac) # 1c00659c <MyI2C_SendByte>
1c0076f4:	57f003ff 	bl	-4096(0xffff000) # 1c0066f4 <MyI2C_ReceiveAck>
1c0076f8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0076fc:	00150184 	move	$r4,$r12
1c007700:	57ee9fff 	bl	-4452(0xfffee9c) # 1c00659c <MyI2C_SendByte>
1c007704:	57eff3ff 	bl	-4112(0xfffeff0) # 1c0066f4 <MyI2C_ReceiveAck>
1c007708:	57ee0fff 	bl	-4596(0xfffee0c) # 1c006514 <MyI2C_Start>
1c00770c:	02834404 	addi.w	$r4,$r0,209(0xd1)
1c007710:	57ee8fff 	bl	-4468(0xfffee8c) # 1c00659c <MyI2C_SendByte>
1c007714:	57efe3ff 	bl	-4128(0xfffefe0) # 1c0066f4 <MyI2C_ReceiveAck>
1c007718:	57ef07ff 	bl	-4348(0xfffef04) # 1c00661c <MyI2C_ReceiveByte>
1c00771c:	0015008c 	move	$r12,$r4
1c007720:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007724:	02800404 	addi.w	$r4,$r0,1(0x1)
1c007728:	57ef87ff 	bl	-4220(0xfffef84) # 1c0066ac <MyI2C_SendAck>
1c00772c:	57ee2fff 	bl	-4564(0xfffee2c) # 1c006558 <MyI2C_Stop>
1c007730:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007734:	00150184 	move	$r4,$r12
1c007738:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00773c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007740:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007744:	4c000020 	jirl	$r0,$r1,0

1c007748 <MPU6050_Init>:
MPU6050_Init():
1c007748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00774c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007750:	29802076 	st.w	$r22,$r3,8(0x8)
1c007754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007758:	57ed53ff 	bl	-4784(0xfffed50) # 1c0064a8 <MyI2C_Init>
1c00775c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007760:	0281ac04 	addi.w	$r4,$r0,107(0x6b)
1c007764:	57ff03ff 	bl	-256(0xfffff00) # 1c007664 <MPU6050_WriteReg>
1c007768:	00150005 	move	$r5,$r0
1c00776c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c007770:	57fef7ff 	bl	-268(0xffffef4) # 1c007664 <MPU6050_WriteReg>
1c007774:	02802405 	addi.w	$r5,$r0,9(0x9)
1c007778:	02806404 	addi.w	$r4,$r0,25(0x19)
1c00777c:	57feebff 	bl	-280(0xffffee8) # 1c007664 <MPU6050_WriteReg>
1c007780:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007784:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c007788:	57fedfff 	bl	-292(0xffffedc) # 1c007664 <MPU6050_WriteReg>
1c00778c:	02806005 	addi.w	$r5,$r0,24(0x18)
1c007790:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c007794:	57fed3ff 	bl	-304(0xffffed0) # 1c007664 <MPU6050_WriteReg>
1c007798:	02806005 	addi.w	$r5,$r0,24(0x18)
1c00779c:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c0077a0:	57fec7ff 	bl	-316(0xffffec4) # 1c007664 <MPU6050_WriteReg>
1c0077a4:	03400000 	andi	$r0,$r0,0x0
1c0077a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0077ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0077b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0077b4:	4c000020 	jirl	$r0,$r1,0

1c0077b8 <MPU6050_GetData>:
MPU6050_GetData():
1c0077b8:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0077bc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0077c0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0077c4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0077c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0077cc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0077d0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0077d4:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0077d8:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c0077dc:	29bf22c9 	st.w	$r9,$r22,-56(0xfc8)
1c0077e0:	0280ec04 	addi.w	$r4,$r0,59(0x3b)
1c0077e4:	57feefff 	bl	-276(0xffffeec) # 1c0076d0 <MPU6050_ReadReg>
1c0077e8:	0015008c 	move	$r12,$r4
1c0077ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0077f0:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0077f4:	57fedfff 	bl	-292(0xffffedc) # 1c0076d0 <MPU6050_ReadReg>
1c0077f8:	0015008c 	move	$r12,$r4
1c0077fc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007800:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007804:	0040a18c 	slli.w	$r12,$r12,0x8
1c007808:	0000598d 	ext.w.h	$r13,$r12
1c00780c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007810:	0000598c 	ext.w.h	$r12,$r12
1c007814:	001531ac 	or	$r12,$r13,$r12
1c007818:	0000598d 	ext.w.h	$r13,$r12
1c00781c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007820:	2940018d 	st.h	$r13,$r12,0
1c007824:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c007828:	57feabff 	bl	-344(0xffffea8) # 1c0076d0 <MPU6050_ReadReg>
1c00782c:	0015008c 	move	$r12,$r4
1c007830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007834:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c007838:	57fe9bff 	bl	-360(0xffffe98) # 1c0076d0 <MPU6050_ReadReg>
1c00783c:	0015008c 	move	$r12,$r4
1c007840:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007844:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007848:	0040a18c 	slli.w	$r12,$r12,0x8
1c00784c:	0000598d 	ext.w.h	$r13,$r12
1c007850:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007854:	0000598c 	ext.w.h	$r12,$r12
1c007858:	001531ac 	or	$r12,$r13,$r12
1c00785c:	0000598d 	ext.w.h	$r13,$r12
1c007860:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007864:	2940018d 	st.h	$r13,$r12,0
1c007868:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c00786c:	57fe67ff 	bl	-412(0xffffe64) # 1c0076d0 <MPU6050_ReadReg>
1c007870:	0015008c 	move	$r12,$r4
1c007874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007878:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00787c:	57fe57ff 	bl	-428(0xffffe54) # 1c0076d0 <MPU6050_ReadReg>
1c007880:	0015008c 	move	$r12,$r4
1c007884:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007888:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00788c:	0040a18c 	slli.w	$r12,$r12,0x8
1c007890:	0000598d 	ext.w.h	$r13,$r12
1c007894:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007898:	0000598c 	ext.w.h	$r12,$r12
1c00789c:	001531ac 	or	$r12,$r13,$r12
1c0078a0:	0000598d 	ext.w.h	$r13,$r12
1c0078a4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0078a8:	2940018d 	st.h	$r13,$r12,0
1c0078ac:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c0078b0:	57fe23ff 	bl	-480(0xffffe20) # 1c0076d0 <MPU6050_ReadReg>
1c0078b4:	0015008c 	move	$r12,$r4
1c0078b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0078bc:	02811004 	addi.w	$r4,$r0,68(0x44)
1c0078c0:	57fe13ff 	bl	-496(0xffffe10) # 1c0076d0 <MPU6050_ReadReg>
1c0078c4:	0015008c 	move	$r12,$r4
1c0078c8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0078cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0078d0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0078d4:	0000598d 	ext.w.h	$r13,$r12
1c0078d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0078dc:	0000598c 	ext.w.h	$r12,$r12
1c0078e0:	001531ac 	or	$r12,$r13,$r12
1c0078e4:	0000598d 	ext.w.h	$r13,$r12
1c0078e8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0078ec:	2940018d 	st.h	$r13,$r12,0
1c0078f0:	02811404 	addi.w	$r4,$r0,69(0x45)
1c0078f4:	57fddfff 	bl	-548(0xffffddc) # 1c0076d0 <MPU6050_ReadReg>
1c0078f8:	0015008c 	move	$r12,$r4
1c0078fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007900:	02811804 	addi.w	$r4,$r0,70(0x46)
1c007904:	57fdcfff 	bl	-564(0xffffdcc) # 1c0076d0 <MPU6050_ReadReg>
1c007908:	0015008c 	move	$r12,$r4
1c00790c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007910:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007914:	0040a18c 	slli.w	$r12,$r12,0x8
1c007918:	0000598d 	ext.w.h	$r13,$r12
1c00791c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007920:	0000598c 	ext.w.h	$r12,$r12
1c007924:	001531ac 	or	$r12,$r13,$r12
1c007928:	0000598d 	ext.w.h	$r13,$r12
1c00792c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c007930:	2940018d 	st.h	$r13,$r12,0
1c007934:	02811c04 	addi.w	$r4,$r0,71(0x47)
1c007938:	57fd9bff 	bl	-616(0xffffd98) # 1c0076d0 <MPU6050_ReadReg>
1c00793c:	0015008c 	move	$r12,$r4
1c007940:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007944:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007948:	57fd8bff 	bl	-632(0xffffd88) # 1c0076d0 <MPU6050_ReadReg>
1c00794c:	0015008c 	move	$r12,$r4
1c007950:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007954:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007958:	0040a18c 	slli.w	$r12,$r12,0x8
1c00795c:	0000598d 	ext.w.h	$r13,$r12
1c007960:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007964:	0000598c 	ext.w.h	$r12,$r12
1c007968:	001531ac 	or	$r12,$r13,$r12
1c00796c:	0000598d 	ext.w.h	$r13,$r12
1c007970:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007974:	2940018d 	st.h	$r13,$r12,0
1c007978:	03400000 	andi	$r0,$r0,0x0
1c00797c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c007980:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c007984:	02810063 	addi.w	$r3,$r3,64(0x40)
1c007988:	4c000020 	jirl	$r0,$r1,0

1c00798c <main>:
main():
1c00798c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007990:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007994:	29806076 	st.w	$r22,$r3,24(0x18)
1c007998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00799c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0079a0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0079a4:	57b7e7ff 	bl	-18460(0xfffb7e4) # 1c003188 <SystemClockInit>
1c0079a8:	579987ff 	bl	-26236(0xfff9984) # 1c00132c <GPIOInit>
1c0079ac:	57df3bff 	bl	-8392(0xfffdf38) # 1c0058e4 <OLED_Init>
1c0079b0:	57b897ff 	bl	-18284(0xfffb894) # 1c003244 <EnableInt>
1c0079b4:	57fd97ff 	bl	-620(0xffffd94) # 1c007748 <MPU6050_Init>
1c0079b8:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0079bc:	57c527ff 	bl	-15068(0xfffc524) # 1c003ee0 <timer_init>
1c0079c0:	54003800 	bl	56(0x38) # 1c0079f8 <Max30102chushi>
1c0079c4:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0079c8:	03880184 	ori	$r4,$r12,0x200
1c0079cc:	57b0bfff 	bl	-20292(0xfffb0bc) # 1c002a88 <Uart0_init>
1c0079d0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0079d4:	03960184 	ori	$r4,$r12,0x580
1c0079d8:	57b1fbff 	bl	-19976(0xfffb1f8) # 1c002bd0 <Uart2_init>
1c0079dc:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0079e0:	03880184 	ori	$r4,$r12,0x200
1c0079e4:	57b16bff 	bl	-20120(0xfffb168) # 1c002b4c <Uart1_init>
1c0079e8:	57daa7ff 	bl	-9564(0xfffdaa4) # 1c00548c <M780E_send_location_message>
1c0079ec:	54000c00 	bl	12(0xc) # 1c0079f8 <Max30102chushi>
1c0079f0:	54020c00 	bl	524(0x20c) # 1c007bfc <Max30102_Work>
1c0079f4:	53fff7ff 	b	-12(0xffffff4) # 1c0079e8 <main+0x5c>

1c0079f8 <Max30102chushi>:
Max30102chushi():
1c0079f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0079fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c007a00:	29802076 	st.w	$r22,$r3,8(0x8)
1c007a04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007a08:	54171800 	bl	5912(0x1718) # 1c009120 <bsp_InitI2C>
1c007a0c:	541fc000 	bl	8128(0x1fc0) # 1c0099cc <maxim_max30102_reset>
1c007a10:	1cc7ff25 	pcaddu12i	$r5,409593(0x63ff9)
1c007a14:	289a50a5 	ld.w	$r5,$r5,1684(0x694)
1c007a18:	00150004 	move	$r4,$r0
1c007a1c:	541b7c00 	bl	7036(0x1b7c) # 1c009598 <maxim_max30102_read_reg>
1c007a20:	541c3000 	bl	7216(0x1c30) # 1c009650 <maxim_max30102_init>
1c007a24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a28:	2899318c 	ld.w	$r12,$r12,1612(0x64c)
1c007a2c:	29800180 	st.w	$r0,$r12,0
1c007a30:	50011c00 	b	284(0x11c) # 1c007b4c <Max30102chushi+0x154>
1c007a34:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a38:	2898f18c 	ld.w	$r12,$r12,1596(0x63c)
1c007a3c:	2880018c 	ld.w	$r12,$r12,0
1c007a40:	0040898d 	slli.w	$r13,$r12,0x2
1c007a44:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a48:	2898a18c 	ld.w	$r12,$r12,1576(0x628)
1c007a4c:	001031ae 	add.w	$r14,$r13,$r12
1c007a50:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a54:	2898818c 	ld.w	$r12,$r12,1568(0x620)
1c007a58:	2880018c 	ld.w	$r12,$r12,0
1c007a5c:	0040898d 	slli.w	$r13,$r12,0x2
1c007a60:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a64:	2897b18c 	ld.w	$r12,$r12,1516(0x5ec)
1c007a68:	001031ac 	add.w	$r12,$r13,$r12
1c007a6c:	00150185 	move	$r5,$r12
1c007a70:	001501c4 	move	$r4,$r14
1c007a74:	541d3800 	bl	7480(0x1d38) # 1c0097ac <maxim_max30102_read_fifo>
1c007a78:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a7c:	2897e18c 	ld.w	$r12,$r12,1528(0x5f8)
1c007a80:	2880018c 	ld.w	$r12,$r12,0
1c007a84:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007a88:	2897a1ad 	ld.w	$r13,$r13,1512(0x5e8)
1c007a8c:	0040898c 	slli.w	$r12,$r12,0x2
1c007a90:	001031ac 	add.w	$r12,$r13,$r12
1c007a94:	2880018d 	ld.w	$r13,$r12,0
1c007a98:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a9c:	0298918c 	addi.w	$r12,$r12,1572(0x624)
1c007aa0:	2880018c 	ld.w	$r12,$r12,0
1c007aa4:	6c0031ac 	bgeu	$r13,$r12,48(0x30) # 1c007ad4 <Max30102chushi+0xdc>
1c007aa8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007aac:	2897218c 	ld.w	$r12,$r12,1480(0x5c8)
1c007ab0:	2880018c 	ld.w	$r12,$r12,0
1c007ab4:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007ab8:	2896e1ad 	ld.w	$r13,$r13,1464(0x5b8)
1c007abc:	0040898c 	slli.w	$r12,$r12,0x2
1c007ac0:	001031ac 	add.w	$r12,$r13,$r12
1c007ac4:	2880018d 	ld.w	$r13,$r12,0
1c007ac8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007acc:	0297d18c 	addi.w	$r12,$r12,1524(0x5f4)
1c007ad0:	2980018d 	st.w	$r13,$r12,0
1c007ad4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ad8:	2896718c 	ld.w	$r12,$r12,1436(0x59c)
1c007adc:	2880018c 	ld.w	$r12,$r12,0
1c007ae0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007ae4:	289631ad 	ld.w	$r13,$r13,1420(0x58c)
1c007ae8:	0040898c 	slli.w	$r12,$r12,0x2
1c007aec:	001031ac 	add.w	$r12,$r13,$r12
1c007af0:	2880018d 	ld.w	$r13,$r12,0
1c007af4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007af8:	02a7018c 	addi.w	$r12,$r12,-1600(0x9c0)
1c007afc:	2880018c 	ld.w	$r12,$r12,0
1c007b00:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c007b30 <Max30102chushi+0x138>
1c007b04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b08:	2895b18c 	ld.w	$r12,$r12,1388(0x56c)
1c007b0c:	2880018c 	ld.w	$r12,$r12,0
1c007b10:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007b14:	289571ad 	ld.w	$r13,$r13,1372(0x55c)
1c007b18:	0040898c 	slli.w	$r12,$r12,0x2
1c007b1c:	001031ac 	add.w	$r12,$r13,$r12
1c007b20:	2880018d 	ld.w	$r13,$r12,0
1c007b24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b28:	02a6418c 	addi.w	$r12,$r12,-1648(0x990)
1c007b2c:	2980018d 	st.w	$r13,$r12,0
1c007b30:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b34:	2895018c 	ld.w	$r12,$r12,1344(0x540)
1c007b38:	2880018c 	ld.w	$r12,$r12,0
1c007b3c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007b40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b44:	2894c18c 	ld.w	$r12,$r12,1328(0x530)
1c007b48:	2980018d 	st.w	$r13,$r12,0
1c007b4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b50:	2894918c 	ld.w	$r12,$r12,1316(0x524)
1c007b54:	2880018d 	ld.w	$r13,$r12,0
1c007b58:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b5c:	0295818c 	addi.w	$r12,$r12,1376(0x560)
1c007b60:	2880018c 	ld.w	$r12,$r12,0
1c007b64:	63fed1ac 	blt	$r13,$r12,-304(0x3fed0) # 1c007a34 <Max30102chushi+0x3c>
1c007b68:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007b6c:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c007b70:	579a6fff 	bl	-26004(0xfff9a6c) # 1c0015dc <gpio_write_pin>
1c007b74:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b78:	2893f18c 	ld.w	$r12,$r12,1276(0x4fc)
1c007b7c:	2880018c 	ld.w	$r12,$r12,0
1c007b80:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007b84:	2893b1ad 	ld.w	$r13,$r13,1260(0x4ec)
1c007b88:	0040898c 	slli.w	$r12,$r12,0x2
1c007b8c:	001031ac 	add.w	$r12,$r13,$r12
1c007b90:	2880018d 	ld.w	$r13,$r12,0
1c007b94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b98:	2894018c 	ld.w	$r12,$r12,1280(0x500)
1c007b9c:	2980018d 	st.w	$r13,$r12,0
1c007ba0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ba4:	0294618c 	addi.w	$r12,$r12,1304(0x518)
1c007ba8:	2880018c 	ld.w	$r12,$r12,0
1c007bac:	1cc7ff2a 	pcaddu12i	$r10,409593(0x63ff9)
1c007bb0:	2893c14a 	ld.w	$r10,$r10,1264(0x4f0)
1c007bb4:	1cc7ff29 	pcaddu12i	$r9,409593(0x63ff9)
1c007bb8:	28930129 	ld.w	$r9,$r9,1216(0x4c0)
1c007bbc:	1cc7ff28 	pcaddu12i	$r8,409593(0x63ff9)
1c007bc0:	28934108 	ld.w	$r8,$r8,1232(0x4d0)
1c007bc4:	1cc7ff27 	pcaddu12i	$r7,409593(0x63ff9)
1c007bc8:	289260e7 	ld.w	$r7,$r7,1176(0x498)
1c007bcc:	1cc7ff26 	pcaddu12i	$r6,409593(0x63ff9)
1c007bd0:	289280c6 	ld.w	$r6,$r6,1184(0x4a0)
1c007bd4:	00150185 	move	$r5,$r12
1c007bd8:	1cc7ff24 	pcaddu12i	$r4,409593(0x63ff9)
1c007bdc:	2891d084 	ld.w	$r4,$r4,1140(0x474)
1c007be0:	57eb63ff 	bl	-5280(0xfffeb60) # 1c006740 <maxim_heart_rate_and_oxygen_saturation>
1c007be4:	03400000 	andi	$r0,$r0,0x0
1c007be8:	00150184 	move	$r4,$r12
1c007bec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007bf0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007bf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007bf8:	4c000020 	jirl	$r0,$r1,0

1c007bfc <Max30102_Work>:
Max30102_Work():
1c007bfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c00:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c04:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c0c:	57dc3fff 	bl	-9156(0xfffdc3c) # 1c005848 <OLED_Clear>
1c007c10:	54001c00 	bl	28(0x1c) # 1c007c2c <Gain_Hr_Spo>
1c007c14:	03400000 	andi	$r0,$r0,0x0
1c007c18:	00150184 	move	$r4,$r12
1c007c1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c28:	4c000020 	jirl	$r0,$r1,0

1c007c2c <Gain_Hr_Spo>:
Gain_Hr_Spo():
1c007c2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c30:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c34:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c40:	2890d18c 	ld.w	$r12,$r12,1076(0x434)
1c007c44:	29800180 	st.w	$r0,$r12,0
1c007c48:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c4c:	0291d18c 	addi.w	$r12,$r12,1140(0x474)
1c007c50:	140007ed 	lu12i.w	$r13,63(0x3f)
1c007c54:	03bffdad 	ori	$r13,$r13,0xfff
1c007c58:	2980018d 	st.w	$r13,$r12,0
1c007c5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c60:	02a1618c 	addi.w	$r12,$r12,-1960(0x858)
1c007c64:	29800180 	st.w	$r0,$r12,0
1c007c68:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c6c:	2890218c 	ld.w	$r12,$r12,1032(0x408)
1c007c70:	0280c80d 	addi.w	$r13,$r0,50(0x32)
1c007c74:	2980018d 	st.w	$r13,$r12,0
1c007c78:	50016000 	b	352(0x160) # 1c007dd8 <Gain_Hr_Spo+0x1ac>
1c007c7c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c80:	288fd18c 	ld.w	$r12,$r12,1012(0x3f4)
1c007c84:	2880018d 	ld.w	$r13,$r12,0
1c007c88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c8c:	288fa18c 	ld.w	$r12,$r12,1000(0x3e8)
1c007c90:	2880018c 	ld.w	$r12,$r12,0
1c007c94:	02bf398c 	addi.w	$r12,$r12,-50(0xfce)
1c007c98:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c007c9c:	288f51ce 	ld.w	$r14,$r14,980(0x3d4)
1c007ca0:	004089ad 	slli.w	$r13,$r13,0x2
1c007ca4:	001035cd 	add.w	$r13,$r14,$r13
1c007ca8:	288001ad 	ld.w	$r13,$r13,0
1c007cac:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c007cb0:	288f01ce 	ld.w	$r14,$r14,960(0x3c0)
1c007cb4:	0040898c 	slli.w	$r12,$r12,0x2
1c007cb8:	001031cc 	add.w	$r12,$r14,$r12
1c007cbc:	2980018d 	st.w	$r13,$r12,0
1c007cc0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007cc4:	288ec18c 	ld.w	$r12,$r12,944(0x3b0)
1c007cc8:	2880018d 	ld.w	$r13,$r12,0
1c007ccc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007cd0:	288e918c 	ld.w	$r12,$r12,932(0x3a4)
1c007cd4:	2880018c 	ld.w	$r12,$r12,0
1c007cd8:	02bf398c 	addi.w	$r12,$r12,-50(0xfce)
1c007cdc:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c007ce0:	288dc1ce 	ld.w	$r14,$r14,880(0x370)
1c007ce4:	004089ad 	slli.w	$r13,$r13,0x2
1c007ce8:	001035cd 	add.w	$r13,$r14,$r13
1c007cec:	288001ad 	ld.w	$r13,$r13,0
1c007cf0:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c007cf4:	288d71ce 	ld.w	$r14,$r14,860(0x35c)
1c007cf8:	0040898c 	slli.w	$r12,$r12,0x2
1c007cfc:	001031cc 	add.w	$r12,$r14,$r12
1c007d00:	2980018d 	st.w	$r13,$r12,0
1c007d04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d08:	288db18c 	ld.w	$r12,$r12,876(0x36c)
1c007d0c:	2880018c 	ld.w	$r12,$r12,0
1c007d10:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007d14:	288d71ad 	ld.w	$r13,$r13,860(0x35c)
1c007d18:	0040898c 	slli.w	$r12,$r12,0x2
1c007d1c:	001031ac 	add.w	$r12,$r13,$r12
1c007d20:	2880018d 	ld.w	$r13,$r12,0
1c007d24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d28:	028e618c 	addi.w	$r12,$r12,920(0x398)
1c007d2c:	2880018c 	ld.w	$r12,$r12,0
1c007d30:	6c0031ac 	bgeu	$r13,$r12,48(0x30) # 1c007d60 <Gain_Hr_Spo+0x134>
1c007d34:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d38:	288cf18c 	ld.w	$r12,$r12,828(0x33c)
1c007d3c:	2880018c 	ld.w	$r12,$r12,0
1c007d40:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007d44:	288cb1ad 	ld.w	$r13,$r13,812(0x32c)
1c007d48:	0040898c 	slli.w	$r12,$r12,0x2
1c007d4c:	001031ac 	add.w	$r12,$r13,$r12
1c007d50:	2880018d 	ld.w	$r13,$r12,0
1c007d54:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d58:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c007d5c:	2980018d 	st.w	$r13,$r12,0
1c007d60:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d64:	288c418c 	ld.w	$r12,$r12,784(0x310)
1c007d68:	2880018c 	ld.w	$r12,$r12,0
1c007d6c:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007d70:	288c01ad 	ld.w	$r13,$r13,768(0x300)
1c007d74:	0040898c 	slli.w	$r12,$r12,0x2
1c007d78:	001031ac 	add.w	$r12,$r13,$r12
1c007d7c:	2880018d 	ld.w	$r13,$r12,0
1c007d80:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d84:	029cd18c 	addi.w	$r12,$r12,1844(0x734)
1c007d88:	2880018c 	ld.w	$r12,$r12,0
1c007d8c:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c007dbc <Gain_Hr_Spo+0x190>
1c007d90:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d94:	288b818c 	ld.w	$r12,$r12,736(0x2e0)
1c007d98:	2880018c 	ld.w	$r12,$r12,0
1c007d9c:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007da0:	288b41ad 	ld.w	$r13,$r13,720(0x2d0)
1c007da4:	0040898c 	slli.w	$r12,$r12,0x2
1c007da8:	001031ac 	add.w	$r12,$r13,$r12
1c007dac:	2880018d 	ld.w	$r13,$r12,0
1c007db0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007db4:	029c118c 	addi.w	$r12,$r12,1796(0x704)
1c007db8:	2980018d 	st.w	$r13,$r12,0
1c007dbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007dc0:	288ad18c 	ld.w	$r12,$r12,692(0x2b4)
1c007dc4:	2880018c 	ld.w	$r12,$r12,0
1c007dc8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007dcc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007dd0:	288a918c 	ld.w	$r12,$r12,676(0x2a4)
1c007dd4:	2980018d 	st.w	$r13,$r12,0
1c007dd8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ddc:	288a618c 	ld.w	$r12,$r12,664(0x298)
1c007de0:	2880018d 	ld.w	$r13,$r12,0
1c007de4:	0282540c 	addi.w	$r12,$r0,149(0x95)
1c007de8:	67fe958d 	bge	$r12,$r13,-364(0x3fe94) # 1c007c7c <Gain_Hr_Spo+0x50>
1c007dec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007df0:	288a118c 	ld.w	$r12,$r12,644(0x284)
1c007df4:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c007df8:	2980018d 	st.w	$r13,$r12,0
1c007dfc:	5002cc00 	b	716(0x2cc) # 1c0080c8 <Gain_Hr_Spo+0x49c>
1c007e00:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e04:	2889c18c 	ld.w	$r12,$r12,624(0x270)
1c007e08:	2880018c 	ld.w	$r12,$r12,0
1c007e0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007e10:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007e14:	288971ad 	ld.w	$r13,$r13,604(0x25c)
1c007e18:	0040898c 	slli.w	$r12,$r12,0x2
1c007e1c:	001031ac 	add.w	$r12,$r13,$r12
1c007e20:	2880018d 	ld.w	$r13,$r12,0
1c007e24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e28:	2889c18c 	ld.w	$r12,$r12,624(0x270)
1c007e2c:	2980018d 	st.w	$r13,$r12,0
1c007e30:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e34:	2889018c 	ld.w	$r12,$r12,576(0x240)
1c007e38:	2880018c 	ld.w	$r12,$r12,0
1c007e3c:	0040898d 	slli.w	$r13,$r12,0x2
1c007e40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e44:	2888b18c 	ld.w	$r12,$r12,556(0x22c)
1c007e48:	001031ae 	add.w	$r14,$r13,$r12
1c007e4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e50:	2888918c 	ld.w	$r12,$r12,548(0x224)
1c007e54:	2880018c 	ld.w	$r12,$r12,0
1c007e58:	0040898d 	slli.w	$r13,$r12,0x2
1c007e5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e60:	2887c18c 	ld.w	$r12,$r12,496(0x1f0)
1c007e64:	001031ac 	add.w	$r12,$r13,$r12
1c007e68:	00150185 	move	$r5,$r12
1c007e6c:	001501c4 	move	$r4,$r14
1c007e70:	54193c00 	bl	6460(0x193c) # 1c0097ac <maxim_max30102_read_fifo>
1c007e74:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e78:	2887f18c 	ld.w	$r12,$r12,508(0x1fc)
1c007e7c:	2880018c 	ld.w	$r12,$r12,0
1c007e80:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007e84:	2887b1ad 	ld.w	$r13,$r13,492(0x1ec)
1c007e88:	0040898c 	slli.w	$r12,$r12,0x2
1c007e8c:	001031ac 	add.w	$r12,$r13,$r12
1c007e90:	2880018d 	ld.w	$r13,$r12,0
1c007e94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e98:	2888018c 	ld.w	$r12,$r12,512(0x200)
1c007e9c:	2880018c 	ld.w	$r12,$r12,0
1c007ea0:	6c01198d 	bgeu	$r12,$r13,280(0x118) # 1c007fb8 <Gain_Hr_Spo+0x38c>
1c007ea4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ea8:	2887318c 	ld.w	$r12,$r12,460(0x1cc)
1c007eac:	2880018c 	ld.w	$r12,$r12,0
1c007eb0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007eb4:	2886f1ad 	ld.w	$r13,$r13,444(0x1bc)
1c007eb8:	0040898c 	slli.w	$r12,$r12,0x2
1c007ebc:	001031ac 	add.w	$r12,$r13,$r12
1c007ec0:	2880018d 	ld.w	$r13,$r12,0
1c007ec4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ec8:	2887418c 	ld.w	$r12,$r12,464(0x1d0)
1c007ecc:	2880018c 	ld.w	$r12,$r12,0
1c007ed0:	001131ac 	sub.w	$r12,$r13,$r12
1c007ed4:	0015018d 	move	$r13,$r12
1c007ed8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007edc:	2884f18c 	ld.w	$r12,$r12,316(0x13c)
1c007ee0:	2980018d 	st.w	$r13,$r12,0
1c007ee4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ee8:	2884c18c 	ld.w	$r12,$r12,304(0x130)
1c007eec:	2880018c 	ld.w	$r12,$r12,0
1c007ef0:	0015018e 	move	$r14,$r12
1c007ef4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ef8:	0297018c 	addi.w	$r12,$r12,1472(0x5c0)
1c007efc:	2880018d 	ld.w	$r13,$r12,0
1c007f00:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f04:	0286f18c 	addi.w	$r12,$r12,444(0x1bc)
1c007f08:	2880018c 	ld.w	$r12,$r12,0
1c007f0c:	001131ac 	sub.w	$r12,$r13,$r12
1c007f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007f14:	002131cd 	div.wu	$r13,$r14,$r12
1c007f18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007f20 <Gain_Hr_Spo+0x2f4>
1c007f1c:	002a0007 	break	0x7
1c007f20:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f24:	2883d18c 	ld.w	$r12,$r12,244(0xf4)
1c007f28:	2980018d 	st.w	$r13,$r12,0
1c007f2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f30:	2883a18c 	ld.w	$r12,$r12,232(0xe8)
1c007f34:	2880018d 	ld.w	$r13,$r12,0
1c007f38:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c007f3c:	001c31ad 	mul.w	$r13,$r13,$r12
1c007f40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f44:	2883518c 	ld.w	$r12,$r12,212(0xd4)
1c007f48:	2980018d 	st.w	$r13,$r12,0
1c007f4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f50:	2884118c 	ld.w	$r12,$r12,260(0x104)
1c007f54:	2880018c 	ld.w	$r12,$r12,0
1c007f58:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c007f5c:	2882f1ad 	ld.w	$r13,$r13,188(0xbc)
1c007f60:	288001ad 	ld.w	$r13,$r13,0
1c007f64:	0011358c 	sub.w	$r12,$r12,$r13
1c007f68:	0015018d 	move	$r13,$r12
1c007f6c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f70:	2882a18c 	ld.w	$r12,$r12,168(0xa8)
1c007f74:	2980018d 	st.w	$r13,$r12,0
1c007f78:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f7c:	2882718c 	ld.w	$r12,$r12,156(0x9c)
1c007f80:	2880018c 	ld.w	$r12,$r12,0
1c007f84:	64001580 	bge	$r12,$r0,20(0x14) # 1c007f98 <Gain_Hr_Spo+0x36c>
1c007f88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f8c:	2883218c 	ld.w	$r12,$r12,200(0xc8)
1c007f90:	29800180 	st.w	$r0,$r12,0
1c007f94:	50011800 	b	280(0x118) # 1c0080ac <Gain_Hr_Spo+0x480>
1c007f98:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007f9c:	2881f18c 	ld.w	$r12,$r12,124(0x7c)
1c007fa0:	2880018c 	ld.w	$r12,$r12,0
1c007fa4:	0015018d 	move	$r13,$r12
1c007fa8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007fac:	2882a18c 	ld.w	$r12,$r12,168(0xa8)
1c007fb0:	2980018d 	st.w	$r13,$r12,0
1c007fb4:	5000f800 	b	248(0xf8) # 1c0080ac <Gain_Hr_Spo+0x480>
1c007fb8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007fbc:	2883718c 	ld.w	$r12,$r12,220(0xdc)
1c007fc0:	2880018d 	ld.w	$r13,$r12,0
1c007fc4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007fc8:	2882b18c 	ld.w	$r12,$r12,172(0xac)
1c007fcc:	2880018c 	ld.w	$r12,$r12,0
1c007fd0:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c007fd4:	288271ce 	ld.w	$r14,$r14,156(0x9c)
1c007fd8:	0040898c 	slli.w	$r12,$r12,0x2
1c007fdc:	001031cc 	add.w	$r12,$r14,$r12
1c007fe0:	2880018c 	ld.w	$r12,$r12,0
1c007fe4:	001131ac 	sub.w	$r12,$r13,$r12
1c007fe8:	0015018d 	move	$r13,$r12
1c007fec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ff0:	2880a18c 	ld.w	$r12,$r12,40(0x28)
1c007ff4:	2980018d 	st.w	$r13,$r12,0
1c007ff8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ffc:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c008000:	2880018c 	ld.w	$r12,$r12,0
1c008004:	0015018e 	move	$r14,$r12
1c008008:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00800c:	0292b18c 	addi.w	$r12,$r12,1196(0x4ac)
1c008010:	2880018d 	ld.w	$r13,$r12,0
1c008014:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008018:	0282a18c 	addi.w	$r12,$r12,168(0xa8)
1c00801c:	2880018c 	ld.w	$r12,$r12,0
1c008020:	001131ac 	sub.w	$r12,$r13,$r12
1c008024:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008028:	002131cd 	div.wu	$r13,$r14,$r12
1c00802c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c008034 <Gain_Hr_Spo+0x408>
1c008030:	002a0007 	break	0x7
1c008034:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008038:	28bf818c 	ld.w	$r12,$r12,-32(0xfe0)
1c00803c:	2980018d 	st.w	$r13,$r12,0
1c008040:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008044:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c008048:	2880018d 	ld.w	$r13,$r12,0
1c00804c:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c008050:	001c31ad 	mul.w	$r13,$r13,$r12
1c008054:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008058:	28bf018c 	ld.w	$r12,$r12,-64(0xfc0)
1c00805c:	2980018d 	st.w	$r13,$r12,0
1c008060:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008064:	28bfc18c 	ld.w	$r12,$r12,-16(0xff0)
1c008068:	2880018c 	ld.w	$r12,$r12,0
1c00806c:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008070:	28bea1ad 	ld.w	$r13,$r13,-88(0xfa8)
1c008074:	288001ad 	ld.w	$r13,$r13,0
1c008078:	0010358d 	add.w	$r13,$r12,$r13
1c00807c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008080:	28bf518c 	ld.w	$r12,$r12,-44(0xfd4)
1c008084:	2980018d 	st.w	$r13,$r12,0
1c008088:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00808c:	28bf218c 	ld.w	$r12,$r12,-56(0xfc8)
1c008090:	2880018d 	ld.w	$r13,$r12,0
1c008094:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c008098:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0080ac <Gain_Hr_Spo+0x480>
1c00809c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0080a0:	28bed18c 	ld.w	$r12,$r12,-76(0xfb4)
1c0080a4:	0283fc0d 	addi.w	$r13,$r0,255(0xff)
1c0080a8:	2980018d 	st.w	$r13,$r12,0
1c0080ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0080b0:	28bf118c 	ld.w	$r12,$r12,-60(0xfc4)
1c0080b4:	2880018c 	ld.w	$r12,$r12,0
1c0080b8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0080bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0080c0:	28bed18c 	ld.w	$r12,$r12,-76(0xfb4)
1c0080c4:	2980018d 	st.w	$r13,$r12,0
1c0080c8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0080cc:	28bea18c 	ld.w	$r12,$r12,-88(0xfa8)
1c0080d0:	2880018d 	ld.w	$r13,$r12,0
1c0080d4:	0282540c 	addi.w	$r12,$r0,149(0x95)
1c0080d8:	67fd298d 	bge	$r12,$r13,-728(0x3fd28) # 1c007e00 <Gain_Hr_Spo+0x1d4>
1c0080dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0080e0:	02bf718c 	addi.w	$r12,$r12,-36(0xfdc)
1c0080e4:	2880018c 	ld.w	$r12,$r12,0
1c0080e8:	1cc7ff2a 	pcaddu12i	$r10,409593(0x63ff9)
1c0080ec:	28bed14a 	ld.w	$r10,$r10,-76(0xfb4)
1c0080f0:	1cc7ff29 	pcaddu12i	$r9,409593(0x63ff9)
1c0080f4:	28be1129 	ld.w	$r9,$r9,-124(0xf84)
1c0080f8:	1cc7ff28 	pcaddu12i	$r8,409593(0x63ff9)
1c0080fc:	28be5108 	ld.w	$r8,$r8,-108(0xf94)
1c008100:	1cc7ff27 	pcaddu12i	$r7,409593(0x63ff9)
1c008104:	28bd70e7 	ld.w	$r7,$r7,-164(0xf5c)
1c008108:	1cc7ff26 	pcaddu12i	$r6,409593(0x63ff9)
1c00810c:	28bd90c6 	ld.w	$r6,$r6,-156(0xf64)
1c008110:	00150185 	move	$r5,$r12
1c008114:	1cc7ff24 	pcaddu12i	$r4,409593(0x63ff9)
1c008118:	28bce084 	ld.w	$r4,$r4,-200(0xf38)
1c00811c:	57e627ff 	bl	-6620(0xfffe624) # 1c006740 <maxim_heart_rate_and_oxygen_saturation>
1c008120:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008124:	28bdf18c 	ld.w	$r12,$r12,-132(0xf7c)
1c008128:	2800018d 	ld.b	$r13,$r12,0
1c00812c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c008130:	5c04edac 	bne	$r13,$r12,1260(0x4ec) # 1c00861c <Gain_Hr_Spo+0x9f0>
1c008134:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008138:	28bd018c 	ld.w	$r12,$r12,-192(0xf40)
1c00813c:	2880018d 	ld.w	$r13,$r12,0
1c008140:	0282f40c 	addi.w	$r12,$r0,189(0xbd)
1c008144:	6004d98d 	blt	$r12,$r13,1240(0x4d8) # 1c00861c <Gain_Hr_Spo+0x9f0>
1c008148:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00814c:	28bcb18c 	ld.w	$r12,$r12,-212(0xf2c)
1c008150:	2880018d 	ld.w	$r13,$r12,0
1c008154:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c008158:	6404c58d 	bge	$r12,$r13,1220(0x4c4) # 1c00861c <Gain_Hr_Spo+0x9f0>
1c00815c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008160:	028d718c 	addi.w	$r12,$r12,860(0x35c)
1c008164:	29800180 	st.w	$r0,$r12,0
1c008168:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00816c:	028d518c 	addi.w	$r12,$r12,852(0x354)
1c008170:	2880018d 	ld.w	$r13,$r12,0
1c008174:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008178:	5c00b9ac 	bne	$r13,$r12,184(0xb8) # 1c008230 <Gain_Hr_Spo+0x604>
1c00817c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008180:	028d118c 	addi.w	$r12,$r12,836(0x344)
1c008184:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008188:	2980018d 	st.w	$r13,$r12,0
1c00818c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008190:	028cc18c 	addi.w	$r12,$r12,816(0x330)
1c008194:	29800180 	st.w	$r0,$r12,0
1c008198:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00819c:	28bb618c 	ld.w	$r12,$r12,-296(0xed8)
1c0081a0:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0081a4:	2980018d 	st.w	$r13,$r12,0
1c0081a8:	50007000 	b	112(0x70) # 1c008218 <Gain_Hr_Spo+0x5ec>
1c0081ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0081b0:	28bb118c 	ld.w	$r12,$r12,-316(0xec4)
1c0081b4:	2880018c 	ld.w	$r12,$r12,0
1c0081b8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0081bc:	28baa1ad 	ld.w	$r13,$r13,-344(0xea8)
1c0081c0:	0040898c 	slli.w	$r12,$r12,0x2
1c0081c4:	001031ac 	add.w	$r12,$r13,$r12
1c0081c8:	2880018c 	ld.w	$r12,$r12,0
1c0081cc:	0280258d 	addi.w	$r13,$r12,9(0x9)
1c0081d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0081d4:	28ba918c 	ld.w	$r12,$r12,-348(0xea4)
1c0081d8:	2880018c 	ld.w	$r12,$r12,0
1c0081dc:	600021ac 	blt	$r13,$r12,32(0x20) # 1c0081fc <Gain_Hr_Spo+0x5d0>
1c0081e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0081e4:	028b818c 	addi.w	$r12,$r12,736(0x2e0)
1c0081e8:	29800180 	st.w	$r0,$r12,0
1c0081ec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0081f0:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c0081f4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0081f8:	2980018d 	st.w	$r13,$r12,0
1c0081fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008200:	28b9d18c 	ld.w	$r12,$r12,-396(0xe74)
1c008204:	2880018c 	ld.w	$r12,$r12,0
1c008208:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00820c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008210:	28b9918c 	ld.w	$r12,$r12,-412(0xe64)
1c008214:	2980018d 	st.w	$r13,$r12,0
1c008218:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00821c:	28b9618c 	ld.w	$r12,$r12,-424(0xe58)
1c008220:	2880018d 	ld.w	$r13,$r12,0
1c008224:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008228:	67ff858d 	bge	$r12,$r13,-124(0x3ff84) # 1c0081ac <Gain_Hr_Spo+0x580>
1c00822c:	50002000 	b	32(0x20) # 1c00824c <Gain_Hr_Spo+0x620>
1c008230:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008234:	028a318c 	addi.w	$r12,$r12,652(0x28c)
1c008238:	2880018c 	ld.w	$r12,$r12,0
1c00823c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008240:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008244:	0289f18c 	addi.w	$r12,$r12,636(0x27c)
1c008248:	2980018d 	st.w	$r13,$r12,0
1c00824c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008250:	0289d18c 	addi.w	$r12,$r12,628(0x274)
1c008254:	2880018c 	ld.w	$r12,$r12,0
1c008258:	4403b580 	bnez	$r12,948(0x3b4) # 1c00860c <Gain_Hr_Spo+0x9e0>
1c00825c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008260:	28b8518c 	ld.w	$r12,$r12,-492(0xe14)
1c008264:	29800180 	st.w	$r0,$r12,0
1c008268:	50006400 	b	100(0x64) # 1c0082cc <Gain_Hr_Spo+0x6a0>
1c00826c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008270:	28b8118c 	ld.w	$r12,$r12,-508(0xe04)
1c008274:	2880018c 	ld.w	$r12,$r12,0
1c008278:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00827c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008280:	28b7d18c 	ld.w	$r12,$r12,-524(0xdf4)
1c008284:	2880018c 	ld.w	$r12,$r12,0
1c008288:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c00828c:	28b761ce 	ld.w	$r14,$r14,-552(0xdd8)
1c008290:	004089ad 	slli.w	$r13,$r13,0x2
1c008294:	001035cd 	add.w	$r13,$r14,$r13
1c008298:	288001ad 	ld.w	$r13,$r13,0
1c00829c:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c0082a0:	28b711ce 	ld.w	$r14,$r14,-572(0xdc4)
1c0082a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0082a8:	001031cc 	add.w	$r12,$r14,$r12
1c0082ac:	2980018d 	st.w	$r13,$r12,0
1c0082b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082b4:	28b7018c 	ld.w	$r12,$r12,-576(0xdc0)
1c0082b8:	2880018c 	ld.w	$r12,$r12,0
1c0082bc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0082c0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082c4:	28b6c18c 	ld.w	$r12,$r12,-592(0xdb0)
1c0082c8:	2980018d 	st.w	$r13,$r12,0
1c0082cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082d0:	28b6918c 	ld.w	$r12,$r12,-604(0xda4)
1c0082d4:	2880018d 	ld.w	$r13,$r12,0
1c0082d8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0082dc:	67ff918d 	bge	$r12,$r13,-112(0x3ff90) # 1c00826c <Gain_Hr_Spo+0x640>
1c0082e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082e4:	28b6518c 	ld.w	$r12,$r12,-620(0xd94)
1c0082e8:	2880018d 	ld.w	$r13,$r12,0
1c0082ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082f0:	28b5d18c 	ld.w	$r12,$r12,-652(0xd74)
1c0082f4:	2980f18d 	st.w	$r13,$r12,60(0x3c)
1c0082f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082fc:	28b6118c 	ld.w	$r12,$r12,-636(0xd84)
1c008300:	2880018d 	ld.w	$r13,$r12,0
1c008304:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008308:	6000218d 	blt	$r12,$r13,32(0x20) # 1c008328 <Gain_Hr_Spo+0x6fc>
1c00830c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008310:	28b5c18c 	ld.w	$r12,$r12,-656(0xd70)
1c008314:	2880018c 	ld.w	$r12,$r12,0
1c008318:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00831c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008320:	28b5818c 	ld.w	$r12,$r12,-672(0xd60)
1c008324:	2980018d 	st.w	$r13,$r12,0
1c008328:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00832c:	28b4c18c 	ld.w	$r12,$r12,-720(0xd30)
1c008330:	29800180 	st.w	$r0,$r12,0
1c008334:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008338:	28b5218c 	ld.w	$r12,$r12,-696(0xd48)
1c00833c:	2880018d 	ld.w	$r13,$r12,0
1c008340:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c008344:	6000158d 	blt	$r12,$r13,20(0x14) # 1c008358 <Gain_Hr_Spo+0x72c>
1c008348:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00834c:	28b3018c 	ld.w	$r12,$r12,-832(0xcc0)
1c008350:	29800180 	st.w	$r0,$r12,0
1c008354:	5002b800 	b	696(0x2b8) # 1c00860c <Gain_Hr_Spo+0x9e0>
1c008358:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00835c:	28b4918c 	ld.w	$r12,$r12,-732(0xd24)
1c008360:	2880018d 	ld.w	$r13,$r12,0
1c008364:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c008368:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c00840c <Gain_Hr_Spo+0x7e0>
1c00836c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008370:	28b4118c 	ld.w	$r12,$r12,-764(0xd04)
1c008374:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c008378:	2980018d 	st.w	$r13,$r12,0
1c00837c:	50005c00 	b	92(0x5c) # 1c0083d8 <Gain_Hr_Spo+0x7ac>
1c008380:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008384:	28b3c18c 	ld.w	$r12,$r12,-784(0xcf0)
1c008388:	2880018c 	ld.w	$r12,$r12,0
1c00838c:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008390:	28b351ad 	ld.w	$r13,$r13,-812(0xcd4)
1c008394:	0040898c 	slli.w	$r12,$r12,0x2
1c008398:	001031ac 	add.w	$r12,$r13,$r12
1c00839c:	2880018d 	ld.w	$r13,$r12,0
1c0083a0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083a4:	28b2e18c 	ld.w	$r12,$r12,-840(0xcb8)
1c0083a8:	2880018c 	ld.w	$r12,$r12,0
1c0083ac:	001031ad 	add.w	$r13,$r13,$r12
1c0083b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083b4:	28b2a18c 	ld.w	$r12,$r12,-856(0xca8)
1c0083b8:	2980018d 	st.w	$r13,$r12,0
1c0083bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083c0:	28b2d18c 	ld.w	$r12,$r12,-844(0xcb4)
1c0083c4:	2880018c 	ld.w	$r12,$r12,0
1c0083c8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0083cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083d0:	28b2918c 	ld.w	$r12,$r12,-860(0xca4)
1c0083d4:	2980018d 	st.w	$r13,$r12,0
1c0083d8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083dc:	28b2618c 	ld.w	$r12,$r12,-872(0xc98)
1c0083e0:	2880018d 	ld.w	$r13,$r12,0
1c0083e4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0083e8:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008380 <Gain_Hr_Spo+0x754>
1c0083ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083f0:	28b1b18c 	ld.w	$r12,$r12,-916(0xc6c)
1c0083f4:	2880018c 	ld.w	$r12,$r12,0
1c0083f8:	0048858d 	srai.w	$r13,$r12,0x1
1c0083fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008400:	28b0318c 	ld.w	$r12,$r12,-1012(0xc0c)
1c008404:	2980018d 	st.w	$r13,$r12,0
1c008408:	50020400 	b	516(0x204) # 1c00860c <Gain_Hr_Spo+0x9e0>
1c00840c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008410:	28b1c18c 	ld.w	$r12,$r12,-912(0xc70)
1c008414:	2880018d 	ld.w	$r13,$r12,0
1c008418:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00841c:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c0084c0 <Gain_Hr_Spo+0x894>
1c008420:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008424:	28b1418c 	ld.w	$r12,$r12,-944(0xc50)
1c008428:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c00842c:	2980018d 	st.w	$r13,$r12,0
1c008430:	50005c00 	b	92(0x5c) # 1c00848c <Gain_Hr_Spo+0x860>
1c008434:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008438:	28b0f18c 	ld.w	$r12,$r12,-964(0xc3c)
1c00843c:	2880018c 	ld.w	$r12,$r12,0
1c008440:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008444:	28b081ad 	ld.w	$r13,$r13,-992(0xc20)
1c008448:	0040898c 	slli.w	$r12,$r12,0x2
1c00844c:	001031ac 	add.w	$r12,$r13,$r12
1c008450:	2880018d 	ld.w	$r13,$r12,0
1c008454:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008458:	28b0118c 	ld.w	$r12,$r12,-1020(0xc04)
1c00845c:	2880018c 	ld.w	$r12,$r12,0
1c008460:	001031ad 	add.w	$r13,$r13,$r12
1c008464:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008468:	28afd18c 	ld.w	$r12,$r12,-1036(0xbf4)
1c00846c:	2980018d 	st.w	$r13,$r12,0
1c008470:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008474:	28b0018c 	ld.w	$r12,$r12,-1024(0xc00)
1c008478:	2880018c 	ld.w	$r12,$r12,0
1c00847c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008480:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008484:	28afc18c 	ld.w	$r12,$r12,-1040(0xbf0)
1c008488:	2980018d 	st.w	$r13,$r12,0
1c00848c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008490:	28af918c 	ld.w	$r12,$r12,-1052(0xbe4)
1c008494:	2880018d 	ld.w	$r13,$r12,0
1c008498:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00849c:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008434 <Gain_Hr_Spo+0x808>
1c0084a0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084a4:	28aee18c 	ld.w	$r12,$r12,-1096(0xbb8)
1c0084a8:	2880018c 	ld.w	$r12,$r12,0
1c0084ac:	0048898d 	srai.w	$r13,$r12,0x2
1c0084b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084b4:	28ad618c 	ld.w	$r12,$r12,-1192(0xb58)
1c0084b8:	2980018d 	st.w	$r13,$r12,0
1c0084bc:	50015000 	b	336(0x150) # 1c00860c <Gain_Hr_Spo+0x9e0>
1c0084c0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084c4:	28aef18c 	ld.w	$r12,$r12,-1092(0xbbc)
1c0084c8:	2880018d 	ld.w	$r13,$r12,0
1c0084cc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0084d0:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c008574 <Gain_Hr_Spo+0x948>
1c0084d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084d8:	28ae718c 	ld.w	$r12,$r12,-1124(0xb9c)
1c0084dc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0084e0:	2980018d 	st.w	$r13,$r12,0
1c0084e4:	50005c00 	b	92(0x5c) # 1c008540 <Gain_Hr_Spo+0x914>
1c0084e8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084ec:	28ae218c 	ld.w	$r12,$r12,-1144(0xb88)
1c0084f0:	2880018c 	ld.w	$r12,$r12,0
1c0084f4:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0084f8:	28adb1ad 	ld.w	$r13,$r13,-1172(0xb6c)
1c0084fc:	0040898c 	slli.w	$r12,$r12,0x2
1c008500:	001031ac 	add.w	$r12,$r13,$r12
1c008504:	2880018d 	ld.w	$r13,$r12,0
1c008508:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00850c:	28ad418c 	ld.w	$r12,$r12,-1200(0xb50)
1c008510:	2880018c 	ld.w	$r12,$r12,0
1c008514:	001031ad 	add.w	$r13,$r13,$r12
1c008518:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00851c:	28ad018c 	ld.w	$r12,$r12,-1216(0xb40)
1c008520:	2980018d 	st.w	$r13,$r12,0
1c008524:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008528:	28ad318c 	ld.w	$r12,$r12,-1204(0xb4c)
1c00852c:	2880018c 	ld.w	$r12,$r12,0
1c008530:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008534:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008538:	28acf18c 	ld.w	$r12,$r12,-1220(0xb3c)
1c00853c:	2980018d 	st.w	$r13,$r12,0
1c008540:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008544:	28acc18c 	ld.w	$r12,$r12,-1232(0xb30)
1c008548:	2880018d 	ld.w	$r13,$r12,0
1c00854c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008550:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c0084e8 <Gain_Hr_Spo+0x8bc>
1c008554:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008558:	28ac118c 	ld.w	$r12,$r12,-1276(0xb04)
1c00855c:	2880018c 	ld.w	$r12,$r12,0
1c008560:	00488d8d 	srai.w	$r13,$r12,0x3
1c008564:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008568:	28aa918c 	ld.w	$r12,$r12,-1372(0xaa4)
1c00856c:	2980018d 	st.w	$r13,$r12,0
1c008570:	50009c00 	b	156(0x9c) # 1c00860c <Gain_Hr_Spo+0x9e0>
1c008574:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008578:	28abf18c 	ld.w	$r12,$r12,-1284(0xafc)
1c00857c:	29800180 	st.w	$r0,$r12,0
1c008580:	50005c00 	b	92(0x5c) # 1c0085dc <Gain_Hr_Spo+0x9b0>
1c008584:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008588:	28abb18c 	ld.w	$r12,$r12,-1300(0xaec)
1c00858c:	2880018c 	ld.w	$r12,$r12,0
1c008590:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008594:	28ab41ad 	ld.w	$r13,$r13,-1328(0xad0)
1c008598:	0040898c 	slli.w	$r12,$r12,0x2
1c00859c:	001031ac 	add.w	$r12,$r13,$r12
1c0085a0:	2880018d 	ld.w	$r13,$r12,0
1c0085a4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085a8:	28aad18c 	ld.w	$r12,$r12,-1356(0xab4)
1c0085ac:	2880018c 	ld.w	$r12,$r12,0
1c0085b0:	001031ad 	add.w	$r13,$r13,$r12
1c0085b4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085b8:	28aa918c 	ld.w	$r12,$r12,-1372(0xaa4)
1c0085bc:	2980018d 	st.w	$r13,$r12,0
1c0085c0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085c4:	28aac18c 	ld.w	$r12,$r12,-1360(0xab0)
1c0085c8:	2880018c 	ld.w	$r12,$r12,0
1c0085cc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0085d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085d4:	28aa818c 	ld.w	$r12,$r12,-1376(0xaa0)
1c0085d8:	2980018d 	st.w	$r13,$r12,0
1c0085dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085e0:	28aa518c 	ld.w	$r12,$r12,-1388(0xa94)
1c0085e4:	2880018d 	ld.w	$r13,$r12,0
1c0085e8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0085ec:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008584 <Gain_Hr_Spo+0x958>
1c0085f0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085f4:	28a9a18c 	ld.w	$r12,$r12,-1432(0xa68)
1c0085f8:	2880018c 	ld.w	$r12,$r12,0
1c0085fc:	0048918d 	srai.w	$r13,$r12,0x4
1c008600:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008604:	28a8218c 	ld.w	$r12,$r12,-1528(0xa08)
1c008608:	2980018d 	st.w	$r13,$r12,0
1c00860c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008610:	02bad18c 	addi.w	$r12,$r12,-332(0xeb4)
1c008614:	29800180 	st.w	$r0,$r12,0
1c008618:	50005c00 	b	92(0x5c) # 1c008674 <Gain_Hr_Spo+0xa48>
1c00861c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008620:	02ba818c 	addi.w	$r12,$r12,-352(0xea0)
1c008624:	29800180 	st.w	$r0,$r12,0
1c008628:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00862c:	02ba418c 	addi.w	$r12,$r12,-368(0xe90)
1c008630:	2880018d 	ld.w	$r13,$r12,0
1c008634:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008638:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c008658 <Gain_Hr_Spo+0xa2c>
1c00863c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008640:	28a7318c 	ld.w	$r12,$r12,-1588(0x9cc)
1c008644:	29800180 	st.w	$r0,$r12,0
1c008648:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00864c:	28a8d18c 	ld.w	$r12,$r12,-1484(0xa34)
1c008650:	29800180 	st.w	$r0,$r12,0
1c008654:	50002000 	b	32(0x20) # 1c008674 <Gain_Hr_Spo+0xa48>
1c008658:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00865c:	02b9818c 	addi.w	$r12,$r12,-416(0xe60)
1c008660:	2880018c 	ld.w	$r12,$r12,0
1c008664:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008668:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00866c:	02b9418c 	addi.w	$r12,$r12,-432(0xe50)
1c008670:	2980018d 	st.w	$r13,$r12,0
1c008674:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008678:	28a8618c 	ld.w	$r12,$r12,-1512(0xa18)
1c00867c:	2800018d 	ld.b	$r13,$r12,0
1c008680:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c008684:	5c04d9ac 	bne	$r13,$r12,1240(0x4d8) # 1c008b5c <Gain_Hr_Spo+0xf30>
1c008688:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00868c:	28a7518c 	ld.w	$r12,$r12,-1580(0x9d4)
1c008690:	2880018d 	ld.w	$r13,$r12,0
1c008694:	0280ec0c 	addi.w	$r12,$r0,59(0x3b)
1c008698:	6404c58d 	bge	$r12,$r13,1220(0x4c4) # 1c008b5c <Gain_Hr_Spo+0xf30>
1c00869c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0086a0:	02b8a18c 	addi.w	$r12,$r12,-472(0xe28)
1c0086a4:	29800180 	st.w	$r0,$r12,0
1c0086a8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0086ac:	02b8818c 	addi.w	$r12,$r12,-480(0xe20)
1c0086b0:	2880018d 	ld.w	$r13,$r12,0
1c0086b4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0086b8:	5c00b9ac 	bne	$r13,$r12,184(0xb8) # 1c008770 <Gain_Hr_Spo+0xb44>
1c0086bc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0086c0:	02b8418c 	addi.w	$r12,$r12,-496(0xe10)
1c0086c4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0086c8:	2980018d 	st.w	$r13,$r12,0
1c0086cc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0086d0:	02b7f18c 	addi.w	$r12,$r12,-516(0xdfc)
1c0086d4:	29800180 	st.w	$r0,$r12,0
1c0086d8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0086dc:	28a6618c 	ld.w	$r12,$r12,-1640(0x998)
1c0086e0:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0086e4:	2980018d 	st.w	$r13,$r12,0
1c0086e8:	50007000 	b	112(0x70) # 1c008758 <Gain_Hr_Spo+0xb2c>
1c0086ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0086f0:	28a6118c 	ld.w	$r12,$r12,-1660(0x984)
1c0086f4:	2880018c 	ld.w	$r12,$r12,0
1c0086f8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0086fc:	28a531ad 	ld.w	$r13,$r13,-1716(0x94c)
1c008700:	0040898c 	slli.w	$r12,$r12,0x2
1c008704:	001031ac 	add.w	$r12,$r13,$r12
1c008708:	2880018c 	ld.w	$r12,$r12,0
1c00870c:	02bfdd8d 	addi.w	$r13,$r12,-9(0xff7)
1c008710:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008714:	28a5318c 	ld.w	$r12,$r12,-1716(0x94c)
1c008718:	2880018c 	ld.w	$r12,$r12,0
1c00871c:	6000218d 	blt	$r12,$r13,32(0x20) # 1c00873c <Gain_Hr_Spo+0xb10>
1c008720:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008724:	02b6b18c 	addi.w	$r12,$r12,-596(0xdac)
1c008728:	29800180 	st.w	$r0,$r12,0
1c00872c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008730:	02b6718c 	addi.w	$r12,$r12,-612(0xd9c)
1c008734:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c008738:	2980018d 	st.w	$r13,$r12,0
1c00873c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008740:	28a4d18c 	ld.w	$r12,$r12,-1740(0x934)
1c008744:	2880018c 	ld.w	$r12,$r12,0
1c008748:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00874c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008750:	28a4918c 	ld.w	$r12,$r12,-1756(0x924)
1c008754:	2980018d 	st.w	$r13,$r12,0
1c008758:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00875c:	28a4618c 	ld.w	$r12,$r12,-1768(0x918)
1c008760:	2880018d 	ld.w	$r13,$r12,0
1c008764:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008768:	67ff858d 	bge	$r12,$r13,-124(0x3ff84) # 1c0086ec <Gain_Hr_Spo+0xac0>
1c00876c:	50002000 	b	32(0x20) # 1c00878c <Gain_Hr_Spo+0xb60>
1c008770:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008774:	02b5618c 	addi.w	$r12,$r12,-680(0xd58)
1c008778:	2880018c 	ld.w	$r12,$r12,0
1c00877c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008780:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008784:	02b5218c 	addi.w	$r12,$r12,-696(0xd48)
1c008788:	2980018d 	st.w	$r13,$r12,0
1c00878c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008790:	02b5018c 	addi.w	$r12,$r12,-704(0xd40)
1c008794:	2880018c 	ld.w	$r12,$r12,0
1c008798:	4403b580 	bnez	$r12,948(0x3b4) # 1c008b4c <Gain_Hr_Spo+0xf20>
1c00879c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087a0:	28a3518c 	ld.w	$r12,$r12,-1836(0x8d4)
1c0087a4:	29800180 	st.w	$r0,$r12,0
1c0087a8:	50006400 	b	100(0x64) # 1c00880c <Gain_Hr_Spo+0xbe0>
1c0087ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087b0:	28a3118c 	ld.w	$r12,$r12,-1852(0x8c4)
1c0087b4:	2880018c 	ld.w	$r12,$r12,0
1c0087b8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0087bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087c0:	28a2d18c 	ld.w	$r12,$r12,-1868(0x8b4)
1c0087c4:	2880018c 	ld.w	$r12,$r12,0
1c0087c8:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c0087cc:	28a1f1ce 	ld.w	$r14,$r14,-1924(0x87c)
1c0087d0:	004089ad 	slli.w	$r13,$r13,0x2
1c0087d4:	001035cd 	add.w	$r13,$r14,$r13
1c0087d8:	288001ad 	ld.w	$r13,$r13,0
1c0087dc:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c0087e0:	28a1a1ce 	ld.w	$r14,$r14,-1944(0x868)
1c0087e4:	0040898c 	slli.w	$r12,$r12,0x2
1c0087e8:	001031cc 	add.w	$r12,$r14,$r12
1c0087ec:	2980018d 	st.w	$r13,$r12,0
1c0087f0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087f4:	28a2018c 	ld.w	$r12,$r12,-1920(0x880)
1c0087f8:	2880018c 	ld.w	$r12,$r12,0
1c0087fc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008800:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008804:	28a1c18c 	ld.w	$r12,$r12,-1936(0x870)
1c008808:	2980018d 	st.w	$r13,$r12,0
1c00880c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008810:	28a1918c 	ld.w	$r12,$r12,-1948(0x864)
1c008814:	2880018d 	ld.w	$r13,$r12,0
1c008818:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00881c:	67ff918d 	bge	$r12,$r13,-112(0x3ff90) # 1c0087ac <Gain_Hr_Spo+0xb80>
1c008820:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008824:	28a0f18c 	ld.w	$r12,$r12,-1988(0x83c)
1c008828:	2880018d 	ld.w	$r13,$r12,0
1c00882c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008830:	28a0618c 	ld.w	$r12,$r12,-2024(0x818)
1c008834:	2980f18d 	st.w	$r13,$r12,60(0x3c)
1c008838:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00883c:	28a1018c 	ld.w	$r12,$r12,-1984(0x840)
1c008840:	2880018d 	ld.w	$r13,$r12,0
1c008844:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008848:	6000218d 	blt	$r12,$r13,32(0x20) # 1c008868 <Gain_Hr_Spo+0xc3c>
1c00884c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008850:	28a0b18c 	ld.w	$r12,$r12,-2004(0x82c)
1c008854:	2880018c 	ld.w	$r12,$r12,0
1c008858:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00885c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008860:	28a0718c 	ld.w	$r12,$r12,-2020(0x81c)
1c008864:	2980018d 	st.w	$r13,$r12,0
1c008868:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00886c:	28a0718c 	ld.w	$r12,$r12,-2020(0x81c)
1c008870:	29800180 	st.w	$r0,$r12,0
1c008874:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008878:	28a0118c 	ld.w	$r12,$r12,-2044(0x804)
1c00887c:	2880018d 	ld.w	$r13,$r12,0
1c008880:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c008884:	6000158d 	blt	$r12,$r13,20(0x14) # 1c008898 <Gain_Hr_Spo+0xc6c>
1c008888:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00888c:	28a0a18c 	ld.w	$r12,$r12,-2008(0x828)
1c008890:	29800180 	st.w	$r0,$r12,0
1c008894:	5002b800 	b	696(0x2b8) # 1c008b4c <Gain_Hr_Spo+0xf20>
1c008898:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00889c:	289f818c 	ld.w	$r12,$r12,2016(0x7e0)
1c0088a0:	2880018d 	ld.w	$r13,$r12,0
1c0088a4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0088a8:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c00894c <Gain_Hr_Spo+0xd20>
1c0088ac:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088b0:	289f118c 	ld.w	$r12,$r12,1988(0x7c4)
1c0088b4:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0088b8:	2980018d 	st.w	$r13,$r12,0
1c0088bc:	50005c00 	b	92(0x5c) # 1c008918 <Gain_Hr_Spo+0xcec>
1c0088c0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088c4:	289ec18c 	ld.w	$r12,$r12,1968(0x7b0)
1c0088c8:	2880018c 	ld.w	$r12,$r12,0
1c0088cc:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c0088d0:	289de1ad 	ld.w	$r13,$r13,1912(0x778)
1c0088d4:	0040898c 	slli.w	$r12,$r12,0x2
1c0088d8:	001031ac 	add.w	$r12,$r13,$r12
1c0088dc:	2880018d 	ld.w	$r13,$r12,0
1c0088e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088e4:	289e918c 	ld.w	$r12,$r12,1956(0x7a4)
1c0088e8:	2880018c 	ld.w	$r12,$r12,0
1c0088ec:	001031ad 	add.w	$r13,$r13,$r12
1c0088f0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088f4:	289e518c 	ld.w	$r12,$r12,1940(0x794)
1c0088f8:	2980018d 	st.w	$r13,$r12,0
1c0088fc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008900:	289dd18c 	ld.w	$r12,$r12,1908(0x774)
1c008904:	2880018c 	ld.w	$r12,$r12,0
1c008908:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00890c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008910:	289d918c 	ld.w	$r12,$r12,1892(0x764)
1c008914:	2980018d 	st.w	$r13,$r12,0
1c008918:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00891c:	289d618c 	ld.w	$r12,$r12,1880(0x758)
1c008920:	2880018d 	ld.w	$r13,$r12,0
1c008924:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008928:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c0088c0 <Gain_Hr_Spo+0xc94>
1c00892c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008930:	289d618c 	ld.w	$r12,$r12,1880(0x758)
1c008934:	2880018c 	ld.w	$r12,$r12,0
1c008938:	0048858d 	srai.w	$r13,$r12,0x1
1c00893c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008940:	289dd18c 	ld.w	$r12,$r12,1908(0x774)
1c008944:	2980018d 	st.w	$r13,$r12,0
1c008948:	50020400 	b	516(0x204) # 1c008b4c <Gain_Hr_Spo+0xf20>
1c00894c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008950:	289cb18c 	ld.w	$r12,$r12,1836(0x72c)
1c008954:	2880018d 	ld.w	$r13,$r12,0
1c008958:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00895c:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c008a00 <Gain_Hr_Spo+0xdd4>
1c008960:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008964:	289c418c 	ld.w	$r12,$r12,1808(0x710)
1c008968:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c00896c:	2980018d 	st.w	$r13,$r12,0
1c008970:	50005c00 	b	92(0x5c) # 1c0089cc <Gain_Hr_Spo+0xda0>
1c008974:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008978:	289bf18c 	ld.w	$r12,$r12,1788(0x6fc)
1c00897c:	2880018c 	ld.w	$r12,$r12,0
1c008980:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008984:	289b11ad 	ld.w	$r13,$r13,1732(0x6c4)
1c008988:	0040898c 	slli.w	$r12,$r12,0x2
1c00898c:	001031ac 	add.w	$r12,$r13,$r12
1c008990:	2880018d 	ld.w	$r13,$r12,0
1c008994:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008998:	289bc18c 	ld.w	$r12,$r12,1776(0x6f0)
1c00899c:	2880018c 	ld.w	$r12,$r12,0
1c0089a0:	001031ad 	add.w	$r13,$r13,$r12
1c0089a4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089a8:	289b818c 	ld.w	$r12,$r12,1760(0x6e0)
1c0089ac:	2980018d 	st.w	$r13,$r12,0
1c0089b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089b4:	289b018c 	ld.w	$r12,$r12,1728(0x6c0)
1c0089b8:	2880018c 	ld.w	$r12,$r12,0
1c0089bc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0089c0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089c4:	289ac18c 	ld.w	$r12,$r12,1712(0x6b0)
1c0089c8:	2980018d 	st.w	$r13,$r12,0
1c0089cc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089d0:	289a918c 	ld.w	$r12,$r12,1700(0x6a4)
1c0089d4:	2880018d 	ld.w	$r13,$r12,0
1c0089d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0089dc:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008974 <Gain_Hr_Spo+0xd48>
1c0089e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089e4:	289a918c 	ld.w	$r12,$r12,1700(0x6a4)
1c0089e8:	2880018c 	ld.w	$r12,$r12,0
1c0089ec:	0048898d 	srai.w	$r13,$r12,0x2
1c0089f0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0089f4:	289b018c 	ld.w	$r12,$r12,1728(0x6c0)
1c0089f8:	2980018d 	st.w	$r13,$r12,0
1c0089fc:	50015000 	b	336(0x150) # 1c008b4c <Gain_Hr_Spo+0xf20>
1c008a00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a04:	2899e18c 	ld.w	$r12,$r12,1656(0x678)
1c008a08:	2880018d 	ld.w	$r13,$r12,0
1c008a0c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008a10:	6000a58d 	blt	$r12,$r13,164(0xa4) # 1c008ab4 <Gain_Hr_Spo+0xe88>
1c008a14:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a18:	2899718c 	ld.w	$r12,$r12,1628(0x65c)
1c008a1c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c008a20:	2980018d 	st.w	$r13,$r12,0
1c008a24:	50005c00 	b	92(0x5c) # 1c008a80 <Gain_Hr_Spo+0xe54>
1c008a28:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a2c:	2899218c 	ld.w	$r12,$r12,1608(0x648)
1c008a30:	2880018c 	ld.w	$r12,$r12,0
1c008a34:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008a38:	289841ad 	ld.w	$r13,$r13,1552(0x610)
1c008a3c:	0040898c 	slli.w	$r12,$r12,0x2
1c008a40:	001031ac 	add.w	$r12,$r13,$r12
1c008a44:	2880018d 	ld.w	$r13,$r12,0
1c008a48:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a4c:	2898f18c 	ld.w	$r12,$r12,1596(0x63c)
1c008a50:	2880018c 	ld.w	$r12,$r12,0
1c008a54:	001031ad 	add.w	$r13,$r13,$r12
1c008a58:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a5c:	2898b18c 	ld.w	$r12,$r12,1580(0x62c)
1c008a60:	2980018d 	st.w	$r13,$r12,0
1c008a64:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a68:	2898318c 	ld.w	$r12,$r12,1548(0x60c)
1c008a6c:	2880018c 	ld.w	$r12,$r12,0
1c008a70:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008a74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a78:	2897f18c 	ld.w	$r12,$r12,1532(0x5fc)
1c008a7c:	2980018d 	st.w	$r13,$r12,0
1c008a80:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a84:	2897c18c 	ld.w	$r12,$r12,1520(0x5f0)
1c008a88:	2880018d 	ld.w	$r13,$r12,0
1c008a8c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008a90:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008a28 <Gain_Hr_Spo+0xdfc>
1c008a94:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008a98:	2897c18c 	ld.w	$r12,$r12,1520(0x5f0)
1c008a9c:	2880018c 	ld.w	$r12,$r12,0
1c008aa0:	00488d8d 	srai.w	$r13,$r12,0x3
1c008aa4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008aa8:	2898318c 	ld.w	$r12,$r12,1548(0x60c)
1c008aac:	2980018d 	st.w	$r13,$r12,0
1c008ab0:	50009c00 	b	156(0x9c) # 1c008b4c <Gain_Hr_Spo+0xf20>
1c008ab4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ab8:	2896f18c 	ld.w	$r12,$r12,1468(0x5bc)
1c008abc:	29800180 	st.w	$r0,$r12,0
1c008ac0:	50005c00 	b	92(0x5c) # 1c008b1c <Gain_Hr_Spo+0xef0>
1c008ac4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ac8:	2896b18c 	ld.w	$r12,$r12,1452(0x5ac)
1c008acc:	2880018c 	ld.w	$r12,$r12,0
1c008ad0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008ad4:	2895d1ad 	ld.w	$r13,$r13,1396(0x574)
1c008ad8:	0040898c 	slli.w	$r12,$r12,0x2
1c008adc:	001031ac 	add.w	$r12,$r13,$r12
1c008ae0:	2880018d 	ld.w	$r13,$r12,0
1c008ae4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ae8:	2896818c 	ld.w	$r12,$r12,1440(0x5a0)
1c008aec:	2880018c 	ld.w	$r12,$r12,0
1c008af0:	001031ad 	add.w	$r13,$r13,$r12
1c008af4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008af8:	2896418c 	ld.w	$r12,$r12,1424(0x590)
1c008afc:	2980018d 	st.w	$r13,$r12,0
1c008b00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b04:	2895c18c 	ld.w	$r12,$r12,1392(0x570)
1c008b08:	2880018c 	ld.w	$r12,$r12,0
1c008b0c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008b10:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b14:	2895818c 	ld.w	$r12,$r12,1376(0x560)
1c008b18:	2980018d 	st.w	$r13,$r12,0
1c008b1c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b20:	2895518c 	ld.w	$r12,$r12,1364(0x554)
1c008b24:	2880018d 	ld.w	$r13,$r12,0
1c008b28:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008b2c:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c008ac4 <Gain_Hr_Spo+0xe98>
1c008b30:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b34:	2895518c 	ld.w	$r12,$r12,1364(0x554)
1c008b38:	2880018c 	ld.w	$r12,$r12,0
1c008b3c:	0048918d 	srai.w	$r13,$r12,0x4
1c008b40:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b44:	2895c18c 	ld.w	$r12,$r12,1392(0x570)
1c008b48:	2980018d 	st.w	$r13,$r12,0
1c008b4c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b50:	02a6018c 	addi.w	$r12,$r12,-1664(0x980)
1c008b54:	29800180 	st.w	$r0,$r12,0
1c008b58:	50005c00 	b	92(0x5c) # 1c008bb4 <Gain_Hr_Spo+0xf88>
1c008b5c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b60:	02a5b18c 	addi.w	$r12,$r12,-1684(0x96c)
1c008b64:	29800180 	st.w	$r0,$r12,0
1c008b68:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b6c:	02a5718c 	addi.w	$r12,$r12,-1700(0x95c)
1c008b70:	2880018d 	ld.w	$r13,$r12,0
1c008b74:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008b78:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c008b98 <Gain_Hr_Spo+0xf6c>
1c008b7c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b80:	2894d18c 	ld.w	$r12,$r12,1332(0x534)
1c008b84:	29800180 	st.w	$r0,$r12,0
1c008b88:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b8c:	2893c18c 	ld.w	$r12,$r12,1264(0x4f0)
1c008b90:	29800180 	st.w	$r0,$r12,0
1c008b94:	50002000 	b	32(0x20) # 1c008bb4 <Gain_Hr_Spo+0xf88>
1c008b98:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b9c:	02a4b18c 	addi.w	$r12,$r12,-1748(0x92c)
1c008ba0:	2880018c 	ld.w	$r12,$r12,0
1c008ba4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008ba8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008bac:	02a4718c 	addi.w	$r12,$r12,-1764(0x91c)
1c008bb0:	2980018d 	st.w	$r13,$r12,0
1c008bb4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008bb8:	2891518c 	ld.w	$r12,$r12,1108(0x454)
1c008bbc:	2880018c 	ld.w	$r12,$r12,0
1c008bc0:	40051d80 	beqz	$r12,1308(0x51c) # 1c0090dc <Gain_Hr_Spo+0x14b0>
1c008bc4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008bc8:	2893b18c 	ld.w	$r12,$r12,1260(0x4ec)
1c008bcc:	2880018c 	ld.w	$r12,$r12,0
1c008bd0:	40050d80 	beqz	$r12,1292(0x50c) # 1c0090dc <Gain_Hr_Spo+0x14b0>
1c008bd4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008bd8:	2890e18c 	ld.w	$r12,$r12,1080(0x438)
1c008bdc:	2880018c 	ld.w	$r12,$r12,0
1c008be0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008be4:	2890a1ad 	ld.w	$r13,$r13,1064(0x428)
1c008be8:	288001ad 	ld.w	$r13,$r13,0
1c008bec:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008bf0:	289141ce 	ld.w	$r14,$r14,1104(0x450)
1c008bf4:	0040898c 	slli.w	$r12,$r12,0x2
1c008bf8:	001031cc 	add.w	$r12,$r14,$r12
1c008bfc:	2980018d 	st.w	$r13,$r12,0
1c008c00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c04:	2890318c 	ld.w	$r12,$r12,1036(0x40c)
1c008c08:	2880018c 	ld.w	$r12,$r12,0
1c008c0c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c008c10:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008c14:	288ff1ad 	ld.w	$r13,$r13,1020(0x3fc)
1c008c18:	298001ae 	st.w	$r14,$r13,0
1c008c1c:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008c20:	289251ad 	ld.w	$r13,$r13,1172(0x494)
1c008c24:	288001ad 	ld.w	$r13,$r13,0
1c008c28:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008c2c:	288fc1ce 	ld.w	$r14,$r14,1008(0x3f0)
1c008c30:	0040898c 	slli.w	$r12,$r12,0x2
1c008c34:	001031cc 	add.w	$r12,$r14,$r12
1c008c38:	2980018d 	st.w	$r13,$r12,0
1c008c3c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c40:	288f418c 	ld.w	$r12,$r12,976(0x3d0)
1c008c44:	2880018c 	ld.w	$r12,$r12,0
1c008c48:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008c4c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c50:	00150186 	move	$r6,$r12
1c008c54:	00150005 	move	$r5,$r0
1c008c58:	02819004 	addi.w	$r4,$r0,100(0x64)
1c008c5c:	57d0a3ff 	bl	-12128(0xfffd0a0) # 1c005cfc <OLED_ShowInt32Num>
1c008c60:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c64:	288eb18c 	ld.w	$r12,$r12,940(0x3ac)
1c008c68:	2880018d 	ld.w	$r13,$r12,0
1c008c6c:	0280780c 	addi.w	$r12,$r0,30(0x1e)
1c008c70:	5c043dac 	bne	$r13,$r12,1084(0x43c) # 1c0090ac <Gain_Hr_Spo+0x1480>
1c008c74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c78:	288e618c 	ld.w	$r12,$r12,920(0x398)
1c008c7c:	29800180 	st.w	$r0,$r12,0
1c008c80:	50022800 	b	552(0x228) # 1c008ea8 <Gain_Hr_Spo+0x127c>
1c008c84:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c88:	288e218c 	ld.w	$r12,$r12,904(0x388)
1c008c8c:	2880018c 	ld.w	$r12,$r12,0
1c008c90:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008c94:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008c98:	288eb18c 	ld.w	$r12,$r12,940(0x3ac)
1c008c9c:	2980018d 	st.w	$r13,$r12,0
1c008ca0:	5001d800 	b	472(0x1d8) # 1c008e78 <Gain_Hr_Spo+0x124c>
1c008ca4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ca8:	288e718c 	ld.w	$r12,$r12,924(0x39c)
1c008cac:	2880018c 	ld.w	$r12,$r12,0
1c008cb0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008cb4:	288e31ad 	ld.w	$r13,$r13,908(0x38c)
1c008cb8:	0040898c 	slli.w	$r12,$r12,0x2
1c008cbc:	001031ac 	add.w	$r12,$r13,$r12
1c008cc0:	2880018d 	ld.w	$r13,$r12,0
1c008cc4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008cc8:	288d218c 	ld.w	$r12,$r12,840(0x348)
1c008ccc:	2880018c 	ld.w	$r12,$r12,0
1c008cd0:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008cd4:	288db1ce 	ld.w	$r14,$r14,876(0x36c)
1c008cd8:	0040898c 	slli.w	$r12,$r12,0x2
1c008cdc:	001031cc 	add.w	$r12,$r14,$r12
1c008ce0:	2880018c 	ld.w	$r12,$r12,0
1c008ce4:	64009dac 	bge	$r13,$r12,156(0x9c) # 1c008d80 <Gain_Hr_Spo+0x1154>
1c008ce8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008cec:	288c918c 	ld.w	$r12,$r12,804(0x324)
1c008cf0:	2880018c 	ld.w	$r12,$r12,0
1c008cf4:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008cf8:	288d21ad 	ld.w	$r13,$r13,840(0x348)
1c008cfc:	0040898c 	slli.w	$r12,$r12,0x2
1c008d00:	001031ac 	add.w	$r12,$r13,$r12
1c008d04:	2880018d 	ld.w	$r13,$r12,0
1c008d08:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008d0c:	288d018c 	ld.w	$r12,$r12,832(0x340)
1c008d10:	2980018d 	st.w	$r13,$r12,0
1c008d14:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008d18:	288cb18c 	ld.w	$r12,$r12,812(0x32c)
1c008d1c:	2880018d 	ld.w	$r13,$r12,0
1c008d20:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008d24:	288bb18c 	ld.w	$r12,$r12,748(0x2ec)
1c008d28:	2880018c 	ld.w	$r12,$r12,0
1c008d2c:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008d30:	288c41ce 	ld.w	$r14,$r14,784(0x310)
1c008d34:	004089ad 	slli.w	$r13,$r13,0x2
1c008d38:	001035cd 	add.w	$r13,$r14,$r13
1c008d3c:	288001ad 	ld.w	$r13,$r13,0
1c008d40:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008d44:	288bf1ce 	ld.w	$r14,$r14,764(0x2fc)
1c008d48:	0040898c 	slli.w	$r12,$r12,0x2
1c008d4c:	001031cc 	add.w	$r12,$r14,$r12
1c008d50:	2980018d 	st.w	$r13,$r12,0
1c008d54:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008d58:	288bb18c 	ld.w	$r12,$r12,748(0x2ec)
1c008d5c:	2880018c 	ld.w	$r12,$r12,0
1c008d60:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008d64:	288ba1ad 	ld.w	$r13,$r13,744(0x2e8)
1c008d68:	288001ad 	ld.w	$r13,$r13,0
1c008d6c:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008d70:	288b41ce 	ld.w	$r14,$r14,720(0x2d0)
1c008d74:	0040898c 	slli.w	$r12,$r12,0x2
1c008d78:	001031cc 	add.w	$r12,$r14,$r12
1c008d7c:	2980018d 	st.w	$r13,$r12,0
1c008d80:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008d84:	288b018c 	ld.w	$r12,$r12,704(0x2c0)
1c008d88:	2880018c 	ld.w	$r12,$r12,0
1c008d8c:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008d90:	288a31ad 	ld.w	$r13,$r13,652(0x28c)
1c008d94:	0040898c 	slli.w	$r12,$r12,0x2
1c008d98:	001031ac 	add.w	$r12,$r13,$r12
1c008d9c:	2880018d 	ld.w	$r13,$r12,0
1c008da0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008da4:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c008da8:	2880018c 	ld.w	$r12,$r12,0
1c008dac:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008db0:	2889b1ce 	ld.w	$r14,$r14,620(0x26c)
1c008db4:	0040898c 	slli.w	$r12,$r12,0x2
1c008db8:	001031cc 	add.w	$r12,$r14,$r12
1c008dbc:	2880018c 	ld.w	$r12,$r12,0
1c008dc0:	64009dac 	bge	$r13,$r12,156(0x9c) # 1c008e5c <Gain_Hr_Spo+0x1230>
1c008dc4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008dc8:	2889218c 	ld.w	$r12,$r12,584(0x248)
1c008dcc:	2880018c 	ld.w	$r12,$r12,0
1c008dd0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008dd4:	288921ad 	ld.w	$r13,$r13,584(0x248)
1c008dd8:	0040898c 	slli.w	$r12,$r12,0x2
1c008ddc:	001031ac 	add.w	$r12,$r13,$r12
1c008de0:	2880018d 	ld.w	$r13,$r12,0
1c008de4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008de8:	2889918c 	ld.w	$r12,$r12,612(0x264)
1c008dec:	2980018d 	st.w	$r13,$r12,0
1c008df0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008df4:	2889418c 	ld.w	$r12,$r12,592(0x250)
1c008df8:	2880018d 	ld.w	$r13,$r12,0
1c008dfc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e00:	2888418c 	ld.w	$r12,$r12,528(0x210)
1c008e04:	2880018c 	ld.w	$r12,$r12,0
1c008e08:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008e0c:	288841ce 	ld.w	$r14,$r14,528(0x210)
1c008e10:	004089ad 	slli.w	$r13,$r13,0x2
1c008e14:	001035cd 	add.w	$r13,$r14,$r13
1c008e18:	288001ad 	ld.w	$r13,$r13,0
1c008e1c:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008e20:	2887f1ce 	ld.w	$r14,$r14,508(0x1fc)
1c008e24:	0040898c 	slli.w	$r12,$r12,0x2
1c008e28:	001031cc 	add.w	$r12,$r14,$r12
1c008e2c:	2980018d 	st.w	$r13,$r12,0
1c008e30:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e34:	2888418c 	ld.w	$r12,$r12,528(0x210)
1c008e38:	2880018c 	ld.w	$r12,$r12,0
1c008e3c:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c008e40:	288831ad 	ld.w	$r13,$r13,524(0x20c)
1c008e44:	288001ad 	ld.w	$r13,$r13,0
1c008e48:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c008e4c:	288741ce 	ld.w	$r14,$r14,464(0x1d0)
1c008e50:	0040898c 	slli.w	$r12,$r12,0x2
1c008e54:	001031cc 	add.w	$r12,$r14,$r12
1c008e58:	2980018d 	st.w	$r13,$r12,0
1c008e5c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e60:	2887918c 	ld.w	$r12,$r12,484(0x1e4)
1c008e64:	2880018c 	ld.w	$r12,$r12,0
1c008e68:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008e6c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e70:	2887518c 	ld.w	$r12,$r12,468(0x1d4)
1c008e74:	2980018d 	st.w	$r13,$r12,0
1c008e78:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e7c:	2887218c 	ld.w	$r12,$r12,456(0x1c8)
1c008e80:	2880018d 	ld.w	$r13,$r12,0
1c008e84:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c008e88:	67fe1d8d 	bge	$r12,$r13,-484(0x3fe1c) # 1c008ca4 <Gain_Hr_Spo+0x1078>
1c008e8c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e90:	2886018c 	ld.w	$r12,$r12,384(0x180)
1c008e94:	2880018c 	ld.w	$r12,$r12,0
1c008e98:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008e9c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ea0:	2885c18c 	ld.w	$r12,$r12,368(0x170)
1c008ea4:	2980018d 	st.w	$r13,$r12,0
1c008ea8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008eac:	2885918c 	ld.w	$r12,$r12,356(0x164)
1c008eb0:	2880018d 	ld.w	$r13,$r12,0
1c008eb4:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c008eb8:	67fdcd8d 	bge	$r12,$r13,-564(0x3fdcc) # 1c008c84 <Gain_Hr_Spo+0x1058>
1c008ebc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ec0:	2886018c 	ld.w	$r12,$r12,384(0x180)
1c008ec4:	2880a18c 	ld.w	$r12,$r12,40(0x28)
1c008ec8:	0280158d 	addi.w	$r13,$r12,5(0x5)
1c008ecc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ed0:	2885118c 	ld.w	$r12,$r12,324(0x144)
1c008ed4:	2980018d 	st.w	$r13,$r12,0
1c008ed8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008edc:	2885018c 	ld.w	$r12,$r12,320(0x140)
1c008ee0:	2880a18c 	ld.w	$r12,$r12,40(0x28)
1c008ee4:	02801d8d 	addi.w	$r13,$r12,7(0x7)
1c008ee8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008eec:	2886a18c 	ld.w	$r12,$r12,424(0x1a8)
1c008ef0:	2980018d 	st.w	$r13,$r12,0
1c008ef4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ef8:	2884718c 	ld.w	$r12,$r12,284(0x11c)
1c008efc:	2880018c 	ld.w	$r12,$r12,0
1c008f00:	00150186 	move	$r6,$r12
1c008f04:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f08:	02b760a5 	addi.w	$r5,$r5,-552(0xdd8)
1c008f0c:	1cc7ff04 	pcaddu12i	$r4,409592(0x63ff8)
1c008f10:	2885d084 	ld.w	$r4,$r4,372(0x174)
1c008f14:	579613ff 	bl	-27120(0xfff9610) # 1c002524 <sprintf>
1c008f18:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f1c:	2885e18c 	ld.w	$r12,$r12,376(0x178)
1c008f20:	2880018c 	ld.w	$r12,$r12,0
1c008f24:	00150186 	move	$r6,$r12
1c008f28:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f2c:	02b6d0a5 	addi.w	$r5,$r5,-588(0xdb4)
1c008f30:	1cc7ff04 	pcaddu12i	$r4,409592(0x63ff8)
1c008f34:	2885e084 	ld.w	$r4,$r4,376(0x178)
1c008f38:	5795efff 	bl	-27156(0xfff95ec) # 1c002524 <sprintf>
1c008f3c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f40:	02b690a5 	addi.w	$r5,$r5,-604(0xda4)
1c008f44:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008f48:	579a97ff 	bl	-25964(0xfff9a94) # 1c0029dc <UART_SendString>
1c008f4c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c008f50:	1cc7ff06 	pcaddu12i	$r6,409592(0x63ff8)
1c008f54:	2884c0c6 	ld.w	$r6,$r6,304(0x130)
1c008f58:	00150005 	move	$r5,$r0
1c008f5c:	00150004 	move	$r4,$r0
1c008f60:	57d213ff 	bl	-11760(0xfffd210) # 1c006170 <OLED_Show_Str>
1c008f64:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f68:	02b600a5 	addi.w	$r5,$r5,-640(0xd80)
1c008f6c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008f70:	579a6fff 	bl	-26004(0xfff9a6c) # 1c0029dc <UART_SendString>
1c008f74:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f78:	02b620a5 	addi.w	$r5,$r5,-632(0xd88)
1c008f7c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008f80:	579a5fff 	bl	-26020(0xfff9a5c) # 1c0029dc <UART_SendString>
1c008f84:	1cc7ff05 	pcaddu12i	$r5,409592(0x63ff8)
1c008f88:	2883f0a5 	ld.w	$r5,$r5,252(0xfc)
1c008f8c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008f90:	579a4fff 	bl	-26036(0xfff9a4c) # 1c0029dc <UART_SendString>
1c008f94:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008f98:	02b530a5 	addi.w	$r5,$r5,-692(0xd4c)
1c008f9c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008fa0:	579a3fff 	bl	-26052(0xfff9a3c) # 1c0029dc <UART_SendString>
1c008fa4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c008fa8:	1cc7ff06 	pcaddu12i	$r6,409592(0x63ff8)
1c008fac:	288400c6 	ld.w	$r6,$r6,256(0x100)
1c008fb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008fb4:	00150004 	move	$r4,$r0
1c008fb8:	57d1bbff 	bl	-11848(0xfffd1b8) # 1c006170 <OLED_Show_Str>
1c008fbc:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008fc0:	02b530a5 	addi.w	$r5,$r5,-692(0xd4c)
1c008fc4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008fc8:	579a17ff 	bl	-26092(0xfff9a14) # 1c0029dc <UART_SendString>
1c008fcc:	1cc7ff05 	pcaddu12i	$r5,409592(0x63ff8)
1c008fd0:	288370a5 	ld.w	$r5,$r5,220(0xdc)
1c008fd4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008fd8:	579a07ff 	bl	-26108(0xfff9a04) # 1c0029dc <UART_SendString>
1c008fdc:	1c000065 	pcaddu12i	$r5,3(0x3)
1c008fe0:	02b410a5 	addi.w	$r5,$r5,-764(0xd04)
1c008fe4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c008fe8:	5799f7ff 	bl	-26124(0xfff99f4) # 1c0029dc <UART_SendString>
1c008fec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ff0:	2880918c 	ld.w	$r12,$r12,36(0x24)
1c008ff4:	2880018d 	ld.w	$r13,$r12,0
1c008ff8:	0280ec0c 	addi.w	$r12,$r0,59(0x3b)
1c008ffc:	6000498d 	blt	$r12,$r13,72(0x48) # 1c009044 <Gain_Hr_Spo+0x1418>
1c009000:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009004:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c009008:	2880018c 	ld.w	$r12,$r12,0
1c00900c:	40003980 	beqz	$r12,56(0x38) # 1c009044 <Gain_Hr_Spo+0x1418>
1c009010:	1400002c 	lu12i.w	$r12,1(0x1)
1c009014:	038e2184 	ori	$r4,$r12,0x388
1c009018:	57a653ff 	bl	-22960(0xfffa650) # 1c003668 <delay_ms>
1c00901c:	1c000065 	pcaddu12i	$r5,3(0x3)
1c009020:	02b3d0a5 	addi.w	$r5,$r5,-780(0xcf4)
1c009024:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c009028:	5799b7ff 	bl	-26188(0xfff99b4) # 1c0029dc <UART_SendString>
1c00902c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c009030:	57a67bff 	bl	-22920(0xfffa678) # 1c0036a8 <delay_s>
1c009034:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009038:	28bf718c 	ld.w	$r12,$r12,-36(0xfdc)
1c00903c:	29800180 	st.w	$r0,$r12,0
1c009040:	57c80bff 	bl	-14328(0xfffc808) # 1c005848 <OLED_Clear>
1c009044:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009048:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c00904c:	2880018d 	ld.w	$r13,$r12,0
1c009050:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c009054:	6400498d 	bge	$r12,$r13,72(0x48) # 1c00909c <Gain_Hr_Spo+0x1470>
1c009058:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00905c:	28bee18c 	ld.w	$r12,$r12,-72(0xfb8)
1c009060:	2880018c 	ld.w	$r12,$r12,0
1c009064:	40003980 	beqz	$r12,56(0x38) # 1c00909c <Gain_Hr_Spo+0x1470>
1c009068:	1400002c 	lu12i.w	$r12,1(0x1)
1c00906c:	038e2184 	ori	$r4,$r12,0x388
1c009070:	57a5fbff 	bl	-23048(0xfffa5f8) # 1c003668 <delay_ms>
1c009074:	1c000065 	pcaddu12i	$r5,3(0x3)
1c009078:	02b270a5 	addi.w	$r5,$r5,-868(0xc9c)
1c00907c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c009080:	57995fff 	bl	-26276(0xfff995c) # 1c0029dc <UART_SendString>
1c009084:	02800404 	addi.w	$r4,$r0,1(0x1)
1c009088:	57a623ff 	bl	-23008(0xfffa620) # 1c0036a8 <delay_s>
1c00908c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009090:	28be118c 	ld.w	$r12,$r12,-124(0xf84)
1c009094:	29800180 	st.w	$r0,$r12,0
1c009098:	57c7b3ff 	bl	-14416(0xfffc7b0) # 1c005848 <OLED_Clear>
1c00909c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0090a0:	28bdc18c 	ld.w	$r12,$r12,-144(0xf70)
1c0090a4:	29800180 	st.w	$r0,$r12,0
1c0090a8:	50006400 	b	100(0x64) # 1c00910c <Gain_Hr_Spo+0x14e0>
1c0090ac:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0090b0:	02b1a0a5 	addi.w	$r5,$r5,-920(0xc68)
1c0090b4:	1cc7ff04 	pcaddu12i	$r4,409592(0x63ff8)
1c0090b8:	28be0084 	ld.w	$r4,$r4,-128(0xf80)
1c0090bc:	57946bff 	bl	-27544(0xfff9468) # 1c002524 <sprintf>
1c0090c0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0090c4:	1cc7ff06 	pcaddu12i	$r6,409592(0x63ff8)
1c0090c8:	28bdc0c6 	ld.w	$r6,$r6,-144(0xf70)
1c0090cc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0090d0:	00150004 	move	$r4,$r0
1c0090d4:	57d09fff 	bl	-12132(0xfffd09c) # 1c006170 <OLED_Show_Str>
1c0090d8:	50003000 	b	48(0x30) # 1c009108 <Gain_Hr_Spo+0x14dc>
1c0090dc:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0090e0:	02b0f0a5 	addi.w	$r5,$r5,-964(0xc3c)
1c0090e4:	1cc7ff04 	pcaddu12i	$r4,409592(0x63ff8)
1c0090e8:	28bd0084 	ld.w	$r4,$r4,-192(0xf40)
1c0090ec:	57943bff 	bl	-27592(0xfff9438) # 1c002524 <sprintf>
1c0090f0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0090f4:	1cc7ff06 	pcaddu12i	$r6,409592(0x63ff8)
1c0090f8:	28bcc0c6 	ld.w	$r6,$r6,-208(0xf30)
1c0090fc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c009100:	00150004 	move	$r4,$r0
1c009104:	57d06fff 	bl	-12180(0xfffd06c) # 1c006170 <OLED_Show_Str>
1c009108:	53eb37ff 	b	-5324(0xfffeb34) # 1c007c3c <Gain_Hr_Spo+0x10>
1c00910c:	03400000 	andi	$r0,$r0,0x0
1c009110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00911c:	4c000020 	jirl	$r0,$r1,0

1c009120 <bsp_InitI2C>:
bsp_InitI2C():
1c009120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009124:	29803061 	st.w	$r1,$r3,12(0xc)
1c009128:	29802076 	st.w	$r22,$r3,8(0x8)
1c00912c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009130:	00150005 	move	$r5,$r0
1c009134:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009138:	57851fff 	bl	-31460(0xfff851c) # 1c001654 <gpio_pin_remap>
1c00913c:	00150005 	move	$r5,$r0
1c009140:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009144:	578513ff 	bl	-31472(0xfff8510) # 1c001654 <gpio_pin_remap>
1c009148:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00914c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009150:	578713ff 	bl	-30960(0xfff8710) # 1c001860 <gpio_set_direction>
1c009154:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009158:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00915c:	578707ff 	bl	-30972(0xfff8704) # 1c001860 <gpio_set_direction>
1c009160:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009164:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009168:	578477ff 	bl	-31628(0xfff8474) # 1c0015dc <gpio_write_pin>
1c00916c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009170:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009174:	57846bff 	bl	-31640(0xfff8468) # 1c0015dc <gpio_write_pin>
1c009178:	03400000 	andi	$r0,$r0,0x0
1c00917c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009180:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009184:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009188:	4c000020 	jirl	$r0,$r1,0

1c00918c <i2c_Start>:
i2c_Start():
1c00918c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009190:	29803061 	st.w	$r1,$r3,12(0xc)
1c009194:	29802076 	st.w	$r22,$r3,8(0x8)
1c009198:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00919c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0091a0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0091a4:	57843bff 	bl	-31688(0xfff8438) # 1c0015dc <gpio_write_pin>
1c0091a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0091ac:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0091b0:	57842fff 	bl	-31700(0xfff842c) # 1c0015dc <gpio_write_pin>
1c0091b4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0091b8:	57a47bff 	bl	-23432(0xfffa478) # 1c003630 <delay_us>
1c0091bc:	00150005 	move	$r5,$r0
1c0091c0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0091c4:	57841bff 	bl	-31720(0xfff8418) # 1c0015dc <gpio_write_pin>
1c0091c8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0091cc:	57a467ff 	bl	-23452(0xfffa464) # 1c003630 <delay_us>
1c0091d0:	00150005 	move	$r5,$r0
1c0091d4:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0091d8:	578407ff 	bl	-31740(0xfff8404) # 1c0015dc <gpio_write_pin>
1c0091dc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0091e0:	57a453ff 	bl	-23472(0xfffa450) # 1c003630 <delay_us>
1c0091e4:	03400000 	andi	$r0,$r0,0x0
1c0091e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0091ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0091f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0091f4:	4c000020 	jirl	$r0,$r1,0

1c0091f8 <i2c_Stop>:
i2c_Stop():
1c0091f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0091fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c009200:	29802076 	st.w	$r22,$r3,8(0x8)
1c009204:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009208:	00150005 	move	$r5,$r0
1c00920c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009210:	5783cfff 	bl	-31796(0xfff83cc) # 1c0015dc <gpio_write_pin>
1c009214:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009218:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c00921c:	5783c3ff 	bl	-31808(0xfff83c0) # 1c0015dc <gpio_write_pin>
1c009220:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009224:	57a40fff 	bl	-23540(0xfffa40c) # 1c003630 <delay_us>
1c009228:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00922c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009230:	5783afff 	bl	-31828(0xfff83ac) # 1c0015dc <gpio_write_pin>
1c009234:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009238:	57a3fbff 	bl	-23560(0xfffa3f8) # 1c003630 <delay_us>
1c00923c:	03400000 	andi	$r0,$r0,0x0
1c009240:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009244:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009248:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00924c:	4c000020 	jirl	$r0,$r1,0

1c009250 <i2c_SendByte>:
i2c_SendByte():
1c009250:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009254:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c009258:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00925c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009260:	0015008c 	move	$r12,$r4
1c009264:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c009268:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00926c:	50008800 	b	136(0x88) # 1c0092f4 <i2c_SendByte+0xa4>
1c009270:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c009274:	64001580 	bge	$r12,$r0,20(0x14) # 1c009288 <i2c_SendByte+0x38>
1c009278:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00927c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009280:	57835fff 	bl	-31908(0xfff835c) # 1c0015dc <gpio_write_pin>
1c009284:	50001000 	b	16(0x10) # 1c009294 <i2c_SendByte+0x44>
1c009288:	00150005 	move	$r5,$r0
1c00928c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009290:	57834fff 	bl	-31924(0xfff834c) # 1c0015dc <gpio_write_pin>
1c009294:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009298:	57a39bff 	bl	-23656(0xfffa398) # 1c003630 <delay_us>
1c00929c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0092a0:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0092a4:	57833bff 	bl	-31944(0xfff8338) # 1c0015dc <gpio_write_pin>
1c0092a8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0092ac:	57a387ff 	bl	-23676(0xfffa384) # 1c003630 <delay_us>
1c0092b0:	00150005 	move	$r5,$r0
1c0092b4:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0092b8:	578327ff 	bl	-31964(0xfff8324) # 1c0015dc <gpio_write_pin>
1c0092bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0092c0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0092c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0092d4 <i2c_SendByte+0x84>
1c0092c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0092cc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0092d0:	57830fff 	bl	-31988(0xfff830c) # 1c0015dc <gpio_write_pin>
1c0092d4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0092d8:	0040858c 	slli.w	$r12,$r12,0x1
1c0092dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0092e0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0092e4:	57a34fff 	bl	-23732(0xfffa34c) # 1c003630 <delay_us>
1c0092e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0092ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0092f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0092f4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0092f8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0092fc:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c009270 <i2c_SendByte+0x20>
1c009300:	03400000 	andi	$r0,$r0,0x0
1c009304:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009308:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00930c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009310:	4c000020 	jirl	$r0,$r1,0

1c009314 <i2c_ReadByte>:
i2c_ReadByte():
1c009314:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009318:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00931c:	29806076 	st.w	$r22,$r3,24(0x18)
1c009320:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009324:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c009328:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00932c:	50006000 	b	96(0x60) # 1c00938c <i2c_ReadByte+0x78>
1c009330:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c009334:	0040858c 	slli.w	$r12,$r12,0x1
1c009338:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00933c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009340:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009344:	57829bff 	bl	-32104(0xfff8298) # 1c0015dc <gpio_write_pin>
1c009348:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00934c:	57a2e7ff 	bl	-23836(0xfffa2e4) # 1c003630 <delay_us>
1c009350:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009354:	57823bff 	bl	-32200(0xfff8238) # 1c00158c <gpio_get_pin>
1c009358:	0015008c 	move	$r12,$r4
1c00935c:	40001180 	beqz	$r12,16(0x10) # 1c00936c <i2c_ReadByte+0x58>
1c009360:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c009364:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009368:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00936c:	00150005 	move	$r5,$r0
1c009370:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009374:	57826bff 	bl	-32152(0xfff8268) # 1c0015dc <gpio_write_pin>
1c009378:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00937c:	57a2b7ff 	bl	-23884(0xfffa2b4) # 1c003630 <delay_us>
1c009380:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c009384:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009388:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00938c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c009390:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c009394:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c009330 <i2c_ReadByte+0x1c>
1c009398:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00939c:	00150184 	move	$r4,$r12
1c0093a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0093a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0093a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0093ac:	4c000020 	jirl	$r0,$r1,0

1c0093b0 <i2c_WaitAck>:
i2c_WaitAck():
1c0093b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0093b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0093b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0093bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0093c0:	00150005 	move	$r5,$r0
1c0093c4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0093c8:	578217ff 	bl	-32236(0xfff8214) # 1c0015dc <gpio_write_pin>
1c0093cc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0093d0:	57a263ff 	bl	-23968(0xfffa260) # 1c003630 <delay_us>
1c0093d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0093d8:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0093dc:	578203ff 	bl	-32256(0xfff8200) # 1c0015dc <gpio_write_pin>
1c0093e0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0093e4:	57a24fff 	bl	-23988(0xfffa24c) # 1c003630 <delay_us>
1c0093e8:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0093ec:	5781a3ff 	bl	-32352(0xfff81a0) # 1c00158c <gpio_get_pin>
1c0093f0:	0015008c 	move	$r12,$r4
1c0093f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0093f8:	00150005 	move	$r5,$r0
1c0093fc:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009400:	5781dfff 	bl	-32292(0xfff81dc) # 1c0015dc <gpio_write_pin>
1c009404:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009408:	57a22bff 	bl	-24024(0xfffa228) # 1c003630 <delay_us>
1c00940c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c009410:	00150184 	move	$r4,$r12
1c009414:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c009418:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00941c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009420:	4c000020 	jirl	$r0,$r1,0

1c009424 <i2c_Ack>:
i2c_Ack():
1c009424:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009428:	29803061 	st.w	$r1,$r3,12(0xc)
1c00942c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009430:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009434:	00150005 	move	$r5,$r0
1c009438:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00943c:	5781a3ff 	bl	-32352(0xfff81a0) # 1c0015dc <gpio_write_pin>
1c009440:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009444:	57a1efff 	bl	-24084(0xfffa1ec) # 1c003630 <delay_us>
1c009448:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00944c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009450:	57818fff 	bl	-32372(0xfff818c) # 1c0015dc <gpio_write_pin>
1c009454:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009458:	57a1dbff 	bl	-24104(0xfffa1d8) # 1c003630 <delay_us>
1c00945c:	00150005 	move	$r5,$r0
1c009460:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c009464:	57817bff 	bl	-32392(0xfff8178) # 1c0015dc <gpio_write_pin>
1c009468:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00946c:	57a1c7ff 	bl	-24124(0xfffa1c4) # 1c003630 <delay_us>
1c009470:	02800405 	addi.w	$r5,$r0,1(0x1)
1c009474:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c009478:	578167ff 	bl	-32412(0xfff8164) # 1c0015dc <gpio_write_pin>
1c00947c:	03400000 	andi	$r0,$r0,0x0
1c009480:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009484:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009488:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00948c:	4c000020 	jirl	$r0,$r1,0

1c009490 <i2c_NAck>:
i2c_NAck():
1c009490:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009494:	29803061 	st.w	$r1,$r3,12(0xc)
1c009498:	29802076 	st.w	$r22,$r3,8(0x8)
1c00949c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0094a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0094a4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0094a8:	578137ff 	bl	-32460(0xfff8134) # 1c0015dc <gpio_write_pin>
1c0094ac:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0094b0:	57a183ff 	bl	-24192(0xfffa180) # 1c003630 <delay_us>
1c0094b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0094b8:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0094bc:	578123ff 	bl	-32480(0xfff8120) # 1c0015dc <gpio_write_pin>
1c0094c0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0094c4:	57a16fff 	bl	-24212(0xfffa16c) # 1c003630 <delay_us>
1c0094c8:	00150005 	move	$r5,$r0
1c0094cc:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0094d0:	57810fff 	bl	-32500(0xfff810c) # 1c0015dc <gpio_write_pin>
1c0094d4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0094d8:	57a15bff 	bl	-24232(0xfffa158) # 1c003630 <delay_us>
1c0094dc:	03400000 	andi	$r0,$r0,0x0
1c0094e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0094e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0094e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0094ec:	4c000020 	jirl	$r0,$r1,0

1c0094f0 <maxim_max30102_write_reg>:
maxim_max30102_write_reg():
1c0094f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0094f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0094f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0094fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009500:	0015008c 	move	$r12,$r4
1c009504:	001500ad 	move	$r13,$r5
1c009508:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00950c:	001501ac 	move	$r12,$r13
1c009510:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c009514:	57fc7bff 	bl	-904(0xffffc78) # 1c00918c <i2c_Start>
1c009518:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c00951c:	57fd37ff 	bl	-716(0xffffd34) # 1c009250 <i2c_SendByte>
1c009520:	57fe93ff 	bl	-368(0xffffe90) # 1c0093b0 <i2c_WaitAck>
1c009524:	0015008c 	move	$r12,$r4
1c009528:	44004180 	bnez	$r12,64(0x40) # 1c009568 <maxim_max30102_write_reg+0x78>
1c00952c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c009530:	00150184 	move	$r4,$r12
1c009534:	57fd1fff 	bl	-740(0xffffd1c) # 1c009250 <i2c_SendByte>
1c009538:	57fe7bff 	bl	-392(0xffffe78) # 1c0093b0 <i2c_WaitAck>
1c00953c:	0015008c 	move	$r12,$r4
1c009540:	44003180 	bnez	$r12,48(0x30) # 1c009570 <maxim_max30102_write_reg+0x80>
1c009544:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c009548:	00150184 	move	$r4,$r12
1c00954c:	57fd07ff 	bl	-764(0xffffd04) # 1c009250 <i2c_SendByte>
1c009550:	57fe63ff 	bl	-416(0xffffe60) # 1c0093b0 <i2c_WaitAck>
1c009554:	0015008c 	move	$r12,$r4
1c009558:	44002180 	bnez	$r12,32(0x20) # 1c009578 <maxim_max30102_write_reg+0x88>
1c00955c:	57fc9fff 	bl	-868(0xffffc9c) # 1c0091f8 <i2c_Stop>
1c009560:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c009564:	50002000 	b	32(0x20) # 1c009584 <maxim_max30102_write_reg+0x94>
1c009568:	03400000 	andi	$r0,$r0,0x0
1c00956c:	50001000 	b	16(0x10) # 1c00957c <maxim_max30102_write_reg+0x8c>
1c009570:	03400000 	andi	$r0,$r0,0x0
1c009574:	50000800 	b	8(0x8) # 1c00957c <maxim_max30102_write_reg+0x8c>
1c009578:	03400000 	andi	$r0,$r0,0x0
1c00957c:	57fc7fff 	bl	-900(0xffffc7c) # 1c0091f8 <i2c_Stop>
1c009580:	0015000c 	move	$r12,$r0
1c009584:	00150184 	move	$r4,$r12
1c009588:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00958c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009590:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009594:	4c000020 	jirl	$r0,$r1,0

1c009598 <maxim_max30102_read_reg>:
maxim_max30102_read_reg():
1c009598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00959c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0095a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0095a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0095a8:	0015008c 	move	$r12,$r4
1c0095ac:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0095b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0095b4:	57fbdbff 	bl	-1064(0xffffbd8) # 1c00918c <i2c_Start>
1c0095b8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0095bc:	57fc97ff 	bl	-876(0xffffc94) # 1c009250 <i2c_SendByte>
1c0095c0:	57fdf3ff 	bl	-528(0xffffdf0) # 1c0093b0 <i2c_WaitAck>
1c0095c4:	0015008c 	move	$r12,$r4
1c0095c8:	44005980 	bnez	$r12,88(0x58) # 1c009620 <maxim_max30102_read_reg+0x88>
1c0095cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0095d0:	00150184 	move	$r4,$r12
1c0095d4:	57fc7fff 	bl	-900(0xffffc7c) # 1c009250 <i2c_SendByte>
1c0095d8:	57fddbff 	bl	-552(0xffffdd8) # 1c0093b0 <i2c_WaitAck>
1c0095dc:	0015008c 	move	$r12,$r4
1c0095e0:	44004980 	bnez	$r12,72(0x48) # 1c009628 <maxim_max30102_read_reg+0x90>
1c0095e4:	57fbabff 	bl	-1112(0xffffba8) # 1c00918c <i2c_Start>
1c0095e8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0095ec:	57fc67ff 	bl	-924(0xffffc64) # 1c009250 <i2c_SendByte>
1c0095f0:	57fdc3ff 	bl	-576(0xffffdc0) # 1c0093b0 <i2c_WaitAck>
1c0095f4:	0015008c 	move	$r12,$r4
1c0095f8:	44003980 	bnez	$r12,56(0x38) # 1c009630 <maxim_max30102_read_reg+0x98>
1c0095fc:	57fd1bff 	bl	-744(0xffffd18) # 1c009314 <i2c_ReadByte>
1c009600:	0015008c 	move	$r12,$r4
1c009604:	0015018d 	move	$r13,$r12
1c009608:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00960c:	2900018d 	st.b	$r13,$r12,0
1c009610:	57fe83ff 	bl	-384(0xffffe80) # 1c009490 <i2c_NAck>
1c009614:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c0091f8 <i2c_Stop>
1c009618:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00961c:	50002000 	b	32(0x20) # 1c00963c <maxim_max30102_read_reg+0xa4>
1c009620:	03400000 	andi	$r0,$r0,0x0
1c009624:	50001000 	b	16(0x10) # 1c009634 <maxim_max30102_read_reg+0x9c>
1c009628:	03400000 	andi	$r0,$r0,0x0
1c00962c:	50000800 	b	8(0x8) # 1c009634 <maxim_max30102_read_reg+0x9c>
1c009630:	03400000 	andi	$r0,$r0,0x0
1c009634:	57fbc7ff 	bl	-1084(0xffffbc4) # 1c0091f8 <i2c_Stop>
1c009638:	0015000c 	move	$r12,$r0
1c00963c:	00150184 	move	$r4,$r12
1c009640:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c009644:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009648:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00964c:	4c000020 	jirl	$r0,$r1,0

1c009650 <maxim_max30102_init>:
maxim_max30102_init():
1c009650:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009654:	29803061 	st.w	$r1,$r3,12(0xc)
1c009658:	29802076 	st.w	$r22,$r3,8(0x8)
1c00965c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009660:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c009664:	02800804 	addi.w	$r4,$r0,2(0x2)
1c009668:	57fe8bff 	bl	-376(0xffffe88) # 1c0094f0 <maxim_max30102_write_reg>
1c00966c:	0015008c 	move	$r12,$r4
1c009670:	44000d80 	bnez	$r12,12(0xc) # 1c00967c <maxim_max30102_init+0x2c>
1c009674:	0015000c 	move	$r12,$r0
1c009678:	50012000 	b	288(0x120) # 1c009798 <maxim_max30102_init+0x148>
1c00967c:	00150005 	move	$r5,$r0
1c009680:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c009684:	57fe6fff 	bl	-404(0xffffe6c) # 1c0094f0 <maxim_max30102_write_reg>
1c009688:	0015008c 	move	$r12,$r4
1c00968c:	44000d80 	bnez	$r12,12(0xc) # 1c009698 <maxim_max30102_init+0x48>
1c009690:	0015000c 	move	$r12,$r0
1c009694:	50010400 	b	260(0x104) # 1c009798 <maxim_max30102_init+0x148>
1c009698:	00150005 	move	$r5,$r0
1c00969c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0096a0:	57fe53ff 	bl	-432(0xffffe50) # 1c0094f0 <maxim_max30102_write_reg>
1c0096a4:	0015008c 	move	$r12,$r4
1c0096a8:	44000d80 	bnez	$r12,12(0xc) # 1c0096b4 <maxim_max30102_init+0x64>
1c0096ac:	0015000c 	move	$r12,$r0
1c0096b0:	5000e800 	b	232(0xe8) # 1c009798 <maxim_max30102_init+0x148>
1c0096b4:	00150005 	move	$r5,$r0
1c0096b8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0096bc:	57fe37ff 	bl	-460(0xffffe34) # 1c0094f0 <maxim_max30102_write_reg>
1c0096c0:	0015008c 	move	$r12,$r4
1c0096c4:	44000d80 	bnez	$r12,12(0xc) # 1c0096d0 <maxim_max30102_init+0x80>
1c0096c8:	0015000c 	move	$r12,$r0
1c0096cc:	5000cc00 	b	204(0xcc) # 1c009798 <maxim_max30102_init+0x148>
1c0096d0:	00150005 	move	$r5,$r0
1c0096d4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0096d8:	57fe1bff 	bl	-488(0xffffe18) # 1c0094f0 <maxim_max30102_write_reg>
1c0096dc:	0015008c 	move	$r12,$r4
1c0096e0:	44000d80 	bnez	$r12,12(0xc) # 1c0096ec <maxim_max30102_init+0x9c>
1c0096e4:	0015000c 	move	$r12,$r0
1c0096e8:	5000b000 	b	176(0xb0) # 1c009798 <maxim_max30102_init+0x148>
1c0096ec:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c0096f0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0096f4:	57fdffff 	bl	-516(0xffffdfc) # 1c0094f0 <maxim_max30102_write_reg>
1c0096f8:	0015008c 	move	$r12,$r4
1c0096fc:	44000d80 	bnez	$r12,12(0xc) # 1c009708 <maxim_max30102_init+0xb8>
1c009700:	0015000c 	move	$r12,$r0
1c009704:	50009400 	b	148(0x94) # 1c009798 <maxim_max30102_init+0x148>
1c009708:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00970c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c009710:	57fde3ff 	bl	-544(0xffffde0) # 1c0094f0 <maxim_max30102_write_reg>
1c009714:	0015008c 	move	$r12,$r4
1c009718:	44000d80 	bnez	$r12,12(0xc) # 1c009724 <maxim_max30102_init+0xd4>
1c00971c:	0015000c 	move	$r12,$r0
1c009720:	50007800 	b	120(0x78) # 1c009798 <maxim_max30102_init+0x148>
1c009724:	0280bc05 	addi.w	$r5,$r0,47(0x2f)
1c009728:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00972c:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0094f0 <maxim_max30102_write_reg>
1c009730:	0015008c 	move	$r12,$r4
1c009734:	44000d80 	bnez	$r12,12(0xc) # 1c009740 <maxim_max30102_init+0xf0>
1c009738:	0015000c 	move	$r12,$r0
1c00973c:	50005c00 	b	92(0x5c) # 1c009798 <maxim_max30102_init+0x148>
1c009740:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c009744:	02803004 	addi.w	$r4,$r0,12(0xc)
1c009748:	57fdabff 	bl	-600(0xffffda8) # 1c0094f0 <maxim_max30102_write_reg>
1c00974c:	0015008c 	move	$r12,$r4
1c009750:	44000d80 	bnez	$r12,12(0xc) # 1c00975c <maxim_max30102_init+0x10c>
1c009754:	0015000c 	move	$r12,$r0
1c009758:	50004000 	b	64(0x40) # 1c009798 <maxim_max30102_init+0x148>
1c00975c:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c009760:	02803404 	addi.w	$r4,$r0,13(0xd)
1c009764:	57fd8fff 	bl	-628(0xffffd8c) # 1c0094f0 <maxim_max30102_write_reg>
1c009768:	0015008c 	move	$r12,$r4
1c00976c:	44000d80 	bnez	$r12,12(0xc) # 1c009778 <maxim_max30102_init+0x128>
1c009770:	0015000c 	move	$r12,$r0
1c009774:	50002400 	b	36(0x24) # 1c009798 <maxim_max30102_init+0x148>
1c009778:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c00977c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c009780:	57fd73ff 	bl	-656(0xffffd70) # 1c0094f0 <maxim_max30102_write_reg>
1c009784:	0015008c 	move	$r12,$r4
1c009788:	44000d80 	bnez	$r12,12(0xc) # 1c009794 <maxim_max30102_init+0x144>
1c00978c:	0015000c 	move	$r12,$r0
1c009790:	50000800 	b	8(0x8) # 1c009798 <maxim_max30102_init+0x148>
1c009794:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c009798:	00150184 	move	$r4,$r12
1c00979c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0097a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0097a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0097a8:	4c000020 	jirl	$r0,$r1,0

1c0097ac <maxim_max30102_read_fifo>:
maxim_max30102_read_fifo():
1c0097ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0097b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0097b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0097b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0097bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0097c0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0097c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0097c8:	29800180 	st.w	$r0,$r12,0
1c0097cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0097d0:	29800180 	st.w	$r0,$r12,0
1c0097d4:	02bfaecc 	addi.w	$r12,$r22,-21(0xfeb)
1c0097d8:	00150185 	move	$r5,$r12
1c0097dc:	00150004 	move	$r4,$r0
1c0097e0:	57fdbbff 	bl	-584(0xffffdb8) # 1c009598 <maxim_max30102_read_reg>
1c0097e4:	02bfaecc 	addi.w	$r12,$r22,-21(0xfeb)
1c0097e8:	00150185 	move	$r5,$r12
1c0097ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0097f0:	57fdabff 	bl	-600(0xffffda8) # 1c009598 <maxim_max30102_read_reg>
1c0097f4:	57f99bff 	bl	-1640(0xffff998) # 1c00918c <i2c_Start>
1c0097f8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0097fc:	57fa57ff 	bl	-1452(0xffffa54) # 1c009250 <i2c_SendByte>
1c009800:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c0093b0 <i2c_WaitAck>
1c009804:	0015008c 	move	$r12,$r4
1c009808:	44019580 	bnez	$r12,404(0x194) # 1c00999c <maxim_max30102_read_fifo+0x1f0>
1c00980c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c009810:	57fa43ff 	bl	-1472(0xffffa40) # 1c009250 <i2c_SendByte>
1c009814:	57fb9fff 	bl	-1124(0xffffb9c) # 1c0093b0 <i2c_WaitAck>
1c009818:	0015008c 	move	$r12,$r4
1c00981c:	44018980 	bnez	$r12,392(0x188) # 1c0099a4 <maxim_max30102_read_fifo+0x1f8>
1c009820:	57f96fff 	bl	-1684(0xffff96c) # 1c00918c <i2c_Start>
1c009824:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c009828:	57fa2bff 	bl	-1496(0xffffa28) # 1c009250 <i2c_SendByte>
1c00982c:	57fb87ff 	bl	-1148(0xffffb84) # 1c0093b0 <i2c_WaitAck>
1c009830:	0015008c 	move	$r12,$r4
1c009834:	44017980 	bnez	$r12,376(0x178) # 1c0099ac <maxim_max30102_read_fifo+0x200>
1c009838:	57fadfff 	bl	-1316(0xffffadc) # 1c009314 <i2c_ReadByte>
1c00983c:	0015008c 	move	$r12,$r4
1c009840:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009844:	57fbe3ff 	bl	-1056(0xffffbe0) # 1c009424 <i2c_Ack>
1c009848:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00984c:	0040c18c 	slli.w	$r12,$r12,0x10
1c009850:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009858:	2880018d 	ld.w	$r13,$r12,0
1c00985c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009860:	001031ad 	add.w	$r13,$r13,$r12
1c009864:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009868:	2980018d 	st.w	$r13,$r12,0
1c00986c:	57faabff 	bl	-1368(0xffffaa8) # 1c009314 <i2c_ReadByte>
1c009870:	0015008c 	move	$r12,$r4
1c009874:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009878:	57fbafff 	bl	-1108(0xffffbac) # 1c009424 <i2c_Ack>
1c00987c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009880:	0040a18c 	slli.w	$r12,$r12,0x8
1c009884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009888:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00988c:	2880018d 	ld.w	$r13,$r12,0
1c009890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009894:	001031ad 	add.w	$r13,$r13,$r12
1c009898:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00989c:	2980018d 	st.w	$r13,$r12,0
1c0098a0:	57fa77ff 	bl	-1420(0xffffa74) # 1c009314 <i2c_ReadByte>
1c0098a4:	0015008c 	move	$r12,$r4
1c0098a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0098ac:	57fb7bff 	bl	-1160(0xffffb78) # 1c009424 <i2c_Ack>
1c0098b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0098b4:	2880018d 	ld.w	$r13,$r12,0
1c0098b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0098bc:	001031ad 	add.w	$r13,$r13,$r12
1c0098c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0098c4:	2980018d 	st.w	$r13,$r12,0
1c0098c8:	57fa4fff 	bl	-1460(0xffffa4c) # 1c009314 <i2c_ReadByte>
1c0098cc:	0015008c 	move	$r12,$r4
1c0098d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0098d4:	57fb53ff 	bl	-1200(0xffffb50) # 1c009424 <i2c_Ack>
1c0098d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0098dc:	0040c18c 	slli.w	$r12,$r12,0x10
1c0098e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0098e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0098e8:	2880018d 	ld.w	$r13,$r12,0
1c0098ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0098f0:	001031ad 	add.w	$r13,$r13,$r12
1c0098f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0098f8:	2980018d 	st.w	$r13,$r12,0
1c0098fc:	57fa1bff 	bl	-1512(0xffffa18) # 1c009314 <i2c_ReadByte>
1c009900:	0015008c 	move	$r12,$r4
1c009904:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009908:	57fb1fff 	bl	-1252(0xffffb1c) # 1c009424 <i2c_Ack>
1c00990c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009910:	0040a18c 	slli.w	$r12,$r12,0x8
1c009914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009918:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00991c:	2880018d 	ld.w	$r13,$r12,0
1c009920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009924:	001031ad 	add.w	$r13,$r13,$r12
1c009928:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00992c:	2980018d 	st.w	$r13,$r12,0
1c009930:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c009314 <i2c_ReadByte>
1c009934:	0015008c 	move	$r12,$r4
1c009938:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00993c:	57faebff 	bl	-1304(0xffffae8) # 1c009424 <i2c_Ack>
1c009940:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c009944:	2880018d 	ld.w	$r13,$r12,0
1c009948:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00994c:	001031ad 	add.w	$r13,$r13,$r12
1c009950:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c009954:	2980018d 	st.w	$r13,$r12,0
1c009958:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00995c:	2880018d 	ld.w	$r13,$r12,0
1c009960:	140007ec 	lu12i.w	$r12,63(0x3f)
1c009964:	03bffd8c 	ori	$r12,$r12,0xfff
1c009968:	0014b1ad 	and	$r13,$r13,$r12
1c00996c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009970:	2980018d 	st.w	$r13,$r12,0
1c009974:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c009978:	2880018d 	ld.w	$r13,$r12,0
1c00997c:	140007ec 	lu12i.w	$r12,63(0x3f)
1c009980:	03bffd8c 	ori	$r12,$r12,0xfff
1c009984:	0014b1ad 	and	$r13,$r13,$r12
1c009988:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00998c:	2980018d 	st.w	$r13,$r12,0
1c009990:	57f86bff 	bl	-1944(0xffff868) # 1c0091f8 <i2c_Stop>
1c009994:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c009998:	50002000 	b	32(0x20) # 1c0099b8 <maxim_max30102_read_fifo+0x20c>
1c00999c:	03400000 	andi	$r0,$r0,0x0
1c0099a0:	50001000 	b	16(0x10) # 1c0099b0 <maxim_max30102_read_fifo+0x204>
1c0099a4:	03400000 	andi	$r0,$r0,0x0
1c0099a8:	50000800 	b	8(0x8) # 1c0099b0 <maxim_max30102_read_fifo+0x204>
1c0099ac:	03400000 	andi	$r0,$r0,0x0
1c0099b0:	57f84bff 	bl	-1976(0xffff848) # 1c0091f8 <i2c_Stop>
1c0099b4:	0015000c 	move	$r12,$r0
1c0099b8:	00150184 	move	$r4,$r12
1c0099bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0099c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0099c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0099c8:	4c000020 	jirl	$r0,$r1,0

1c0099cc <maxim_max30102_reset>:
maxim_max30102_reset():
1c0099cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0099d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0099d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0099d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0099dc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0099e0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0099e4:	57fb0fff 	bl	-1268(0xffffb0c) # 1c0094f0 <maxim_max30102_write_reg>
1c0099e8:	0015008c 	move	$r12,$r4
1c0099ec:	44000d80 	bnez	$r12,12(0xc) # 1c0099f8 <maxim_max30102_reset+0x2c>
1c0099f0:	0015000c 	move	$r12,$r0
1c0099f4:	50000800 	b	8(0x8) # 1c0099fc <maxim_max30102_reset+0x30>
1c0099f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0099fc:	00150184 	move	$r4,$r12
1c009a00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009a04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009a0c:	4c000020 	jirl	$r0,$r1,0

1c009a10 <my_sqrt>:
my_sqrt():
1c009a10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009a14:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c009a18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009a1c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c009a20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009a24:	44000d80 	bnez	$r12,12(0xc) # 1c009a30 <my_sqrt+0x20>
1c009a28:	0015000c 	move	$r12,$r0
1c009a2c:	50004c00 	b	76(0x4c) # 1c009a78 <my_sqrt+0x68>
1c009a30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009a34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009a38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009a40:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c009a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a48:	002131cd 	div.wu	$r13,$r14,$r12
1c009a4c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009a54 <my_sqrt+0x44>
1c009a50:	002a0007 	break	0x7
1c009a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a58:	001031ac 	add.w	$r12,$r13,$r12
1c009a5c:	0044858c 	srli.w	$r12,$r12,0x1
1c009a60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009a64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009a68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009a6c:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c009a38 <my_sqrt+0x28>
1c009a70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009a74:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c009a78:	00150184 	move	$r4,$r12
1c009a7c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c009a80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009a84:	4c000020 	jirl	$r0,$r1,0

1c009a88 <Fall_check>:
Fall_check():
1c009a88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009a8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009a90:	29802076 	st.w	$r22,$r3,8(0x8)
1c009a94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009a98:	1cc7fee9 	pcaddu12i	$r9,409591(0x63ff7)
1c009a9c:	28973129 	ld.w	$r9,$r9,1484(0x5cc)
1c009aa0:	1cc7fee8 	pcaddu12i	$r8,409591(0x63ff7)
1c009aa4:	28962108 	ld.w	$r8,$r8,1416(0x588)
1c009aa8:	1cc7fee7 	pcaddu12i	$r7,409591(0x63ff7)
1c009aac:	2897c0e7 	ld.w	$r7,$r7,1520(0x5f0)
1c009ab0:	1cc7fee6 	pcaddu12i	$r6,409591(0x63ff7)
1c009ab4:	289760c6 	ld.w	$r6,$r6,1496(0x5d8)
1c009ab8:	1cc7fee5 	pcaddu12i	$r5,409591(0x63ff7)
1c009abc:	289600a5 	ld.w	$r5,$r5,1408(0x580)
1c009ac0:	1cc7fee4 	pcaddu12i	$r4,409591(0x63ff7)
1c009ac4:	2897b084 	ld.w	$r4,$r4,1516(0x5ec)
1c009ac8:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c0077b8 <MPU6050_GetData>
1c009acc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009ad0:	2897818c 	ld.w	$r12,$r12,1504(0x5e0)
1c009ad4:	2840018c 	ld.h	$r12,$r12,0
1c009ad8:	0015018d 	move	$r13,$r12
1c009adc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009ae0:	2897418c 	ld.w	$r12,$r12,1488(0x5d0)
1c009ae4:	2840018c 	ld.h	$r12,$r12,0
1c009ae8:	001c31ad 	mul.w	$r13,$r13,$r12
1c009aec:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009af0:	2895318c 	ld.w	$r12,$r12,1356(0x54c)
1c009af4:	2840018c 	ld.h	$r12,$r12,0
1c009af8:	0015018e 	move	$r14,$r12
1c009afc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b00:	2894f18c 	ld.w	$r12,$r12,1340(0x53c)
1c009b04:	2840018c 	ld.h	$r12,$r12,0
1c009b08:	001c31cc 	mul.w	$r12,$r14,$r12
1c009b0c:	001031ad 	add.w	$r13,$r13,$r12
1c009b10:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b14:	2895e18c 	ld.w	$r12,$r12,1400(0x578)
1c009b18:	2840018c 	ld.h	$r12,$r12,0
1c009b1c:	0015018e 	move	$r14,$r12
1c009b20:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b24:	2895a18c 	ld.w	$r12,$r12,1384(0x568)
1c009b28:	2840018c 	ld.h	$r12,$r12,0
1c009b2c:	001c31cc 	mul.w	$r12,$r14,$r12
1c009b30:	001031ac 	add.w	$r12,$r13,$r12
1c009b34:	00150184 	move	$r4,$r12
1c009b38:	57fedbff 	bl	-296(0xffffed8) # 1c009a10 <my_sqrt>
1c009b3c:	0015008c 	move	$r12,$r4
1c009b40:	0015018d 	move	$r13,$r12
1c009b44:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b48:	2894918c 	ld.w	$r12,$r12,1316(0x524)
1c009b4c:	2940018d 	st.h	$r13,$r12,0
1c009b50:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b54:	2894618c 	ld.w	$r12,$r12,1304(0x518)
1c009b58:	2a40018d 	ld.hu	$r13,$r12,0
1c009b5c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b60:	2893418c 	ld.w	$r12,$r12,1232(0x4d0)
1c009b64:	2940018d 	st.h	$r13,$r12,0
1c009b68:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b6c:	2894c18c 	ld.w	$r12,$r12,1328(0x530)
1c009b70:	2840018c 	ld.h	$r12,$r12,0
1c009b74:	0015018d 	move	$r13,$r12
1c009b78:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b7c:	2894818c 	ld.w	$r12,$r12,1312(0x520)
1c009b80:	2840018c 	ld.h	$r12,$r12,0
1c009b84:	001c31ad 	mul.w	$r13,$r13,$r12
1c009b88:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b8c:	2892818c 	ld.w	$r12,$r12,1184(0x4a0)
1c009b90:	2840018c 	ld.h	$r12,$r12,0
1c009b94:	0015018e 	move	$r14,$r12
1c009b98:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b9c:	2892418c 	ld.w	$r12,$r12,1168(0x490)
1c009ba0:	2840018c 	ld.h	$r12,$r12,0
1c009ba4:	001c31cc 	mul.w	$r12,$r14,$r12
1c009ba8:	001031ad 	add.w	$r13,$r13,$r12
1c009bac:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bb0:	2892e18c 	ld.w	$r12,$r12,1208(0x4b8)
1c009bb4:	2840018c 	ld.h	$r12,$r12,0
1c009bb8:	0015018e 	move	$r14,$r12
1c009bbc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bc0:	2892a18c 	ld.w	$r12,$r12,1192(0x4a8)
1c009bc4:	2840018c 	ld.h	$r12,$r12,0
1c009bc8:	001c31cc 	mul.w	$r12,$r14,$r12
1c009bcc:	001031ac 	add.w	$r12,$r13,$r12
1c009bd0:	00150184 	move	$r4,$r12
1c009bd4:	57fe3fff 	bl	-452(0xffffe3c) # 1c009a10 <my_sqrt>
1c009bd8:	0015008c 	move	$r12,$r4
1c009bdc:	0015018d 	move	$r13,$r12
1c009be0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009be4:	2890f18c 	ld.w	$r12,$r12,1084(0x43c)
1c009be8:	2940018d 	st.h	$r13,$r12,0
1c009bec:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bf0:	2890c18c 	ld.w	$r12,$r12,1072(0x430)
1c009bf4:	2a40018d 	ld.hu	$r13,$r12,0
1c009bf8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bfc:	2890a18c 	ld.w	$r12,$r12,1064(0x428)
1c009c00:	2940018d 	st.h	$r13,$r12,0
1c009c04:	1cc7fee9 	pcaddu12i	$r9,409591(0x63ff7)
1c009c08:	28918129 	ld.w	$r9,$r9,1120(0x460)
1c009c0c:	1cc7fee8 	pcaddu12i	$r8,409591(0x63ff7)
1c009c10:	28907108 	ld.w	$r8,$r8,1052(0x41c)
1c009c14:	1cc7fee7 	pcaddu12i	$r7,409591(0x63ff7)
1c009c18:	289210e7 	ld.w	$r7,$r7,1156(0x484)
1c009c1c:	1cc7fee6 	pcaddu12i	$r6,409591(0x63ff7)
1c009c20:	2891b0c6 	ld.w	$r6,$r6,1132(0x46c)
1c009c24:	1cc7fee5 	pcaddu12i	$r5,409591(0x63ff7)
1c009c28:	289050a5 	ld.w	$r5,$r5,1044(0x414)
1c009c2c:	1cc7fee4 	pcaddu12i	$r4,409591(0x63ff7)
1c009c30:	28920084 	ld.w	$r4,$r4,1152(0x480)
1c009c34:	57db87ff 	bl	-9340(0xfffdb84) # 1c0077b8 <MPU6050_GetData>
1c009c38:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c3c:	2891d18c 	ld.w	$r12,$r12,1140(0x474)
1c009c40:	2840018c 	ld.h	$r12,$r12,0
1c009c44:	0015018d 	move	$r13,$r12
1c009c48:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c4c:	2891918c 	ld.w	$r12,$r12,1124(0x464)
1c009c50:	2840018c 	ld.h	$r12,$r12,0
1c009c54:	001c31ad 	mul.w	$r13,$r13,$r12
1c009c58:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c5c:	288f818c 	ld.w	$r12,$r12,992(0x3e0)
1c009c60:	2840018c 	ld.h	$r12,$r12,0
1c009c64:	0015018e 	move	$r14,$r12
1c009c68:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c6c:	288f418c 	ld.w	$r12,$r12,976(0x3d0)
1c009c70:	2840018c 	ld.h	$r12,$r12,0
1c009c74:	001c31cc 	mul.w	$r12,$r14,$r12
1c009c78:	001031ad 	add.w	$r13,$r13,$r12
1c009c7c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c80:	2890318c 	ld.w	$r12,$r12,1036(0x40c)
1c009c84:	2840018c 	ld.h	$r12,$r12,0
1c009c88:	0015018e 	move	$r14,$r12
1c009c8c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c90:	288ff18c 	ld.w	$r12,$r12,1020(0x3fc)
1c009c94:	2840018c 	ld.h	$r12,$r12,0
1c009c98:	001c31cc 	mul.w	$r12,$r14,$r12
1c009c9c:	001031ac 	add.w	$r12,$r13,$r12
1c009ca0:	00150184 	move	$r4,$r12
1c009ca4:	57fd6fff 	bl	-660(0xffffd6c) # 1c009a10 <my_sqrt>
1c009ca8:	0015008c 	move	$r12,$r4
1c009cac:	0015018d 	move	$r13,$r12
1c009cb0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cb4:	288ee18c 	ld.w	$r12,$r12,952(0x3b8)
1c009cb8:	2940018d 	st.h	$r13,$r12,0
1c009cbc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cc0:	288f718c 	ld.w	$r12,$r12,988(0x3dc)
1c009cc4:	2840018c 	ld.h	$r12,$r12,0
1c009cc8:	0015018d 	move	$r13,$r12
1c009ccc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cd0:	288f318c 	ld.w	$r12,$r12,972(0x3cc)
1c009cd4:	2840018c 	ld.h	$r12,$r12,0
1c009cd8:	001c31ad 	mul.w	$r13,$r13,$r12
1c009cdc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009ce0:	288d318c 	ld.w	$r12,$r12,844(0x34c)
1c009ce4:	2840018c 	ld.h	$r12,$r12,0
1c009ce8:	0015018e 	move	$r14,$r12
1c009cec:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cf0:	288cf18c 	ld.w	$r12,$r12,828(0x33c)
1c009cf4:	2840018c 	ld.h	$r12,$r12,0
1c009cf8:	001c31cc 	mul.w	$r12,$r14,$r12
1c009cfc:	001031ad 	add.w	$r13,$r13,$r12
1c009d00:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d04:	288d918c 	ld.w	$r12,$r12,868(0x364)
1c009d08:	2840018c 	ld.h	$r12,$r12,0
1c009d0c:	0015018e 	move	$r14,$r12
1c009d10:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d14:	288d518c 	ld.w	$r12,$r12,852(0x354)
1c009d18:	2840018c 	ld.h	$r12,$r12,0
1c009d1c:	001c31cc 	mul.w	$r12,$r14,$r12
1c009d20:	001031ac 	add.w	$r12,$r13,$r12
1c009d24:	00150184 	move	$r4,$r12
1c009d28:	57fcebff 	bl	-792(0xffffce8) # 1c009a10 <my_sqrt>
1c009d2c:	0015008c 	move	$r12,$r4
1c009d30:	0015018d 	move	$r13,$r12
1c009d34:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d38:	288ba18c 	ld.w	$r12,$r12,744(0x2e8)
1c009d3c:	2940018d 	st.h	$r13,$r12,0
1c009d40:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d44:	288bb18c 	ld.w	$r12,$r12,748(0x2ec)
1c009d48:	2a40018c 	ld.hu	$r12,$r12,0
1c009d4c:	0015018d 	move	$r13,$r12
1c009d50:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d54:	288c618c 	ld.w	$r12,$r12,792(0x318)
1c009d58:	2a40018c 	ld.hu	$r12,$r12,0
1c009d5c:	001131ad 	sub.w	$r13,$r13,$r12
1c009d60:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c009d64:	60002d8d 	blt	$r12,$r13,44(0x2c) # 1c009d90 <Fall_check+0x308>
1c009d68:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d6c:	288b118c 	ld.w	$r12,$r12,708(0x2c4)
1c009d70:	2a40018c 	ld.hu	$r12,$r12,0
1c009d74:	0015018d 	move	$r13,$r12
1c009d78:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d7c:	288bc18c 	ld.w	$r12,$r12,752(0x2f0)
1c009d80:	2a40018c 	ld.hu	$r12,$r12,0
1c009d84:	001131ad 	sub.w	$r13,$r13,$r12
1c009d88:	02b0600c 	addi.w	$r12,$r0,-1000(0xc18)
1c009d8c:	64008dac 	bge	$r13,$r12,140(0x8c) # 1c009e18 <Fall_check+0x390>
1c009d90:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d94:	288a418c 	ld.w	$r12,$r12,656(0x290)
1c009d98:	2a40018c 	ld.hu	$r12,$r12,0
1c009d9c:	0015018d 	move	$r13,$r12
1c009da0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009da4:	2889f18c 	ld.w	$r12,$r12,636(0x27c)
1c009da8:	2a40018c 	ld.hu	$r12,$r12,0
1c009dac:	001131ad 	sub.w	$r13,$r13,$r12
1c009db0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c009db4:	60002d8d 	blt	$r12,$r13,44(0x2c) # 1c009de0 <Fall_check+0x358>
1c009db8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009dbc:	2889a18c 	ld.w	$r12,$r12,616(0x268)
1c009dc0:	2a40018c 	ld.hu	$r12,$r12,0
1c009dc4:	0015018d 	move	$r13,$r12
1c009dc8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009dcc:	2889518c 	ld.w	$r12,$r12,596(0x254)
1c009dd0:	2a40018c 	ld.hu	$r12,$r12,0
1c009dd4:	001131ad 	sub.w	$r13,$r13,$r12
1c009dd8:	02b0600c 	addi.w	$r12,$r0,-1000(0xc18)
1c009ddc:	64003dac 	bge	$r13,$r12,60(0x3c) # 1c009e18 <Fall_check+0x390>
1c009de0:	1c000045 	pcaddu12i	$r5,2(0x2)
1c009de4:	02bd00a5 	addi.w	$r5,$r5,-192(0xf40)
1c009de8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c009dec:	578bf3ff 	bl	-29712(0xfff8bf0) # 1c0029dc <UART_SendString>
1c009df0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009df4:	2889918c 	ld.w	$r12,$r12,612(0x264)
1c009df8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009dfc:	2980018d 	st.w	$r13,$r12,0
1c009e00:	02804007 	addi.w	$r7,$r0,16(0x10)
1c009e04:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009e08:	02bc90c6 	addi.w	$r6,$r6,-220(0xf24)
1c009e0c:	00150005 	move	$r5,$r0
1c009e10:	00150004 	move	$r4,$r0
1c009e14:	57bdbfff 	bl	-16964(0xfffbdbc) # 1c005bd0 <OLED_ShowString>
1c009e18:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e1c:	2888f18c 	ld.w	$r12,$r12,572(0x23c)
1c009e20:	2880018d 	ld.w	$r13,$r12,0
1c009e24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c009e28:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c009e50 <Fall_check+0x3c8>
1c009e2c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c009e30:	02bc10a5 	addi.w	$r5,$r5,-252(0xf04)
1c009e34:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c009e38:	578ba7ff 	bl	-29788(0xfff8ba4) # 1c0029dc <UART_SendString>
1c009e3c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c009e40:	57986bff 	bl	-26520(0xfff9868) # 1c0036a8 <delay_s>
1c009e44:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e48:	2888418c 	ld.w	$r12,$r12,528(0x210)
1c009e4c:	29800180 	st.w	$r0,$r12,0
1c009e50:	03400000 	andi	$r0,$r0,0x0
1c009e54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009e58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009e5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009e60:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c009e80 <msg_wakeup>:
msg_wakeup():
1c009e80:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c0209e0 <_sidata+0x14cac>
1c009e84:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c009e89 <hexdecarr>:
hexdecarr():
1c009e89:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c009e8d:	37363534 	0x37363534
1c009e91:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeffc9 <_start-0x10037>
1c009e95:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bff03f9 <_start-0xfc07>
1c009e99:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c009e9d:	79654b0a 	0x79654b0a
1c009ea1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c009ea5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c009ea9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c009ead:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c020f1d <_sidata+0x151e9>
1c009eb1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1c000e11 <m4_flash_4k+0x611>
1c009eb5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c009eb9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1c000e1d <m4_flash_4k+0x61d>
1c009ebd:	72616220 	0x72616220
1c009ec1:	0a0d216b 	0x0a0d216b
1c009ec5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c009ec9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1c00003d <LoopCopyDataInit+0x19>
1c009ecd:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c009ed1:	b4000a0d 	0xb4000a0d
1c009ed5:	d01c001d 	0xd01c001d
1c009ed9:	d01c001e 	0xd01c001e
1c009edd:	d01c001e 	0xd01c001e
1c009ee1:	d01c001e 	0xd01c001e
1c009ee5:	d01c001e 	0xd01c001e
1c009ee9:	d01c001e 	0xd01c001e
1c009eed:	d01c001e 	0xd01c001e
1c009ef1:	d01c001e 	0xd01c001e
1c009ef5:	d01c001e 	0xd01c001e
1c009ef9:	d01c001e 	0xd01c001e
1c009efd:	cc1c001e 	0xcc1c001e
1c009f01:	541c001d 	bl	7609344(0x741c00) # 1c74bb01 <_sidata+0x73fdcd>
1c009f05:	541c001e 	bl	7871488(0x781c00) # 1c78bb05 <_sidata+0x77fdd1>
1c009f09:	541c001e 	bl	7871488(0x781c00) # 1c78bb09 <_sidata+0x77fdd5>
1c009f0d:	541c001e 	bl	7871488(0x781c00) # 1c78bb0d <_sidata+0x77fdd9>
1c009f11:	541c001e 	bl	7871488(0x781c00) # 1c78bb11 <_sidata+0x77fddd>
1c009f15:	541c001e 	bl	7871488(0x781c00) # 1c78bb15 <_sidata+0x77fde1>
1c009f19:	541c001e 	bl	7871488(0x781c00) # 1c78bb19 <_sidata+0x77fde5>
1c009f1d:	541c001e 	bl	7871488(0x781c00) # 1c78bb1d <_sidata+0x77fde9>
1c009f21:	541c001e 	bl	7871488(0x781c00) # 1c78bb21 <_sidata+0x77fded>
1c009f25:	d01c001e 	0xd01c001e
1c009f29:	d01c001e 	0xd01c001e
1c009f2d:	d01c001e 	0xd01c001e
1c009f31:	d01c001e 	0xd01c001e
1c009f35:	d01c001e 	0xd01c001e
1c009f39:	d01c001e 	0xd01c001e
1c009f3d:	d01c001e 	0xd01c001e
1c009f41:	d01c001e 	0xd01c001e
1c009f45:	d01c001e 	0xd01c001e
1c009f49:	d01c001e 	0xd01c001e
1c009f4d:	d01c001e 	0xd01c001e
1c009f51:	d01c001e 	0xd01c001e
1c009f55:	d01c001e 	0xd01c001e
1c009f59:	d01c001e 	0xd01c001e
1c009f5d:	d01c001e 	0xd01c001e
1c009f61:	d01c001e 	0xd01c001e
1c009f65:	d01c001e 	0xd01c001e
1c009f69:	d01c001e 	0xd01c001e
1c009f6d:	d01c001e 	0xd01c001e
1c009f71:	d01c001e 	0xd01c001e
1c009f75:	d01c001e 	0xd01c001e
1c009f79:	d01c001e 	0xd01c001e
1c009f7d:	d01c001e 	0xd01c001e
1c009f81:	d01c001e 	0xd01c001e
1c009f85:	d01c001e 	0xd01c001e
1c009f89:	d01c001e 	0xd01c001e
1c009f8d:	d01c001e 	0xd01c001e
1c009f91:	d01c001e 	0xd01c001e
1c009f95:	d01c001e 	0xd01c001e
1c009f99:	d01c001e 	0xd01c001e
1c009f9d:	d01c001e 	0xd01c001e
1c009fa1:	d01c001e 	0xd01c001e
1c009fa5:	d01c001e 	0xd01c001e
1c009fa9:	d01c001e 	0xd01c001e
1c009fad:	d01c001e 	0xd01c001e
1c009fb1:	d01c001e 	0xd01c001e
1c009fb5:	d01c001e 	0xd01c001e
1c009fb9:	d01c001e 	0xd01c001e
1c009fbd:	d01c001e 	0xd01c001e
1c009fc1:	d01c001e 	0xd01c001e
1c009fc5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf8bbc5 <_start-0x7443b>
1c009fc9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c00bbc9 <tfont32+0x9e9>
1c009fcd:	d41c001c 	0xd41c001c
1c009fd1:	d01c001c 	0xd01c001c
1c009fd5:	d01c001e 	0xd01c001e
1c009fd9:	d01c001e 	0xd01c001e
1c009fdd:	d01c001e 	0xd01c001e
1c009fe1:	d01c001e 	0xd01c001e
1c009fe5:	d01c001e 	0xd01c001e
1c009fe9:	d01c001e 	0xd01c001e
1c009fed:	d01c001e 	0xd01c001e
1c009ff1:	d01c001e 	0xd01c001e
1c009ff5:	d01c001e 	0xd01c001e
1c009ff9:	0c1c001e 	0x0c1c001e
1c009ffd:	7c1c001d 	0x7c1c001d
1c00a001:	d01c001d 	0xd01c001d
1c00a005:	d01c001e 	0xd01c001e
1c00a009:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf8bc09 <_start-0x743f7>
1c00a00d:	d01c001c 	0xd01c001c
1c00a011:	9c1c001e 	0x9c1c001e
1c00a015:	d01c001c 	0xd01c001c
1c00a019:	d01c001e 	0xd01c001e
1c00a01d:	7c1c001e 	0x7c1c001e
1c00a021:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c00bc21 <tfont32+0xa41>
1c00a025:	8c1c0023 	0x8c1c0023
1c00a029:	8c1c0024 	0x8c1c0024
1c00a02d:	8c1c0024 	0x8c1c0024
1c00a031:	8c1c0024 	0x8c1c0024
1c00a035:	8c1c0024 	0x8c1c0024
1c00a039:	8c1c0024 	0x8c1c0024
1c00a03d:	8c1c0024 	0x8c1c0024
1c00a041:	8c1c0024 	0x8c1c0024
1c00a045:	8c1c0024 	0x8c1c0024
1c00a049:	8c1c0024 	0x8c1c0024
1c00a04d:	881c0024 	0x881c0024
1c00a051:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c00a055:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a059:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a05d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a061:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a065:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a069:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a06d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a071:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00a075:	8c1c0024 	0x8c1c0024
1c00a079:	8c1c0024 	0x8c1c0024
1c00a07d:	8c1c0024 	0x8c1c0024
1c00a081:	8c1c0024 	0x8c1c0024
1c00a085:	8c1c0024 	0x8c1c0024
1c00a089:	8c1c0024 	0x8c1c0024
1c00a08d:	8c1c0024 	0x8c1c0024
1c00a091:	8c1c0024 	0x8c1c0024
1c00a095:	8c1c0024 	0x8c1c0024
1c00a099:	8c1c0024 	0x8c1c0024
1c00a09d:	8c1c0024 	0x8c1c0024
1c00a0a1:	8c1c0024 	0x8c1c0024
1c00a0a5:	8c1c0024 	0x8c1c0024
1c00a0a9:	8c1c0024 	0x8c1c0024
1c00a0ad:	8c1c0024 	0x8c1c0024
1c00a0b1:	8c1c0024 	0x8c1c0024
1c00a0b5:	8c1c0024 	0x8c1c0024
1c00a0b9:	8c1c0024 	0x8c1c0024
1c00a0bd:	8c1c0024 	0x8c1c0024
1c00a0c1:	8c1c0024 	0x8c1c0024
1c00a0c5:	8c1c0024 	0x8c1c0024
1c00a0c9:	8c1c0024 	0x8c1c0024
1c00a0cd:	8c1c0024 	0x8c1c0024
1c00a0d1:	8c1c0024 	0x8c1c0024
1c00a0d5:	8c1c0024 	0x8c1c0024
1c00a0d9:	8c1c0024 	0x8c1c0024
1c00a0dd:	8c1c0024 	0x8c1c0024
1c00a0e1:	8c1c0024 	0x8c1c0024
1c00a0e5:	8c1c0024 	0x8c1c0024
1c00a0e9:	8c1c0024 	0x8c1c0024
1c00a0ed:	8c1c0024 	0x8c1c0024
1c00a0f1:	8c1c0024 	0x8c1c0024
1c00a0f5:	8c1c0024 	0x8c1c0024
1c00a0f9:	8c1c0024 	0x8c1c0024
1c00a0fd:	8c1c0024 	0x8c1c0024
1c00a101:	8c1c0024 	0x8c1c0024
1c00a105:	8c1c0024 	0x8c1c0024
1c00a109:	8c1c0024 	0x8c1c0024
1c00a10d:	8c1c0024 	0x8c1c0024
1c00a111:	8c1c0024 	0x8c1c0024
1c00a115:	f01c0024 	0xf01c0024
1c00a119:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c00a11d:	781c0022 	0x781c0022
1c00a121:	8c1c0022 	0x8c1c0022
1c00a125:	8c1c0024 	0x8c1c0024
1c00a129:	8c1c0024 	0x8c1c0024
1c00a12d:	8c1c0024 	0x8c1c0024
1c00a131:	8c1c0024 	0x8c1c0024
1c00a135:	8c1c0024 	0x8c1c0024
1c00a139:	8c1c0024 	0x8c1c0024
1c00a13d:	8c1c0024 	0x8c1c0024
1c00a141:	8c1c0024 	0x8c1c0024
1c00a145:	8c1c0024 	0x8c1c0024
1c00a149:	b41c0024 	0xb41c0024
1c00a14d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c00a151:	8c1c0023 	0x8c1c0023
1c00a155:	8c1c0024 	0x8c1c0024
1c00a159:	d81c0024 	0xd81c0024
1c00a15d:	8c1c0021 	0x8c1c0021
1c00a161:	3c1c0024 	0x3c1c0024
1c00a165:	8c1c0022 	0x8c1c0022
1c00a169:	8c1c0024 	0x8c1c0024
1c00a16d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c00a171:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c00a175:	7c000000 	0x7c000000
1c00a179:	7c7c7c7c 	0x7c7c7c7c
1c00a17d:	7c7c7c7c 	0x7c7c7c7c
1c00a181:	7c7c7c7c 	0x7c7c7c7c
1c00a185:	7c7c7c7c 	0x7c7c7c7c
1c00a189:	7c7c7c7c 	0x7c7c7c7c
1c00a18d:	7c7c7c7c 	0x7c7c7c7c
1c00a191:	7c7c7c7c 	0x7c7c7c7c
1c00a195:	7c7c7c7c 	0x7c7c7c7c
1c00a199:	7c7c7c7c 	0x7c7c7c7c
1c00a19d:	7c7c7c7c 	0x7c7c7c7c
1c00a1a1:	7c7c7c7c 	0x7c7c7c7c
1c00a1a5:	7c7c7c7c 	0x7c7c7c7c
1c00a1a9:	7c7c7c7c 	0x7c7c7c7c
1c00a1ad:	7c7c7c7c 	0x7c7c7c7c
1c00a1b1:	7c7c7c7c 	0x7c7c7c7c
1c00a1b5:	7c7c7c7c 	0x7c7c7c7c
1c00a1b9:	7c7c7c7c 	0x7c7c7c7c
1c00a1bd:	7c7c7c7c 	0x7c7c7c7c
1c00a1c1:	7c7c7c7c 	0x7c7c7c7c
1c00a1c5:	7c7c7c7c 	0x7c7c7c7c
1c00a1c9:	7c7c7c7c 	0x7c7c7c7c
1c00a1cd:	7c7c7c7c 	0x7c7c7c7c
1c00a1d1:	7c7c7c7c 	0x7c7c7c7c
1c00a1d5:	7c7c7c7c 	0x7c7c7c7c
1c00a1d9:	7c00000a 	0x7c00000a
1c00a1dd:	7c20207c 	0x7c20207c
1c00a1e1:	7c7c7c7c 	0x7c7c7c7c
1c00a1e5:	7c7c7c7c 	0x7c7c7c7c
1c00a1e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a1ed:	7c202020 	0x7c202020
1c00a1f1:	7c7c7c7c 	0x7c7c7c7c
1c00a1f5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a1f9:	7c202020 	0x7c202020
1c00a1fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a201:	7c7c2020 	0x7c7c2020
1c00a205:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a209:	7c7c7c20 	0x7c7c7c20
1c00a20d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a211:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a215:	7c7c7c7c 	0x7c7c7c7c
1c00a219:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a21d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a221:	7c7c7c7c 	0x7c7c7c7c
1c00a225:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a229:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a22d:	7c7c7c7c 	0x7c7c7c7c
1c00a231:	7c202020 	0x7c202020
1c00a235:	7c7c7c7c 	0x7c7c7c7c
1c00a239:	7c7c2020 	0x7c7c2020
1c00a23d:	7c00000a 	0x7c00000a
1c00a241:	7c20207c 	0x7c20207c
1c00a245:	7c7c7c7c 	0x7c7c7c7c
1c00a249:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a24d:	7c7c2020 	0x7c7c2020
1c00a251:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a255:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a259:	7c7c2020 	0x7c7c2020
1c00a25d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a261:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a265:	7c202020 	0x7c202020
1c00a269:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a26d:	7c7c7c20 	0x7c7c7c20
1c00a271:	7c20207c 	0x7c20207c
1c00a275:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a279:	7c7c7c20 	0x7c7c7c20
1c00a27d:	7c202020 	0x7c202020
1c00a281:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a285:	7c7c7c20 	0x7c7c7c20
1c00a289:	7c202020 	0x7c202020
1c00a28d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a291:	7c7c7c20 	0x7c7c7c20
1c00a295:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a299:	7c7c7c7c 	0x7c7c7c7c
1c00a29d:	7c7c2020 	0x7c7c2020
1c00a2a1:	7c00000a 	0x7c00000a
1c00a2a5:	7c20207c 	0x7c20207c
1c00a2a9:	7c7c7c7c 	0x7c7c7c7c
1c00a2ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2b1:	7c7c7c20 	0x7c7c7c20
1c00a2b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2bd:	7c7c7c20 	0x7c7c7c20
1c00a2c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2c9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00a2cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a2d1:	7c7c7c20 	0x7c7c7c20
1c00a2d5:	7c7c2020 	0x7c7c2020
1c00a2d9:	7c7c7c7c 	0x7c7c7c7c
1c00a2dd:	7c7c7c7c 	0x7c7c7c7c
1c00a2e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a2e5:	7c7c7c20 	0x7c7c7c20
1c00a2e9:	7c7c7c7c 	0x7c7c7c7c
1c00a2ed:	7c7c2020 	0x7c7c2020
1c00a2f1:	7c7c7c7c 	0x7c7c7c7c
1c00a2f5:	7c7c7c20 	0x7c7c7c20
1c00a2f9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00a2fd:	7c7c7c20 	0x7c7c7c20
1c00a301:	7c7c2020 	0x7c7c2020
1c00a305:	7c00000a 	0x7c00000a
1c00a309:	7c20207c 	0x7c20207c
1c00a30d:	7c7c7c7c 	0x7c7c7c7c
1c00a311:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a315:	7c7c7c20 	0x7c7c7c20
1c00a319:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a31d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a321:	7c7c7c20 	0x7c7c7c20
1c00a325:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a329:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a32d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c00a331:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c00a335:	7c7c7c20 	0x7c7c7c20
1c00a339:	7c7c2020 	0x7c7c2020
1c00a33d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a341:	7c7c7c20 	0x7c7c7c20
1c00a345:	7c7c7c7c 	0x7c7c7c7c
1c00a349:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a34d:	7c7c7c7c 	0x7c7c7c7c
1c00a351:	7c7c2020 	0x7c7c2020
1c00a355:	7c7c7c7c 	0x7c7c7c7c
1c00a359:	7c7c7c20 	0x7c7c7c20
1c00a35d:	7c7c2020 	0x7c7c2020
1c00a361:	7c7c2020 	0x7c7c2020
1c00a365:	7c7c2020 	0x7c7c2020
1c00a369:	7c00000a 	0x7c00000a
1c00a36d:	7c20207c 	0x7c20207c
1c00a371:	7c7c7c7c 	0x7c7c7c7c
1c00a375:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a379:	7c7c7c20 	0x7c7c7c20
1c00a37d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a381:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a385:	7c7c7c20 	0x7c7c7c20
1c00a389:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a38d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a391:	7c7c7c20 	0x7c7c7c20
1c00a395:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00a399:	7c7c7c20 	0x7c7c7c20
1c00a39d:	7c7c2020 	0x7c7c2020
1c00a3a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a3a5:	7c7c7c20 	0x7c7c7c20
1c00a3a9:	7c7c7c7c 	0x7c7c7c7c
1c00a3ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a3b1:	7c7c7c20 	0x7c7c7c20
1c00a3b5:	7c7c2020 	0x7c7c2020
1c00a3b9:	7c7c7c7c 	0x7c7c7c7c
1c00a3bd:	7c7c7c20 	0x7c7c7c20
1c00a3c1:	7c7c2020 	0x7c7c2020
1c00a3c5:	7c20207c 	0x7c20207c
1c00a3c9:	7c7c2020 	0x7c7c2020
1c00a3cd:	7c00000a 	0x7c00000a
1c00a3d1:	7c20207c 	0x7c20207c
1c00a3d5:	7c7c7c7c 	0x7c7c7c7c
1c00a3d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a3dd:	7c7c2020 	0x7c7c2020
1c00a3e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a3e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a3e9:	7c7c2020 	0x7c7c2020
1c00a3ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a3f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a3f5:	7c7c7c20 	0x7c7c7c20
1c00a3f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a3fd:	7c7c7c20 	0x7c7c7c20
1c00a401:	7c202020 	0x7c202020
1c00a405:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a409:	7c7c7c20 	0x7c7c7c20
1c00a40d:	7c202020 	0x7c202020
1c00a411:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a415:	7c7c7c7c 	0x7c7c7c7c
1c00a419:	7c202020 	0x7c202020
1c00a41d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a421:	7c7c7c20 	0x7c7c7c20
1c00a425:	7c7c2020 	0x7c7c2020
1c00a429:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a42d:	7c7c2020 	0x7c7c2020
1c00a431:	7c00000a 	0x7c00000a
1c00a435:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a439:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a43d:	7c7c7c7c 	0x7c7c7c7c
1c00a441:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a445:	7c202020 	0x7c202020
1c00a449:	7c7c7c7c 	0x7c7c7c7c
1c00a44d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a451:	7c202020 	0x7c202020
1c00a455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a459:	7c7c7c20 	0x7c7c7c20
1c00a45d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00a461:	7c7c7c20 	0x7c7c7c20
1c00a465:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a469:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a46d:	7c7c7c7c 	0x7c7c7c7c
1c00a471:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a475:	7c202020 	0x7c202020
1c00a479:	7c7c7c7c 	0x7c7c7c7c
1c00a47d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00a481:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a485:	7c7c7c7c 	0x7c7c7c7c
1c00a489:	7c7c2020 	0x7c7c2020
1c00a48d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00a491:	7c7c2020 	0x7c7c2020
1c00a495:	7c00000a 	0x7c00000a
1c00a499:	7c7c7c7c 	0x7c7c7c7c
1c00a49d:	7c7c7c7c 	0x7c7c7c7c
1c00a4a1:	7c7c7c7c 	0x7c7c7c7c
1c00a4a5:	7c7c7c7c 	0x7c7c7c7c
1c00a4a9:	7c7c7c7c 	0x7c7c7c7c
1c00a4ad:	7c7c7c7c 	0x7c7c7c7c
1c00a4b1:	7c7c7c7c 	0x7c7c7c7c
1c00a4b5:	7c7c7c7c 	0x7c7c7c7c
1c00a4b9:	7c7c7c7c 	0x7c7c7c7c
1c00a4bd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c00a4c1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c00a4c5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c00a4c9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00a4cd:	7c7c7c5d 	0x7c7c7c5d
1c00a4d1:	7c7c7c7c 	0x7c7c7c7c
1c00a4d5:	7c7c7c7c 	0x7c7c7c7c
1c00a4d9:	7c7c7c7c 	0x7c7c7c7c
1c00a4dd:	7c7c7c7c 	0x7c7c7c7c
1c00a4e1:	7c7c7c7c 	0x7c7c7c7c
1c00a4e5:	7c7c7c7c 	0x7c7c7c7c
1c00a4e9:	7c7c7c7c 	0x7c7c7c7c
1c00a4ed:	7c7c7c7c 	0x7c7c7c7c
1c00a4f1:	7c7c7c7c 	0x7c7c7c7c
1c00a4f5:	7c7c7c7c 	0x7c7c7c7c
1c00a4f9:	0900000a 	0x0900000a
1c00a4fd:	0a006425 	0x0a006425
1c00a501:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00a505:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c00a509:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00a50d:	0050550a 	0x0050550a
1c00a511:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00a515:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c011a61 <_sidata+0x5d2d>
1c00a519:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00a51d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00a521:	756f430a 	0x756f430a
1c00a525:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c00a529:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00a52d:	3030090a 	0x3030090a
1c00a531:	09313009 	0x09313009
1c00a535:	30093230 	0x30093230
1c00a539:	34300933 	0x34300933
1c00a53d:	09353009 	0x09353009
1c00a541:	30093630 	0x30093630
1c00a545:	38300937 	fldx.s	$f23,$r9,$r2
1c00a549:	09393009 	0x09393009
1c00a54d:	31093031 	0x31093031
1c00a551:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c00a555:	746e630a 	0x746e630a
1c00a559:	09000000 	0x09000000
1c00a55d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c00a561:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00a565:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c00a569:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c0106bd <_sidata+0x4989>
1c00a56d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00a571:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bff1ac1 <_start-0xe53f>
1c00a575:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c00a579:	09000000 	0x09000000
1c00a57d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c00a581:	09000000 	0x09000000
1c00a585:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c00a589:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00a58d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c00a591:	3a515249 	0x3a515249
1c00a595:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c00a599:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1c00140d <bsp_init+0x49>
1c00a59d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c00a5a1:	0d3e2020 	0x0d3e2020
1c00a5a5:	0a00000a 	0x0a00000a
1c00a5a9:	2e2e2e2e 	0x2e2e2e2e
1c00a5ad:	2e2e2e2e 	0x2e2e2e2e
1c00a5b1:	2e2e2e2e 	0x2e2e2e2e
1c00a5b5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3af505 <_sidata+0x3a37d1>
1c00a5b9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00a5bd:	2e2e2e54 	0x2e2e2e54
1c00a5c1:	2e2e2e2e 	0x2e2e2e2e
1c00a5c5:	2e2e2e2e 	0x2e2e2e2e
1c00a5c9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00a5cd:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c00a5d1:	2e2e2e0a 	0x2e2e2e0a
1c00a5d5:	2e2e2e2e 	0x2e2e2e2e
1c00a5d9:	2e2e2e2e 	0x2e2e2e2e
1c00a5dd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39e809 <_sidata+0x392ad5>
1c00a5e1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1ec3d <_start-0x2e13c3>
1c00a5e5:	2e2e4c49 	0x2e2e4c49
1c00a5e9:	2e2e2e2e 	0x2e2e2e2e
1c00a5ed:	2e2e2e2e 	0x2e2e2e2e
1c00a5f1:	2e2e2e2e 	0x2e2e2e2e
1c00a5f5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c00a5f9:	2e2e2e0a 	0x2e2e2e0a
1c00a5fd:	2e2e2e2e 	0x2e2e2e2e
1c00a601:	2e2e2e2e 	0x2e2e2e2e
1c00a605:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38e731 <_sidata+0x3829fd>
1c00a609:	2e2e2e43 	0x2e2e2e43
1c00a60d:	2e2e2e2e 	0x2e2e2e2e
1c00a611:	2e2e2e2e 	0x2e2e2e2e
1c00a615:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c00a619:	3300000a 	0x3300000a
1c00a61d:	34000000 	0x34000000
1c00a621:	35000000 	0x35000000
1c00a625:	43000000 	beqz	$r0,196608(0x30000) # 1c03a625 <_sidata+0x2e8f1>
1c00a629:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c00a62d:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c021395 <_sidata+0x15661>
1c00a631:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c010951 <_sidata+0x4c1d>
1c00a635:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00a639:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c021aa5 <_sidata+0x15d71>
1c00a63d:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00a641:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c00a645:	 	0xdc00000a

1c00a648 <Ext_IrqHandle>:
1c00a648:	1c003fdc 	pcaddu12i	$r28,510(0x1fe)
1c00a64c:	1c004028 	pcaddu12i	$r8,513(0x201)
1c00a650:	1c004074 	pcaddu12i	$r20,515(0x203)
1c00a654:	1c0040c0 	pcaddu12i	$r0,518(0x206)
1c00a658:	1c00410c 	pcaddu12i	$r12,520(0x208)
1c00a65c:	1c004158 	pcaddu12i	$r24,522(0x20a)
1c00a660:	1c0041a4 	pcaddu12i	$r4,525(0x20d)
1c00a664:	1c0041f0 	pcaddu12i	$r16,527(0x20f)
1c00a668:	1c00423c 	pcaddu12i	$r28,529(0x211)
1c00a66c:	1c004288 	pcaddu12i	$r8,532(0x214)
1c00a670:	1c0042d4 	pcaddu12i	$r20,534(0x216)
1c00a674:	1c004320 	pcaddu12i	$r0,537(0x219)
1c00a678:	1c00436c 	pcaddu12i	$r12,539(0x21b)
1c00a67c:	1c0043b8 	pcaddu12i	$r24,541(0x21d)
1c00a680:	1c004404 	pcaddu12i	$r4,544(0x220)
1c00a684:	1c004450 	pcaddu12i	$r16,546(0x222)
1c00a688:	1c00449c 	pcaddu12i	$r28,548(0x224)
1c00a68c:	1c0044e8 	pcaddu12i	$r8,551(0x227)
1c00a690:	1c004534 	pcaddu12i	$r20,553(0x229)
1c00a694:	1c004580 	pcaddu12i	$r0,556(0x22c)
1c00a698:	1c0045cc 	pcaddu12i	$r12,558(0x22e)
1c00a69c:	1c004618 	pcaddu12i	$r24,560(0x230)
1c00a6a0:	1c004664 	pcaddu12i	$r4,563(0x233)
1c00a6a4:	1c0046b0 	pcaddu12i	$r16,565(0x235)
1c00a6a8:	1c0046fc 	pcaddu12i	$r28,567(0x237)
1c00a6ac:	1c004748 	pcaddu12i	$r8,570(0x23a)
1c00a6b0:	1c004794 	pcaddu12i	$r20,572(0x23c)
1c00a6b4:	1c0047e0 	pcaddu12i	$r0,575(0x23f)
1c00a6b8:	1c00482c 	pcaddu12i	$r12,577(0x241)
1c00a6bc:	1c004878 	pcaddu12i	$r24,579(0x243)
1c00a6c0:	1c0048c4 	pcaddu12i	$r4,582(0x246)
1c00a6c4:	1c004910 	pcaddu12i	$r16,584(0x248)
1c00a6c8:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6cc:	1c004ba4 	pcaddu12i	$r4,605(0x25d)
1c00a6d0:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6d4:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6d8:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6dc:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6e0:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6e4:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6e8:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6ec:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6f0:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6f4:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6f8:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a6fc:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a700:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a704:	1c004bf4 	pcaddu12i	$r20,607(0x25f)
1c00a708:	1c004bc0 	pcaddu12i	$r0,606(0x25e)

1c00a70c <__FUNCTION__.1874>:
1c00a70c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021b84 <_sidata+0x15e50>
1c00a710:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021774 <_sidata+0x15a40>
1c00a714:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffd774 <_start-0x288c>
1c00a718:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001888 <gpio_set_direction+0x28>
1c00a71c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01157c <_sidata+0x5848>
1c00a720:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a724 <__FUNCTION__.1878>:
1c00a724:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021b9c <_sidata+0x15e68>
1c00a728:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02178c <_sidata+0x15a58>
1c00a72c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffd88c <_start-0x2774>
1c00a730:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0018a0 <gpio_set_direction+0x40>
1c00a734:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011594 <_sidata+0x5860>
1c00a738:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a73c <__FUNCTION__.1882>:
1c00a73c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021bb4 <_sidata+0x15e80>
1c00a740:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0217a4 <_sidata+0x15a70>
1c00a744:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffd9a4 <_start-0x265c>
1c00a748:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0018b8 <gpio_set_direction+0x58>
1c00a74c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0115ac <_sidata+0x5878>
1c00a750:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a754 <__FUNCTION__.1886>:
1c00a754:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021bcc <_sidata+0x15e98>
1c00a758:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0217bc <_sidata+0x15a88>
1c00a75c:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffdabc <_start-0x2544>
1c00a760:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0018d0 <gpio_set_direction+0x70>
1c00a764:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0115c4 <_sidata+0x5890>
1c00a768:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a76c <__FUNCTION__.1890>:
1c00a76c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021be4 <_sidata+0x15eb0>
1c00a770:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0217d4 <_sidata+0x15aa0>
1c00a774:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffdbd4 <_start-0x242c>
1c00a778:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0018e8 <gpio_set_direction+0x88>
1c00a77c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0115dc <_sidata+0x58a8>
1c00a780:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a784 <__FUNCTION__.1894>:
1c00a784:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021bfc <_sidata+0x15ec8>
1c00a788:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0217ec <_sidata+0x15ab8>
1c00a78c:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffdcec <_start-0x2314>
1c00a790:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001900 <gpio_set_direction+0xa0>
1c00a794:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0115f4 <_sidata+0x58c0>
1c00a798:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a79c <__FUNCTION__.1898>:
1c00a79c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c14 <_sidata+0x15ee0>
1c00a7a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021804 <_sidata+0x15ad0>
1c00a7a4:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffde04 <_start-0x21fc>
1c00a7a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001918 <gpio_set_direction+0xb8>
1c00a7ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01160c <_sidata+0x58d8>
1c00a7b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a7b4 <__FUNCTION__.1902>:
1c00a7b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c2c <_sidata+0x15ef8>
1c00a7b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02181c <_sidata+0x15ae8>
1c00a7bc:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffdf1c <_start-0x20e4>
1c00a7c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001930 <gpio_set_direction+0xd0>
1c00a7c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011624 <_sidata+0x58f0>
1c00a7c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a7cc <__FUNCTION__.1906>:
1c00a7cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c44 <_sidata+0x15f10>
1c00a7d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021834 <_sidata+0x15b00>
1c00a7d4:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffd834 <_start-0x27cc>
1c00a7d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001948 <gpio_set_direction+0xe8>
1c00a7dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01163c <_sidata+0x5908>
1c00a7e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a7e4 <__FUNCTION__.1910>:
1c00a7e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c5c <_sidata+0x15f28>
1c00a7e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02184c <_sidata+0x15b18>
1c00a7ec:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffd94c <_start-0x26b4>
1c00a7f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001960 <gpio_set_direction+0x100>
1c00a7f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011654 <_sidata+0x5920>
1c00a7f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a7fc <__FUNCTION__.1914>:
1c00a7fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c74 <_sidata+0x15f40>
1c00a800:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021864 <_sidata+0x15b30>
1c00a804:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffda64 <_start-0x259c>
1c00a808:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001978 <gpio_set_direction+0x118>
1c00a80c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01166c <_sidata+0x5938>
1c00a810:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a814 <__FUNCTION__.1918>:
1c00a814:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021c8c <_sidata+0x15f58>
1c00a818:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02187c <_sidata+0x15b48>
1c00a81c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffdb7c <_start-0x2484>
1c00a820:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001990 <myputchar+0x8>
1c00a824:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011684 <_sidata+0x5950>
1c00a828:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a82c <__FUNCTION__.1922>:
1c00a82c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021ca4 <_sidata+0x15f70>
1c00a830:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021894 <_sidata+0x15b60>
1c00a834:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffdc94 <_start-0x236c>
1c00a838:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0019a8 <myputchar+0x20>
1c00a83c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01169c <_sidata+0x5968>
1c00a840:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a844 <__FUNCTION__.1926>:
1c00a844:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021cbc <_sidata+0x15f88>
1c00a848:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0218ac <_sidata+0x15b78>
1c00a84c:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffddac <_start-0x2254>
1c00a850:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0019c0 <myputchar+0x38>
1c00a854:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0116b4 <_sidata+0x5980>
1c00a858:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a85c <__FUNCTION__.1930>:
1c00a85c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021cd4 <_sidata+0x15fa0>
1c00a860:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0218c4 <_sidata+0x15b90>
1c00a864:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffdec4 <_start-0x213c>
1c00a868:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0019d8 <printbase+0x14>
1c00a86c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0116cc <_sidata+0x5998>
1c00a870:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a874 <__FUNCTION__.1934>:
1c00a874:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021cec <_sidata+0x15fb8>
1c00a878:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0218dc <_sidata+0x15ba8>
1c00a87c:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffdfdc <_start-0x2024>
1c00a880:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0019f0 <printbase+0x2c>
1c00a884:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0116e4 <_sidata+0x59b0>
1c00a888:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a88c <__FUNCTION__.1938>:
1c00a88c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d04 <_sidata+0x15fd0>
1c00a890:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0218f4 <_sidata+0x15bc0>
1c00a894:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffd8f4 <_start-0x270c>
1c00a898:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a08 <printbase+0x44>
1c00a89c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0116fc <_sidata+0x59c8>
1c00a8a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a8a4 <__FUNCTION__.1942>:
1c00a8a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d1c <_sidata+0x15fe8>
1c00a8a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02190c <_sidata+0x15bd8>
1c00a8ac:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffda0c <_start-0x25f4>
1c00a8b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a20 <printbase+0x5c>
1c00a8b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011714 <_sidata+0x59e0>
1c00a8b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a8bc <__FUNCTION__.1946>:
1c00a8bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d34 <_sidata+0x16000>
1c00a8c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021924 <_sidata+0x15bf0>
1c00a8c4:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffdb24 <_start-0x24dc>
1c00a8c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a38 <printbase+0x74>
1c00a8cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01172c <_sidata+0x59f8>
1c00a8d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a8d4 <__FUNCTION__.1950>:
1c00a8d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d4c <_sidata+0x16018>
1c00a8d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02193c <_sidata+0x15c08>
1c00a8dc:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffdc3c <_start-0x23c4>
1c00a8e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a50 <printbase+0x8c>
1c00a8e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011744 <_sidata+0x5a10>
1c00a8e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a8ec <__FUNCTION__.1954>:
1c00a8ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d64 <_sidata+0x16030>
1c00a8f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021954 <_sidata+0x15c20>
1c00a8f4:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffdd54 <_start-0x22ac>
1c00a8f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a68 <printbase+0xa4>
1c00a8fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01175c <_sidata+0x5a28>
1c00a900:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a904 <__FUNCTION__.1958>:
1c00a904:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d7c <_sidata+0x16048>
1c00a908:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02196c <_sidata+0x15c38>
1c00a90c:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffde6c <_start-0x2194>
1c00a910:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a80 <printbase+0xbc>
1c00a914:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011774 <_sidata+0x5a40>
1c00a918:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a91c <__FUNCTION__.1962>:
1c00a91c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021d94 <_sidata+0x16060>
1c00a920:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021984 <_sidata+0x15c50>
1c00a924:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffdf84 <_start-0x207c>
1c00a928:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001a98 <printbase+0xd4>
1c00a92c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01178c <_sidata+0x5a58>
1c00a930:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a934 <__FUNCTION__.1966>:
1c00a934:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021dac <_sidata+0x16078>
1c00a938:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02199c <_sidata+0x15c68>
1c00a93c:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffe09c <_start-0x1f64>
1c00a940:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001ab0 <printbase+0xec>
1c00a944:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0117a4 <_sidata+0x5a70>
1c00a948:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a94c <__FUNCTION__.1970>:
1c00a94c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021dc4 <_sidata+0x16090>
1c00a950:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0219b4 <_sidata+0x15c80>
1c00a954:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffd9b8 <_start-0x2648>
1c00a958:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001ac8 <printbase+0x104>
1c00a95c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0117bc <_sidata+0x5a88>
1c00a960:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a964 <__FUNCTION__.1974>:
1c00a964:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021ddc <_sidata+0x160a8>
1c00a968:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0219cc <_sidata+0x15c98>
1c00a96c:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffdad0 <_start-0x2530>
1c00a970:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001ae0 <printbase+0x11c>
1c00a974:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0117d4 <_sidata+0x5aa0>
1c00a978:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a97c <__FUNCTION__.1978>:
1c00a97c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021df4 <_sidata+0x160c0>
1c00a980:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0219e4 <_sidata+0x15cb0>
1c00a984:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffdbe8 <_start-0x2418>
1c00a988:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001af8 <printbase+0x134>
1c00a98c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0117ec <_sidata+0x5ab8>
1c00a990:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a994 <__FUNCTION__.1982>:
1c00a994:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021e0c <_sidata+0x160d8>
1c00a998:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0219fc <_sidata+0x15cc8>
1c00a99c:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffdd00 <_start-0x2300>
1c00a9a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001b10 <printbase+0x14c>
1c00a9a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011804 <_sidata+0x5ad0>
1c00a9a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a9ac <__FUNCTION__.1986>:
1c00a9ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021e24 <_sidata+0x160f0>
1c00a9b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021a14 <_sidata+0x15ce0>
1c00a9b4:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffde18 <_start-0x21e8>
1c00a9b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001b28 <puts+0x4>
1c00a9bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01181c <_sidata+0x5ae8>
1c00a9c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a9c4 <__FUNCTION__.1990>:
1c00a9c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021e3c <_sidata+0x16108>
1c00a9c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021a2c <_sidata+0x15cf8>
1c00a9cc:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffdf30 <_start-0x20d0>
1c00a9d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001b40 <puts+0x1c>
1c00a9d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011834 <_sidata+0x5b00>
1c00a9d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a9dc <__FUNCTION__.1994>:
1c00a9dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021e54 <_sidata+0x16120>
1c00a9e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021a44 <_sidata+0x15d10>
1c00a9e4:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffe048 <_start-0x1fb8>
1c00a9e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001b58 <puts+0x34>
1c00a9ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01184c <_sidata+0x5b18>
1c00a9f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00a9f4 <__FUNCTION__.1998>:
1c00a9f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021e6c <_sidata+0x16138>
1c00a9f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c021a5c <_sidata+0x15d28>
1c00a9fc:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffe160 <_start-0x1ea0>
1c00aa00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001b70 <puts+0x4c>
1c00aa04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c011864 <_sidata+0x5b30>
1c00aa08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c00aa0c:	5049432b 	b	-55817920(0xcac4940) # 18acf34c <_start-0x3530cb4>
1c00aa10:	4c4d5347 	jirl	$r7,$r26,19792(0x4d50)
1c00aa14:	003a434f 	0x003a434f
1c00aa18:	203a614c 	ll.w	$r12,$r10,14944(0x3a60)
1c00aa1c:	0a0d7325 	0x0a0d7325
1c00aa20:	203a6f4c 	ll.w	$r12,$r26,14956(0x3a6c)
1c00aa24:	0a0d7325 	0x0a0d7325
1c00aa28:	00000000 	0x00000000
1c00aa2c:	0a0d5441 	0x0a0d5441
1c00aa30:	00000000 	0x00000000
1c00aa34:	00000031 	0x00000031
1c00aa38:	4f455441 	jirl	$r1,$r2,-47788(0x34554)
1c00aa3c:	00000a0d 	0x00000a0d
1c00aa40:	00000032 	0x00000032
1c00aa44:	492b5441 	bceqz	$fcc2,338772(0x52b54) # 1c05d598 <_sidata+0x51864>
1c00aa48:	44494343 	bnez	$r26,805184(0xc4940) # 1c0cf388 <_sidata+0xc3654>
1c00aa4c:	00000a0d 	0x00000a0d
1c00aa50:	00000033 	0x00000033
1c00aa54:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07d5a8 <_sidata+0x71874>
1c00aa58:	54544147 	bl	85742656(0x51c5440) # 211cfe98 <_sidata+0x51c4164>
1c00aa5c:	000a0d3f 	0x000a0d3f
1c00aa60:	00000034 	0x00000034
1c00aa64:	532b5441 	b	17247060(0x1072b54) # 1d07d5b8 <_sidata+0x1071884>
1c00aa68:	52425041 	b	17187408(0x1064250) # 1d06ecb8 <_sidata+0x1062f84>
1c00aa6c:	312c333d 	vstelm.w	$vr29,$r25,48(0x30),0x3
1c00aa70:	0000002c 	0x0000002c
1c00aa74:	544e4f43 	bl	-49525172(0xd0c4e4c) # 190cf8c0 <_start-0x2f30740>
1c00aa78:	00455059 	srli.d	$r25,$r2,0x14
1c00aa7c:	0000002c 	0x0000002c
1c00aa80:	53525047 	b	18829904(0x11f5250) # 1d1ffcd0 <_sidata+0x11f3f9c>
1c00aa84:	00000000 	0x00000000
1c00aa88:	00000a0d 	0x00000a0d
1c00aa8c:	00000035 	0x00000035
1c00aa90:	004e5041 	0x004e5041
1c00aa94:	00000036 	0x00000036
1c00aa98:	532b5441 	b	17247060(0x1072b54) # 1d07d5ec <_sidata+0x10718b8>
1c00aa9c:	52425041 	b	17187408(0x1064250) # 1d06ecec <_sidata+0x1062fb8>
1c00aaa0:	312c313d 	vstelm.w	$vr29,$r9,48(0x30),0x3
1c00aaa4:	00000a0d 	0x00000a0d
1c00aaa8:	00000037 	0x00000037
1c00aaac:	532b5441 	b	17247060(0x1072b54) # 1d07d600 <_sidata+0x10718cc>
1c00aab0:	52425041 	b	17187408(0x1064250) # 1d06ed00 <_sidata+0x1062fcc>
1c00aab4:	312c323d 	vstelm.w	$vr29,$r17,48(0x30),0x3
1c00aab8:	00000a0d 	0x00000a0d
1c00aabc:	00000038 	0x00000038
1c00aac0:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07d614 <_sidata+0x718e0>
1c00aac4:	53475049 	b	19351376(0x1274750) # 1d27f214 <_sidata+0x12734e0>
1c00aac8:	434f4c4d 	beqz	$r2,3624780(0x374f4c) # 1c37fa14 <_sidata+0x373ce0>
1c00aacc:	312c313d 	vstelm.w	$vr29,$r9,48(0x30),0x3
1c00aad0:	00000a0d 	0x00000a0d
1c00aad4:	00000039 	0x00000039

1c00aad8 <asc2_1608>:
	...
1c00aae8:	f8000000 	0xf8000000
1c00aaec:	00000000 	0x00000000
1c00aaf0:	33000000 	0x33000000
1c00aaf4:	00000000 	0x00000000
1c00aaf8:	020c1000 	slti	$r0,$r0,772(0x304)
1c00aafc:	00020c10 	0x00020c10
	...
1c00ab08:	78c04000 	0x78c04000
1c00ab0c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c00ab10:	043f0400 	csrrd	$r0,0xfc1
1c00ab14:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c00ab18:	88887000 	0x88887000
1c00ab1c:	003008fc 	0x003008fc
1c00ab20:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00ab24:	001e21ff 	mulh.d	$r31,$r15,$r8
1c00ab28:	80f008f0 	0x80f008f0
1c00ab2c:	00001860 	cto.w	$r0,$r3
1c00ab30:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c00ab34:	001e211e 	mulh.d	$r30,$r8,$r8
1c00ab38:	8808f000 	0x8808f000
1c00ab3c:	00000070 	0x00000070
1c00ab40:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c00ab44:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00ab48:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c00ab58:	e0000000 	0xe0000000
1c00ab5c:	00020418 	0x00020418
1c00ab60:	07000000 	0x07000000
1c00ab64:	00402018 	0x00402018
1c00ab68:	18040200 	pcaddi	$r0,8208(0x2010)
1c00ab6c:	000000e0 	0x000000e0
1c00ab70:	18204000 	pcaddi	$r0,66048(0x10200)
1c00ab74:	00000007 	0x00000007
1c00ab78:	f0804040 	0xf0804040
1c00ab7c:	00404080 	0x00404080
1c00ab80:	0f010202 	0x0f010202
1c00ab84:	00020201 	0x00020201
1c00ab88:	00000000 	0x00000000
1c00ab8c:	000000e0 	0x000000e0
1c00ab90:	01010100 	fadd.d	$f0,$f8,$f0
1c00ab94:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c00aba0:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c00abb0:	01010100 	fadd.d	$f0,$f8,$f0
1c00abb4:	00010101 	0x00010101
	...
1c00abc0:	00303000 	0x00303000
	...
1c00abcc:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c00abd0:	07186000 	0x07186000
1c00abd4:	00000000 	0x00000000
1c00abd8:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00abdc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00abe0:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00abe4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00abe8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00abec:	000000f8 	0x000000f8
1c00abf0:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c00abf4:	0020203f 	div.w	$r31,$r1,$r8
1c00abf8:	08087000 	0x08087000
1c00abfc:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00ac00:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00ac04:	00302122 	0x00302122
1c00ac08:	08083000 	0x08083000
1c00ac0c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00ac10:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c00ac14:	001c2221 	mul.w	$r1,$r17,$r8
1c00ac18:	40800000 	beqz	$r0,32768(0x8000) # 1c012c18 <_sidata+0x6ee4>
1c00ac1c:	0000f830 	0x0000f830
1c00ac20:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c00ac24:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c00ac28:	8888f800 	0x8888f800
1c00ac2c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00ac30:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c00ac34:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ac38:	8810e000 	0x8810e000
1c00ac3c:	00009088 	0x00009088
1c00ac40:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00ac44:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00ac48:	08081800 	0x08081800
1c00ac4c:	00186888 	sra.w	$r8,$r4,$r26
1c00ac50:	3e000000 	0x3e000000
1c00ac54:	00000001 	0x00000001
1c00ac58:	08887000 	0x08887000
1c00ac5c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00ac60:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00ac64:	001c2221 	mul.w	$r1,$r17,$r8
1c00ac68:	0808f000 	0x0808f000
1c00ac6c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ac70:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c00ac74:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00ac78:	c0000000 	0xc0000000
1c00ac7c:	000000c0 	0x000000c0
1c00ac80:	30000000 	0x30000000
1c00ac84:	00000030 	0x00000030
1c00ac88:	80000000 	0x80000000
1c00ac8c:	00000000 	0x00000000
1c00ac90:	e0000000 	0xe0000000
1c00ac94:	00000000 	0x00000000
1c00ac98:	40800000 	beqz	$r0,32768(0x8000) # 1c012c98 <_sidata+0x6f64>
1c00ac9c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00aca0:	04020100 	csrxchg	$r0,$r8,0x80
1c00aca4:	00201008 	div.w	$r8,$r0,$r4
1c00aca8:	40404000 	beqz	$r0,16448(0x4040) # 1c00ece8 <_sidata+0x2fb4>
1c00acac:	00404040 	0x00404040
1c00acb0:	02020200 	slti	$r0,$r16,128(0x80)
1c00acb4:	00020202 	0x00020202
1c00acb8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00acbc:	00008040 	0x00008040
1c00acc0:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00acc4:	00010204 	0x00010204
1c00acc8:	08487000 	0x08487000
1c00accc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00acd0:	30000000 	0x30000000
1c00acd4:	00000037 	0x00000037
1c00acd8:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00acdc:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00ace0:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c00ace4:	0017282f 	sll.w	$r15,$r1,$r10
1c00ace8:	38c00000 	0x38c00000
1c00acec:	000000e0 	0x000000e0
1c00acf0:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00acf4:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00acf8:	8888f808 	0x8888f808
1c00acfc:	00007088 	0x00007088
1c00ad00:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ad04:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ad08:	080830c0 	0x080830c0
1c00ad0c:	00380808 	0x00380808
1c00ad10:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00ad14:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00ad18:	0808f808 	0x0808f808
1c00ad1c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ad20:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ad24:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00ad28:	8888f808 	0x8888f808
1c00ad2c:	001008e8 	add.w	$r8,$r7,$r2
1c00ad30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ad34:	00182023 	sra.w	$r3,$r1,$r8
1c00ad38:	8888f808 	0x8888f808
1c00ad3c:	001008e8 	add.w	$r8,$r7,$r2
1c00ad40:	00203f20 	div.w	$r0,$r25,$r15
1c00ad44:	00000003 	0x00000003
1c00ad48:	080830c0 	0x080830c0
1c00ad4c:	00003808 	revb.2w	$r8,$r0
1c00ad50:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00ad54:	00021e22 	0x00021e22
1c00ad58:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00ad5c:	08f80800 	0x08f80800
1c00ad60:	01213f20 	0x01213f20
1c00ad64:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00ad68:	f8080800 	0xf8080800
1c00ad6c:	00000808 	0x00000808
1c00ad70:	3f202000 	0x3f202000
1c00ad74:	00002020 	clo.d	$r0,$r1
1c00ad78:	08080000 	0x08080000
1c00ad7c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00ad80:	808080c0 	0x808080c0
1c00ad84:	0000007f 	0x0000007f
1c00ad88:	c088f808 	0xc088f808
1c00ad8c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00ad90:	01203f20 	0x01203f20
1c00ad94:	00203826 	div.w	$r6,$r1,$r14
1c00ad98:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00ad9c:	00000000 	0x00000000
1c00ada0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ada4:	00302020 	0x00302020
1c00ada8:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00adac:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00adb0:	3e013f20 	0x3e013f20
1c00adb4:	00203f01 	div.w	$r1,$r24,$r15
1c00adb8:	c030f808 	0xc030f808
1c00adbc:	08f80800 	0x08f80800
1c00adc0:	00203f20 	div.w	$r0,$r25,$r15
1c00adc4:	003f1807 	0x003f1807
1c00adc8:	080810e0 	0x080810e0
1c00adcc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00add0:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c00add4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00add8:	0808f808 	0x0808f808
1c00addc:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00ade0:	01213f20 	0x01213f20
1c00ade4:	00000101 	0x00000101
1c00ade8:	080810e0 	0x080810e0
1c00adec:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00adf0:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c00adf4:	004f5030 	0x004f5030
1c00adf8:	8888f808 	0x8888f808
1c00adfc:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00ae00:	00203f20 	div.w	$r0,$r25,$r15
1c00ae04:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00ae08:	08887000 	0x08887000
1c00ae0c:	00380808 	0x00380808
1c00ae10:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00ae14:	001c2221 	mul.w	$r1,$r17,$r8
1c00ae18:	f8080818 	0xf8080818
1c00ae1c:	00180808 	sra.w	$r8,$r0,$r2
1c00ae20:	3f200000 	0x3f200000
1c00ae24:	00000020 	0x00000020
1c00ae28:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00ae2c:	08f80800 	0x08f80800
1c00ae30:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00ae34:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00ae38:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00ae3c:	0838c800 	0x0838c800
1c00ae40:	38070000 	0x38070000
1c00ae44:	0000010e 	0x0000010e
1c00ae48:	f800f808 	0xf800f808
1c00ae4c:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c00ae50:	013e0300 	0x013e0300
1c00ae54:	0000033e 	0x0000033e
1c00ae58:	80681808 	0x80681808
1c00ae5c:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00ae60:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00ae64:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00ae68:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c00ae6c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00ae70:	3f200000 	0x3f200000
1c00ae74:	00000020 	0x00000020
1c00ae78:	08080810 	0x08080810
1c00ae7c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00ae80:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00ae84:	00182020 	sra.w	$r0,$r1,$r8
1c00ae88:	fe000000 	0xfe000000
1c00ae8c:	00020202 	0x00020202
1c00ae90:	7f000000 	0x7f000000
1c00ae94:	00404040 	0x00404040
1c00ae98:	c0380400 	0xc0380400
1c00ae9c:	00000000 	0x00000000
1c00aea0:	01000000 	0x01000000
1c00aea4:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00aea8:	02020200 	slti	$r0,$r16,128(0x80)
1c00aeac:	000000fe 	0x000000fe
1c00aeb0:	40404000 	beqz	$r0,16448(0x4040) # 1c00eef0 <_sidata+0x31bc>
1c00aeb4:	0000007f 	0x0000007f
1c00aeb8:	02040000 	slti	$r0,$r0,256(0x100)
1c00aebc:	00000402 	0x00000402
	...
1c00aed0:	80808080 	0x80808080
1c00aed4:	80808080 	0x80808080
1c00aed8:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00aee8:	80800000 	0x80800000
1c00aeec:	00000080 	0x00000080
1c00aef0:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c00aef4:	00203f12 	div.w	$r18,$r24,$r15
1c00aef8:	8000f010 	0x8000f010
1c00aefc:	00000080 	0x00000080
1c00af00:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00af04:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00af08:	80000000 	0x80000000
1c00af0c:	00008080 	0x00008080
1c00af10:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00af14:	00112020 	sub.w	$r0,$r1,$r8
1c00af18:	80800000 	0x80800000
1c00af1c:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c00af20:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00af24:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00af28:	80800000 	0x80800000
1c00af2c:	00008080 	0x00008080
1c00af30:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c00af34:	00172424 	sll.w	$r4,$r1,$r9
1c00af38:	e0808000 	0xe0808000
1c00af3c:	00209090 	mod.w	$r16,$r4,$r4
1c00af40:	3f202000 	0x3f202000
1c00af44:	00002020 	clo.d	$r0,$r1
1c00af48:	80800000 	0x80800000
1c00af4c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af50:	94946b00 	0x94946b00
1c00af54:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00af58:	8000f010 	0x8000f010
1c00af5c:	00008080 	0x00008080
1c00af60:	00213f20 	div.wu	$r0,$r25,$r15
1c00af64:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00af68:	98988000 	0x98988000
1c00af6c:	00000000 	0x00000000
1c00af70:	3f202000 	0x3f202000
1c00af74:	00002020 	clo.d	$r0,$r1
1c00af78:	80000000 	0x80000000
1c00af7c:	00009898 	0x00009898
1c00af80:	8080c000 	0x8080c000
1c00af84:	00007f80 	0x00007f80
1c00af88:	0000f010 	0x0000f010
1c00af8c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af90:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c00af94:	00203029 	div.w	$r9,$r1,$r12
1c00af98:	f8101000 	0xf8101000
1c00af9c:	00000000 	0x00000000
1c00afa0:	3f202000 	0x3f202000
1c00afa4:	00002020 	clo.d	$r0,$r1
1c00afa8:	80808080 	0x80808080
1c00afac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00afb0:	00203f20 	div.w	$r0,$r25,$r15
1c00afb4:	3f00203f 	0x3f00203f
1c00afb8:	80008080 	0x80008080
1c00afbc:	00008080 	0x00008080
1c00afc0:	00213f20 	div.wu	$r0,$r25,$r15
1c00afc4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00afc8:	80800000 	0x80800000
1c00afcc:	00008080 	0x00008080
1c00afd0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00afd4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00afd8:	80008080 	0x80008080
1c00afdc:	00000080 	0x00000080
1c00afe0:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c00afe4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00afe8:	80000000 	0x80000000
1c00afec:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c00aff0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00aff4:	80ff9120 	0x80ff9120
1c00aff8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00affc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b000:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00b004:	00010020 	asrtle.d	$r1,$r0
1c00b008:	80800000 	0x80800000
1c00b00c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b010:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00b014:	00192424 	srl.d	$r4,$r1,$r9
1c00b018:	e0808000 	0xe0808000
1c00b01c:	00008080 	0x00008080
1c00b020:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00b024:	00102020 	add.w	$r0,$r1,$r8
1c00b028:	00008080 	0x00008080
1c00b02c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b030:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b034:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b038:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b03c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b040:	300c0300 	0x300c0300
1c00b044:	0000030c 	0x0000030c
1c00b048:	80008080 	0x80008080
1c00b04c:	80800080 	0x80800080
1c00b050:	0c300e01 	0x0c300e01
1c00b054:	01063807 	0x01063807
1c00b058:	80808000 	0x80808000
1c00b05c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b060:	0e312000 	0x0e312000
1c00b064:	0020312e 	div.w	$r14,$r9,$r12
1c00b068:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b06c:	80808000 	0x80808000
1c00b070:	78868100 	0x78868100
1c00b074:	00010618 	0x00010618
1c00b078:	80808000 	0x80808000
1c00b07c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b080:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00b084:	00302122 	0x00302122
1c00b088:	00000000 	0x00000000
1c00b08c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c00b090:	00000000 	0x00000000
1c00b094:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04f0d0 <_sidata+0x4339c>
1c00b098:	00000000 	0x00000000
1c00b09c:	000000ff 	0x000000ff
1c00b0a0:	00000000 	0x00000000
1c00b0a4:	000000ff 	0x000000ff
1c00b0a8:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c00b0ac:	00000000 	0x00000000
1c00b0b0:	013e4040 	0x013e4040
1c00b0b4:	00000000 	0x00000000
1c00b0b8:	02010200 	slti	$r0,$r16,64(0x40)
1c00b0bc:	00020402 	0x00020402
	...

1c00b0c8 <tfont16>:
1c00b0c8:	40baa4e7 	beqz	$r7,1882788(0x1cbaa4) # 1c1d6b6c <_sidata+0x1cae38>
1c00b0cc:	42424240 	beqz	$r18,148032(0x24240) # 1c02f30c <_sidata+0x235d8>
1c00b0d0:	42c24242 	beqz	$r18,705088(0xac240) # 1c0b7310 <_sidata+0xab5dc>
1c00b0d4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0af314 <_sidata+0xa35e0>
1c00b0d8:	20004040 	ll.w	$r0,$r2,64(0x40)
1c00b0dc:	00060810 	alsl.wu	$r16,$r0,$r2,0x1
1c00b0e0:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c00b0e4:	04020000 	csrrd	$r0,0x80
1c00b0e8:	e6003008 	0xe6003008
1c00b0ec:	0000be98 	0x0000be98
1c00b0f0:	9292fe00 	0x9292fe00
1c00b0f4:	92929292 	0x92929292
1c00b0f8:	0000fe92 	0x0000fe92
1c00b0fc:	42400000 	beqz	$r0,147456(0x24000) # 1c02f0fc <_sidata+0x233c8>
1c00b100:	7f405844 	0x7f405844
1c00b104:	7f404040 	0x7f404040
1c00b108:	46485040 	bnez	$r2,149584(0x24850) # 1c02f958 <_sidata+0x23c24>
1c00b10c:	aee50040 	0xaee50040
1c00b110:	040c109e 	csrxchg	$r30,$r4,0x304
1c00b114:	05641484 	0x05641484
1c00b118:	0404f406 	csrrd	$r6,0x13d
1c00b11c:	0c140404 	fcmp.cun.s	$fcc4,$f0,$f1
1c00b120:	84840400 	0x84840400
1c00b124:	14244744 	lu12i.w	$r4,74298(0x1223a)
1c00b128:	140c070c 	lu12i.w	$r12,24632(0x6038)
1c00b12c:	04844424 	csrwr	$r4,0x2111
1c00b130:	8caae900 	0x8caae900
1c00b134:	8282fa02 	0x8282fa02
1c00b138:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
1c00b13c:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c00b140:	00402050 	0x00402050
1c00b144:	84481808 	0x84481808
1c00b148:	44403f44 	bnez	$r26,1065020(0x10403c) # 1c10f184 <_sidata+0x103450>
1c00b14c:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00ff8c <_sidata+0x4258>
1c00b150:	00404758 	0x00404758
1c00b154:	02be99e7 	addi.w	$r7,$r15,-90(0xfa6)
1c00b158:	2222e202 	ll.d	$r2,$r16,8928(0x22e0)
1c00b15c:	22262a32 	ll.d	$r18,$r17,9768(0x2628)
1c00b160:	e2222222 	0xe2222222
1c00b164:	00000202 	0x00000202
1c00b168:	4242ff00 	beqz	$r24,148220(0x242fc) # 1c02f464 <_sidata+0x23730>
1c00b16c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0af3ac <_sidata+0xa3678>
1c00b170:	ff424242 	0xff424242
1c00b174:	e7000000 	0xe7000000
1c00b178:	242491a7 	ldptr.w	$r7,$r13,9360(0x2490)
1c00b17c:	22a3fea4 	ll.d	$r4,$r21,-23556(0xa3fc)
1c00b180:	00cc2200 	bstrpick.d	$r0,$r16,0xc,0x8
1c00b184:	0000ff00 	0x0000ff00
1c00b188:	06080000 	cacop	0x0,$r0,512(0x200)
1c00b18c:	0100ff01 	fadd.s	$f1,$f24,$f31
1c00b190:	04040404 	csrrd	$r4,0x101
1c00b194:	0202ff04 	slti	$r4,$r24,191(0xbf)
1c00b198:	8de80002 	0x8de80002
1c00b19c:	246484a3 	ldptr.w	$r3,$r5,25732(0x6484)
1c00b1a0:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c00b1a4:	2f2424a4 	0x2f2424a4
1c00b1a8:	64a42424 	bge	$r1,$r4,42020(0xa424) # 1c0155cc <_sidata+0x9898>
1c00b1ac:	22424000 	ll.d	$r0,$r0,16960(0x4240)
1c00b1b0:	060a1222 	cacop	0x2,$r17,644(0x284)
1c00b1b4:	120a06ff 	addu16i.d	$r31,$r23,-32127(0x8281)
1c00b1b8:	40422222 	beqz	$r17,541216(0x84220) # 1c08f3d8 <_sidata+0x836a4>
1c00b1bc:	9b88e500 	0x9b88e500
1c00b1c0:	4cd02040 	jirl	$r0,$r2,53280(0xd020)
1c00b1c4:	10c84443 	addu16i.d	$r3,$r2,12817(0x3211)
1c00b1c8:	00f80020 	bstrpick.d	$r0,$r1,0x38,0x0
1c00b1cc:	0000ff00 	0x0000ff00
1c00b1d0:	403f0000 	beqz	$r0,16128(0x3f00) # 1c00f0d0 <_sidata+0x339c>
1c00b1d4:	40474844 	beqz	$r2,1066824(0x104748) # 1c10f91c <_sidata+0x103be8>
1c00b1d8:	400f0070 	beqz	$r3,-4190464(0x400f00) # 1bc0c0d8 <_start-0x3f3f28>
1c00b1dc:	00007f80 	0x00007f80

1c00b1e0 <tfont32>:
1c00b1e0:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c00b1e4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00b1e8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b1ec:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b1f0:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00b1f4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b1f8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b1fc:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c00b208:	f8fc0000 	0xf8fc0000
1c00b20c:	08080808 	0x08080808
1c00b210:	08080b0c 	0x08080b0c
1c00b214:	08080808 	0x08080808
1c00b218:	f8fc0808 	0xf8fc0808
	...
1c00b228:	ffff0000 	0xffff0000
1c00b22c:	08080808 	0x08080808
1c00b230:	08080808 	0x08080808
1c00b234:	08080808 	0x08080808
1c00b238:	ffff0808 	0xffff0808
	...
1c00b248:	3f7f0000 	0x3f7f0000
1c00b24c:	08080808 	0x08080808
1c00b250:	08080808 	0x08080808
1c00b254:	08080808 	0x08080808
1c00b258:	3f7f0808 	0x3f7f0808
1c00b25c:	00000000 	0x00000000
1c00b260:	e7000000 	0xe7000000
1c00b264:	000091a7 	0x000091a7
1c00b268:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c00b26c:	e0e02020 	0xe0e02020
1c00b270:	18181030 	pcaddi	$r16,49281(0xc081)
1c00b274:	80000000 	0x80000000
1c00b278:	00000080 	0x00000080
1c00b27c:	f8fc0000 	0xf8fc0000
1c00b280:	00000008 	0x00000008
1c00b284:	00000000 	0x00000000
1c00b288:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b28c:	ffff9010 	0xffff9010
1c00b290:	18101010 	pcaddi	$r16,32896(0x8080)
1c00b294:	c0000010 	0xc0000010
1c00b298:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c00b29c:	ffff0000 	0xffff0000
	...
1c00b2a8:	18204080 	pcaddi	$r0,66052(0x10204)
1c00b2ac:	ffff030e 	0xffff030e
1c00b2b0:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfeb8b0 <_start-0x14750>
1c00b2b4:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c00b2b8:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c00b2bc:	ffff1010 	0xffff1010
1c00b2c0:	0c0c0808 	0x0c0c0808
1c00b2c4:	01000000 	0x01000000
1c00b2c8:	00000000 	0x00000000
1c00b2cc:	3f7f0000 	0x3f7f0000
	...
1c00b2dc:	3f7f0000 	0x3f7f0000
1c00b2e0:	00000000 	0x00000000
1c00b2e4:	8de80000 	0x8de80000
1c00b2e8:	000000a3 	0x000000a3
1c00b2ec:	80808080 	0x80808080
1c00b2f0:	80808080 	0x80808080
1c00b2f4:	8088f8fc 	0x8088f8fc
1c00b2f8:	80808080 	0x80808080
1c00b2fc:	8088f8fc 	0x8088f8fc
1c00b300:	e0c08080 	0xe0c08080
1c00b304:	000080c0 	0x000080c0
1c00b308:	00000000 	0x00000000
1c00b30c:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c00b310:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b314:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c00b318:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c00b31c:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c00b320:	f0d01010 	0xf0d01010
1c00b324:	00001038 	clo.w	$r24,$r1
1c00b328:	00000000 	0x00000000
1c00b32c:	02020200 	slti	$r0,$r16,128(0x80)
1c00b330:	c2820202 	0xc2820202
1c00b334:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c00b338:	0e02ffff 	0x0e02ffff
1c00b33c:	82c26212 	0x82c26212
1c00b340:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c00b344:	00000203 	0x00000203
1c00b348:	10000000 	addu16i.d	$r0,$r0,0
1c00b34c:	06040808 	cacop	0x8,$r0,258(0x102)
1c00b350:	00010102 	0x00010102
1c00b354:	00000000 	0x00000000
1c00b358:	00003f7f 	revb.d	$r31,$r27
1c00b35c:	01000000 	0x01000000
1c00b360:	0e060303 	0x0e060303
1c00b364:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c00b368:	9b88e500 	0x9b88e500
1c00b36c:	00000000 	0x00000000
1c00b370:	c0000000 	0xc0000000
1c00b374:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c00b378:	80c04060 	0x80c04060
	...
1c00b384:	f8000000 	0xf8000000
1c00b388:	000000f8 	0x000000f8
1c00b38c:	40800000 	beqz	$r0,32768(0x8000) # 1c01338c <_sidata+0x7658>
1c00b390:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c00b394:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b398:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c00b39c:	00000207 	0x00000207
1c00b3a0:	0002ff00 	0x0002ff00
1c00b3a4:	ff000000 	0xff000000
1c00b3a8:	000000ff 	0x000000ff
1c00b3ac:	00000100 	0x00000100
1c00b3b0:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00b3b4:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00d3b4 <_sidata+0x1680>
1c00b3b8:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c00b3bc:	00008000 	0x00008000
1c00b3c0:	00007f00 	0x00007f00
1c00b3c4:	ff000000 	0xff000000
1c00b3c8:	000000ff 	0x000000ff
1c00b3cc:	00000000 	0x00000000
1c00b3d0:	303f0700 	0x303f0700
1c00b3d4:	30303030 	0x30303030
1c00b3d8:	30303030 	0x30303030
1c00b3dc:	00103f38 	add.w	$r24,$r25,$r15
1c00b3e0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00b3e4:	3f703030 	0x3f703030
1c00b3e8:	0000001f 	0x0000001f
1c00b3ec:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c00b404:	40800000 	beqz	$r0,32768(0x8000) # 1c013404 <_sidata+0x76d0>
1c00b408:	00102040 	add.w	$r0,$r2,$r8
	...
1c00b420:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c00b424:	00000306 	0x00000306
	...
1c00b440:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c00b444:	000000c0 	0x000000c0
	...
1c00b464:	04020100 	csrxchg	$r0,$r8,0x80
1c00b468:	0010080c 	add.w	$r12,$r0,$r2
1c00b46c:	e5000000 	0xe5000000
1c00b470:	0000978c 	0x0000978c
	...
1c00b47c:	08f8fc00 	0x08f8fc00
1c00b480:	00000000 	0x00000000
1c00b484:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c00b494:	08080808 	0x08080808
1c00b498:	08080808 	0x08080808
1c00b49c:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c00b4a0:	00000000 	0x00000000
1c00b4a4:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcf5a0 <_start-0x30a60>
1c00b4a8:	18103020 	pcaddi	$r0,33153(0x8181)
1c00b4ac:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c00b4b8:	80000000 	0x80000000
1c00b4bc:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c00b4c0:	00000000 	0x00000000
1c00b4c4:	0000ffff 	0x0000ffff
1c00b4c8:	00000000 	0x00000000
1c00b4cc:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c00b4d0:	00000000 	0x00000000
1c00b4d4:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c00b4d8:	00010103 	0x00010103
1c00b4dc:	003f7f00 	0x003f7f00
1c00b4e0:	00000000 	0x00000000
1c00b4e4:	30303f1f 	0x30303f1f
1c00b4e8:	30303030 	0x30303030
1c00b4ec:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c00b4f0:	bae40000 	0xbae40000
1c00b4f4:	800000ac 	0x800000ac
1c00b4f8:	80808080 	0x80808080
1c00b4fc:	80808080 	0x80808080
1c00b500:	8c808080 	0x8c808080
1c00b504:	80b0f898 	0x80b0f898
1c00b508:	80808080 	0x80808080
1c00b50c:	c0808080 	0xc0808080
1c00b510:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c00b51c:	08f8f800 	0x08f8f800
1c00b520:	08080808 	0x08080808
1c00b524:	08080808 	0x08080808
1c00b528:	f8080808 	0xf8080808
1c00b52c:	000008fc 	0x000008fc
	...
1c00b53c:	e4cf0f00 	0xe4cf0f00
1c00b540:	04040444 	csrxchg	$r4,$r2,0x101
1c00b544:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c00b548:	cf442404 	0xcf442404
1c00b54c:	0000008f 	0x0000008f
1c00b550:	00000000 	0x00000000
1c00b554:	20000000 	ll.w	$r0,$r0,0
1c00b558:	04081010 	csrrd	$r16,0x204
1c00b55c:	00010306 	0x00010306
1c00b560:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c00b564:	00003f3f 	revb.d	$r31,$r25
1c00b568:	00000000 	0x00000000
1c00b56c:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c00b570:	00000018 	0x00000018
1c00b574:	89bcef00 	0x89bcef00
1c00b578:	00000000 	0x00000000
1c00b57c:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00b580:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c00b5a0:	06010000 	cacop	0x0,$r0,64(0x40)
1c00b5a4:	0000f03c 	0x0000f03c
	...
1c00b5c0:	c0800000 	0xc0800000
1c00b5c4:	00000f78 	0x00000f78
	...
1c00b5dc:	0c081000 	0x0c081000
1c00b5e0:	00010306 	0x00010306
	...
1c00b5f8:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c00b5fc:	40404000 	beqz	$r0,16448(0x4040) # 1c00f63c <_sidata+0x3908>
1c00b600:	e0202020 	0xe0202020
1c00b604:	181030e0 	pcaddi	$r0,33159(0x8187)
1c00b608:	00000018 	0x00000018
1c00b60c:	00008080 	0x00008080
1c00b610:	fc000000 	0xfc000000
1c00b614:	000008f8 	0x000008f8
1c00b618:	00000000 	0x00000000
1c00b61c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00b620:	ff901010 	0xff901010
1c00b624:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c00b628:	00001018 	clo.w	$r24,$r0
1c00b62c:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c00b630:	ff000000 	0xff000000
1c00b634:	000000ff 	0x000000ff
1c00b638:	00000000 	0x00000000
1c00b63c:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c00b640:	ff030e18 	0xff030e18
1c00b644:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c00b648:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c00b64c:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c00b650:	ff101010 	0xff101010
1c00b654:	0c0808ff 	0x0c0808ff
1c00b658:	0000000c 	0x0000000c
1c00b65c:	00000001 	0x00000001
1c00b660:	7f000000 	0x7f000000
1c00b664:	0000003f 	0x0000003f
	...
1c00b670:	7f000000 	0x7f000000
1c00b674:	0000003f 	0x0000003f
1c00b678:	e6000000 	0xe6000000
1c00b67c:	0000808a 	0x0000808a
1c00b680:	00000000 	0x00000000
1c00b684:	08f8fc00 	0x08f8fc00
	...
1c00b690:	f8fc0000 	0xf8fc0000
1c00b694:	00000008 	0x00000008
	...
1c00b6a0:	02020202 	slti	$r2,$r16,128(0x80)
1c00b6a4:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c00b6a8:	42438382 	beqz	$r28,672640(0xa4380) # 1c0afa28 <_sidata+0xa3cf4>
1c00b6ac:	82828282 	0x82828282
1c00b6b0:	ffff8282 	0xffff8282
1c00b6b4:	82828282 	0x82828282
1c00b6b8:	020383c2 	slti	$r2,$r30,224(0xe0)
1c00b6bc:	00000000 	0x00000000
1c00b6c0:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c00b6c4:	01ffff02 	0x01ffff02
1c00b6c8:	00000000 	0x00000000
1c00b6cc:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c00b6d0:	8000c070 	0x8000c070
1c00b6d4:	0f3c70c0 	0x0f3c70c0
1c00b6d8:	00000003 	0x00000003
1c00b6dc:	00000000 	0x00000000
1c00b6e0:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c00b6e4:	003f3f70 	0x003f3f70
1c00b6e8:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c00b6ec:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c00b6f0:	0703060c 	0x0703060c
1c00b6f4:	38180c0f 	stx.w	$r15,$r0,$r3
1c00b6f8:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c00b6fc:	8fe50000 	0x8fe50000
1c00b700:	00000091 	0x00000091
1c00b704:	f0800000 	0xf0800000
1c00b708:	00000070 	0x00000070
1c00b70c:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c00b710:	00000000 	0x00000000
1c00b714:	70100800 	0x70100800
1c00b718:	0000c0e0 	0x0000c0e0
	...
1c00b724:	05070e04 	0x05070e04
1c00b728:	84040404 	0x84040404
1c00b72c:	8487fff4 	0x8487fff4
1c00b730:	84848484 	0x84848484
1c00b734:	84848484 	0x84848484
1c00b738:	0484c584 	csrxchg	$r4,$r12,0x2131
1c00b73c:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c00b748:	0f3ce080 	0x0f3ce080
1c00b74c:	06010003 	cacop	0x3,$r0,64(0x40)
1c00b750:	80e03018 	0x80e03018
1c00b754:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c00b758:	00000307 	0x00000307
1c00b75c:	00000000 	0x00000000
1c00b760:	20000000 	ll.w	$r0,$r0,0
1c00b764:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c00b768:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c00b76c:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c00b770:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c00b774:	0c060703 	0x0c060703
1c00b778:	3038181c 	0x3038181c
1c00b77c:	00103030 	add.w	$r16,$r1,$r12
1c00b780:	95b1e500 	0x95b1e500
1c00b784:	00000000 	0x00000000
1c00b788:	08f80400 	0x08f80400
1c00b78c:	08080808 	0x08080808
1c00b790:	08080808 	0x08080808
1c00b794:	08080808 	0x08080808
1c00b798:	08080808 	0x08080808
1c00b79c:	08f8fc08 	0x08f8fc08
	...
1c00b7a8:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c00b7ac:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c00b7b0:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c00b7b4:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c00b7b8:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c00b7bc:	00233321 	div.du	$r1,$r25,$r12
	...
1c00b7c8:	043fff00 	csrxchg	$r0,$r24,0xfff
1c00b7cc:	fc040404 	0xfc040404
1c00b7d0:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c00b7d4:	04c4740c 	csrrd	$r12,0x311d
1c00b7d8:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00fc5c <_sidata+0x3f28>
1c00b7dc:	06062434 	cacop	0x14,$r1,393(0x189)
1c00b7e0:	00000004 	0x00000004
1c00b7e4:	18204000 	pcaddi	$r0,66048(0x10200)
1c00b7e8:	00000107 	0x00000107
1c00b7ec:	3f000000 	0x3f000000
1c00b7f0:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c00b7f4:	03000004 	lu52i.d	$r4,$r0,0
1c00b7f8:	180c0607 	pcaddi	$r7,24624(0x6030)
1c00b7fc:	30383818 	0x30383818
1c00b800:	00001010 	clo.w	$r16,$r0
1c00b804:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c00b808:	80808000 	0x80808000
1c00b80c:	80808080 	0x80808080
1c00b810:	80808080 	0x80808080
1c00b814:	88b8fce0 	0x88b8fce0
1c00b818:	80808080 	0x80808080
1c00b81c:	80808080 	0x80808080
1c00b820:	c0e0c080 	0xc0e0c080
1c00b824:	00000080 	0x00000080
1c00b828:	00000000 	0x00000000
1c00b82c:	c0800000 	0xc0800000
1c00b830:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c00b834:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c00b838:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b83c:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c00b848:	04081000 	csrrd	$r0,0x204
1c00b84c:	00010306 	0x00010306
1c00b850:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfefb4c <_start-0x104b4>
1c00b854:	42424242 	beqz	$r18,672320(0xa4240) # 1c0afa94 <_sidata+0xa3d60>
1c00b858:	42424242 	beqz	$r18,672320(0xa4240) # 1c0afa98 <_sidata+0xa3d64>
1c00b85c:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c00b870:	00003f7f 	revb.d	$r31,$r27
1c00b874:	00000000 	0x00000000
1c00b878:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00b87c:	003f7030 	0x003f7030
1c00b880:	00000000 	0x00000000
1c00b884:	e9000000 	0xe9000000
1c00b888:	00009099 	0x00009099
1c00b88c:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c00b890:	f0101010 	0xf0101010
1c00b894:	00001078 	clo.w	$r24,$r3
1c00b898:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c00b89c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b8a0:	f8101010 	0xf8101010
1c00b8a4:	00000010 	0x00000010
1c00b8a8:	00000000 	0x00000000
1c00b8ac:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c00b8b0:	c33e0000 	0xc33e0000
1c00b8b4:	00000000 	0x00000000
1c00b8b8:	8484ffff 	0x8484ffff
1c00b8bc:	84848484 	0x84848484
1c00b8c0:	ff848484 	0xff848484
	...
1c00b8cc:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c00b8d0:	c0c04000 	0xc0c04000
1c00b8d4:	00007eff 	0x00007eff
1c00b8d8:	0000ffff 	0x0000ffff
1c00b8dc:	c0701e01 	0xc0701e01
1c00b8e0:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c00b8e4:	0000040e 	0x0000040e
1c00b8e8:	00000000 	0x00000000
1c00b8ec:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c00b8f0:	00010000 	asrtle.d	$r0,$r0
1c00b8f4:	00000000 	0x00000000
1c00b8f8:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c00b8fc:	01020204 	0x01020204
1c00b900:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c00b904:	00183818 	sra.w	$r24,$r0,$r14
1c00b908:	85e50000 	0x85e50000
1c00b90c:	000000ac 	0x000000ac
1c00b910:	00000000 	0x00000000
1c00b914:	80000000 	0x80000000
1c00b918:	001078e0 	add.w	$r0,$r7,$r30
1c00b91c:	1c000000 	pcaddu12i	$r0,0
1c00b920:	000080e0 	0x000080e0
	...
1c00b930:	c0800000 	0xc0800000
1c00b934:	070e3860 	0x070e3860
1c00b938:	00000001 	0x00000001
1c00b93c:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c00b940:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c00b944:	c0c0e070 	0xc0c0e070
1c00b948:	00000080 	0x00000080
1c00b94c:	04000000 	csrrd	$r0,0x0
1c00b950:	00010302 	0x00010302
1c00b954:	c0000000 	0xc0000000
1c00b958:	071c3860 	0x071c3860
1c00b95c:	00000103 	0x00000103
1c00b960:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c00b964:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c00b968:	00010103 	0x00010103
1c00b96c:	00000000 	0x00000000
1c00b970:	38080000 	ldx.w	$r0,$r0,$r0
1c00b974:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c00b978:	08081818 	0x08081818
1c00b97c:	08080808 	0x08080808
1c00b980:	0f090808 	0x0f090808
1c00b984:	00307c1e 	0x00307c1e
1c00b988:	00000000 	0x00000000
1c00b98c:	b88fe500 	0xb88fe500
1c00b990:	00000000 	0x00000000
1c00b994:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00b998:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b99c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b9a0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b9a4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00b9a8:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c00b9ac:	00000000 	0x00000000
1c00b9b0:	04000000 	csrrd	$r0,0x0
1c00b9b4:	84c40404 	0x84c40404
1c00b9b8:	84848484 	0x84848484
1c00b9bc:	84848484 	0x84848484
1c00b9c0:	0684c484 	0x0684c484
1c00b9c4:	00000406 	0x00000406
1c00b9c8:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c00b9d4:	ffff0000 	0xffff0000
1c00b9d8:	40404040 	beqz	$r2,16448(0x4040) # 1c00fa18 <_sidata+0x3ce4>
1c00b9dc:	40404040 	beqz	$r2,16448(0x4040) # 1c00fa1c <_sidata+0x3ce8>
1c00b9e0:	0000ff40 	0x0000ff40
1c00b9e4:	00000000 	0x00000000
1c00b9e8:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c00b9f4:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c00ba00:	00010100 	asrtle.d	$r8,$r0
1c00ba04:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c00ba08:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c00ba0c:	00000000 	0x00000000
1c00ba10:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c00ba14:	00000000 	0x00000000
1c00ba18:	f0080000 	0xf0080000
1c00ba1c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00ba20:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00ba24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00ba28:	f0f81010 	0xf0f81010
	...
1c00ba38:	ff000000 	0xff000000
1c00ba3c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0afc7c <_sidata+0xa3f48>
1c00ba40:	42424242 	beqz	$r18,672320(0xa4240) # 1c0afc80 <_sidata+0xa3f4c>
1c00ba44:	42424242 	beqz	$r18,672320(0xa4240) # 1c0afc84 <_sidata+0xa3f50>
1c00ba48:	ffff4242 	0xffff4242
	...
1c00ba54:	08000000 	0x08000000
1c00ba58:	c0e17030 	0xc0e17030
1c00ba5c:	fe000000 	0xfe000000
1c00ba60:	000000fe 	0x000000fe
1c00ba64:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c00ba68:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c017ae8 <_sidata+0xbdb4>
1c00ba6c:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c00ba70:	00000000 	0x00000000
1c00ba74:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00ba78:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c00ba7c:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c00ba80:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c00ba84:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c00ba88:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c00ba8c:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c00ba90:	e7000000 	0xe7000000
1c00ba94:	0000baa4 	0x0000baa4
1c00ba98:	00000000 	0x00000000
1c00ba9c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00baa0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00baa4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00baa8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00baac:	30382020 	0x30382020
1c00bab0:	00000020 	0x00000020
1c00bab4:	00000000 	0x00000000
1c00bab8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00babc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00bac0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00bac4:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c00bac8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00bacc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00bad0:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c00bad4:	00000000 	0x00000000
1c00bad8:	80000000 	0x80000000
1c00badc:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c00bae0:	00000406 	0x00000406
1c00bae4:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00bae8:	04020000 	csrrd	$r0,0x80
1c00baec:	e0701808 	0xe0701808
1c00baf0:	000080c0 	0x000080c0
1c00baf4:	00000000 	0x00000000
1c00baf8:	01030408 	fsub.d	$f8,$f0,$f1
1c00bafc:	08000000 	0x08000000
1c00bb00:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c00bb04:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c00bb10:	00030701 	0x00030701
1c00bb14:	aee50000 	0xaee50000
1c00bb18:	0000009e 	0x0000009e
1c00bb1c:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c00bb20:	00000000 	0x00000000
1c00bb24:	04000000 	csrrd	$r0,0x0
1c00bb28:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c00bb34:	00000080 	0x00000080
1c00bb38:	00000000 	0x00000000
1c00bb3c:	810f1c18 	0x810f1c18
1c00bb40:	09010101 	0x09010101
1c00bb44:	01713919 	0x01713919
1c00bb48:	fdff0101 	0xfdff0101
1c00bb4c:	01010105 	fadd.d	$f5,$f8,$f0
1c00bb50:	07090101 	0x07090101
1c00bb54:	00020307 	0x00020307
1c00bb58:	10000000 	addu16i.d	$r0,$r0,0
1c00bb5c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00bb60:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c00bb64:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00bb68:	93bffcd0 	0x93bffcd0
1c00bb6c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00bb70:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00bb74:	00101818 	add.w	$r24,$r0,$r6
1c00bb78:	40000000 	beqz	$r0,0 # 1c00bb78 <tfont32+0x998>
1c00bb7c:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c00bb80:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c00bb84:	070e0c18 	0x070e0c18
1c00bb88:	01000003 	0x01000003
1c00bb8c:	06020301 	cacop	0x1,$r24,128(0x80)
1c00bb90:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c00bb94:	00000030 	0x00000030
1c00bb98:	8caae900 	0x8caae900
1c00bb9c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00bba0:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c00bba4:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c00bba8:	00000000 	0x00000000
1c00bbac:	f0800000 	0xf0800000
1c00bbb0:	80e8183c 	0x80e8183c
	...
1c00bbbc:	80000000 	0x80000000
1c00bbc0:	00001fff 	ctz.w	$r31,$r31
1c00bbc4:	003fff00 	0x003fff00
1c00bbc8:	50204080 	b	33562688(0x2002040) # 1e00dc08 <_sidata+0x2001ed4>
1c00bbcc:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30ff10 <_sidata+0x3041dc>
1c00bbd0:	43404040 	beqz	$r2,213056(0x34040) # 1c03fc10 <_sidata+0x33edc>
1c00bbd4:	70784c66 	0x70784c66
1c00bbd8:	00202070 	div.w	$r16,$r3,$r8
1c00bbdc:	c1c14000 	0xc1c14000
1c00bbe0:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c00bbe4:	ff810121 	0xff810121
1c00bbe8:	1c00000f 	pcaddu12i	$r15,0
1c00bbec:	0c02c0f0 	0x0c02c0f0
1c00bbf0:	0000e0f8 	0x0000e0f8
1c00bbf4:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c00bc00:	18080800 	pcaddi	$r0,16448(0x4040)
1c00bc04:	070f1838 	0x070f1838
1c00bc08:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00bc0c:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c00bc10:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c00bc14:	18101013 	pcaddi	$r19,32896(0x8080)
1c00bc18:	00001018 	clo.w	$r24,$r0
1c00bc1c:	64252525 	bge	$r9,$r5,9508(0x2524) # 1c00e140 <_sidata+0x240c>
1c00bc20:	00000064 	0x00000064

1c00bc24 <uch_spo2_table>:
1c00bc24:	605f5f5f 	blt	$r26,$r31,24412(0x5f5c) # 1c011b80 <_sidata+0x5e4c>
1c00bc28:	61616060 	blt	$r3,$r0,90464(0x16160) # 1c021d88 <_sidata+0x16054>
1c00bc2c:	62616161 	blt	$r11,$r1,-106144(0x26160) # 1bff1d8c <_start-0xe274>
1c00bc30:	62626262 	blt	$r19,$r2,-105888(0x26260) # 1bff1e90 <_start-0xe170>
1c00bc34:	63636363 	blt	$r27,$r3,-40096(0x36360) # 1c001f94 <vsputchar+0x8>
1c00bc38:	63636363 	blt	$r27,$r3,-40096(0x36360) # 1c001f98 <vsputchar+0xc>
1c00bc3c:	64646464 	bge	$r3,$r4,25700(0x6464) # 1c0120a0 <_sidata+0x636c>
1c00bc40:	64646464 	bge	$r3,$r4,25700(0x6464) # 1c0120a4 <_sidata+0x6370>
1c00bc44:	64646464 	bge	$r3,$r4,25700(0x6464) # 1c0120a8 <_sidata+0x6374>
1c00bc48:	64646464 	bge	$r3,$r4,25700(0x6464) # 1c0120ac <_sidata+0x6378>
1c00bc4c:	64646464 	bge	$r3,$r4,25700(0x6464) # 1c0120b0 <_sidata+0x637c>
1c00bc50:	63636363 	blt	$r27,$r3,-40096(0x36360) # 1c001fb0 <vsputchar+0x24>
1c00bc54:	63636363 	blt	$r27,$r3,-40096(0x36360) # 1c001fb4 <vsputchar+0x28>
1c00bc58:	62626262 	blt	$r19,$r2,-105888(0x26260) # 1bff1eb8 <_start-0xe148>
1c00bc5c:	61616262 	blt	$r19,$r2,90464(0x16160) # 1c021dbc <_sidata+0x16088>
1c00bc60:	60606161 	blt	$r11,$r1,24672(0x6060) # 1c011cc0 <_sidata+0x5f8c>
1c00bc64:	5f5f6060 	bne	$r3,$r0,-41120(0x35f60) # 1c001bc4 <myprintf+0x30>
1c00bc68:	5e5e5e5f 	bne	$r18,$r31,-106916(0x25e5c) # 1bff1ac4 <_start-0xe53c>
1c00bc6c:	5c5d5d5d 	bne	$r10,$r29,23900(0x5d5c) # 1c0119c8 <_sidata+0x5c94>
1c00bc70:	5b5b5c5c 	beq	$r2,$r28,-42148(0x35b5c) # 1c0017cc <gpio_pin_remap+0x178>
1c00bc74:	59595a5a 	beq	$r18,$r26,88408(0x15958) # 1c0215cc <_sidata+0x15898>
1c00bc78:	57585859 	bl	23550040(0x1675858) # 1d6814d0 <_sidata+0x167579c>
1c00bc7c:	55565657 	bl	-111323564(0x95d5654) # 155e12d0 <_start-0x6a1ed30>
1c00bc80:	53545455 	b	22500436(0x1575454) # 1d5810d4 <_sidata+0x15753a0>
1c00bc84:	51515252 	b	-112635568(0x9495150) # 154a0dd4 <_start-0x6b5f22c>
1c00bc88:	4e4f5050 	jirl	$r16,$r2,-110768(0x24f50)
1c00bc8c:	4c4c4d4e 	jirl	$r14,$r10,19532(0x4c4c)
1c00bc90:	494a4a4b 	0x494a4a4b
1c00bc94:	46474848 	bnez	$r2,2246472(0x224748) # 1c2303dc <_sidata+0x2246a8>
1c00bc98:	43444545 	beqz	$r10,1524804(0x174444) # 1c1800dc <_sidata+0x1743a8>
1c00bc9c:	40414242 	beqz	$r18,540992(0x84140) # 1c08fddc <_sidata+0x840a8>
1c00bca0:	3d3e3e3f 	0x3d3e3e3f
1c00bca4:	393a3b3c 	0x393a3b3c
1c00bca8:	36373838 	0x36373838
1c00bcac:	32333435 	0x32333435
1c00bcb0:	2e2f3031 	0x2e2f3031
1c00bcb4:	2a2b2c2d 	ld.bu	$r13,$r1,-1333(0xacb)
1c00bcb8:	26272829 	ldptr.d	$r9,$r1,10024(0x2728)
1c00bcbc:	22232425 	ll.d	$r5,$r1,8996(0x2324)
1c00bcc0:	1d1e1f21 	pcaddu12i	$r1,-462599(0x8f0f9)
1c00bcc4:	191a1b1c 	pcaddi	$r28,-470824(0x8d0d8)
1c00bcc8:	14151617 	lu12i.w	$r23,43184(0xa8b0)
1c00bccc:	0f101113 	0x0f101113
1c00bcd0:	0a0b0c0e 	0x0a0b0c0e
1c00bcd4:	05060709 	0x05060709
1c00bcd8:	00010203 	0x00010203
1c00bcdc:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c00bce0:	00000a0d 	0x00000a0d
1c00bce4:	7361654d 	vssrani.w.d	$vr13,$vr10,0x19
1c00bce8:	6e697275 	bgeu	$r19,$r21,-104080(0x26970) # 1bff2658 <_start-0xd9a8>
1c00bcec:	6e692067 	bgeu	$r3,$r7,-104160(0x26920) # 1bff260c <_start-0xd9f4>
1c00bcf0:	6f727020 	bgeu	$r1,$r0,-36240(0x37270) # 1c002f60 <CLOCK_Init+0x14>
1c00bcf4:	73657267 	vssrani.wu.d	$vr7,$vr19,0x1c
1c00bcf8:	000a0d73 	0x000a0d73
1c00bcfc:	72616548 	0x72616548
1c00bd00:	61522074 	blt	$r3,$r20,86560(0x15220) # 1c020f20 <_sidata+0x151ec>
1c00bd04:	003a6574 	0x003a6574
1c00bd08:	324f7053 	xvldrepl.h	$xr19,$r2,1976(0x7b8)
1c00bd0c:	0000003a 	0x0000003a
1c00bd10:	00000032 	0x00000032
1c00bd14:	00736559 	bstrins.w	$r25,$r10,0x13,0x19
1c00bd18:	20204f4e 	ll.w	$r14,$r26,8268(0x204c)
1c00bd1c:	00000020 	0x00000020
1c00bd20:	4c4c4146 	jirl	$r6,$r10,19520(0x4c40)
1c00bd24:	00000000 	0x00000000
1c00bd28:	6c6c6146 	bgeu	$r10,$r6,27744(0x6c60) # 1c012988 <_sidata+0x6c54>
1c00bd2c:	00000000 	0x00000000
1c00bd30:	00000031 	0x00000031

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c009e89 	pcaddu12i	$r9,1268(0x4f4)
80001008:	800004e4 	0x800004e4
8000100c:	800004ec 	0x800004ec
80001010:	800004f0 	0x800004f0
80001014:	800004f4 	0x800004f4
80001018:	800004f8 	0x800004f8
8000101c:	800004d0 	0x800004d0
80001020:	800004d2 	0x800004d2
80001024:	80000570 	0x80000570
80001028:	800004d4 	0x800004d4
8000102c:	800004d6 	0x800004d6
80001030:	800010b4 	0x800010b4
80001034:	80000764 	0x80000764
80001038:	800004d8 	0x800004d8
8000103c:	80000798 	0x80000798
80001040:	80000810 	0x80000810
80001044:	80000814 	0x80000814
80001048:	80000854 	0x80000854
8000104c:	80000858 	0x80000858
80001050:	80000ab0 	0x80000ab0
80001054:	80000de4 	0x80000de4
80001058:	80000ab4 	0x80000ab4
8000105c:	80000ab8 	0x80000ab8
80001060:	80000abc 	0x80000abc
80001064:	800004da 	0x800004da
80001068:	800004dc 	0x800004dc
8000106c:	80000afc 	0x80000afc
80001070:	80000d54 	0x80000d54
80001074:	80000d58 	0x80000d58
80001078:	80000d5c 	0x80000d5c
8000107c:	80000d60 	0x80000d60
80001080:	80000d64 	0x80000d64
80001084:	80000d98 	0x80000d98
80001088:	800004de 	0x800004de
8000108c:	80000d9d 	0x80000d9d
80001090:	80000da0 	0x80000da0
80001094:	80000da4 	0x80000da4
80001098:	800004e0 	0x800004e0
8000109c:	80000da8 	0x80000da8
800010a0:	1c009e80 	pcaddu12i	$r0,1268(0x4f4)
800010a4:	80000da9 	0x80000da9
800010a8:	80000dac 	0x80000dac
800010ac:	800004e2 	0x800004e2
800010b0:	80000de0 	0x80000de0

800010b4 <g_SystemFreq>:
800010b4:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

800010b8 <n_ir_buffer_length>:
800010b8:	00000096 	0x00000096

800010bc <un_min>:
800010bc:	00003fff 	revb.d	$r31,$r31

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <an_x>:
	...

8000025c <an_y>:
	...

800004b4 <un_max>:
800004b4:	00000000 	0x00000000

800004b8 <hrTimeout>:
800004b8:	00000000 	0x00000000

800004bc <hrValidCnt>:
800004bc:	00000000 	0x00000000

800004c0 <hrThrowOutSamp>:
800004c0:	00000000 	0x00000000

800004c4 <spo2Timeout>:
800004c4:	00000000 	0x00000000

800004c8 <spo2ValidCnt>:
800004c8:	00000000 	0x00000000

800004cc <spo2ThrowOutSamp>:
800004cc:	00000000 	0x00000000

800004d0 <temp2>:
	...

800004d2 <res2>:
	...

800004d4 <GY>:
	...

800004d6 <res1>:
	...

800004d8 <AY>:
	...

800004da <GZ>:
	...

800004dc <temp1>:
	...

800004de <AZ>:
	...

800004e0 <GX>:
	...

800004e2 <AX>:
	...

800004e4 <hrAvg>:
800004e4:	00000000 	0x00000000

800004e8 <manle>:
800004e8:	00000000 	0x00000000

800004ec <j>:
800004ec:	00000000 	0x00000000

800004f0 <x>:
800004f0:	00000000 	0x00000000

800004f4 <f_temp>:
800004f4:	00000000 	0x00000000

800004f8 <spo2Avg_arg1>:
	...

80000570 <str4>:
	...

80000764 <str3>:
	...

80000798 <hrAvg_arg1>:
	...

80000810 <k>:
80000810:	00000000 	0x00000000

80000814 <spo2_buf>:
	...

80000854 <temp>:
80000854:	00000000 	0x00000000

80000858 <aun_ir_buffer>:
	...

80000ab0 <un_brightness>:
80000ab0:	00000000 	0x00000000

80000ab4 <hrSum>:
80000ab4:	00000000 	0x00000000

80000ab8 <n_spo2>:
80000ab8:	00000000 	0x00000000

80000abc <hr_buf>:
	...

80000afc <aun_red_buffer>:
	...

80000d54 <i>:
80000d54:	00000000 	0x00000000

80000d58 <n_heart_rate>:
80000d58:	00000000 	0x00000000

80000d5c <spo2BuffFilled>:
80000d5c:	00000000 	0x00000000

80000d60 <hrBuffFilled>:
80000d60:	00000000 	0x00000000

80000d64 <str1>:
	...

80000d98 <spo2Sum>:
80000d98:	00000000 	0x00000000

80000d9c <data>:
	...

80000d9d <ch_spo2_valid>:
80000d9d:	 	0x00000000

80000da0 <y>:
80000da0:	00000000 	0x00000000

80000da4 <un_prev_data>:
80000da4:	00000000 	0x00000000

80000da8 <ch_hr_valid>:
	...

80000da9 <uch_dummy>:
80000da9:	 	0x00000000

80000dac <str2>:
	...

80000de0 <spo2Avg>:
80000de0:	00000000 	0x00000000

80000de4 <fallflag>:
80000de4:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
