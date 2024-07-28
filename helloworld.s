
helloworld:     file format elf64-x86-64


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
