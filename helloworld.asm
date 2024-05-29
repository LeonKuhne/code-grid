
out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax   # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <strcpy@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <strcpy@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <strcpy@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <strlen@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <strlen@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <__stack_chk_fail@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <__stack_chk_fail@GLIBC_2.4>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <printf@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <strcmp@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <strcmp@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <strcat@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <strcat@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1199 <main>
    10bf:	ff 15 fb 2e 00 00    	call   *0x2efb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 
    10d0:	48 8d 3d 71 2f 00 00 	lea    0x2f71(%rip),%rdi        # 4048 <__TMC_END__>
    10d7:	48 8d 05 6a 2f 00 00 	lea    0x2f6a(%rip),%rax        # 4048 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <_start+0x58>
    10e3:	48 8b 05 de 2e 00 00 	mov    0x2ede(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <_start+0x58>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1100:	48 8d 3d 41 2f 00 00 	lea    0x2f41(%rip),%rdi        # 4048 <__TMC_END__>
    1107:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4048 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    $1,%rsi
    1122:	74 14                	je     1138 <_start+0x98>
    1124:	48 8b 05 ad 2e 00 00 	mov    0x2ead(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <_start+0x98>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64
    1144:	80 3d fd 2e 00 00 00 	cmpb   $0x0,0x2efd(%rip)        # 4048 <__TMC_END__>
    114b:	75 33                	jne    1180 <_start+0xe0>
    114d:	55                   	push   %rbp
    114e:	48 83 3d 8a 2e 00 00 	cmpq   $0x0,0x2e8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0d                	je     1168 <_start+0xc8>
    115b:	48 8b 3d de 2e 00 00 	mov    0x2ede(%rip),%rdi        # 4040 <__dso_handle>
    1162:	ff 15 78 2e 00 00    	call   *0x2e78(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1168:	e8 63 ff ff ff       	call   10d0 <_start+0x30>
    116d:	c6 05 d4 2e 00 00 01 	movb   $0x1,0x2ed4(%rip)        # 4048 <__TMC_END__>
    1174:	5d                   	pop    %rbp
    1175:	c3                   	ret
    1176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117d:	00 00 00 
    1180:	c3                   	ret
    1181:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)
    1190:	f3 0f 1e fa          	endbr64
    1194:	e9 67 ff ff ff       	jmp    1100 <_start+0x60>

0000000000001199 <main>:
    1199:	55                   	push   %rbp
    119a:	48 89 e5             	mov    %rsp,%rbp
    119d:	48 83 ec 70          	sub    $0x70,%rsp
    11a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11a8:	00 00 
    11aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11ae:	31 c0                	xor    %eax,%eax
    11b0:	48 b8 48 65 6c 6c 6f 	movabs $0x6f6c6c6548,%rax
    11b7:	00 00 00 
    11ba:	ba 00 00 00 00       	mov    $0x0,%edx
    11bf:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    11c3:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    11c7:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
    11ce:	48 b8 57 6f 72 6c 64 	movabs $0x646c726f57,%rax
    11d5:	00 00 00 
    11d8:	ba 00 00 00 00       	mov    $0x0,%edx
    11dd:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    11e1:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    11e5:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    11ec:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
    11f0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    11f4:	48 89 d6             	mov    %rdx,%rsi
    11f7:	48 89 c7             	mov    %rax,%rdi
    11fa:	e8 31 fe ff ff       	call   1030 <strcpy@plt>
    11ff:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1203:	48 89 c7             	mov    %rax,%rdi
    1206:	e8 45 fe ff ff       	call   1050 <strlen@plt>
    120b:	48 89 c2             	mov    %rax,%rdx
    120e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1212:	48 01 d0             	add    %rdx,%rax
    1215:	66 c7 00 20 00       	movw   $0x20,(%rax)
    121a:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    121e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1222:	48 89 d6             	mov    %rdx,%rsi
    1225:	48 89 c7             	mov    %rax,%rdi
    1228:	e8 63 fe ff ff       	call   1090 <strcat@plt>
    122d:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    1231:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1235:	48 89 d6             	mov    %rdx,%rsi
    1238:	48 89 c7             	mov    %rax,%rdi
    123b:	e8 40 fe ff ff       	call   1080 <strcmp@plt>
    1240:	85 c0                	test   %eax,%eax
    1242:	75 11                	jne    1255 <main+0xbc>
    1244:	48 8d 05 bd 0d 00 00 	lea    0xdbd(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    124b:	48 89 c7             	mov    %rax,%rdi
    124e:	e8 ed fd ff ff       	call   1040 <puts@plt>
    1253:	eb 0f                	jmp    1264 <main+0xcb>
    1255:	48 8d 05 cc 0d 00 00 	lea    0xdcc(%rip),%rax        # 2028 <_IO_stdin_used+0x28>
    125c:	48 89 c7             	mov    %rax,%rdi
    125f:	e8 dc fd ff ff       	call   1040 <puts@plt>
    1264:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1268:	48 89 c6             	mov    %rax,%rsi
    126b:	48 8d 05 d5 0d 00 00 	lea    0xdd5(%rip),%rax        # 2047 <_IO_stdin_used+0x47>
    1272:	48 89 c7             	mov    %rax,%rdi
    1275:	b8 00 00 00 00       	mov    $0x0,%eax
    127a:	e8 f1 fd ff ff       	call   1070 <printf@plt>
    127f:	b8 00 00 00 00       	mov    $0x0,%eax
    1284:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1288:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    128f:	00 00 
    1291:	74 05                	je     1298 <main+0xff>
    1293:	e8 c8 fd ff ff       	call   1060 <__stack_chk_fail@plt>
    1298:	c9                   	leave
    1299:	c3                   	ret

Disassembly of section .fini:

000000000000129c <_fini>:
    129c:	f3 0f 1e fa          	endbr64
    12a0:	48 83 ec 08          	sub    $0x8,%rsp
    12a4:	48 83 c4 08          	add    $0x8,%rsp
    12a8:	c3                   	ret
