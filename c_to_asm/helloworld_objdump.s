
helloworld:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <_init-0xcab>
 328:	78 38                	js     362 <_init-0xc9e>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	30 00                	xor    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	80 00 c0             	addb   $0xc0,(%rax)
 34c:	04 00                	add    $0x0,%al
 34e:	00 00                	add    %al,(%rax)
 350:	01 00                	add    %eax,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	00 00                	add    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	01 00                	add    %eax,(%rax)
 35a:	01 c0                	add    %eax,%eax
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
 366:	00 00                	add    %al,(%rax)
 368:	02 00                	add    (%rax),%al
 36a:	01 c0                	add    %eax,%eax
 36c:	04 00                	add    $0x0,%al
	...

Disassembly of section .note.gnu.build-id:

0000000000000378 <.note.gnu.build-id>:
 378:	04 00                	add    $0x0,%al
 37a:	00 00                	add    %al,(%rax)
 37c:	14 00                	adc    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	03 00                	add    (%rax),%eax
 382:	00 00                	add    %al,(%rax)
 384:	47                   	rex.RXB
 385:	4e 55                	rex.WRX push %rbp
 387:	00 93 6b 66 a4 5d    	add    %dl,0x5da4666b(%rbx)
 38d:	9b                   	fwait
 38e:	56                   	push   %rsi
 38f:	bc f5 f3 62 8a       	mov    $0x8a62f3f5,%esp
 394:	d9 fa                	fsqrt
 396:	5f                   	pop    %rdi
 397:	ae                   	scas   %es:(%rdi),%al
 398:	fc                   	cld
 399:	75 28                	jne    3c3 <_init-0xc3d>
 39b:	e9                   	.byte 0xe9

Disassembly of section .note.ABI-tag:

000000000000039c <.note.ABI-tag>:
 39c:	04 00                	add    $0x0,%al
 39e:	00 00                	add    %al,(%rax)
 3a0:	10 00                	adc    %al,(%rax)
 3a2:	00 00                	add    %al,(%rax)
 3a4:	01 00                	add    %eax,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	47                   	rex.RXB
 3a9:	4e 55                	rex.WRX push %rbp
 3ab:	00 00                	add    %al,(%rax)
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 04 00             	add    %al,(%rax,%rax,1)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	04 00                	add    $0x0,%al
 3b6:	00 00                	add    %al,(%rax)
 3b8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003c0 <.gnu.hash>:
 3c0:	01 00                	add    %eax,(%rax)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	01 00                	add    %eax,(%rax)
 3c6:	00 00                	add    %al,(%rax)
 3c8:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000003e0 <.dynsym>:
	...
 3f8:	17                   	(bad)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 12                	add    %dl,(%rdx)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 6a 00             	add    %ch,0x0(%rdx)
 412:	00 00                	add    %al,(%rax)
 414:	20 00                	and    %al,(%rax)
	...
 426:	00 00                	add    %al,(%rax)
 428:	01 00                	add    %eax,(%rax)
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	06                   	(bad)
 441:	00 00                	add    %al,(%rax)
 443:	00 12                	add    %dl,(%rdx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 38                	add    %bh,(%rax)
 459:	00 00                	add    %al,(%rax)
 45b:	00 12                	add    %dl,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 86 00 00 00 20    	add    %al,0x20000000(%rsi)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 95 00 00 00 20    	add    %dl,0x20000000(%rbp)
	...
 49d:	00 00                	add    %al,(%rax)
 49f:	00 29                	add    %ch,(%rcx)
 4a1:	00 00                	add    %al,(%rax)
 4a3:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .dynstr:

00000000000004b8 <.dynstr>:
 4b8:	00 70 75             	add    %dh,0x75(%rax)
 4bb:	74 73                	je     530 <_init-0xad0>
 4bd:	00 5f 5f             	add    %bl,0x5f(%rdi)
 4c0:	73 74                	jae    536 <_init-0xaca>
 4c2:	61                   	(bad)
 4c3:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 4c6:	63 68 6b             	movsxd 0x6b(%rax),%ebp
 4c9:	5f                   	pop    %rdi
 4ca:	66 61                	data16 (bad)
 4cc:	69 6c 00 5f 5f 6c 69 	imul   $0x62696c5f,0x5f(%rax,%rax,1),%ebp
 4d3:	62 
 4d4:	63 5f 73             	movsxd 0x73(%rdi),%ebx
 4d7:	74 61                	je     53a <_init-0xac6>
 4d9:	72 74                	jb     54f <_init-0xab1>
 4db:	5f                   	pop    %rdi
 4dc:	6d                   	insl   (%dx),%es:(%rdi)
 4dd:	61                   	(bad)
 4de:	69 6e 00 5f 5f 63 78 	imul   $0x78635f5f,0x0(%rsi),%ebp
 4e5:	61                   	(bad)
 4e6:	5f                   	pop    %rdi
 4e7:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 4ed:	7a 65                	jp     554 <_init-0xaac>
 4ef:	00 70 72             	add    %dh,0x72(%rax)
 4f2:	69 6e 74 66 00 6c 69 	imul   $0x696c0066,0x74(%rsi),%ebp
 4f9:	62 63 2e 73 6f       	(bad)
 4fe:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 503:	49                   	rex.WB
 504:	42                   	rex.X
 505:	43 5f                	rex.XB pop %r15
 507:	32 2e                	xor    (%rsi),%ch
 509:	34 00                	xor    $0x0,%al
 50b:	47                   	rex.RXB
 50c:	4c                   	rex.WR
 50d:	49                   	rex.WB
 50e:	42                   	rex.X
 50f:	43 5f                	rex.XB pop %r15
 511:	32 2e                	xor    (%rsi),%ch
 513:	32 2e                	xor    (%rsi),%ch
 515:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 51a:	42                   	rex.X
 51b:	43 5f                	rex.XB pop %r15
 51d:	32 2e                	xor    (%rsi),%ch
 51f:	33 34 00             	xor    (%rax,%rax,1),%esi
 522:	5f                   	pop    %rdi
 523:	49 54                	rex.WB push %r12
 525:	4d 5f                	rex.WRB pop %r15
 527:	64 65 72 65          	fs gs jb 590 <_init-0xa70>
 52b:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 532:	4d 
 533:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 535:	6f                   	outsl  %ds:(%rsi),(%dx)
 536:	6e                   	outsb  %ds:(%rsi),(%dx)
 537:	65 54                	gs push %rsp
 539:	61                   	(bad)
 53a:	62 6c 65             	(bad)
 53d:	00 5f 5f             	add    %bl,0x5f(%rdi)
 540:	67 6d                	insl   (%dx),%es:(%edi)
 542:	6f                   	outsl  %ds:(%rsi),(%dx)
 543:	6e                   	outsb  %ds:(%rsi),(%dx)
 544:	5f                   	pop    %rdi
 545:	73 74                	jae    5bb <_init-0xa45>
 547:	61                   	(bad)
 548:	72 74                	jb     5be <_init-0xa42>
 54a:	5f                   	pop    %rdi
 54b:	5f                   	pop    %rdi
 54c:	00 5f 49             	add    %bl,0x49(%rdi)
 54f:	54                   	push   %rsp
 550:	4d 5f                	rex.WRB pop %r15
 552:	72 65                	jb     5b9 <_init-0xa47>
 554:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 55b:	4d 
 55c:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 55e:	6f                   	outsl  %ds:(%rsi),(%dx)
 55f:	6e                   	outsb  %ds:(%rsi),(%dx)
 560:	65 54                	gs push %rsp
 562:	61                   	(bad)
 563:	62                   	.byte 0x62
 564:	6c                   	insb   (%dx),%es:(%rdi)
 565:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000568 <.gnu.version>:
 568:	00 00                	add    %al,(%rax)
 56a:	02 00                	add    (%rax),%al
 56c:	01 00                	add    %eax,(%rax)
 56e:	03 00                	add    (%rax),%eax
 570:	04 00                	add    $0x0,%al
 572:	03 00                	add    (%rax),%eax
 574:	01 00                	add    %eax,(%rax)
 576:	01 00                	add    %eax,(%rax)
 578:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000000580 <.gnu.version_r>:
 580:	01 00                	add    %eax,(%rax)
 582:	03 00                	add    (%rax),%eax
 584:	3f                   	(bad)
 585:	00 00                	add    %al,(%rax)
 587:	00 10                	add    %dl,(%rax)
 589:	00 00                	add    %al,(%rax)
 58b:	00 00                	add    %al,(%rax)
 58d:	00 00                	add    %al,(%rax)
 58f:	00 14 69             	add    %dl,(%rcx,%rbp,2)
 592:	69 0d 00 00 04 00 49 	imul   $0x49,0x40000(%rip),%ecx        # 4059c <_end+0x3c56c>
 599:	00 00 00 
 59c:	10 00                	adc    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	75 1a                	jne    5bc <_init-0xa44>
 5a2:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 5a8:	53                   	push   %rbx
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 10                	add    %dl,(%rax)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 b4 91 96 06 00 00 	add    %dh,0x696(%rcx,%rdx,4)
 5b6:	02 00                	add    (%rax),%al
 5b8:	5f                   	pop    %rdi
 5b9:	00 00                	add    %al,(%rax)
 5bb:	00 00                	add    %al,(%rax)
 5bd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000005c0 <.rela.dyn>:
 5c0:	d0 3d 00 00 00 00    	sarb   $1,0x0(%rip)        # 5c6 <_init-0xa3a>
 5c6:	00 00                	add    %al,(%rax)
 5c8:	08 00                	or     %al,(%rax)
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 00                	add    %al,(%rax)
 5d0:	00 12                	add    %dl,(%rdx)
 5d2:	00 00                	add    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	00 00                	add    %al,(%rax)
 5d8:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 5de <_init-0xa22>
 5de:	00 00                	add    %al,(%rax)
 5e0:	08 00                	or     %al,(%rax)
 5e2:	00 00                	add    %al,(%rax)
 5e4:	00 00                	add    %al,(%rax)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	b0 11                	mov    $0x11,%al
 5ea:	00 00                	add    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	20 40 00             	and    %al,0x0(%rax)
 5f3:	00 00                	add    %al,(%rax)
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 08                	add    %cl,(%rax)
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 20                	add    %ah,(%rax)
 601:	40 00 00             	rex add %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	c0 3f 00             	sarb   $0x0,(%rdi)
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 06                	add    %al,(%rsi)
 611:	00 00                	add    %al,(%rax)
 613:	00 01                	add    %al,(%rcx)
	...
 61d:	00 00                	add    %al,(%rax)
 61f:	00 c8                	add    %cl,%al
 621:	3f                   	(bad)
 622:	00 00                	add    %al,(%rax)
 624:	00 00                	add    %al,(%rax)
 626:	00 00                	add    %al,(%rax)
 628:	06                   	(bad)
 629:	00 00                	add    %al,(%rax)
 62b:	00 02                	add    %al,(%rdx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 d0                	add    %dl,%al
 639:	3f                   	(bad)
 63a:	00 00                	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	06                   	(bad)
 641:	00 00                	add    %al,(%rax)
 643:	00 06                	add    %al,(%rsi)
	...
 64d:	00 00                	add    %al,(%rax)
 64f:	00 d8                	add    %bl,%al
 651:	3f                   	(bad)
 652:	00 00                	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	06                   	(bad)
 659:	00 00                	add    %al,(%rax)
 65b:	00 07                	add    %al,(%rdi)
	...
 665:	00 00                	add    %al,(%rax)
 667:	00 e0                	add    %ah,%al
 669:	3f                   	(bad)
 66a:	00 00                	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	06                   	(bad)
 671:	00 00                	add    %al,(%rax)
 673:	00 08                	add    %cl,(%rax)
	...

Disassembly of section .rela.plt:

0000000000000680 <.rela.plt>:
 680:	00 40 00             	add    %al,0x0(%rax)
 683:	00 00                	add    %al,(%rax)
 685:	00 00                	add    %al,(%rax)
 687:	00 07                	add    %al,(%rdi)
 689:	00 00                	add    %al,(%rax)
 68b:	00 03                	add    %al,(%rbx)
	...
 695:	00 00                	add    %al,(%rax)
 697:	00 08                	add    %cl,(%rax)
 699:	40 00 00             	rex add %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	00 00                	add    %al,(%rax)
 6a0:	07                   	(bad)
 6a1:	00 00                	add    %al,(%rax)
 6a3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 6ae:	00 00                	add    %al,(%rax)
 6b0:	10 40 00             	adc    %al,0x0(%rax)
 6b3:	00 00                	add    %al,(%rax)
 6b5:	00 00                	add    %al,(%rax)
 6b7:	00 07                	add    %al,(%rdi)
 6b9:	00 00                	add    %al,(%rax)
 6bb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 6c1 <_init-0x93f>
 6c1:	00 00                	add    %al,(%rax)
 6c3:	00 00                	add    %al,(%rax)
 6c5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__stack_chk_fail@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <__stack_chk_fail@GLIBC_2.4>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <printf@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001060 <main>:
    1060:	48 83 ec 78          	sub    $0x78,%rsp
    1064:	31 d2                	xor    %edx,%edx
    1066:	48 8d 3d cb 0f 00 00 	lea    0xfcb(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    106d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1074:	00 00 
    1076:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    107b:	48 b8 48 65 6c 6c 6f 	movabs $0x6f6c6c6548,%rax
    1082:	00 00 00 
    1085:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    108a:	31 d2                	xor    %edx,%edx
    108c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    1093:	00 
    1094:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    1099:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
    10a0:	00 
    10a1:	c7 44 24 40 48 65 6c 	movl   $0x6c6c6548,0x40(%rsp)
    10a8:	6c 
    10a9:	c6 44 24 44 6f       	movb   $0x6f,0x44(%rsp)
    10ae:	48 89 04 24          	mov    %rax,(%rsp)
    10b2:	48 b8 57 6f 72 6c 64 	movabs $0x646c726f57,%rax
    10b9:	00 00 00 
    10bc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    10c1:	b8 64 00 00 00       	mov    $0x64,%eax
    10c6:	c6 44 24 45 20       	movb   $0x20,0x45(%rsp)
    10cb:	c7 44 24 46 57 6f 72 	movl   $0x6c726f57,0x46(%rsp)
    10d2:	6c 
    10d3:	66 89 44 24 4a       	mov    %ax,0x4a(%rsp)
    10d8:	e8 53 ff ff ff       	call   1030 <puts@plt>
    10dd:	31 c0                	xor    %eax,%eax
    10df:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    10e4:	48 8d 3d 34 0f 00 00 	lea    0xf34(%rip),%rdi        # 201f <_IO_stdin_used+0x1f>
    10eb:	e8 60 ff ff ff       	call   1050 <printf@plt>
    10f0:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    10f5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    10fc:	00 00 
    10fe:	75 07                	jne    1107 <main+0xa7>
    1100:	31 c0                	xor    %eax,%eax
    1102:	48 83 c4 78          	add    $0x78,%rsp
    1106:	c3                   	ret
    1107:	e8 34 ff ff ff       	call   1040 <__stack_chk_fail@plt>
    110c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001110 <_start>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	31 ed                	xor    %ebp,%ebp
    1116:	49 89 d1             	mov    %rdx,%r9
    1119:	5e                   	pop    %rsi
    111a:	48 89 e2             	mov    %rsp,%rdx
    111d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1121:	50                   	push   %rax
    1122:	54                   	push   %rsp
    1123:	45 31 c0             	xor    %r8d,%r8d
    1126:	31 c9                	xor    %ecx,%ecx
    1128:	48 8d 3d 31 ff ff ff 	lea    -0xcf(%rip),%rdi        # 1060 <main>
    112f:	ff 15 8b 2e 00 00    	call   *0x2e8b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1135:	f4                   	hlt
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 
    1140:	48 8d 3d e1 2e 00 00 	lea    0x2ee1(%rip),%rdi        # 4028 <__TMC_END__>
    1147:	48 8d 05 da 2e 00 00 	lea    0x2eda(%rip),%rax        # 4028 <__TMC_END__>
    114e:	48 39 f8             	cmp    %rdi,%rax
    1151:	74 15                	je     1168 <_start+0x58>
    1153:	48 8b 05 6e 2e 00 00 	mov    0x2e6e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    115a:	48 85 c0             	test   %rax,%rax
    115d:	74 09                	je     1168 <_start+0x58>
    115f:	ff e0                	jmp    *%rax
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	c3                   	ret
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1170:	48 8d 3d b1 2e 00 00 	lea    0x2eb1(%rip),%rdi        # 4028 <__TMC_END__>
    1177:	48 8d 35 aa 2e 00 00 	lea    0x2eaa(%rip),%rsi        # 4028 <__TMC_END__>
    117e:	48 29 fe             	sub    %rdi,%rsi
    1181:	48 89 f0             	mov    %rsi,%rax
    1184:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1188:	48 c1 f8 03          	sar    $0x3,%rax
    118c:	48 01 c6             	add    %rax,%rsi
    118f:	48 d1 fe             	sar    $1,%rsi
    1192:	74 14                	je     11a8 <_start+0x98>
    1194:	48 8b 05 3d 2e 00 00 	mov    0x2e3d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    119b:	48 85 c0             	test   %rax,%rax
    119e:	74 08                	je     11a8 <_start+0x98>
    11a0:	ff e0                	jmp    *%rax
    11a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11a8:	c3                   	ret
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	80 3d 6d 2e 00 00 00 	cmpb   $0x0,0x2e6d(%rip)        # 4028 <__TMC_END__>
    11bb:	75 33                	jne    11f0 <_start+0xe0>
    11bd:	55                   	push   %rbp
    11be:	48 83 3d 1a 2e 00 00 	cmpq   $0x0,0x2e1a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11c5:	00 
    11c6:	48 89 e5             	mov    %rsp,%rbp
    11c9:	74 0d                	je     11d8 <_start+0xc8>
    11cb:	48 8b 3d 4e 2e 00 00 	mov    0x2e4e(%rip),%rdi        # 4020 <__dso_handle>
    11d2:	ff 15 08 2e 00 00    	call   *0x2e08(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11d8:	e8 63 ff ff ff       	call   1140 <_start+0x30>
    11dd:	c6 05 44 2e 00 00 01 	movb   $0x1,0x2e44(%rip)        # 4028 <__TMC_END__>
    11e4:	5d                   	pop    %rbp
    11e5:	c3                   	ret
    11e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11ed:	00 00 00 
    11f0:	c3                   	ret
    11f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11f8:	00 00 00 00 
    11fc:	0f 1f 40 00          	nopl   0x0(%rax)
    1200:	f3 0f 1e fa          	endbr64
    1204:	e9 67 ff ff ff       	jmp    1170 <_start+0x60>

Disassembly of section .fini:

000000000000120c <_fini>:
    120c:	f3 0f 1e fa          	endbr64
    1210:	48 83 ec 08          	sub    $0x8,%rsp
    1214:	48 83 c4 08          	add    $0x8,%rsp
    1218:	c3                   	ret

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	54                   	push   %rsp
    2005:	68 65 20 73 74       	push   $0x74732065
    200a:	72 69                	jb     2075 <__GNU_EH_FRAME_HDR+0x1d>
    200c:	6e                   	outsb  %ds:(%rsi),(%dx)
    200d:	67 73 20             	addr32 jae 2030 <_IO_stdin_used+0x30>
    2010:	61                   	(bad)
    2011:	72 65                	jb     2078 <__GNU_EH_FRAME_HDR+0x20>
    2013:	20 69 64             	and    %ch,0x64(%rcx)
    2016:	65 6e                	outsb  %gs:(%rsi),(%dx)
    2018:	74 69                	je     2083 <__GNU_EH_FRAME_HDR+0x2b>
    201a:	63 61 6c             	movsxd 0x6c(%rcx),%esp
    201d:	2e 00 43 6f          	cs add %al,0x6f(%rbx)
    2021:	6e                   	outsb  %ds:(%rsi),(%dx)
    2022:	63 61 74             	movsxd 0x74(%rcx),%esp
    2025:	65 6e                	outsb  %gs:(%rsi),(%dx)
    2027:	61                   	(bad)
    2028:	74 65                	je     208f <__GNU_EH_FRAME_HDR+0x37>
    202a:	64 20 53 74          	and    %dl,%fs:0x74(%rbx)
    202e:	72 69                	jb     2099 <__GNU_EH_FRAME_HDR+0x41>
    2030:	6e                   	outsb  %ds:(%rsi),(%dx)
    2031:	67 3a 20             	cmp    (%eax),%ah
    2034:	25 73 0a 00 54       	and    $0x54000a73,%eax
    2039:	68 65 20 73 74       	push   $0x74732065
    203e:	72 69                	jb     20a9 <__GNU_EH_FRAME_HDR+0x51>
    2040:	6e                   	outsb  %ds:(%rsi),(%dx)
    2041:	67 73 20             	addr32 jae 2064 <__GNU_EH_FRAME_HDR+0xc>
    2044:	61                   	(bad)
    2045:	72 65                	jb     20ac <__GNU_EH_FRAME_HDR+0x54>
    2047:	20 6e 6f             	and    %ch,0x6f(%rsi)
    204a:	74 20                	je     206c <__GNU_EH_FRAME_HDR+0x14>
    204c:	69 64 65 6e 74 69 63 	imul   $0x61636974,0x6e(%rbp,%riz,2),%esp
    2053:	61 
    2054:	6c                   	insb   (%dx),%es:(%rdi)
    2055:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

0000000000002058 <__GNU_EH_FRAME_HDR>:
    2058:	01 1b                	add    %ebx,(%rbx)
    205a:	03 3b                	add    (%rbx),%edi
    205c:	24 00                	and    $0x0,%al
    205e:	00 00                	add    %al,(%rax)
    2060:	03 00                	add    (%rax),%eax
    2062:	00 00                	add    %al,(%rax)
    2064:	c8 ef ff ff          	enter  $0xffef,$0xff
    2068:	58                   	pop    %rax
    2069:	00 00                	add    %al,(%rax)
    206b:	00 08                	add    %cl,(%rax)
    206d:	f0 ff                	lock (bad)
    206f:	ff 80 00 00 00 b8    	incl   -0x48000000(%rax)
    2075:	f0 ff                	lock (bad)
    2077:	ff 40 00             	incl   0x0(%rax)
	...

Disassembly of section .eh_frame:

0000000000002080 <.eh_frame>:
    2080:	14 00                	adc    $0x0,%al
    2082:	00 00                	add    %al,(%rax)
    2084:	00 00                	add    %al,(%rax)
    2086:	00 00                	add    %al,(%rax)
    2088:	01 7a 52             	add    %edi,0x52(%rdx)
    208b:	00 01                	add    %al,(%rcx)
    208d:	78 10                	js     209f <__GNU_EH_FRAME_HDR+0x47>
    208f:	01 1b                	add    %ebx,(%rbx)
    2091:	0c 07                	or     $0x7,%al
    2093:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2099:	00 00                	add    %al,(%rax)
    209b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    209e:	00 00                	add    %al,(%rax)
    20a0:	70 f0                	jo     2092 <__GNU_EH_FRAME_HDR+0x3a>
    20a2:	ff                   	(bad)
    20a3:	ff 26                	jmp    *(%rsi)
    20a5:	00 00                	add    %al,(%rax)
    20a7:	00 00                	add    %al,(%rax)
    20a9:	44 07                	rex.R (bad)
    20ab:	10 00                	adc    %al,(%rax)
    20ad:	00 00                	add    %al,(%rax)
    20af:	00 24 00             	add    %ah,(%rax,%rax,1)
    20b2:	00 00                	add    %al,(%rax)
    20b4:	34 00                	xor    $0x0,%al
    20b6:	00 00                	add    %al,(%rax)
    20b8:	68 ef ff ff 40       	push   $0x40ffffef
    20bd:	00 00                	add    %al,(%rax)
    20bf:	00 00                	add    %al,(%rax)
    20c1:	0e                   	(bad)
    20c2:	10 46 0e             	adc    %al,0xe(%rsi)
    20c5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    20c8:	0b 77 08             	or     0x8(%rdi),%esi
    20cb:	80 00 3f             	addb   $0x3f,(%rax)
    20ce:	1a 3b                	sbb    (%rbx),%bh
    20d0:	2a 33                	sub    (%rbx),%dh
    20d2:	24 22                	and    $0x22,%al
    20d4:	00 00                	add    %al,(%rax)
    20d6:	00 00                	add    %al,(%rax)
    20d8:	18 00                	sbb    %al,(%rax)
    20da:	00 00                	add    %al,(%rax)
    20dc:	5c                   	pop    %rsp
    20dd:	00 00                	add    %al,(%rax)
    20df:	00 80 ef ff ff ac    	add    %al,-0x53000011(%rax)
    20e5:	00 00                	add    %al,(%rax)
    20e7:	00 00                	add    %al,(%rax)
    20e9:	44 0e                	rex.R (bad)
    20eb:	80 01 02             	addb   $0x2,(%rcx)
    20ee:	a2 0a 0e 08 41 0b 00 	movabs %al,0xb41080e0a
    20f5:	00 00 
	...

Disassembly of section .init_array:

0000000000003dd0 <.init_array>:
    3dd0:	00 12                	add    %dl,(%rdx)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003dd8 <.fini_array>:
    3dd8:	b0 11                	mov    $0x11,%al
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003de0 <_DYNAMIC>:
    3de0:	01 00                	add    %eax,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	3f                   	(bad)
    3de9:	00 00                	add    %al,(%rax)
    3deb:	00 00                	add    %al,(%rax)
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
    3df6:	00 00                	add    %al,(%rax)
    3df8:	00 10                	add    %dl,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	0d 00 00 00 00       	or     $0x0,%eax
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 0c 12             	add    %cl,(%rdx,%rdx,1)
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	19 00                	sbb    %eax,(%rax)
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	d0 3d 00 00 00 00    	sarb   $1,0x0(%rip)        # 3e1e <_DYNAMIC+0x3e>
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	1b 00                	sbb    (%rax),%eax
    3e22:	00 00                	add    %al,(%rax)
    3e24:	00 00                	add    %al,(%rax)
    3e26:	00 00                	add    %al,(%rax)
    3e28:	08 00                	or     %al,(%rax)
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	1a 00                	sbb    (%rax),%al
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 3e3e <_DYNAMIC+0x5e>
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	1c 00                	sbb    $0x0,%al
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	08 00                	or     %al,(%rax)
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	f5                   	cmc
    3e51:	fe                   	(bad)
    3e52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 c0                	add    %al,%al
    3e59:	03 00                	add    (%rax),%eax
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e65 <_DYNAMIC+0x85>
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 b8 04 00 00 00    	add    %bh,0x4(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 06                	add    %al,(%rsi)
    3e71:	00 00                	add    %al,(%rax)
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 e0                	add    %ah,%al
    3e79:	03 00                	add    (%rax),%eax
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 0a                	add    %cl,(%rdx)
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 af 00 00 00 00    	add    %ch,0x0(%rdi)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 0b                	add    %cl,(%rbx)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 18                	add    %bl,(%rax)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ea5 <_DYNAMIC+0xc5>
	...
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 03                	add    %al,(%rbx)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 e8                	add    %ch,%al
    3eb9:	3f                   	(bad)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	02 00                	add    (%rax),%al
    3ec2:	00 00                	add    %al,(%rax)
    3ec4:	00 00                	add    %al,(%rax)
    3ec6:	00 00                	add    %al,(%rax)
    3ec8:	48 00 00             	rex.W add %al,(%rax)
    3ecb:	00 00                	add    %al,(%rax)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 14 00             	add    %dl,(%rax,%rax,1)
    3ed2:	00 00                	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	07                   	(bad)
    3ed9:	00 00                	add    %al,(%rax)
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 17                	add    %dl,(%rdi)
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 80 06 00 00 00    	add    %al,0x6(%rax)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 07                	add    %al,(%rdi)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 c0                	add    %al,%al
    3ef9:	05 00 00 00 00       	add    $0x0,%eax
    3efe:	00 00                	add    %al,(%rax)
    3f00:	08 00                	or     %al,(%rax)
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	c0 00 00             	rolb   $0x0,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 09                	add    %cl,(%rcx)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 18                	add    %bl,(%rax)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 fb                	add    %bh,%bl
    3f21:	ff                   	(bad)
    3f22:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 00                	add    %al,(%rax)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	08 00                	or     %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 fe                	add    %bh,%dh
    3f31:	ff                   	(bad)
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 80 05 00 00 00    	add    %al,0x5(%rax)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 ff                	add    %bh,%bh
    3f41:	ff                   	(bad)
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 01                	add    %al,(%rcx)
    3f49:	00 00                	add    %al,(%rax)
    3f4b:	00 00                	add    %al,(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 f0                	add    %dh,%al
    3f51:	ff                   	(bad)
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 68 05             	add    %ch,0x5(%rax)
    3f5a:	00 00                	add    %al,(%rax)
    3f5c:	00 00                	add    %al,(%rax)
    3f5e:	00 00                	add    %al,(%rax)
    3f60:	f9                   	stc
    3f61:	ff                   	(bad)
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fc0 <.got>:
	...

Disassembly of section .got.plt:

0000000000003fe8 <_GLOBAL_OFFSET_TABLE_>:
    3fe8:	e0 3d                	loopne 4027 <__dso_handle+0x7>
	...
    3ffe:	00 00                	add    %al,(%rax)
    4000:	36 10 00             	ss adc %al,(%rax)
    4003:	00 00                	add    %al,(%rax)
    4005:	00 00                	add    %al,(%rax)
    4007:	00 46 10             	add    %al,0x10(%rsi)
    400a:	00 00                	add    %al,(%rax)
    400c:	00 00                	add    %al,(%rax)
    400e:	00 00                	add    %al,(%rax)
    4010:	56                   	push   %rsi
    4011:	10 00                	adc    %al,(%rax)
    4013:	00 00                	add    %al,(%rax)
    4015:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004018 <__data_start>:
	...

0000000000004020 <__dso_handle>:
    4020:	20 40 00             	and    %al,0x0(%rax)
    4023:	00 00                	add    %al,(%rax)
    4025:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
   e:	31 2e                	xor    %ebp,(%rsi)
  10:	31 20                	xor    %esp,(%rax)
  12:	32 30                	xor    (%rax),%dh
  14:	32 34 30             	xor    (%rax,%rsi,1),%dh
  17:	35 30 37 00 47       	xor    $0x47003730,%eax
  1c:	43                   	rex.XB
  1d:	43 3a 20             	rex.XB cmp (%r8),%spl
  20:	28 47 4e             	sub    %al,0x4e(%rdi)
  23:	55                   	push   %rbp
  24:	29 20                	sub    %esp,(%rax)
  26:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  29:	31 2e                	xor    %ebp,(%rsi)
  2b:	31 20                	xor    %esp,(%rax)
  2d:	32 30                	xor    (%rax),%dh
  2f:	32 34 30             	xor    (%rax,%rsi,1),%dh
  32:	35                   	.byte 0x35
  33:	32 32                	xor    (%rdx),%dh
	...
