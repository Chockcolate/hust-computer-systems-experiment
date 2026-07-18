
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 4a 2f 00 00    	push   0x2f4a(%rip)        # 3f70 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 4c 2f 00 00    	jmp    *0x2f4c(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 0e 2f 00 00    	jmp    *0x2f0e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010f0 <getenv@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 86 2e 00 00    	jmp    *0x2e86(%rip)        # 3f80 <getenv@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <strcpy@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 7e 2e 00 00    	jmp    *0x2e7e(%rip)        # 3f88 <strcpy@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <puts@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 76 2e 00 00    	jmp    *0x2e76(%rip)        # 3f90 <puts@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <strlen@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 6e 2e 00 00    	jmp    *0x2e6e(%rip)        # 3f98 <strlen@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 66 2e 00 00    	jmp    *0x2e66(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <printf@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 5e 2e 00 00    	jmp    *0x2e5e(%rip)        # 3fa8 <printf@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <fgets@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 56 2e 00 00    	jmp    *0x2e56(%rip)        # 3fb0 <fgets@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001160 <__isoc99_sscanf@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 4e 2e 00 00    	jmp    *0x2e4e(%rip)        # 3fb8 <__isoc99_sscanf@GLIBC_2.7>
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <fopen@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 46 2e 00 00    	jmp    *0x2e46(%rip)        # 3fc0 <fopen@GLIBC_2.2.5>
    117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001180 <exit@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 3e 2e 00 00    	jmp    *0x2e3e(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <__ctype_b_loc@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 36 2e 00 00    	jmp    *0x2e36(%rip)        # 3fd0 <__ctype_b_loc@GLIBC_2.3>
    119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011a0 <_start>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	31 ed                	xor    %ebp,%ebp
    11a6:	49 89 d1             	mov    %rdx,%r9
    11a9:	5e                   	pop    %rsi
    11aa:	48 89 e2             	mov    %rsp,%rdx
    11ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11b1:	50                   	push   %rax
    11b2:	54                   	push   %rsp
    11b3:	45 31 c0             	xor    %r8d,%r8d
    11b6:	31 c9                	xor    %ecx,%ecx
    11b8:	48 8d 3d d7 01 00 00 	lea    0x1d7(%rip),%rdi        # 1396 <main>
    11bf:	ff 15 13 2e 00 00    	call   *0x2e13(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    11c5:	f4                   	hlt
    11c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11cd:	00 00 00 

00000000000011d0 <deregister_tm_clones>:
    11d0:	48 8d 3d 91 32 00 00 	lea    0x3291(%rip),%rdi        # 4468 <__TMC_END__>
    11d7:	48 8d 05 8a 32 00 00 	lea    0x328a(%rip),%rax        # 4468 <__TMC_END__>
    11de:	48 39 f8             	cmp    %rdi,%rax
    11e1:	74 15                	je     11f8 <deregister_tm_clones+0x28>
    11e3:	48 8b 05 f6 2d 00 00 	mov    0x2df6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    11ea:	48 85 c0             	test   %rax,%rax
    11ed:	74 09                	je     11f8 <deregister_tm_clones+0x28>
    11ef:	ff e0                	jmp    *%rax
    11f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11f8:	c3                   	ret
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <register_tm_clones>:
    1200:	48 8d 3d 61 32 00 00 	lea    0x3261(%rip),%rdi        # 4468 <__TMC_END__>
    1207:	48 8d 35 5a 32 00 00 	lea    0x325a(%rip),%rsi        # 4468 <__TMC_END__>
    120e:	48 29 fe             	sub    %rdi,%rsi
    1211:	48 89 f0             	mov    %rsi,%rax
    1214:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1218:	48 c1 f8 03          	sar    $0x3,%rax
    121c:	48 01 c6             	add    %rax,%rsi
    121f:	48 d1 fe             	sar    $1,%rsi
    1222:	74 14                	je     1238 <register_tm_clones+0x38>
    1224:	48 8b 05 c5 2d 00 00 	mov    0x2dc5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    122b:	48 85 c0             	test   %rax,%rax
    122e:	74 08                	je     1238 <register_tm_clones+0x38>
    1230:	ff e0                	jmp    *%rax
    1232:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1238:	c3                   	ret
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <__do_global_dtors_aux>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	80 3d 3d 32 00 00 00 	cmpb   $0x0,0x323d(%rip)        # 4488 <completed.0>
    124b:	75 2b                	jne    1278 <__do_global_dtors_aux+0x38>
    124d:	55                   	push   %rbp
    124e:	48 83 3d a2 2d 00 00 	cmpq   $0x0,0x2da2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1255:	00 
    1256:	48 89 e5             	mov    %rsp,%rbp
    1259:	74 0c                	je     1267 <__do_global_dtors_aux+0x27>
    125b:	48 8b 3d a6 2d 00 00 	mov    0x2da6(%rip),%rdi        # 4008 <__dso_handle>
    1262:	e8 79 fe ff ff       	call   10e0 <__cxa_finalize@plt>
    1267:	e8 64 ff ff ff       	call   11d0 <deregister_tm_clones>
    126c:	c6 05 15 32 00 00 01 	movb   $0x1,0x3215(%rip)        # 4488 <completed.0>
    1273:	5d                   	pop    %rbp
    1274:	c3                   	ret
    1275:	0f 1f 00             	nopl   (%rax)
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <frame_dummy>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	e9 77 ff ff ff       	jmp    1200 <register_tm_clones>

0000000000001289 <initialize_bomb>:
    1289:	f3 0f 1e fa          	endbr64
    128d:	55                   	push   %rbp
    128e:	48 89 e5             	mov    %rsp,%rbp
    1291:	48 83 ec 30          	sub    $0x30,%rsp
    1295:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1299:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
    12a0:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    12a7:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    12ae:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%rbp)
    12b5:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%rbp)
    12bc:	c7 45 f8 06 00 00 00 	movl   $0x6,-0x8(%rbp)
    12c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12c7:	48 89 c7             	mov    %rax,%rdi
    12ca:	e8 51 fe ff ff       	call   1120 <strlen@plt>
    12cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12d2:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
    12d6:	74 19                	je     12f1 <initialize_bomb+0x68>
    12d8:	48 8d 05 29 0d 00 00 	lea    0xd29(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12df:	48 89 c7             	mov    %rax,%rdi
    12e2:	e8 29 fe ff ff       	call   1110 <puts@plt>
    12e7:	bf 00 00 00 00       	mov    $0x0,%edi
    12ec:	e8 8f fe ff ff       	call   1180 <exit@plt>
    12f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12f5:	48 89 c6             	mov    %rax,%rsi
    12f8:	48 8d 05 99 31 00 00 	lea    0x3199(%rip),%rax        # 4498 <studentid>
    12ff:	48 89 c7             	mov    %rax,%rdi
    1302:	e8 f9 fd ff ff       	call   1100 <strcpy@plt>
    1307:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    130b:	48 89 c6             	mov    %rax,%rsi
    130e:	48 8d 05 2d 0d 00 00 	lea    0xd2d(%rip),%rax        # 2042 <_IO_stdin_used+0x42>
    1315:	48 89 c7             	mov    %rax,%rdi
    1318:	b8 00 00 00 00       	mov    $0x0,%eax
    131d:	e8 1e fe ff ff       	call   1140 <printf@plt>
    1322:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1325:	48 98                	cltq
    1327:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    132b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    132f:	48 01 d0             	add    %rdx,%rax
    1332:	0f b6 00             	movzbl (%rax),%eax
    1335:	3c 33                	cmp    $0x33,%al
    1337:	75 24                	jne    135d <initialize_bomb+0xd4>
    1339:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    133c:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
    133f:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1342:	89 d0                	mov    %edx,%eax
    1344:	01 c0                	add    %eax,%eax
    1346:	01 d0                	add    %edx,%eax
    1348:	8d 14 01             	lea    (%rcx,%rax,1),%edx
    134b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    134e:	c1 e0 02             	shl    $0x2,%eax
    1351:	01 c2                	add    %eax,%edx
    1353:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1356:	01 d0                	add    %edx,%eax
    1358:	89 45 f8             	mov    %eax,-0x8(%rbp)
    135b:	eb 37                	jmp    1394 <initialize_bomb+0x10b>
    135d:	48 8d 05 ec 0c 00 00 	lea    0xcec(%rip),%rax        # 2050 <_IO_stdin_used+0x50>
    1364:	48 89 c7             	mov    %rax,%rdi
    1367:	e8 a4 fd ff ff       	call   1110 <puts@plt>
    136c:	48 8d 05 15 0d 00 00 	lea    0xd15(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    1373:	48 89 c7             	mov    %rax,%rdi
    1376:	e8 95 fd ff ff       	call   1110 <puts@plt>
    137b:	48 8d 05 3e 0d 00 00 	lea    0xd3e(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    1382:	48 89 c7             	mov    %rax,%rdi
    1385:	e8 86 fd ff ff       	call   1110 <puts@plt>
    138a:	bf 00 00 00 00       	mov    $0x0,%edi
    138f:	e8 ec fd ff ff       	call   1180 <exit@plt>
    1394:	c9                   	leave
    1395:	c3                   	ret

0000000000001396 <main>:
    1396:	f3 0f 1e fa          	endbr64
    139a:	55                   	push   %rbp
    139b:	48 89 e5             	mov    %rsp,%rbp
    139e:	48 83 ec 20          	sub    $0x20,%rsp
    13a2:	89 7d ec             	mov    %edi,-0x14(%rbp)
    13a5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    13a9:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    13ad:	75 13                	jne    13c2 <main+0x2c>
    13af:	48 8b 05 ca 30 00 00 	mov    0x30ca(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    13b6:	48 89 05 d3 30 00 00 	mov    %rax,0x30d3(%rip)        # 4490 <infile>
    13bd:	e9 91 00 00 00       	jmp    1453 <main+0xbd>
    13c2:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    13c6:	75 63                	jne    142b <main+0x95>
    13c8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13cc:	48 83 c0 08          	add    $0x8,%rax
    13d0:	48 8b 00             	mov    (%rax),%rax
    13d3:	48 8d 15 0c 0d 00 00 	lea    0xd0c(%rip),%rdx        # 20e6 <_IO_stdin_used+0xe6>
    13da:	48 89 d6             	mov    %rdx,%rsi
    13dd:	48 89 c7             	mov    %rax,%rdi
    13e0:	e8 8b fd ff ff       	call   1170 <fopen@plt>
    13e5:	48 89 05 a4 30 00 00 	mov    %rax,0x30a4(%rip)        # 4490 <infile>
    13ec:	48 8b 05 9d 30 00 00 	mov    0x309d(%rip),%rax        # 4490 <infile>
    13f3:	48 85 c0             	test   %rax,%rax
    13f6:	75 5b                	jne    1453 <main+0xbd>
    13f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13fc:	48 83 c0 08          	add    $0x8,%rax
    1400:	48 8b 10             	mov    (%rax),%rdx
    1403:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1407:	48 8b 00             	mov    (%rax),%rax
    140a:	48 89 c6             	mov    %rax,%rsi
    140d:	48 8d 05 d4 0c 00 00 	lea    0xcd4(%rip),%rax        # 20e8 <_IO_stdin_used+0xe8>
    1414:	48 89 c7             	mov    %rax,%rdi
    1417:	b8 00 00 00 00       	mov    $0x0,%eax
    141c:	e8 1f fd ff ff       	call   1140 <printf@plt>
    1421:	bf 08 00 00 00       	mov    $0x8,%edi
    1426:	e8 55 fd ff ff       	call   1180 <exit@plt>
    142b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    142f:	48 8b 00             	mov    (%rax),%rax
    1432:	48 89 c6             	mov    %rax,%rsi
    1435:	48 8d 05 c9 0c 00 00 	lea    0xcc9(%rip),%rax        # 2105 <_IO_stdin_used+0x105>
    143c:	48 89 c7             	mov    %rax,%rdi
    143f:	b8 00 00 00 00       	mov    $0x0,%eax
    1444:	e8 f7 fc ff ff       	call   1140 <printf@plt>
    1449:	bf 08 00 00 00       	mov    $0x8,%edi
    144e:	e8 2d fd ff ff       	call   1180 <exit@plt>
    1453:	48 8d 05 c5 0c 00 00 	lea    0xcc5(%rip),%rax        # 211f <_IO_stdin_used+0x11f>
    145a:	48 89 c7             	mov    %rax,%rdi
    145d:	e8 ae fc ff ff       	call   1110 <puts@plt>
    1462:	e8 b7 09 00 00       	call   1e1e <read_line>
    1467:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    146b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    146f:	48 89 c7             	mov    %rax,%rdi
    1472:	e8 12 fe ff ff       	call   1289 <initialize_bomb>
    1477:	48 8d 05 ba 0c 00 00 	lea    0xcba(%rip),%rax        # 2138 <_IO_stdin_used+0x138>
    147e:	48 89 c7             	mov    %rax,%rdi
    1481:	e8 8a fc ff ff       	call   1110 <puts@plt>
    1486:	48 8d 05 cb 0c 00 00 	lea    0xccb(%rip),%rax        # 2158 <_IO_stdin_used+0x158>
    148d:	48 89 c7             	mov    %rax,%rdi
    1490:	e8 7b fc ff ff       	call   1110 <puts@plt>
    1495:	e8 84 09 00 00       	call   1e1e <read_line>
    149a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    149e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14a2:	48 89 c7             	mov    %rax,%rdi
    14a5:	e8 24 01 00 00       	call   15ce <phase_1>
    14aa:	48 8d 05 de 0c 00 00 	lea    0xcde(%rip),%rax        # 218f <_IO_stdin_used+0x18f>
    14b1:	48 89 c7             	mov    %rax,%rdi
    14b4:	e8 57 fc ff ff       	call   1110 <puts@plt>
    14b9:	48 8d 05 e0 0c 00 00 	lea    0xce0(%rip),%rax        # 21a0 <_IO_stdin_used+0x1a0>
    14c0:	48 89 c7             	mov    %rax,%rdi
    14c3:	e8 48 fc ff ff       	call   1110 <puts@plt>
    14c8:	e8 51 09 00 00       	call   1e1e <read_line>
    14cd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14d5:	48 89 c7             	mov    %rax,%rdi
    14d8:	e8 55 01 00 00       	call   1632 <phase_2>
    14dd:	48 8d 05 f8 0c 00 00 	lea    0xcf8(%rip),%rax        # 21dc <_IO_stdin_used+0x1dc>
    14e4:	48 89 c7             	mov    %rax,%rdi
    14e7:	e8 24 fc ff ff       	call   1110 <puts@plt>
    14ec:	48 8d 05 fa 0c 00 00 	lea    0xcfa(%rip),%rax        # 21ed <_IO_stdin_used+0x1ed>
    14f3:	48 89 c7             	mov    %rax,%rdi
    14f6:	e8 15 fc ff ff       	call   1110 <puts@plt>
    14fb:	e8 1e 09 00 00       	call   1e1e <read_line>
    1500:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1504:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1508:	48 89 c7             	mov    %rax,%rdi
    150b:	e8 eb 01 00 00       	call   16fb <phase_3>
    1510:	48 8d 05 f4 0c 00 00 	lea    0xcf4(%rip),%rax        # 220b <_IO_stdin_used+0x20b>
    1517:	48 89 c7             	mov    %rax,%rdi
    151a:	e8 f1 fb ff ff       	call   1110 <puts@plt>
    151f:	48 8d 05 fa 0c 00 00 	lea    0xcfa(%rip),%rax        # 2220 <_IO_stdin_used+0x220>
    1526:	48 89 c7             	mov    %rax,%rdi
    1529:	e8 e2 fb ff ff       	call   1110 <puts@plt>
    152e:	e8 eb 08 00 00       	call   1e1e <read_line>
    1533:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1537:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    153b:	48 89 c7             	mov    %rax,%rdi
    153e:	e8 54 03 00 00       	call   1897 <phase_4>
    1543:	48 8d 05 01 0d 00 00 	lea    0xd01(%rip),%rax        # 224b <_IO_stdin_used+0x24b>
    154a:	48 89 c7             	mov    %rax,%rdi
    154d:	e8 be fb ff ff       	call   1110 <puts@plt>
    1552:	48 8d 05 03 0d 00 00 	lea    0xd03(%rip),%rax        # 225c <_IO_stdin_used+0x25c>
    1559:	48 89 c7             	mov    %rax,%rdi
    155c:	e8 af fb ff ff       	call   1110 <puts@plt>
    1561:	e8 b8 08 00 00       	call   1e1e <read_line>
    1566:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    156a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    156e:	48 89 c7             	mov    %rax,%rdi
    1571:	e8 c7 03 00 00       	call   193d <phase_5>
    1576:	48 8d 05 fb 0c 00 00 	lea    0xcfb(%rip),%rax        # 2278 <_IO_stdin_used+0x278>
    157d:	48 89 c7             	mov    %rax,%rdi
    1580:	e8 8b fb ff ff       	call   1110 <puts@plt>
    1585:	48 8d 05 fd 0c 00 00 	lea    0xcfd(%rip),%rax        # 2289 <_IO_stdin_used+0x289>
    158c:	48 89 c7             	mov    %rax,%rdi
    158f:	e8 7c fb ff ff       	call   1110 <puts@plt>
    1594:	e8 85 08 00 00       	call   1e1e <read_line>
    1599:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    159d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15a1:	48 89 c7             	mov    %rax,%rdi
    15a4:	e8 46 04 00 00       	call   19ef <phase_6>
    15a9:	48 8d 05 f7 0c 00 00 	lea    0xcf7(%rip),%rax        # 22a7 <_IO_stdin_used+0x2a7>
    15b0:	48 89 c7             	mov    %rax,%rdi
    15b3:	e8 58 fb ff ff       	call   1110 <puts@plt>
    15b8:	48 8d 05 f9 0c 00 00 	lea    0xcf9(%rip),%rax        # 22b8 <_IO_stdin_used+0x2b8>
    15bf:	48 89 c7             	mov    %rax,%rdi
    15c2:	e8 49 fb ff ff       	call   1110 <puts@plt>
    15c7:	b8 00 00 00 00       	mov    $0x0,%eax
    15cc:	c9                   	leave
    15cd:	c3                   	ret

00000000000015ce <phase_1>:
    15ce:	f3 0f 1e fa          	endbr64
    15d2:	55                   	push   %rbp
    15d3:	48 89 e5             	mov    %rsp,%rbp
    15d6:	48 83 ec 20          	sub    $0x20,%rsp
    15da:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    15de:	0f b6 05 bc 2e 00 00 	movzbl 0x2ebc(%rip),%eax        # 44a1 <studentid+0x9>
    15e5:	83 e8 30             	sub    $0x30,%eax
    15e8:	88 45 fb             	mov    %al,-0x5(%rbp)
    15eb:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
    15ef:	89 45 fc             	mov    %eax,-0x4(%rbp)
    15f2:	8b 55 fc             	mov    -0x4(%rbp),%edx
    15f5:	48 89 d0             	mov    %rdx,%rax
    15f8:	48 c1 e0 02          	shl    $0x2,%rax
    15fc:	48 01 d0             	add    %rdx,%rax
    15ff:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1606:	00 
    1607:	48 01 d0             	add    %rdx,%rax
    160a:	48 01 c0             	add    %rax,%rax
    160d:	48 8d 15 0c 2a 00 00 	lea    0x2a0c(%rip),%rdx        # 4020 <special>
    1614:	48 01 c2             	add    %rax,%rdx
    1617:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    161b:	48 89 d6             	mov    %rdx,%rsi
    161e:	48 89 c7             	mov    %rax,%rdi
    1621:	e8 b3 06 00 00       	call   1cd9 <strings_not_equal>
    1626:	85 c0                	test   %eax,%eax
    1628:	74 05                	je     162f <phase_1+0x61>
    162a:	e8 82 09 00 00       	call   1fb1 <explode_bomb>
    162f:	90                   	nop
    1630:	c9                   	leave
    1631:	c3                   	ret

0000000000001632 <phase_2>:
    1632:	f3 0f 1e fa          	endbr64
    1636:	55                   	push   %rbp
    1637:	48 89 e5             	mov    %rsp,%rbp
    163a:	48 83 ec 40          	sub    $0x40,%rsp
    163e:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    1642:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1649:	00 00 
    164b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    164f:	31 c0                	xor    %eax,%eax
    1651:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1655:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1659:	48 89 d6             	mov    %rdx,%rsi
    165c:	48 89 c7             	mov    %rax,%rdi
    165f:	e8 d0 05 00 00       	call   1c34 <read_six_numbers>
    1664:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1667:	85 c0                	test   %eax,%eax
    1669:	79 05                	jns    1670 <phase_2+0x3e>
    166b:	e8 41 09 00 00       	call   1fb1 <explode_bomb>
    1670:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1673:	0f b6 15 27 2e 00 00 	movzbl 0x2e27(%rip),%edx        # 44a1 <studentid+0x9>
    167a:	0f be d2             	movsbl %dl,%edx
    167d:	83 ea 30             	sub    $0x30,%edx
    1680:	39 d0                	cmp    %edx,%eax
    1682:	74 05                	je     1689 <phase_2+0x57>
    1684:	e8 28 09 00 00       	call   1fb1 <explode_bomb>
    1689:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    168c:	0f b6 15 0d 2e 00 00 	movzbl 0x2e0d(%rip),%edx        # 44a0 <studentid+0x8>
    1693:	0f be d2             	movsbl %dl,%edx
    1696:	83 ea 30             	sub    $0x30,%edx
    1699:	39 d0                	cmp    %edx,%eax
    169b:	74 05                	je     16a2 <phase_2+0x70>
    169d:	e8 0f 09 00 00       	call   1fb1 <explode_bomb>
    16a2:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
    16a9:	eb 33                	jmp    16de <phase_2+0xac>
    16ab:	8b 45 dc             	mov    -0x24(%rbp),%eax
    16ae:	48 98                	cltq
    16b0:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
    16b4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    16b7:	83 e8 01             	sub    $0x1,%eax
    16ba:	48 98                	cltq
    16bc:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
    16c0:	8b 45 dc             	mov    -0x24(%rbp),%eax
    16c3:	83 e8 02             	sub    $0x2,%eax
    16c6:	48 98                	cltq
    16c8:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
    16cc:	01 c8                	add    %ecx,%eax
    16ce:	83 c0 01             	add    $0x1,%eax
    16d1:	39 c2                	cmp    %eax,%edx
    16d3:	74 05                	je     16da <phase_2+0xa8>
    16d5:	e8 d7 08 00 00       	call   1fb1 <explode_bomb>
    16da:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    16de:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
    16e2:	7e c7                	jle    16ab <phase_2+0x79>
    16e4:	90                   	nop
    16e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16e9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16f0:	00 00 
    16f2:	74 05                	je     16f9 <phase_2+0xc7>
    16f4:	e8 37 fa ff ff       	call   1130 <__stack_chk_fail@plt>
    16f9:	c9                   	leave
    16fa:	c3                   	ret

00000000000016fb <phase_3>:
    16fb:	f3 0f 1e fa          	endbr64
    16ff:	55                   	push   %rbp
    1700:	48 89 e5             	mov    %rsp,%rbp
    1703:	48 83 ec 30          	sub    $0x30,%rsp
    1707:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    170b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1712:	00 00 
    1714:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1718:	31 c0                	xor    %eax,%eax
    171a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1721:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1728:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
    172c:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    1730:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1734:	48 8d 35 b1 0b 00 00 	lea    0xbb1(%rip),%rsi        # 22ec <_IO_stdin_used+0x2ec>
    173b:	48 89 c7             	mov    %rax,%rdi
    173e:	b8 00 00 00 00       	mov    $0x0,%eax
    1743:	e8 18 fa ff ff       	call   1160 <__isoc99_sscanf@plt>
    1748:	89 45 f4             	mov    %eax,-0xc(%rbp)
    174b:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    174f:	7f 05                	jg     1756 <phase_3+0x5b>
    1751:	e8 5b 08 00 00       	call   1fb1 <explode_bomb>
    1756:	0f b6 05 43 2d 00 00 	movzbl 0x2d43(%rip),%eax        # 44a0 <studentid+0x8>
    175d:	0f be c0             	movsbl %al,%eax
    1760:	8d 50 d0             	lea    -0x30(%rax),%edx
    1763:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1766:	39 c2                	cmp    %eax,%edx
    1768:	74 05                	je     176f <phase_3+0x74>
    176a:	e8 42 08 00 00       	call   1fb1 <explode_bomb>
    176f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1772:	83 f8 09             	cmp    $0x9,%eax
    1775:	77 7d                	ja     17f4 <phase_3+0xf9>
    1777:	89 c0                	mov    %eax,%eax
    1779:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1780:	00 
    1781:	48 8d 05 6c 0b 00 00 	lea    0xb6c(%rip),%rax        # 22f4 <_IO_stdin_used+0x2f4>
    1788:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    178b:	48 98                	cltq
    178d:	48 8d 15 60 0b 00 00 	lea    0xb60(%rip),%rdx        # 22f4 <_IO_stdin_used+0x2f4>
    1794:	48 01 d0             	add    %rdx,%rax
    1797:	3e ff e0             	notrack jmp *%rax
    179a:	c7 45 f0 ea 07 00 00 	movl   $0x7ea,-0x10(%rbp)
    17a1:	eb 56                	jmp    17f9 <phase_3+0xfe>
    17a3:	c7 45 f0 61 09 00 00 	movl   $0x961,-0x10(%rbp)
    17aa:	eb 4d                	jmp    17f9 <phase_3+0xfe>
    17ac:	c7 45 f0 7b 00 00 00 	movl   $0x7b,-0x10(%rbp)
    17b3:	eb 44                	jmp    17f9 <phase_3+0xfe>
    17b5:	c7 45 f0 8e 02 00 00 	movl   $0x28e,-0x10(%rbp)
    17bc:	eb 3b                	jmp    17f9 <phase_3+0xfe>
    17be:	c7 45 f0 1c 01 00 00 	movl   $0x11c,-0x10(%rbp)
    17c5:	eb 32                	jmp    17f9 <phase_3+0xfe>
    17c7:	c7 45 f0 15 03 00 00 	movl   $0x315,-0x10(%rbp)
    17ce:	eb 29                	jmp    17f9 <phase_3+0xfe>
    17d0:	c7 45 f0 a9 01 00 00 	movl   $0x1a9,-0x10(%rbp)
    17d7:	eb 20                	jmp    17f9 <phase_3+0xfe>
    17d9:	c7 45 f0 63 00 00 00 	movl   $0x63,-0x10(%rbp)
    17e0:	eb 17                	jmp    17f9 <phase_3+0xfe>
    17e2:	c7 45 f0 64 00 00 00 	movl   $0x64,-0x10(%rbp)
    17e9:	eb 0e                	jmp    17f9 <phase_3+0xfe>
    17eb:	c7 45 f0 41 01 00 00 	movl   $0x141,-0x10(%rbp)
    17f2:	eb 05                	jmp    17f9 <phase_3+0xfe>
    17f4:	e8 b8 07 00 00       	call   1fb1 <explode_bomb>
    17f9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    17fc:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    17ff:	74 05                	je     1806 <phase_3+0x10b>
    1801:	e8 ab 07 00 00       	call   1fb1 <explode_bomb>
    1806:	90                   	nop
    1807:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    180b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1812:	00 00 
    1814:	74 05                	je     181b <phase_3+0x120>
    1816:	e8 15 f9 ff ff       	call   1130 <__stack_chk_fail@plt>
    181b:	c9                   	leave
    181c:	c3                   	ret

000000000000181d <func4>:
    181d:	f3 0f 1e fa          	endbr64
    1821:	55                   	push   %rbp
    1822:	48 89 e5             	mov    %rsp,%rbp
    1825:	48 83 ec 20          	sub    $0x20,%rsp
    1829:	89 7d ec             	mov    %edi,-0x14(%rbp)
    182c:	89 75 e8             	mov    %esi,-0x18(%rbp)
    182f:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1832:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1835:	2b 45 e8             	sub    -0x18(%rbp),%eax
    1838:	89 c2                	mov    %eax,%edx
    183a:	c1 ea 1f             	shr    $0x1f,%edx
    183d:	01 d0                	add    %edx,%eax
    183f:	d1 f8                	sar    $1,%eax
    1841:	89 c2                	mov    %eax,%edx
    1843:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1846:	01 d0                	add    %edx,%eax
    1848:	89 45 fc             	mov    %eax,-0x4(%rbp)
    184b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    184e:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1851:	7e 19                	jle    186c <func4+0x4f>
    1853:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1856:	8d 50 ff             	lea    -0x1(%rax),%edx
    1859:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    185c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    185f:	89 ce                	mov    %ecx,%esi
    1861:	89 c7                	mov    %eax,%edi
    1863:	e8 b5 ff ff ff       	call   181d <func4>
    1868:	01 c0                	add    %eax,%eax
    186a:	eb 29                	jmp    1895 <func4+0x78>
    186c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    186f:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1872:	7d 1c                	jge    1890 <func4+0x73>
    1874:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1877:	8d 48 01             	lea    0x1(%rax),%ecx
    187a:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    187d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1880:	89 ce                	mov    %ecx,%esi
    1882:	89 c7                	mov    %eax,%edi
    1884:	e8 94 ff ff ff       	call   181d <func4>
    1889:	01 c0                	add    %eax,%eax
    188b:	83 c0 01             	add    $0x1,%eax
    188e:	eb 05                	jmp    1895 <func4+0x78>
    1890:	b8 00 00 00 00       	mov    $0x0,%eax
    1895:	c9                   	leave
    1896:	c3                   	ret

0000000000001897 <phase_4>:
    1897:	f3 0f 1e fa          	endbr64
    189b:	55                   	push   %rbp
    189c:	48 89 e5             	mov    %rsp,%rbp
    189f:	48 83 ec 30          	sub    $0x30,%rsp
    18a3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    18a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18ae:	00 00 
    18b0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    18b4:	31 c0                	xor    %eax,%eax
    18b6:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
    18ba:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
    18be:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18c2:	48 8d 35 23 0a 00 00 	lea    0xa23(%rip),%rsi        # 22ec <_IO_stdin_used+0x2ec>
    18c9:	48 89 c7             	mov    %rax,%rdi
    18cc:	b8 00 00 00 00       	mov    $0x0,%eax
    18d1:	e8 8a f8 ff ff       	call   1160 <__isoc99_sscanf@plt>
    18d6:	89 45 ec             	mov    %eax,-0x14(%rbp)
    18d9:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    18dd:	75 0f                	jne    18ee <phase_4+0x57>
    18df:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    18e2:	85 c0                	test   %eax,%eax
    18e4:	78 08                	js     18ee <phase_4+0x57>
    18e6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    18e9:	83 f8 0e             	cmp    $0xe,%eax
    18ec:	7e 05                	jle    18f3 <phase_4+0x5c>
    18ee:	e8 be 06 00 00       	call   1fb1 <explode_bomb>
    18f3:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
    18fa:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    18fd:	ba 0e 00 00 00       	mov    $0xe,%edx
    1902:	be 00 00 00 00       	mov    $0x0,%esi
    1907:	89 c7                	mov    %eax,%edi
    1909:	e8 0f ff ff ff       	call   181d <func4>
    190e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1911:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1914:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    1917:	75 08                	jne    1921 <phase_4+0x8a>
    1919:	8b 45 e8             	mov    -0x18(%rbp),%eax
    191c:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    191f:	74 05                	je     1926 <phase_4+0x8f>
    1921:	e8 8b 06 00 00       	call   1fb1 <explode_bomb>
    1926:	90                   	nop
    1927:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    192b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1932:	00 00 
    1934:	74 05                	je     193b <phase_4+0xa4>
    1936:	e8 f5 f7 ff ff       	call   1130 <__stack_chk_fail@plt>
    193b:	c9                   	leave
    193c:	c3                   	ret

000000000000193d <phase_5>:
    193d:	f3 0f 1e fa          	endbr64
    1941:	55                   	push   %rbp
    1942:	48 89 e5             	mov    %rsp,%rbp
    1945:	48 83 ec 30          	sub    $0x30,%rsp
    1949:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    194d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1954:	00 00 
    1956:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    195a:	31 c0                	xor    %eax,%eax
    195c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1960:	48 89 c7             	mov    %rax,%rdi
    1963:	e8 3b 03 00 00       	call   1ca3 <string_length>
    1968:	89 45 ec             	mov    %eax,-0x14(%rbp)
    196b:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
    196f:	74 05                	je     1976 <phase_5+0x39>
    1971:	e8 3b 06 00 00       	call   1fb1 <explode_bomb>
    1976:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    197d:	eb 30                	jmp    19af <phase_5+0x72>
    197f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1982:	48 63 d0             	movslq %eax,%rdx
    1985:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1989:	48 01 d0             	add    %rdx,%rax
    198c:	0f b6 00             	movzbl (%rax),%eax
    198f:	0f be c0             	movsbl %al,%eax
    1992:	83 e0 0f             	and    $0xf,%eax
    1995:	48 98                	cltq
    1997:	48 8d 15 92 29 00 00 	lea    0x2992(%rip),%rdx        # 4330 <array.0>
    199e:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    19a2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    19a5:	48 98                	cltq
    19a7:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
    19ab:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    19af:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
    19b3:	7e ca                	jle    197f <phase_5+0x42>
    19b5:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    19b9:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
    19bd:	48 8d 15 58 09 00 00 	lea    0x958(%rip),%rdx        # 231c <_IO_stdin_used+0x31c>
    19c4:	48 89 d6             	mov    %rdx,%rsi
    19c7:	48 89 c7             	mov    %rax,%rdi
    19ca:	e8 0a 03 00 00       	call   1cd9 <strings_not_equal>
    19cf:	85 c0                	test   %eax,%eax
    19d1:	74 05                	je     19d8 <phase_5+0x9b>
    19d3:	e8 d9 05 00 00       	call   1fb1 <explode_bomb>
    19d8:	90                   	nop
    19d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19dd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19e4:	00 00 
    19e6:	74 05                	je     19ed <phase_5+0xb0>
    19e8:	e8 43 f7 ff ff       	call   1130 <__stack_chk_fail@plt>
    19ed:	c9                   	leave
    19ee:	c3                   	ret

00000000000019ef <phase_6>:
    19ef:	f3 0f 1e fa          	endbr64
    19f3:	55                   	push   %rbp
    19f4:	48 89 e5             	mov    %rsp,%rbp
    19f7:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    19fe:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    1a05:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a0c:	00 00 
    1a0e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a12:	31 c0                	xor    %eax,%eax
    1a14:	48 8d 05 65 29 00 00 	lea    0x2965(%rip),%rax        # 4380 <node1>
    1a1b:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1a1f:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1a23:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1a2a:	48 89 d6             	mov    %rdx,%rsi
    1a2d:	48 89 c7             	mov    %rax,%rdi
    1a30:	e8 ff 01 00 00       	call   1c34 <read_six_numbers>
    1a35:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1a3c:	eb 54                	jmp    1a92 <phase_6+0xa3>
    1a3e:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a41:	48 98                	cltq
    1a43:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1a47:	85 c0                	test   %eax,%eax
    1a49:	7e 0e                	jle    1a59 <phase_6+0x6a>
    1a4b:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a4e:	48 98                	cltq
    1a50:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1a54:	83 f8 06             	cmp    $0x6,%eax
    1a57:	7e 05                	jle    1a5e <phase_6+0x6f>
    1a59:	e8 53 05 00 00       	call   1fb1 <explode_bomb>
    1a5e:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a61:	83 c0 01             	add    $0x1,%eax
    1a64:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1a67:	eb 1f                	jmp    1a88 <phase_6+0x99>
    1a69:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a6c:	48 98                	cltq
    1a6e:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
    1a72:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1a75:	48 98                	cltq
    1a77:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1a7b:	39 c2                	cmp    %eax,%edx
    1a7d:	75 05                	jne    1a84 <phase_6+0x95>
    1a7f:	e8 2d 05 00 00       	call   1fb1 <explode_bomb>
    1a84:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1a88:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp)
    1a8c:	7e db                	jle    1a69 <phase_6+0x7a>
    1a8e:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1a92:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1a96:	7e a6                	jle    1a3e <phase_6+0x4f>
    1a98:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1a9f:	eb 41                	jmp    1ae2 <phase_6+0xf3>
    1aa1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1aa5:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1aa9:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
    1ab0:	eb 10                	jmp    1ac2 <phase_6+0xd3>
    1ab2:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1ab6:	48 8b 40 08          	mov    0x8(%rax),%rax
    1aba:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1abe:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1ac2:	8b 45 88             	mov    -0x78(%rbp),%eax
    1ac5:	48 98                	cltq
    1ac7:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1acb:	39 45 8c             	cmp    %eax,-0x74(%rbp)
    1ace:	7c e2                	jl     1ab2 <phase_6+0xc3>
    1ad0:	8b 45 88             	mov    -0x78(%rbp),%eax
    1ad3:	48 98                	cltq
    1ad5:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    1ad9:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
    1ade:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1ae2:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1ae6:	7e b9                	jle    1aa1 <phase_6+0xb2>
    1ae8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1aec:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1af0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1af4:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1af8:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
    1aff:	eb 22                	jmp    1b23 <phase_6+0x134>
    1b01:	8b 45 88             	mov    -0x78(%rbp),%eax
    1b04:	48 98                	cltq
    1b06:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx
    1b0b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b0f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1b13:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b17:	48 8b 40 08          	mov    0x8(%rax),%rax
    1b1b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1b1f:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1b23:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1b27:	7e d8                	jle    1b01 <phase_6+0x112>
    1b29:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b2d:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1b34:	00 
    1b35:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1b39:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1b3d:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1b44:	eb 29                	jmp    1b6f <phase_6+0x180>
    1b46:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b4a:	8b 10                	mov    (%rax),%edx
    1b4c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b50:	48 8b 40 08          	mov    0x8(%rax),%rax
    1b54:	8b 00                	mov    (%rax),%eax
    1b56:	39 c2                	cmp    %eax,%edx
    1b58:	7d 05                	jge    1b5f <phase_6+0x170>
    1b5a:	e8 52 04 00 00       	call   1fb1 <explode_bomb>
    1b5f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1b63:	48 8b 40 08          	mov    0x8(%rax),%rax
    1b67:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1b6b:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1b6f:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
    1b73:	7e d1                	jle    1b46 <phase_6+0x157>
    1b75:	90                   	nop
    1b76:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b7a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b81:	00 00 
    1b83:	74 05                	je     1b8a <phase_6+0x19b>
    1b85:	e8 a6 f5 ff ff       	call   1130 <__stack_chk_fail@plt>
    1b8a:	c9                   	leave
    1b8b:	c3                   	ret

0000000000001b8c <fun7>:
    1b8c:	f3 0f 1e fa          	endbr64
    1b90:	55                   	push   %rbp
    1b91:	48 89 e5             	mov    %rsp,%rbp
    1b94:	48 83 ec 10          	sub    $0x10,%rsp
    1b98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1b9c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1b9f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1ba4:	75 07                	jne    1bad <fun7+0x21>
    1ba6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bab:	eb 50                	jmp    1bfd <fun7+0x71>
    1bad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bb1:	8b 00                	mov    (%rax),%eax
    1bb3:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1bb6:	7d 19                	jge    1bd1 <fun7+0x45>
    1bb8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bbc:	48 8b 40 08          	mov    0x8(%rax),%rax
    1bc0:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1bc3:	89 d6                	mov    %edx,%esi
    1bc5:	48 89 c7             	mov    %rax,%rdi
    1bc8:	e8 bf ff ff ff       	call   1b8c <fun7>
    1bcd:	01 c0                	add    %eax,%eax
    1bcf:	eb 2c                	jmp    1bfd <fun7+0x71>
    1bd1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bd5:	8b 00                	mov    (%rax),%eax
    1bd7:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1bda:	75 07                	jne    1be3 <fun7+0x57>
    1bdc:	b8 00 00 00 00       	mov    $0x0,%eax
    1be1:	eb 1a                	jmp    1bfd <fun7+0x71>
    1be3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1be7:	48 8b 40 10          	mov    0x10(%rax),%rax
    1beb:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1bee:	89 d6                	mov    %edx,%esi
    1bf0:	48 89 c7             	mov    %rax,%rdi
    1bf3:	e8 94 ff ff ff       	call   1b8c <fun7>
    1bf8:	01 c0                	add    %eax,%eax
    1bfa:	83 c0 01             	add    $0x1,%eax
    1bfd:	c9                   	leave
    1bfe:	c3                   	ret

0000000000001bff <invalid_phase>:
    1bff:	f3 0f 1e fa          	endbr64
    1c03:	55                   	push   %rbp
    1c04:	48 89 e5             	mov    %rsp,%rbp
    1c07:	48 83 ec 10          	sub    $0x10,%rsp
    1c0b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1c0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c13:	48 89 c6             	mov    %rax,%rsi
    1c16:	48 8d 05 06 07 00 00 	lea    0x706(%rip),%rax        # 2323 <_IO_stdin_used+0x323>
    1c1d:	48 89 c7             	mov    %rax,%rdi
    1c20:	b8 00 00 00 00       	mov    $0x0,%eax
    1c25:	e8 16 f5 ff ff       	call   1140 <printf@plt>
    1c2a:	bf 08 00 00 00       	mov    $0x8,%edi
    1c2f:	e8 4c f5 ff ff       	call   1180 <exit@plt>

0000000000001c34 <read_six_numbers>:
    1c34:	f3 0f 1e fa          	endbr64
    1c38:	55                   	push   %rbp
    1c39:	48 89 e5             	mov    %rsp,%rbp
    1c3c:	48 83 ec 20          	sub    $0x20,%rsp
    1c40:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1c44:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1c48:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c4c:	48 8d 78 14          	lea    0x14(%rax),%rdi
    1c50:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c54:	48 8d 70 10          	lea    0x10(%rax),%rsi
    1c58:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c5c:	4c 8d 48 0c          	lea    0xc(%rax),%r9
    1c60:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c64:	4c 8d 40 08          	lea    0x8(%rax),%r8
    1c68:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c6c:	48 8d 48 04          	lea    0x4(%rax),%rcx
    1c70:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1c74:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1c78:	57                   	push   %rdi
    1c79:	56                   	push   %rsi
    1c7a:	48 8d 35 b3 06 00 00 	lea    0x6b3(%rip),%rsi        # 2334 <_IO_stdin_used+0x334>
    1c81:	48 89 c7             	mov    %rax,%rdi
    1c84:	b8 00 00 00 00       	mov    $0x0,%eax
    1c89:	e8 d2 f4 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1c8e:	48 83 c4 10          	add    $0x10,%rsp
    1c92:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1c95:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
    1c99:	7f 05                	jg     1ca0 <read_six_numbers+0x6c>
    1c9b:	e8 11 03 00 00       	call   1fb1 <explode_bomb>
    1ca0:	90                   	nop
    1ca1:	c9                   	leave
    1ca2:	c3                   	ret

0000000000001ca3 <string_length>:
    1ca3:	f3 0f 1e fa          	endbr64
    1ca7:	55                   	push   %rbp
    1ca8:	48 89 e5             	mov    %rsp,%rbp
    1cab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1caf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1cb3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1cb7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1cbe:	eb 09                	jmp    1cc9 <string_length+0x26>
    1cc0:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1cc5:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1cc9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ccd:	0f b6 00             	movzbl (%rax),%eax
    1cd0:	84 c0                	test   %al,%al
    1cd2:	75 ec                	jne    1cc0 <string_length+0x1d>
    1cd4:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1cd7:	5d                   	pop    %rbp
    1cd8:	c3                   	ret

0000000000001cd9 <strings_not_equal>:
    1cd9:	f3 0f 1e fa          	endbr64
    1cdd:	55                   	push   %rbp
    1cde:	48 89 e5             	mov    %rsp,%rbp
    1ce1:	53                   	push   %rbx
    1ce2:	48 83 ec 20          	sub    $0x20,%rsp
    1ce6:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    1cea:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    1cee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1cf2:	48 89 c7             	mov    %rax,%rdi
    1cf5:	e8 a9 ff ff ff       	call   1ca3 <string_length>
    1cfa:	89 c3                	mov    %eax,%ebx
    1cfc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1d00:	48 89 c7             	mov    %rax,%rdi
    1d03:	e8 9b ff ff ff       	call   1ca3 <string_length>
    1d08:	39 c3                	cmp    %eax,%ebx
    1d0a:	74 07                	je     1d13 <strings_not_equal+0x3a>
    1d0c:	b8 01 00 00 00       	mov    $0x1,%eax
    1d11:	eb 45                	jmp    1d58 <strings_not_equal+0x7f>
    1d13:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d17:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1d1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1d1f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1d23:	eb 23                	jmp    1d48 <strings_not_equal+0x6f>
    1d25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d29:	0f b6 10             	movzbl (%rax),%edx
    1d2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d30:	0f b6 00             	movzbl (%rax),%eax
    1d33:	38 c2                	cmp    %al,%dl
    1d35:	74 07                	je     1d3e <strings_not_equal+0x65>
    1d37:	b8 01 00 00 00       	mov    $0x1,%eax
    1d3c:	eb 1a                	jmp    1d58 <strings_not_equal+0x7f>
    1d3e:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1d43:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    1d48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d4c:	0f b6 00             	movzbl (%rax),%eax
    1d4f:	84 c0                	test   %al,%al
    1d51:	75 d2                	jne    1d25 <strings_not_equal+0x4c>
    1d53:	b8 00 00 00 00       	mov    $0x0,%eax
    1d58:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1d5c:	c9                   	leave
    1d5d:	c3                   	ret

0000000000001d5e <blank_line>:
    1d5e:	f3 0f 1e fa          	endbr64
    1d62:	55                   	push   %rbp
    1d63:	48 89 e5             	mov    %rsp,%rbp
    1d66:	48 83 ec 10          	sub    $0x10,%rsp
    1d6a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1d6e:	eb 37                	jmp    1da7 <blank_line+0x49>
    1d70:	e8 1b f4 ff ff       	call   1190 <__ctype_b_loc@plt>
    1d75:	48 8b 08             	mov    (%rax),%rcx
    1d78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1d7c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1d80:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    1d84:	0f b6 00             	movzbl (%rax),%eax
    1d87:	48 0f be c0          	movsbq %al,%rax
    1d8b:	48 01 c0             	add    %rax,%rax
    1d8e:	48 01 c8             	add    %rcx,%rax
    1d91:	0f b7 00             	movzwl (%rax),%eax
    1d94:	0f b7 c0             	movzwl %ax,%eax
    1d97:	25 00 20 00 00       	and    $0x2000,%eax
    1d9c:	85 c0                	test   %eax,%eax
    1d9e:	75 07                	jne    1da7 <blank_line+0x49>
    1da0:	b8 00 00 00 00       	mov    $0x0,%eax
    1da5:	eb 10                	jmp    1db7 <blank_line+0x59>
    1da7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1dab:	0f b6 00             	movzbl (%rax),%eax
    1dae:	84 c0                	test   %al,%al
    1db0:	75 be                	jne    1d70 <blank_line+0x12>
    1db2:	b8 01 00 00 00       	mov    $0x1,%eax
    1db7:	c9                   	leave
    1db8:	c3                   	ret

0000000000001db9 <skip>:
    1db9:	f3 0f 1e fa          	endbr64
    1dbd:	55                   	push   %rbp
    1dbe:	48 89 e5             	mov    %rsp,%rbp
    1dc1:	48 83 ec 10          	sub    $0x10,%rsp
    1dc5:	48 8b 0d c4 26 00 00 	mov    0x26c4(%rip),%rcx        # 4490 <infile>
    1dcc:	8b 05 2e 2d 00 00    	mov    0x2d2e(%rip),%eax        # 4b00 <num_input_strings>
    1dd2:	48 63 d0             	movslq %eax,%rdx
    1dd5:	48 89 d0             	mov    %rdx,%rax
    1dd8:	48 c1 e0 02          	shl    $0x2,%rax
    1ddc:	48 01 d0             	add    %rdx,%rax
    1ddf:	48 c1 e0 04          	shl    $0x4,%rax
    1de3:	48 8d 15 d6 26 00 00 	lea    0x26d6(%rip),%rdx        # 44c0 <input_strings>
    1dea:	48 01 d0             	add    %rdx,%rax
    1ded:	48 89 ca             	mov    %rcx,%rdx
    1df0:	be 50 00 00 00       	mov    $0x50,%esi
    1df5:	48 89 c7             	mov    %rax,%rdi
    1df8:	e8 53 f3 ff ff       	call   1150 <fgets@plt>
    1dfd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1e01:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1e06:	74 10                	je     1e18 <skip+0x5f>
    1e08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e0c:	48 89 c7             	mov    %rax,%rdi
    1e0f:	e8 4a ff ff ff       	call   1d5e <blank_line>
    1e14:	85 c0                	test   %eax,%eax
    1e16:	75 ad                	jne    1dc5 <skip+0xc>
    1e18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e1c:	c9                   	leave
    1e1d:	c3                   	ret

0000000000001e1e <read_line>:
    1e1e:	f3 0f 1e fa          	endbr64
    1e22:	55                   	push   %rbp
    1e23:	48 89 e5             	mov    %rsp,%rbp
    1e26:	48 83 ec 10          	sub    $0x10,%rsp
    1e2a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e2f:	e8 85 ff ff ff       	call   1db9 <skip>
    1e34:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1e38:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1e3d:	0f 85 86 00 00 00    	jne    1ec9 <read_line+0xab>
    1e43:	48 8b 15 46 26 00 00 	mov    0x2646(%rip),%rdx        # 4490 <infile>
    1e4a:	48 8b 05 2f 26 00 00 	mov    0x262f(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    1e51:	48 39 c2             	cmp    %rax,%rdx
    1e54:	75 19                	jne    1e6f <read_line+0x51>
    1e56:	48 8d 05 e9 04 00 00 	lea    0x4e9(%rip),%rax        # 2346 <_IO_stdin_used+0x346>
    1e5d:	48 89 c7             	mov    %rax,%rdi
    1e60:	e8 ab f2 ff ff       	call   1110 <puts@plt>
    1e65:	bf 08 00 00 00       	mov    $0x8,%edi
    1e6a:	e8 11 f3 ff ff       	call   1180 <exit@plt>
    1e6f:	48 8d 05 ee 04 00 00 	lea    0x4ee(%rip),%rax        # 2364 <_IO_stdin_used+0x364>
    1e76:	48 89 c7             	mov    %rax,%rdi
    1e79:	e8 72 f2 ff ff       	call   10f0 <getenv@plt>
    1e7e:	48 85 c0             	test   %rax,%rax
    1e81:	74 0a                	je     1e8d <read_line+0x6f>
    1e83:	bf 00 00 00 00       	mov    $0x0,%edi
    1e88:	e8 f3 f2 ff ff       	call   1180 <exit@plt>
    1e8d:	48 8b 05 ec 25 00 00 	mov    0x25ec(%rip),%rax        # 4480 <stdin@GLIBC_2.2.5>
    1e94:	48 89 05 f5 25 00 00 	mov    %rax,0x25f5(%rip)        # 4490 <infile>
    1e9b:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea0:	e8 14 ff ff ff       	call   1db9 <skip>
    1ea5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ea9:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1eae:	75 19                	jne    1ec9 <read_line+0xab>
    1eb0:	48 8d 05 8f 04 00 00 	lea    0x48f(%rip),%rax        # 2346 <_IO_stdin_used+0x346>
    1eb7:	48 89 c7             	mov    %rax,%rdi
    1eba:	e8 51 f2 ff ff       	call   1110 <puts@plt>
    1ebf:	bf 00 00 00 00       	mov    $0x0,%edi
    1ec4:	e8 b7 f2 ff ff       	call   1180 <exit@plt>
    1ec9:	8b 05 31 2c 00 00    	mov    0x2c31(%rip),%eax        # 4b00 <num_input_strings>
    1ecf:	48 63 d0             	movslq %eax,%rdx
    1ed2:	48 89 d0             	mov    %rdx,%rax
    1ed5:	48 c1 e0 02          	shl    $0x2,%rax
    1ed9:	48 01 d0             	add    %rdx,%rax
    1edc:	48 c1 e0 04          	shl    $0x4,%rax
    1ee0:	48 8d 15 d9 25 00 00 	lea    0x25d9(%rip),%rdx        # 44c0 <input_strings>
    1ee7:	48 01 d0             	add    %rdx,%rax
    1eea:	48 89 c7             	mov    %rax,%rdi
    1eed:	e8 2e f2 ff ff       	call   1120 <strlen@plt>
    1ef2:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1ef5:	83 7d f4 4e          	cmpl   $0x4e,-0xc(%rbp)
    1ef9:	7e 59                	jle    1f54 <read_line+0x136>
    1efb:	48 8d 05 6d 04 00 00 	lea    0x46d(%rip),%rax        # 236f <_IO_stdin_used+0x36f>
    1f02:	48 89 c7             	mov    %rax,%rdi
    1f05:	e8 06 f2 ff ff       	call   1110 <puts@plt>
    1f0a:	8b 05 f0 2b 00 00    	mov    0x2bf0(%rip),%eax        # 4b00 <num_input_strings>
    1f10:	8d 50 01             	lea    0x1(%rax),%edx
    1f13:	89 15 e7 2b 00 00    	mov    %edx,0x2be7(%rip)        # 4b00 <num_input_strings>
    1f19:	48 63 d0             	movslq %eax,%rdx
    1f1c:	48 89 d0             	mov    %rdx,%rax
    1f1f:	48 c1 e0 02          	shl    $0x2,%rax
    1f23:	48 01 d0             	add    %rdx,%rax
    1f26:	48 c1 e0 04          	shl    $0x4,%rax
    1f2a:	48 8d 15 8f 25 00 00 	lea    0x258f(%rip),%rdx        # 44c0 <input_strings>
    1f31:	48 01 d0             	add    %rdx,%rax
    1f34:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1f3b:	75 6e 63 
    1f3e:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1f45:	2a 2a 00 
    1f48:	48 89 30             	mov    %rsi,(%rax)
    1f4b:	48 89 78 08          	mov    %rdi,0x8(%rax)
    1f4f:	e8 5d 00 00 00       	call   1fb1 <explode_bomb>
    1f54:	8b 05 a6 2b 00 00    	mov    0x2ba6(%rip),%eax        # 4b00 <num_input_strings>
    1f5a:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1f5d:	83 ea 01             	sub    $0x1,%edx
    1f60:	48 63 ca             	movslq %edx,%rcx
    1f63:	48 63 d0             	movslq %eax,%rdx
    1f66:	48 89 d0             	mov    %rdx,%rax
    1f69:	48 c1 e0 02          	shl    $0x2,%rax
    1f6d:	48 01 d0             	add    %rdx,%rax
    1f70:	48 c1 e0 04          	shl    $0x4,%rax
    1f74:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1f78:	48 8d 05 41 25 00 00 	lea    0x2541(%rip),%rax        # 44c0 <input_strings>
    1f7f:	48 01 d0             	add    %rdx,%rax
    1f82:	c6 00 00             	movb   $0x0,(%rax)
    1f85:	8b 05 75 2b 00 00    	mov    0x2b75(%rip),%eax        # 4b00 <num_input_strings>
    1f8b:	8d 50 01             	lea    0x1(%rax),%edx
    1f8e:	89 15 6c 2b 00 00    	mov    %edx,0x2b6c(%rip)        # 4b00 <num_input_strings>
    1f94:	48 63 d0             	movslq %eax,%rdx
    1f97:	48 89 d0             	mov    %rdx,%rax
    1f9a:	48 c1 e0 02          	shl    $0x2,%rax
    1f9e:	48 01 d0             	add    %rdx,%rax
    1fa1:	48 c1 e0 04          	shl    $0x4,%rax
    1fa5:	48 8d 15 14 25 00 00 	lea    0x2514(%rip),%rdx        # 44c0 <input_strings>
    1fac:	48 01 d0             	add    %rdx,%rax
    1faf:	c9                   	leave
    1fb0:	c3                   	ret

0000000000001fb1 <explode_bomb>:
    1fb1:	f3 0f 1e fa          	endbr64
    1fb5:	55                   	push   %rbp
    1fb6:	48 89 e5             	mov    %rsp,%rbp
    1fb9:	48 8d 05 ca 03 00 00 	lea    0x3ca(%rip),%rax        # 238a <_IO_stdin_used+0x38a>
    1fc0:	48 89 c7             	mov    %rax,%rdi
    1fc3:	e8 48 f1 ff ff       	call   1110 <puts@plt>
    1fc8:	bf 08 00 00 00       	mov    $0x8,%edi
    1fcd:	e8 ae f1 ff ff       	call   1180 <exit@plt>

Disassembly of section .fini:

0000000000001fd4 <_fini>:
    1fd4:	f3 0f 1e fa          	endbr64
    1fd8:	48 83 ec 08          	sub    $0x8,%rsp
    1fdc:	48 83 c4 08          	add    $0x8,%rsp
    1fe0:	c3                   	ret
