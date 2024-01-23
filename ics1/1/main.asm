
main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 c5 44 00 00 	mov    0x44c5(%rip),%rax        # 4054e0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 c6 44 00 00 	mov    0x44c6(%rip),%rax        # 4054f0 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 c9 44 00 00 	mov    0x44c9(%rip),%rax        # 405500 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 8c 44 00 00 	mov    0x448c(%rip),%rax        # 4054d0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 6f 43 00 00 	mov    0x436f(%rip),%rax        # 4053c0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 61 44 00 00 	mov    0x4461(%rip),%rax        # 4054c0 <.refptr.mingw_app_type>
  40105f:	89 15 a3 6f 00 00    	mov    %edx,0x6fa3(%rip)        # 408008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 db 24 00 00       	callq  403550 <__set_app_type>
  401075:	e8 46 25 00 00       	callq  4035c0 <__p__fmode>
  40107a:	48 8b 15 ff 43 00 00 	mov    0x43ff(%rip),%rdx        # 405480 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 56 10 00 00       	callq  4020e0 <_setargv>
  40108a:	48 8b 05 bf 42 00 00 	mov    0x42bf(%rip),%rax        # 405350 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 a6 24 00 00       	callq  403550 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d f9 12 00 00 	lea    0x12f9(%rip),%rcx        # 4023f0 <_matherr>
  4010f7:	e8 e4 12 00 00       	callq  4023e0 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 75 43 00 00 	mov    0x4375(%rip),%rax        # 4054b0 <.refptr._newmode>
  40113b:	4c 8d 05 ce 6e 00 00 	lea    0x6ece(%rip),%r8        # 408010 <envp>
  401142:	48 8d 15 cf 6e 00 00 	lea    0x6ecf(%rip),%rdx        # 408018 <argv>
  401149:	48 8d 0d d0 6e 00 00 	lea    0x6ed0(%rip),%rcx        # 408020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 6e 00 00    	mov    %eax,0x6ea8(%rip)        # 408000 <__bss_start__>
  401158:	48 8d 05 a1 6e 00 00 	lea    0x6ea1(%rip),%rax        # 408000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 05 43 00 00 	mov    0x4305(%rip),%rax        # 405470 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 ed 23 00 00       	callq  403560 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d 18 43 00 00 	mov    0x4318(%rip),%rdi        # 4054c0 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d 4c 42 00 00 	mov    0x424c(%rip),%rbx        # 405410 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 e7 80 00 00 	mov    0x80e7(%rip),%r12        # 4092b8 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 28 42 00 00 	mov    0x4228(%rip),%rsi        # 405420 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 6d 00 00 01 	movl   $0x1,0x6deb(%rip)        # 408004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 7d 41 00 00 	mov    0x417d(%rip),%rax        # 4053b0 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 a4 14 00 00       	callq  4026f0 <_pei386_runtime_relocator>
  40124c:	48 8d 0d ed 19 00 00 	lea    0x19ed(%rip),%rcx        # 402c40 <_gnu_exception_handler>
  401253:	ff 15 57 80 00 00    	callq  *0x8057(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 a0 41 00 00 	mov    0x41a0(%rip),%rdx        # 405400 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 e8 18 00 00       	callq  402b50 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 2c 23 00 00       	callq  4035a0 <_set_invalid_parameter_handler>
  401274:	e8 77 12 00 00       	callq  4024f0 <_fpreset>
  401279:	48 8b 05 40 41 00 00 	mov    0x4140(%rip),%rax        # 4053c0 <.refptr.__image_base__>
  401280:	48 89 05 81 77 00 00 	mov    %rax,0x7781(%rip)        # 408a08 <__mingw_winmain_hInstance>
  401287:	e8 24 23 00 00       	callq  4035b0 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 09 77 00 00 	mov    %rax,0x7709(%rip)        # 408a00 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 2c 00 00    	mov    %eax,0x2ceb(%rip)        # 404000 <__data_start__>
  401315:	8b 1d 05 6d 00 00    	mov    0x6d05(%rip),%ebx        # 408020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 c2 21 00 00       	callq  4034f0 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 6c 00 00 	mov    0x6ce1(%rip),%rdi        # 408018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 77 21 00 00       	callq  4034d0 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 8b 21 00 00       	callq  4034f0 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 6b 21 00 00       	callq  4034e8 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 6c 00 00 	mov    %rbp,0x6c83(%rip)        # 408018 <argv>
  401395:	e8 16 0d 00 00       	callq  4020b0 <__main>
  40139a:	48 8b 05 2f 40 00 00 	mov    0x402f(%rip),%rax        # 4053d0 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 6c 00 00 	mov    0x6c68(%rip),%rdx        # 408010 <envp>
  4013a8:	8b 0d 72 6c 00 00    	mov    0x6c72(%rip),%ecx        # 408020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 6c 00 00 	mov    0x6c55(%rip),%r8        # 408010 <envp>
  4013bb:	48 8b 15 56 6c 00 00 	mov    0x6c56(%rip),%rdx        # 408018 <argv>
  4013c2:	e8 1a 0a 00 00       	callq  401de1 <main>
  4013c7:	8b 0d 3b 6c 00 00    	mov    0x6c3b(%rip),%ecx        # 408008 <managedapp>
  4013cd:	89 05 39 6c 00 00    	mov    %eax,0x6c39(%rip)        # 40800c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 6c 00 00    	mov    0x6c23(%rip),%edx        # 408004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 4e 21 00 00       	callq  403538 <_cexit>
  4013ea:	8b 05 1c 6c 00 00    	mov    0x6c1c(%rip),%eax        # 40800c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 09 40 00 00 	mov    0x4009(%rip),%rsi        # 405420 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 0f 21 00 00       	callq  403540 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 fd 3f 00 00 	mov    0x3ffd(%rip),%rdx        # 405440 <.refptr.__xc_z>
  401443:	48 8b 0d e6 3f 00 00 	mov    0x3fe6(%rip),%rcx        # 405430 <.refptr.__xc_a>
  40144a:	e8 e1 20 00 00       	callq  403530 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 e7 7d 00 00    	callq  *0x7de7(%rip)        # 409260 <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 d9 3f 00 00 	mov    0x3fd9(%rip),%rdx        # 405460 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d bc 3f 00 00 	mov    0x3fbc(%rip),%rcx        # 405450 <.refptr.__xi_a>
  401494:	e8 97 20 00 00       	callq  403530 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 6b 20 00 00       	callq  403510 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 05 40 00 00 	mov    0x4005(%rip),%rax        # 4054c0 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 2a 0c 00 00       	callq  4020f0 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 d5 3f 00 00 	mov    0x3fd5(%rip),%rax        # 4054c0 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 fa 0b 00 00       	callq  4020f0 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 0f 20 00 00       	callq  403528 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <_Z7getdataP5tablePii>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  401558:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40155c:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  401560:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
  401564:	78 11                	js     401577 <_Z7getdataP5tablePii+0x27>
  401566:	8b 45 20             	mov    0x20(%rbp),%eax
  401569:	48 98                	cltq   
  40156b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  40156f:	48 8b 12             	mov    (%rdx),%rdx
  401572:	48 39 d0             	cmp    %rdx,%rax
  401575:	72 07                	jb     40157e <_Z7getdataP5tablePii+0x2e>
  401577:	b8 00 00 00 00       	mov    $0x0,%eax
  40157c:	eb 16                	jmp    401594 <_Z7getdataP5tablePii+0x44>
  40157e:	8b 45 20             	mov    0x20(%rbp),%eax
  401581:	48 98                	cltq   
  401583:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40158a:	00 
  40158b:	48 8b 45 18          	mov    0x18(%rbp),%rax
  40158f:	48 01 d0             	add    %rdx,%rax
  401592:	8b 00                	mov    (%rax),%eax
  401594:	5d                   	pop    %rbp
  401595:	c3                   	retq   

0000000000401596 <_Z7getdataP5tablePdi>:
  401596:	55                   	push   %rbp
  401597:	48 89 e5             	mov    %rsp,%rbp
  40159a:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40159e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4015a2:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4015a6:	83 7d 20 00          	cmpl   $0x0,0x20(%rbp)
  4015aa:	78 11                	js     4015bd <_Z7getdataP5tablePdi+0x27>
  4015ac:	8b 45 20             	mov    0x20(%rbp),%eax
  4015af:	48 98                	cltq   
  4015b1:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  4015b5:	48 8b 12             	mov    (%rdx),%rdx
  4015b8:	48 39 d0             	cmp    %rdx,%rax
  4015bb:	72 06                	jb     4015c3 <_Z7getdataP5tablePdi+0x2d>
  4015bd:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4015c1:	eb 18                	jmp    4015db <_Z7getdataP5tablePdi+0x45>
  4015c3:	8b 45 20             	mov    0x20(%rbp),%eax
  4015c6:	48 98                	cltq   
  4015c8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4015cf:	00 
  4015d0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4015d4:	48 01 d0             	add    %rdx,%rax
  4015d7:	f2 0f 10 00          	movsd  (%rax),%xmm0
  4015db:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4015e0:	66 48 0f 6e c0       	movq   %rax,%xmm0
  4015e5:	5d                   	pop    %rbp
  4015e6:	c3                   	retq   

00000000004015e7 <_Z10calculate1i>:
  4015e7:	55                   	push   %rbp
  4015e8:	48 89 e5             	mov    %rsp,%rbp
  4015eb:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  4015f2:	89 4d 10             	mov    %ecx,0x10(%rbp)
  4015f5:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4015fc:	00 
  4015fd:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  401604:	00 
  401605:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  40160c:	00 
  40160d:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  401614:	00 
  401615:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401619:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  40161e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401622:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  401627:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40162b:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
  401630:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  401637:	00 
  401638:	48 8b 05 01 6a 00 00 	mov    0x6a01(%rip),%rax        # 408040 <Table>
  40163f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401643:	48 8b 05 fe 69 00 00 	mov    0x69fe(%rip),%rax        # 408048 <Table+0x8>
  40164a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40164e:	48 8b 05 fb 69 00 00 	mov    0x69fb(%rip),%rax        # 408050 <Table+0x10>
  401655:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  401659:	48 8b 05 00 6a 00 00 	mov    0x6a00(%rip),%rax        # 408060 <Table+0x20>
  401660:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  401664:	48 8b 05 fd 69 00 00 	mov    0x69fd(%rip),%rax        # 408068 <Table+0x28>
  40166b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  40166f:	48 8b 05 e2 69 00 00 	mov    0x69e2(%rip),%rax        # 408058 <Table+0x18>
  401676:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  40167a:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
  401681:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401684:	48 98                	cltq   
  401686:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  40168a:	48 83 ea 01          	sub    $0x1,%rdx
  40168e:	48 39 d0             	cmp    %rdx,%rax
  401691:	0f 83 3a 02 00 00    	jae    4018d1 <_Z10calculate1i+0x2ea>
  401697:	8b 45 cc             	mov    -0x34(%rbp),%eax
  40169a:	48 98                	cltq   
  40169c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4016a3:	00 
  4016a4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4016a8:	48 01 d0             	add    %rdx,%rax
  4016ab:	8b 00                	mov    (%rax),%eax
  4016ad:	89 45 84             	mov    %eax,-0x7c(%rbp)
  4016b0:	8b 45 84             	mov    -0x7c(%rbp),%eax
  4016b3:	3b 45 10             	cmp    0x10(%rbp),%eax
  4016b6:	0f 8f e2 00 00 00    	jg     40179e <_Z10calculate1i+0x1b7>
  4016bc:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4016bf:	48 98                	cltq   
  4016c1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4016c8:	00 
  4016c9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  4016cd:	48 01 d0             	add    %rdx,%rax
  4016d0:	8b 00                	mov    (%rax),%eax
  4016d2:	89 45 80             	mov    %eax,-0x80(%rbp)
  4016d5:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4016d8:	48 98                	cltq   
  4016da:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4016e1:	00 
  4016e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  4016e6:	48 01 d0             	add    %rdx,%rax
  4016e9:	f2 0f 10 00          	movsd  (%rax),%xmm0
  4016ed:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
  4016f4:	ff 
  4016f5:	f2 0f 2a 4d 80       	cvtsi2sdl -0x80(%rbp),%xmm1
  4016fa:	f2 0f 10 05 06 39 00 	movsd  0x3906(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  401701:	00 
  401702:	f2 0f 5c 85 78 ff ff 	subsd  -0x88(%rbp),%xmm0
  401709:	ff 
  40170a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40170e:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
  401715:	ff 
  401716:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401719:	48 98                	cltq   
  40171b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401722:	00 
  401723:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401727:	48 01 d0             	add    %rdx,%rax
  40172a:	8b 00                	mov    (%rax),%eax
  40172c:	48 98                	cltq   
  40172e:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  401732:	8b 45 80             	mov    -0x80(%rbp),%eax
  401735:	48 98                	cltq   
  401737:	48 01 45 f0          	add    %rax,-0x10(%rbp)
  40173b:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
  401740:	f2 0f 58 85 78 ff ff 	addsd  -0x88(%rbp),%xmm0
  401747:	ff 
  401748:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
  40174d:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  401752:	f2 0f 58 85 70 ff ff 	addsd  -0x90(%rbp),%xmm0
  401759:	ff 
  40175a:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  40175f:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401762:	48 98                	cltq   
  401764:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40176b:	00 
  40176c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  401770:	48 01 d0             	add    %rdx,%rax
  401773:	f2 0f 10 08          	movsd  (%rax),%xmm1
  401777:	f2 0f 10 05 89 38 00 	movsd  0x3889(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  40177e:	00 
  40177f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401783:	f2 0f 59 85 70 ff ff 	mulsd  -0x90(%rbp),%xmm0
  40178a:	ff 
  40178b:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
  401790:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401794:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  401799:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  40179e:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4017a1:	48 98                	cltq   
  4017a3:	48 83 c0 01          	add    $0x1,%rax
  4017a7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4017ae:	00 
  4017af:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4017b3:	48 01 d0             	add    %rdx,%rax
  4017b6:	8b 00                	mov    (%rax),%eax
  4017b8:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  4017be:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4017c4:	3b 45 10             	cmp    0x10(%rbp),%eax
  4017c7:	0f 8f fb 00 00 00    	jg     4018c8 <_Z10calculate1i+0x2e1>
  4017cd:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4017d0:	48 98                	cltq   
  4017d2:	48 83 c0 01          	add    $0x1,%rax
  4017d6:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4017dd:	00 
  4017de:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  4017e2:	48 01 d0             	add    %rdx,%rax
  4017e5:	8b 00                	mov    (%rax),%eax
  4017e7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4017ed:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4017f0:	48 98                	cltq   
  4017f2:	48 83 c0 01          	add    $0x1,%rax
  4017f6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4017fd:	00 
  4017fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401802:	48 01 d0             	add    %rdx,%rax
  401805:	f2 0f 10 00          	movsd  (%rax),%xmm0
  401809:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
  401810:	ff 
  401811:	f2 0f 2a 8d 68 ff ff 	cvtsi2sdl -0x98(%rbp),%xmm1
  401818:	ff 
  401819:	f2 0f 10 05 e7 37 00 	movsd  0x37e7(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  401820:	00 
  401821:	f2 0f 5c 85 60 ff ff 	subsd  -0xa0(%rbp),%xmm0
  401828:	ff 
  401829:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40182d:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
  401834:	ff 
  401835:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401838:	48 98                	cltq   
  40183a:	48 83 c0 01          	add    $0x1,%rax
  40183e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401845:	00 
  401846:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40184a:	48 01 d0             	add    %rdx,%rax
  40184d:	8b 00                	mov    (%rax),%eax
  40184f:	48 98                	cltq   
  401851:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  401855:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40185b:	48 98                	cltq   
  40185d:	48 01 45 f0          	add    %rax,-0x10(%rbp)
  401861:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
  401866:	f2 0f 58 85 60 ff ff 	addsd  -0xa0(%rbp),%xmm0
  40186d:	ff 
  40186e:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
  401873:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  401878:	f2 0f 58 85 58 ff ff 	addsd  -0xa8(%rbp),%xmm0
  40187f:	ff 
  401880:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  401885:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401888:	48 98                	cltq   
  40188a:	48 83 c0 01          	add    $0x1,%rax
  40188e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401895:	00 
  401896:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40189a:	48 01 d0             	add    %rdx,%rax
  40189d:	f2 0f 10 08          	movsd  (%rax),%xmm1
  4018a1:	f2 0f 10 05 5f 37 00 	movsd  0x375f(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  4018a8:	00 
  4018a9:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4018ad:	f2 0f 59 85 58 ff ff 	mulsd  -0xa8(%rbp),%xmm0
  4018b4:	ff 
  4018b5:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
  4018ba:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4018be:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  4018c3:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4018c8:	83 45 cc 02          	addl   $0x2,-0x34(%rbp)
  4018cc:	e9 b0 fd ff ff       	jmpq   401681 <_Z10calculate1i+0x9a>
  4018d1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4018d5:	83 e0 01             	and    $0x1,%eax
  4018d8:	48 85 c0             	test   %rax,%rax
  4018db:	0f 84 1d 01 00 00    	je     4019fe <_Z10calculate1i+0x417>
  4018e1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4018e5:	48 c1 e0 02          	shl    $0x2,%rax
  4018e9:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
  4018ed:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4018f1:	48 01 d0             	add    %rdx,%rax
  4018f4:	8b 00                	mov    (%rax),%eax
  4018f6:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  4018fc:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
  401902:	3b 45 10             	cmp    0x10(%rbp),%eax
  401905:	0f 8f f3 00 00 00    	jg     4019fe <_Z10calculate1i+0x417>
  40190b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40190f:	48 c1 e0 02          	shl    $0x2,%rax
  401913:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
  401917:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40191b:	48 01 d0             	add    %rdx,%rax
  40191e:	8b 00                	mov    (%rax),%eax
  401920:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
  401926:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40192a:	48 c1 e0 02          	shl    $0x2,%rax
  40192e:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
  401932:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401936:	48 01 d0             	add    %rdx,%rax
  401939:	8b 00                	mov    (%rax),%eax
  40193b:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  401941:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401945:	48 c1 e0 03          	shl    $0x3,%rax
  401949:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  40194d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401951:	48 01 d0             	add    %rdx,%rax
  401954:	f2 0f 10 00          	movsd  (%rax),%xmm0
  401958:	f2 0f 11 85 40 ff ff 	movsd  %xmm0,-0xc0(%rbp)
  40195f:	ff 
  401960:	f2 0f 2a 8d 4c ff ff 	cvtsi2sdl -0xb4(%rbp),%xmm1
  401967:	ff 
  401968:	f2 0f 10 05 98 36 00 	movsd  0x3698(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  40196f:	00 
  401970:	f2 0f 5c 85 40 ff ff 	subsd  -0xc0(%rbp),%xmm0
  401977:	ff 
  401978:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40197c:	f2 0f 11 85 38 ff ff 	movsd  %xmm0,-0xc8(%rbp)
  401983:	ff 
  401984:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  40198a:	48 98                	cltq   
  40198c:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  401990:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  401996:	48 98                	cltq   
  401998:	48 01 45 f0          	add    %rax,-0x10(%rbp)
  40199c:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
  4019a1:	f2 0f 58 85 40 ff ff 	addsd  -0xc0(%rbp),%xmm0
  4019a8:	ff 
  4019a9:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
  4019ae:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  4019b3:	f2 0f 58 85 38 ff ff 	addsd  -0xc8(%rbp),%xmm0
  4019ba:	ff 
  4019bb:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  4019c0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4019c4:	48 c1 e0 03          	shl    $0x3,%rax
  4019c8:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
  4019cc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4019d0:	48 01 d0             	add    %rdx,%rax
  4019d3:	f2 0f 10 08          	movsd  (%rax),%xmm1
  4019d7:	f2 0f 10 05 29 36 00 	movsd  0x3629(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  4019de:	00 
  4019df:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4019e3:	f2 0f 59 85 38 ff ff 	mulsd  -0xc8(%rbp),%xmm0
  4019ea:	ff 
  4019eb:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
  4019f0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4019f4:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  4019f9:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4019fe:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401a02:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401a06:	48 01 d0             	add    %rdx,%rax
  401a09:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401a0e:	f2 0f 11 05 5a 66 00 	movsd  %xmm0,0x665a(%rip)        # 408070 <SumQuantity>
  401a15:	00 
  401a16:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401a1a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  401a1e:	48 01 d0             	add    %rdx,%rax
  401a21:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401a26:	f2 0f 11 05 4a 66 00 	movsd  %xmm0,0x664a(%rip)        # 408078 <SumBasePrice>
  401a2d:	00 
  401a2e:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  401a33:	f2 0f 11 05 45 66 00 	movsd  %xmm0,0x6645(%rip)        # 408080 <SumDiscPrice>
  401a3a:	00 
  401a3b:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  401a40:	f2 0f 11 05 40 66 00 	movsd  %xmm0,0x6640(%rip)        # 408088 <SumCharge>
  401a47:	00 
  401a48:	f2 0f 10 0d 20 66 00 	movsd  0x6620(%rip),%xmm1        # 408070 <SumQuantity>
  401a4f:	00 
  401a50:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401a54:	48 85 c0             	test   %rax,%rax
  401a57:	78 07                	js     401a60 <_Z10calculate1i+0x479>
  401a59:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401a5e:	eb 15                	jmp    401a75 <_Z10calculate1i+0x48e>
  401a60:	48 89 c2             	mov    %rax,%rdx
  401a63:	48 d1 ea             	shr    %rdx
  401a66:	83 e0 01             	and    $0x1,%eax
  401a69:	48 09 c2             	or     %rax,%rdx
  401a6c:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  401a71:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  401a75:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  401a79:	66 0f 28 c1          	movapd %xmm1,%xmm0
  401a7d:	f2 0f 11 05 0b 66 00 	movsd  %xmm0,0x660b(%rip)        # 408090 <AvgQuantity>
  401a84:	00 
  401a85:	f2 0f 10 0d eb 65 00 	movsd  0x65eb(%rip),%xmm1        # 408078 <SumBasePrice>
  401a8c:	00 
  401a8d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401a91:	48 85 c0             	test   %rax,%rax
  401a94:	78 07                	js     401a9d <_Z10calculate1i+0x4b6>
  401a96:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401a9b:	eb 15                	jmp    401ab2 <_Z10calculate1i+0x4cb>
  401a9d:	48 89 c2             	mov    %rax,%rdx
  401aa0:	48 d1 ea             	shr    %rdx
  401aa3:	83 e0 01             	and    $0x1,%eax
  401aa6:	48 09 c2             	or     %rax,%rdx
  401aa9:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  401aae:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  401ab2:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  401ab6:	66 0f 28 c1          	movapd %xmm1,%xmm0
  401aba:	f2 0f 11 05 d6 65 00 	movsd  %xmm0,0x65d6(%rip)        # 408098 <AvgPrice>
  401ac1:	00 
  401ac2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401ac6:	48 85 c0             	test   %rax,%rax
  401ac9:	78 07                	js     401ad2 <_Z10calculate1i+0x4eb>
  401acb:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401ad0:	eb 15                	jmp    401ae7 <_Z10calculate1i+0x500>
  401ad2:	48 89 c2             	mov    %rax,%rdx
  401ad5:	48 d1 ea             	shr    %rdx
  401ad8:	83 e0 01             	and    $0x1,%eax
  401adb:	48 09 c2             	or     %rax,%rdx
  401ade:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  401ae3:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  401ae7:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
  401aec:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  401af0:	66 0f 28 c1          	movapd %xmm1,%xmm0
  401af4:	f2 0f 11 05 a4 65 00 	movsd  %xmm0,0x65a4(%rip)        # 4080a0 <AvgDiscount>
  401afb:	00 
  401afc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401b00:	48 89 05 a1 65 00 00 	mov    %rax,0x65a1(%rip)        # 4080a8 <total>
  401b07:	90                   	nop
  401b08:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  401b0f:	5d                   	pop    %rbp
  401b10:	c3                   	retq   

0000000000401b11 <_Z10calculate2i>:
  401b11:	55                   	push   %rbp
  401b12:	48 89 e5             	mov    %rsp,%rbp
  401b15:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401b18:	90                   	nop
  401b19:	5d                   	pop    %rbp
  401b1a:	c3                   	retq   

0000000000401b1b <__tcf_0>:
  401b1b:	55                   	push   %rbp
  401b1c:	48 89 e5             	mov    %rsp,%rbp
  401b1f:	48 83 ec 20          	sub    $0x20,%rsp
  401b23:	48 8d 0d 86 65 00 00 	lea    0x6586(%rip),%rcx        # 4080b0 <_ZStL8__ioinit>
  401b2a:	e8 a1 04 00 00       	callq  401fd0 <_ZNSt8ios_base4InitD1Ev>
  401b2f:	90                   	nop
  401b30:	48 83 c4 20          	add    $0x20,%rsp
  401b34:	5d                   	pop    %rbp
  401b35:	c3                   	retq   

0000000000401b36 <_Z41__static_initialization_and_destruction_0ii>:
  401b36:	55                   	push   %rbp
  401b37:	48 89 e5             	mov    %rsp,%rbp
  401b3a:	48 83 ec 20          	sub    $0x20,%rsp
  401b3e:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401b41:	89 55 18             	mov    %edx,0x18(%rbp)
  401b44:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401b48:	75 21                	jne    401b6b <_Z41__static_initialization_and_destruction_0ii+0x35>
  401b4a:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  401b51:	75 18                	jne    401b6b <_Z41__static_initialization_and_destruction_0ii+0x35>
  401b53:	48 8d 0d 56 65 00 00 	lea    0x6556(%rip),%rcx        # 4080b0 <_ZStL8__ioinit>
  401b5a:	e8 79 04 00 00       	callq  401fd8 <_ZNSt8ios_base4InitC1Ev>
  401b5f:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 401b1b <__tcf_0>
  401b66:	e8 a5 f9 ff ff       	callq  401510 <atexit>
  401b6b:	90                   	nop
  401b6c:	48 83 c4 20          	add    $0x20,%rsp
  401b70:	5d                   	pop    %rbp
  401b71:	c3                   	retq   

0000000000401b72 <_GLOBAL__sub_I_Table>:
  401b72:	55                   	push   %rbp
  401b73:	48 89 e5             	mov    %rsp,%rbp
  401b76:	48 83 ec 20          	sub    $0x20,%rsp
  401b7a:	ba ff ff 00 00       	mov    $0xffff,%edx
  401b7f:	b9 01 00 00 00       	mov    $0x1,%ecx
  401b84:	e8 ad ff ff ff       	callq  401b36 <_Z41__static_initialization_and_destruction_0ii>
  401b89:	90                   	nop
  401b8a:	48 83 c4 20          	add    $0x20,%rsp
  401b8e:	5d                   	pop    %rbp
  401b8f:	c3                   	retq   

0000000000401b90 <_Z4makev>:
  401b90:	55                   	push   %rbp
  401b91:	48 89 e5             	mov    %rsp,%rbp
  401b94:	48 83 ec 30          	sub    $0x30,%rsp
  401b98:	48 c7 45 f0 80 96 98 	movq   $0x989680,-0x10(%rbp)
  401b9f:	00 
  401ba0:	48 8b 05 89 37 00 00 	mov    0x3789(%rip),%rax        # 405330 <.refptr.Table>
  401ba7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401bab:	48 89 10             	mov    %rdx,(%rax)
  401bae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401bb2:	ba 04 00 00 00       	mov    $0x4,%edx
  401bb7:	48 89 c1             	mov    %rax,%rcx
  401bba:	e8 59 19 00 00       	callq  403518 <calloc>
  401bbf:	48 89 c2             	mov    %rax,%rdx
  401bc2:	48 8b 05 67 37 00 00 	mov    0x3767(%rip),%rax        # 405330 <.refptr.Table>
  401bc9:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401bcd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401bd1:	ba 04 00 00 00       	mov    $0x4,%edx
  401bd6:	48 89 c1             	mov    %rax,%rcx
  401bd9:	e8 3a 19 00 00       	callq  403518 <calloc>
  401bde:	48 89 c2             	mov    %rax,%rdx
  401be1:	48 8b 05 48 37 00 00 	mov    0x3748(%rip),%rax        # 405330 <.refptr.Table>
  401be8:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401bec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401bf0:	ba 08 00 00 00       	mov    $0x8,%edx
  401bf5:	48 89 c1             	mov    %rax,%rcx
  401bf8:	e8 1b 19 00 00       	callq  403518 <calloc>
  401bfd:	48 89 c2             	mov    %rax,%rdx
  401c00:	48 8b 05 29 37 00 00 	mov    0x3729(%rip),%rax        # 405330 <.refptr.Table>
  401c07:	48 89 50 20          	mov    %rdx,0x20(%rax)
  401c0b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c0f:	ba 08 00 00 00       	mov    $0x8,%edx
  401c14:	48 89 c1             	mov    %rax,%rcx
  401c17:	e8 fc 18 00 00       	callq  403518 <calloc>
  401c1c:	48 89 c2             	mov    %rax,%rdx
  401c1f:	48 8b 05 0a 37 00 00 	mov    0x370a(%rip),%rax        # 405330 <.refptr.Table>
  401c26:	48 89 50 28          	mov    %rdx,0x28(%rax)
  401c2a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c2e:	ba 04 00 00 00       	mov    $0x4,%edx
  401c33:	48 89 c1             	mov    %rax,%rcx
  401c36:	e8 dd 18 00 00       	callq  403518 <calloc>
  401c3b:	48 89 c2             	mov    %rax,%rdx
  401c3e:	48 8b 05 eb 36 00 00 	mov    0x36eb(%rip),%rax        # 405330 <.refptr.Table>
  401c45:	48 89 50 18          	mov    %rdx,0x18(%rax)
  401c49:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401c50:	00 
  401c51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c55:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  401c59:	0f 83 7b 01 00 00    	jae    401dda <_Z4makev+0x24a>
  401c5f:	e8 7c 18 00 00       	callq  4034e0 <rand>
  401c64:	89 c1                	mov    %eax,%ecx
  401c66:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401c6b:	89 c8                	mov    %ecx,%eax
  401c6d:	f7 ea                	imul   %edx
  401c6f:	c1 fa 02             	sar    $0x2,%edx
  401c72:	89 c8                	mov    %ecx,%eax
  401c74:	c1 f8 1f             	sar    $0x1f,%eax
  401c77:	29 c2                	sub    %eax,%edx
  401c79:	89 d0                	mov    %edx,%eax
  401c7b:	c1 e0 02             	shl    $0x2,%eax
  401c7e:	01 d0                	add    %edx,%eax
  401c80:	01 c0                	add    %eax,%eax
  401c82:	29 c1                	sub    %eax,%ecx
  401c84:	89 ca                	mov    %ecx,%edx
  401c86:	48 8b 05 a3 36 00 00 	mov    0x36a3(%rip),%rax        # 405330 <.refptr.Table>
  401c8d:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401c91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c95:	48 c1 e0 02          	shl    $0x2,%rax
  401c99:	48 01 c8             	add    %rcx,%rax
  401c9c:	83 c2 0a             	add    $0xa,%edx
  401c9f:	89 10                	mov    %edx,(%rax)
  401ca1:	e8 3a 18 00 00       	callq  4034e0 <rand>
  401ca6:	89 c1                	mov    %eax,%ecx
  401ca8:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401cad:	89 c8                	mov    %ecx,%eax
  401caf:	f7 ea                	imul   %edx
  401cb1:	c1 fa 02             	sar    $0x2,%edx
  401cb4:	89 c8                	mov    %ecx,%eax
  401cb6:	c1 f8 1f             	sar    $0x1f,%eax
  401cb9:	29 c2                	sub    %eax,%edx
  401cbb:	89 d0                	mov    %edx,%eax
  401cbd:	c1 e0 02             	shl    $0x2,%eax
  401cc0:	01 d0                	add    %edx,%eax
  401cc2:	01 c0                	add    %eax,%eax
  401cc4:	29 c1                	sub    %eax,%ecx
  401cc6:	89 ca                	mov    %ecx,%edx
  401cc8:	48 8b 05 61 36 00 00 	mov    0x3661(%rip),%rax        # 405330 <.refptr.Table>
  401ccf:	48 8b 48 10          	mov    0x10(%rax),%rcx
  401cd3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401cd7:	48 c1 e0 02          	shl    $0x2,%rax
  401cdb:	48 01 c8             	add    %rcx,%rax
  401cde:	83 c2 14             	add    $0x14,%edx
  401ce1:	89 10                	mov    %edx,(%rax)
  401ce3:	e8 f8 17 00 00       	callq  4034e0 <rand>
  401ce8:	89 c1                	mov    %eax,%ecx
  401cea:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401cef:	89 c8                	mov    %ecx,%eax
  401cf1:	f7 ea                	imul   %edx
  401cf3:	c1 fa 04             	sar    $0x4,%edx
  401cf6:	89 c8                	mov    %ecx,%eax
  401cf8:	c1 f8 1f             	sar    $0x1f,%eax
  401cfb:	29 c2                	sub    %eax,%edx
  401cfd:	89 d0                	mov    %edx,%eax
  401cff:	c1 e0 02             	shl    $0x2,%eax
  401d02:	01 d0                	add    %edx,%eax
  401d04:	c1 e0 03             	shl    $0x3,%eax
  401d07:	29 c1                	sub    %eax,%ecx
  401d09:	89 ca                	mov    %ecx,%edx
  401d0b:	8d 42 0a             	lea    0xa(%rdx),%eax
  401d0e:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  401d12:	48 8b 05 17 36 00 00 	mov    0x3617(%rip),%rax        # 405330 <.refptr.Table>
  401d19:	48 8b 50 20          	mov    0x20(%rax),%rdx
  401d1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d21:	48 c1 e0 03          	shl    $0x3,%rax
  401d25:	48 01 d0             	add    %rdx,%rax
  401d28:	f2 0f 10 0d 08 33 00 	movsd  0x3308(%rip),%xmm1        # 405038 <_ZStL19piecewise_construct+0x28>
  401d2f:	00 
  401d30:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401d34:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  401d38:	e8 a3 17 00 00       	callq  4034e0 <rand>
  401d3d:	89 c1                	mov    %eax,%ecx
  401d3f:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401d44:	89 c8                	mov    %ecx,%eax
  401d46:	f7 ea                	imul   %edx
  401d48:	c1 fa 02             	sar    $0x2,%edx
  401d4b:	89 c8                	mov    %ecx,%eax
  401d4d:	c1 f8 1f             	sar    $0x1f,%eax
  401d50:	29 c2                	sub    %eax,%edx
  401d52:	89 d0                	mov    %edx,%eax
  401d54:	c1 e0 02             	shl    $0x2,%eax
  401d57:	01 d0                	add    %edx,%eax
  401d59:	01 c0                	add    %eax,%eax
  401d5b:	29 c1                	sub    %eax,%ecx
  401d5d:	89 ca                	mov    %ecx,%edx
  401d5f:	8d 42 01             	lea    0x1(%rdx),%eax
  401d62:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  401d66:	48 8b 05 c3 35 00 00 	mov    0x35c3(%rip),%rax        # 405330 <.refptr.Table>
  401d6d:	48 8b 50 28          	mov    0x28(%rax),%rdx
  401d71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d75:	48 c1 e0 03          	shl    $0x3,%rax
  401d79:	48 01 d0             	add    %rdx,%rax
  401d7c:	f2 0f 10 0d b4 32 00 	movsd  0x32b4(%rip),%xmm1        # 405038 <_ZStL19piecewise_construct+0x28>
  401d83:	00 
  401d84:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401d88:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  401d8c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401d90:	48 89 c8             	mov    %rcx,%rax
  401d93:	48 c1 e8 02          	shr    $0x2,%rax
  401d97:	48 ba c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rdx
  401d9e:	c2 f5 28 
  401da1:	48 f7 e2             	mul    %rdx
  401da4:	48 89 d0             	mov    %rdx,%rax
  401da7:	48 c1 e8 02          	shr    $0x2,%rax
  401dab:	48 6b c0 64          	imul   $0x64,%rax,%rax
  401daf:	48 29 c1             	sub    %rax,%rcx
  401db2:	48 89 c8             	mov    %rcx,%rax
  401db5:	8d 50 01             	lea    0x1(%rax),%edx
  401db8:	48 8b 05 71 35 00 00 	mov    0x3571(%rip),%rax        # 405330 <.refptr.Table>
  401dbf:	48 8b 48 18          	mov    0x18(%rax),%rcx
  401dc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dc7:	48 c1 e0 02          	shl    $0x2,%rax
  401dcb:	48 01 c8             	add    %rcx,%rax
  401dce:	89 10                	mov    %edx,(%rax)
  401dd0:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  401dd5:	e9 77 fe ff ff       	jmpq   401c51 <_Z4makev+0xc1>
  401dda:	90                   	nop
  401ddb:	48 83 c4 30          	add    $0x30,%rsp
  401ddf:	5d                   	pop    %rbp
  401de0:	c3                   	retq   

0000000000401de1 <main>:
  401de1:	55                   	push   %rbp
  401de2:	53                   	push   %rbx
  401de3:	48 83 ec 58          	sub    $0x58,%rsp
  401de7:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401dee:	00 
  401def:	e8 bc 02 00 00       	callq  4020b0 <__main>
  401df4:	e8 97 fd ff ff       	callq  401b90 <_Z4makev>
  401df9:	e8 e2 01 00 00       	callq  401fe0 <_ZNSt6chrono3_V212system_clock3nowEv>
  401dfe:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401e02:	b9 32 00 00 00       	mov    $0x32,%ecx
  401e07:	e8 db f7 ff ff       	callq  4015e7 <_Z10calculate1i>
  401e0c:	e8 cf 01 00 00       	callq  401fe0 <_ZNSt6chrono3_V212system_clock3nowEv>
  401e11:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401e15:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
  401e19:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401e1d:	48 89 c1             	mov    %rax,%rcx
  401e20:	e8 9b 19 00 00       	callq  4037c0 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
  401e25:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401e29:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401e2d:	48 89 c1             	mov    %rax,%rcx
  401e30:	e8 cb 18 00 00       	callq  403700 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
  401e35:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401e39:	48 8d 15 d1 31 00 00 	lea    0x31d1(%rip),%rdx        # 405011 <_ZStL19piecewise_construct+0x1>
  401e40:	48 8b 0d 19 35 00 00 	mov    0x3519(%rip),%rcx        # 405360 <__fu0__ZSt4cout>
  401e47:	e8 74 01 00 00       	callq  401fc0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401e4c:	48 89 c3             	mov    %rax,%rbx
  401e4f:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  401e53:	48 89 c1             	mov    %rax,%rcx
  401e56:	e8 85 18 00 00       	callq  4036e0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>
  401e5b:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401e60:	f2 0f 10 0d d8 31 00 	movsd  0x31d8(%rip),%xmm1        # 405040 <_ZStL19piecewise_construct+0x30>
  401e67:	00 
  401e68:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401e6c:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401e70:	48 89 d9             	mov    %rbx,%rcx
  401e73:	e8 70 01 00 00       	callq  401fe8 <_ZNSolsEd>
  401e78:	48 8d 15 a0 31 00 00 	lea    0x31a0(%rip),%rdx        # 40501f <_ZStL19piecewise_construct+0xf>
  401e7f:	48 89 c1             	mov    %rax,%rcx
  401e82:	e8 39 01 00 00       	callq  401fc0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401e87:	48 8b 15 e2 34 00 00 	mov    0x34e2(%rip),%rdx        # 405370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401e8e:	48 89 c1             	mov    %rax,%rcx
  401e91:	e8 5a 01 00 00       	callq  401ff0 <_ZNSolsEPFRSoS_E>
  401e96:	e8 45 01 00 00       	callq  401fe0 <_ZNSt6chrono3_V212system_clock3nowEv>
  401e9b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401e9f:	b9 32 00 00 00       	mov    $0x32,%ecx
  401ea4:	e8 68 fc ff ff       	callq  401b11 <_Z10calculate2i>
  401ea9:	e8 32 01 00 00       	callq  401fe0 <_ZNSt6chrono3_V212system_clock3nowEv>
  401eae:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401eb2:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
  401eb6:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401eba:	48 89 c1             	mov    %rax,%rcx
  401ebd:	e8 fe 18 00 00       	callq  4037c0 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
  401ec2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401ec6:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  401eca:	48 89 c1             	mov    %rax,%rcx
  401ecd:	e8 2e 18 00 00       	callq  403700 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
  401ed2:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ed6:	48 8d 15 4b 31 00 00 	lea    0x314b(%rip),%rdx        # 405028 <_ZStL19piecewise_construct+0x18>
  401edd:	48 8b 0d 7c 34 00 00 	mov    0x347c(%rip),%rcx        # 405360 <__fu0__ZSt4cout>
  401ee4:	e8 d7 00 00 00       	callq  401fc0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401ee9:	48 89 c3             	mov    %rax,%rbx
  401eec:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  401ef0:	48 89 c1             	mov    %rax,%rcx
  401ef3:	e8 e8 17 00 00       	callq  4036e0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>
  401ef8:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  401efd:	f2 0f 10 0d 3b 31 00 	movsd  0x313b(%rip),%xmm1        # 405040 <_ZStL19piecewise_construct+0x30>
  401f04:	00 
  401f05:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  401f09:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401f0d:	48 89 d9             	mov    %rbx,%rcx
  401f10:	e8 d3 00 00 00       	callq  401fe8 <_ZNSolsEd>
  401f15:	48 8d 15 03 31 00 00 	lea    0x3103(%rip),%rdx        # 40501f <_ZStL19piecewise_construct+0xf>
  401f1c:	48 89 c1             	mov    %rax,%rcx
  401f1f:	e8 9c 00 00 00       	callq  401fc0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401f24:	48 8b 15 45 34 00 00 	mov    0x3445(%rip),%rdx        # 405370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401f2b:	48 89 c1             	mov    %rax,%rcx
  401f2e:	e8 bd 00 00 00       	callq  401ff0 <_ZNSolsEPFRSoS_E>
  401f33:	b8 00 00 00 00       	mov    $0x0,%eax
  401f38:	48 83 c4 58          	add    $0x58,%rsp
  401f3c:	5b                   	pop    %rbx
  401f3d:	5d                   	pop    %rbp
  401f3e:	c3                   	retq   

0000000000401f3f <__tcf_0>:
  401f3f:	55                   	push   %rbp
  401f40:	48 89 e5             	mov    %rsp,%rbp
  401f43:	48 83 ec 20          	sub    $0x20,%rsp
  401f47:	48 8d 0d 72 61 00 00 	lea    0x6172(%rip),%rcx        # 4080c0 <_ZStL8__ioinit>
  401f4e:	e8 7d 00 00 00       	callq  401fd0 <_ZNSt8ios_base4InitD1Ev>
  401f53:	90                   	nop
  401f54:	48 83 c4 20          	add    $0x20,%rsp
  401f58:	5d                   	pop    %rbp
  401f59:	c3                   	retq   

0000000000401f5a <_Z41__static_initialization_and_destruction_0ii>:
  401f5a:	55                   	push   %rbp
  401f5b:	48 89 e5             	mov    %rsp,%rbp
  401f5e:	48 83 ec 20          	sub    $0x20,%rsp
  401f62:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401f65:	89 55 18             	mov    %edx,0x18(%rbp)
  401f68:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401f6c:	75 21                	jne    401f8f <_Z41__static_initialization_and_destruction_0ii+0x35>
  401f6e:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  401f75:	75 18                	jne    401f8f <_Z41__static_initialization_and_destruction_0ii+0x35>
  401f77:	48 8d 0d 42 61 00 00 	lea    0x6142(%rip),%rcx        # 4080c0 <_ZStL8__ioinit>
  401f7e:	e8 55 00 00 00       	callq  401fd8 <_ZNSt8ios_base4InitC1Ev>
  401f83:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 401f3f <__tcf_0>
  401f8a:	e8 81 f5 ff ff       	callq  401510 <atexit>
  401f8f:	90                   	nop
  401f90:	48 83 c4 20          	add    $0x20,%rsp
  401f94:	5d                   	pop    %rbp
  401f95:	c3                   	retq   

0000000000401f96 <_GLOBAL__sub_I__Z4makev>:
  401f96:	55                   	push   %rbp
  401f97:	48 89 e5             	mov    %rsp,%rbp
  401f9a:	48 83 ec 20          	sub    $0x20,%rsp
  401f9e:	ba ff ff 00 00       	mov    $0xffff,%edx
  401fa3:	b9 01 00 00 00       	mov    $0x1,%ecx
  401fa8:	e8 ad ff ff ff       	callq  401f5a <_Z41__static_initialization_and_destruction_0ii>
  401fad:	90                   	nop
  401fae:	48 83 c4 20          	add    $0x20,%rsp
  401fb2:	5d                   	pop    %rbp
  401fb3:	c3                   	retq   
  401fb4:	90                   	nop
  401fb5:	90                   	nop
  401fb6:	90                   	nop
  401fb7:	90                   	nop
  401fb8:	90                   	nop
  401fb9:	90                   	nop
  401fba:	90                   	nop
  401fbb:	90                   	nop
  401fbc:	90                   	nop
  401fbd:	90                   	nop
  401fbe:	90                   	nop
  401fbf:	90                   	nop

0000000000401fc0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401fc0:	ff 25 3a 74 00 00    	jmpq   *0x743a(%rip)        # 409400 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401fc6:	90                   	nop
  401fc7:	90                   	nop

0000000000401fc8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401fc8:	ff 25 2a 74 00 00    	jmpq   *0x742a(%rip)        # 4093f8 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401fce:	90                   	nop
  401fcf:	90                   	nop

0000000000401fd0 <_ZNSt8ios_base4InitD1Ev>:
  401fd0:	ff 25 12 74 00 00    	jmpq   *0x7412(%rip)        # 4093e8 <__imp__ZNSt8ios_base4InitD1Ev>
  401fd6:	90                   	nop
  401fd7:	90                   	nop

0000000000401fd8 <_ZNSt8ios_base4InitC1Ev>:
  401fd8:	ff 25 02 74 00 00    	jmpq   *0x7402(%rip)        # 4093e0 <__imp__ZNSt8ios_base4InitC1Ev>
  401fde:	90                   	nop
  401fdf:	90                   	nop

0000000000401fe0 <_ZNSt6chrono3_V212system_clock3nowEv>:
  401fe0:	ff 25 f2 73 00 00    	jmpq   *0x73f2(%rip)        # 4093d8 <__imp__ZNSt6chrono3_V212system_clock3nowEv>
  401fe6:	90                   	nop
  401fe7:	90                   	nop

0000000000401fe8 <_ZNSolsEd>:
  401fe8:	ff 25 e2 73 00 00    	jmpq   *0x73e2(%rip)        # 4093d0 <__imp__ZNSolsEd>
  401fee:	90                   	nop
  401fef:	90                   	nop

0000000000401ff0 <_ZNSolsEPFRSoS_E>:
  401ff0:	ff 25 d2 73 00 00    	jmpq   *0x73d2(%rip)        # 4093c8 <__imp__ZNSolsEPFRSoS_E>
  401ff6:	90                   	nop
  401ff7:	90                   	nop
  401ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401fff:	00 

0000000000402000 <__do_global_dtors>:
  402000:	48 83 ec 28          	sub    $0x28,%rsp
  402004:	48 8b 05 05 20 00 00 	mov    0x2005(%rip),%rax        # 404010 <p.93846>
  40200b:	48 8b 00             	mov    (%rax),%rax
  40200e:	48 85 c0             	test   %rax,%rax
  402011:	74 1d                	je     402030 <__do_global_dtors+0x30>
  402013:	ff d0                	callq  *%rax
  402015:	48 8b 05 f4 1f 00 00 	mov    0x1ff4(%rip),%rax        # 404010 <p.93846>
  40201c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402020:	48 8b 40 08          	mov    0x8(%rax),%rax
  402024:	48 89 15 e5 1f 00 00 	mov    %rdx,0x1fe5(%rip)        # 404010 <p.93846>
  40202b:	48 85 c0             	test   %rax,%rax
  40202e:	75 e3                	jne    402013 <__do_global_dtors+0x13>
  402030:	48 83 c4 28          	add    $0x28,%rsp
  402034:	c3                   	retq   
  402035:	90                   	nop
  402036:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40203d:	00 00 00 

0000000000402040 <__do_global_ctors>:
  402040:	56                   	push   %rsi
  402041:	53                   	push   %rbx
  402042:	48 83 ec 28          	sub    $0x28,%rsp
  402046:	48 8b 0d 33 33 00 00 	mov    0x3333(%rip),%rcx        # 405380 <.refptr.__CTOR_LIST__>
  40204d:	48 8b 11             	mov    (%rcx),%rdx
  402050:	83 fa ff             	cmp    $0xffffffff,%edx
  402053:	89 d0                	mov    %edx,%eax
  402055:	74 39                	je     402090 <__do_global_ctors+0x50>
  402057:	85 c0                	test   %eax,%eax
  402059:	74 20                	je     40207b <__do_global_ctors+0x3b>
  40205b:	89 c2                	mov    %eax,%edx
  40205d:	83 e8 01             	sub    $0x1,%eax
  402060:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  402064:	48 29 c2             	sub    %rax,%rdx
  402067:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  40206c:	0f 1f 40 00          	nopl   0x0(%rax)
  402070:	ff 13                	callq  *(%rbx)
  402072:	48 83 eb 08          	sub    $0x8,%rbx
  402076:	48 39 f3             	cmp    %rsi,%rbx
  402079:	75 f5                	jne    402070 <__do_global_ctors+0x30>
  40207b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 402000 <__do_global_dtors>
  402082:	48 83 c4 28          	add    $0x28,%rsp
  402086:	5b                   	pop    %rbx
  402087:	5e                   	pop    %rsi
  402088:	e9 83 f4 ff ff       	jmpq   401510 <atexit>
  40208d:	0f 1f 00             	nopl   (%rax)
  402090:	31 c0                	xor    %eax,%eax
  402092:	eb 02                	jmp    402096 <__do_global_ctors+0x56>
  402094:	89 d0                	mov    %edx,%eax
  402096:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40209a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40209f:	4c 89 c2             	mov    %r8,%rdx
  4020a2:	75 f0                	jne    402094 <__do_global_ctors+0x54>
  4020a4:	eb b1                	jmp    402057 <__do_global_ctors+0x17>
  4020a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ad:	00 00 00 

00000000004020b0 <__main>:
  4020b0:	8b 05 1a 60 00 00    	mov    0x601a(%rip),%eax        # 4080d0 <initialized>
  4020b6:	85 c0                	test   %eax,%eax
  4020b8:	74 06                	je     4020c0 <__main+0x10>
  4020ba:	c3                   	retq   
  4020bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4020c0:	c7 05 06 60 00 00 01 	movl   $0x1,0x6006(%rip)        # 4080d0 <initialized>
  4020c7:	00 00 00 
  4020ca:	e9 71 ff ff ff       	jmpq   402040 <__do_global_ctors>
  4020cf:	90                   	nop

00000000004020d0 <my_lconv_init>:
  4020d0:	48 ff 25 39 72 00 00 	rex.W jmpq *0x7239(%rip)        # 409310 <__imp___lconv_init>
  4020d7:	90                   	nop
  4020d8:	90                   	nop
  4020d9:	90                   	nop
  4020da:	90                   	nop
  4020db:	90                   	nop
  4020dc:	90                   	nop
  4020dd:	90                   	nop
  4020de:	90                   	nop
  4020df:	90                   	nop

00000000004020e0 <_setargv>:
  4020e0:	31 c0                	xor    %eax,%eax
  4020e2:	c3                   	retq   
  4020e3:	90                   	nop
  4020e4:	90                   	nop
  4020e5:	90                   	nop
  4020e6:	90                   	nop
  4020e7:	90                   	nop
  4020e8:	90                   	nop
  4020e9:	90                   	nop
  4020ea:	90                   	nop
  4020eb:	90                   	nop
  4020ec:	90                   	nop
  4020ed:	90                   	nop
  4020ee:	90                   	nop
  4020ef:	90                   	nop

00000000004020f0 <__security_init_cookie>:
  4020f0:	41 54                	push   %r12
  4020f2:	55                   	push   %rbp
  4020f3:	57                   	push   %rdi
  4020f4:	56                   	push   %rsi
  4020f5:	53                   	push   %rbx
  4020f6:	48 83 ec 30          	sub    $0x30,%rsp
  4020fa:	48 8b 1d af 1f 00 00 	mov    0x1faf(%rip),%rbx        # 4040b0 <__security_cookie>
  402101:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  402108:	2b 00 00 
  40210b:	48 39 c3             	cmp    %rax,%rbx
  40210e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402115:	00 00 
  402117:	74 17                	je     402130 <__security_init_cookie+0x40>
  402119:	48 f7 d3             	not    %rbx
  40211c:	48 89 1d 9d 1f 00 00 	mov    %rbx,0x1f9d(%rip)        # 4040c0 <__security_cookie_complement>
  402123:	48 83 c4 30          	add    $0x30,%rsp
  402127:	5b                   	pop    %rbx
  402128:	5e                   	pop    %rsi
  402129:	5f                   	pop    %rdi
  40212a:	5d                   	pop    %rbp
  40212b:	41 5c                	pop    %r12
  40212d:	c3                   	retq   
  40212e:	66 90                	xchg   %ax,%ax
  402130:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402135:	ff 15 2d 71 00 00    	callq  *0x712d(%rip)        # 409268 <__imp_GetSystemTimeAsFileTime>
  40213b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  402140:	ff 15 02 71 00 00    	callq  *0x7102(%rip)        # 409248 <__imp_GetCurrentProcessId>
  402146:	41 89 c4             	mov    %eax,%r12d
  402149:	ff 15 01 71 00 00    	callq  *0x7101(%rip)        # 409250 <__imp_GetCurrentThreadId>
  40214f:	89 c5                	mov    %eax,%ebp
  402151:	ff 15 19 71 00 00    	callq  *0x7119(%rip)        # 409270 <__imp_GetTickCount>
  402157:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  40215c:	89 c7                	mov    %eax,%edi
  40215e:	ff 15 24 71 00 00    	callq  *0x7124(%rip)        # 409288 <__imp_QueryPerformanceCounter>
  402164:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  402169:	44 89 e0             	mov    %r12d,%eax
  40216c:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  402173:	ff 00 00 
  402176:	48 31 f0             	xor    %rsi,%rax
  402179:	89 ee                	mov    %ebp,%esi
  40217b:	48 31 c6             	xor    %rax,%rsi
  40217e:	89 f8                	mov    %edi,%eax
  402180:	48 31 f0             	xor    %rsi,%rax
  402183:	48 21 d0             	and    %rdx,%rax
  402186:	48 39 d8             	cmp    %rbx,%rax
  402189:	74 25                	je     4021b0 <__security_init_cookie+0xc0>
  40218b:	48 89 c2             	mov    %rax,%rdx
  40218e:	48 f7 d2             	not    %rdx
  402191:	48 89 05 18 1f 00 00 	mov    %rax,0x1f18(%rip)        # 4040b0 <__security_cookie>
  402198:	48 89 15 21 1f 00 00 	mov    %rdx,0x1f21(%rip)        # 4040c0 <__security_cookie_complement>
  40219f:	48 83 c4 30          	add    $0x30,%rsp
  4021a3:	5b                   	pop    %rbx
  4021a4:	5e                   	pop    %rsi
  4021a5:	5f                   	pop    %rdi
  4021a6:	5d                   	pop    %rbp
  4021a7:	41 5c                	pop    %r12
  4021a9:	c3                   	retq   
  4021aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4021b0:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  4021b7:	d4 ff ff 
  4021ba:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  4021c1:	2b 00 00 
  4021c4:	eb cb                	jmp    402191 <__security_init_cookie+0xa1>
  4021c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021cd:	00 00 00 

00000000004021d0 <__report_gsfailure>:
  4021d0:	55                   	push   %rbp
  4021d1:	56                   	push   %rsi
  4021d2:	53                   	push   %rbx
  4021d3:	48 89 e5             	mov    %rsp,%rbp
  4021d6:	48 83 ec 70          	sub    $0x70,%rsp
  4021da:	48 89 ce             	mov    %rcx,%rsi
  4021dd:	48 8d 0d 1c 5f 00 00 	lea    0x5f1c(%rip),%rcx        # 408100 <GS_ContextRecord>
  4021e4:	ff 15 ae 70 00 00    	callq  *0x70ae(%rip)        # 409298 <__imp_RtlCaptureContext>
  4021ea:	48 8b 1d 07 60 00 00 	mov    0x6007(%rip),%rbx        # 4081f8 <GS_ContextRecord+0xf8>
  4021f1:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  4021f5:	45 31 c0             	xor    %r8d,%r8d
  4021f8:	48 89 d9             	mov    %rbx,%rcx
  4021fb:	ff 15 9f 70 00 00    	callq  *0x709f(%rip)        # 4092a0 <__imp_RtlLookupFunctionEntry>
  402201:	48 85 c0             	test   %rax,%rax
  402204:	0f 84 a3 00 00 00    	je     4022ad <__report_gsfailure+0xdd>
  40220a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40220e:	49 89 c1             	mov    %rax,%r9
  402211:	49 89 d8             	mov    %rbx,%r8
  402214:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40221b:	00 00 
  40221d:	48 8d 0d dc 5e 00 00 	lea    0x5edc(%rip),%rcx        # 408100 <GS_ContextRecord>
  402224:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  402229:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  40222d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  402232:	31 c9                	xor    %ecx,%ecx
  402234:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402239:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40223d:	ff 15 65 70 00 00    	callq  *0x7065(%rip)        # 4092a8 <__imp_RtlVirtualUnwind>
  402243:	48 8b 05 ae 5f 00 00 	mov    0x5fae(%rip),%rax        # 4081f8 <GS_ContextRecord+0xf8>
  40224a:	31 c9                	xor    %ecx,%ecx
  40224c:	48 89 35 2d 5f 00 00 	mov    %rsi,0x5f2d(%rip)        # 408180 <GS_ContextRecord+0x80>
  402253:	48 89 05 96 63 00 00 	mov    %rax,0x6396(%rip)        # 4085f0 <GS_ExceptionRecord+0x10>
  40225a:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  402261:	00 00 00 
  402264:	48 89 05 75 63 00 00 	mov    %rax,0x6375(%rip)        # 4085e0 <GS_ExceptionRecord>
  40226b:	48 8b 05 3e 1e 00 00 	mov    0x1e3e(%rip),%rax        # 4040b0 <__security_cookie>
  402272:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402276:	48 8b 05 43 1e 00 00 	mov    0x1e43(%rip),%rax        # 4040c0 <__security_cookie_complement>
  40227d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402281:	ff 15 29 70 00 00    	callq  *0x7029(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  402287:	48 8d 0d c2 2d 00 00 	lea    0x2dc2(%rip),%rcx        # 405050 <GS_ExceptionPointers>
  40228e:	ff 15 3c 70 00 00    	callq  *0x703c(%rip)        # 4092d0 <__imp_UnhandledExceptionFilter>
  402294:	ff 15 a6 6f 00 00    	callq  *0x6fa6(%rip)        # 409240 <__imp_GetCurrentProcess>
  40229a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40229f:	48 89 c1             	mov    %rax,%rcx
  4022a2:	ff 15 18 70 00 00    	callq  *0x7018(%rip)        # 4092c0 <__imp_TerminateProcess>
  4022a8:	e8 73 12 00 00       	callq  403520 <abort>
  4022ad:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4022b1:	48 89 05 40 5f 00 00 	mov    %rax,0x5f40(%rip)        # 4081f8 <GS_ContextRecord+0xf8>
  4022b8:	48 8d 45 08          	lea    0x8(%rbp),%rax
  4022bc:	48 89 05 d5 5e 00 00 	mov    %rax,0x5ed5(%rip)        # 408198 <GS_ContextRecord+0x98>
  4022c3:	e9 7b ff ff ff       	jmpq   402243 <__report_gsfailure+0x73>
  4022c8:	90                   	nop
  4022c9:	90                   	nop
  4022ca:	90                   	nop
  4022cb:	90                   	nop
  4022cc:	90                   	nop
  4022cd:	90                   	nop
  4022ce:	90                   	nop
  4022cf:	90                   	nop

00000000004022d0 <__dyn_tls_dtor>:
  4022d0:	48 83 ec 28          	sub    $0x28,%rsp
  4022d4:	83 fa 03             	cmp    $0x3,%edx
  4022d7:	74 17                	je     4022f0 <__dyn_tls_dtor+0x20>
  4022d9:	85 d2                	test   %edx,%edx
  4022db:	74 13                	je     4022f0 <__dyn_tls_dtor+0x20>
  4022dd:	b8 01 00 00 00       	mov    $0x1,%eax
  4022e2:	48 83 c4 28          	add    $0x28,%rsp
  4022e6:	c3                   	retq   
  4022e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4022ee:	00 00 
  4022f0:	e8 cb 0c 00 00       	callq  402fc0 <__mingw_TLScallback>
  4022f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4022fa:	48 83 c4 28          	add    $0x28,%rsp
  4022fe:	c3                   	retq   
  4022ff:	90                   	nop

0000000000402300 <__dyn_tls_init>:
  402300:	56                   	push   %rsi
  402301:	53                   	push   %rbx
  402302:	48 83 ec 28          	sub    $0x28,%rsp
  402306:	48 8b 05 33 30 00 00 	mov    0x3033(%rip),%rax        # 405340 <.refptr._CRT_MT>
  40230d:	83 38 02             	cmpl   $0x2,(%rax)
  402310:	74 06                	je     402318 <__dyn_tls_init+0x18>
  402312:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  402318:	83 fa 02             	cmp    $0x2,%edx
  40231b:	74 13                	je     402330 <__dyn_tls_init+0x30>
  40231d:	83 fa 01             	cmp    $0x1,%edx
  402320:	74 40                	je     402362 <__dyn_tls_init+0x62>
  402322:	b8 01 00 00 00       	mov    $0x1,%eax
  402327:	48 83 c4 28          	add    $0x28,%rsp
  40232b:	5b                   	pop    %rbx
  40232c:	5e                   	pop    %rsi
  40232d:	c3                   	retq   
  40232e:	66 90                	xchg   %ax,%ax
  402330:	48 8d 1d 29 7d 00 00 	lea    0x7d29(%rip),%rbx        # 40a060 <__xd_z>
  402337:	48 8d 35 22 7d 00 00 	lea    0x7d22(%rip),%rsi        # 40a060 <__xd_z>
  40233e:	48 39 de             	cmp    %rbx,%rsi
  402341:	74 df                	je     402322 <__dyn_tls_init+0x22>
  402343:	48 8b 03             	mov    (%rbx),%rax
  402346:	48 85 c0             	test   %rax,%rax
  402349:	74 02                	je     40234d <__dyn_tls_init+0x4d>
  40234b:	ff d0                	callq  *%rax
  40234d:	48 83 c3 08          	add    $0x8,%rbx
  402351:	48 39 de             	cmp    %rbx,%rsi
  402354:	75 ed                	jne    402343 <__dyn_tls_init+0x43>
  402356:	b8 01 00 00 00       	mov    $0x1,%eax
  40235b:	48 83 c4 28          	add    $0x28,%rsp
  40235f:	5b                   	pop    %rbx
  402360:	5e                   	pop    %rsi
  402361:	c3                   	retq   
  402362:	e8 59 0c 00 00       	callq  402fc0 <__mingw_TLScallback>
  402367:	b8 01 00 00 00       	mov    $0x1,%eax
  40236c:	48 83 c4 28          	add    $0x28,%rsp
  402370:	5b                   	pop    %rbx
  402371:	5e                   	pop    %rsi
  402372:	c3                   	retq   
  402373:	0f 1f 00             	nopl   (%rax)
  402376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40237d:	00 00 00 

0000000000402380 <__tlregdtor>:
  402380:	31 c0                	xor    %eax,%eax
  402382:	c3                   	retq   
  402383:	90                   	nop
  402384:	90                   	nop
  402385:	90                   	nop
  402386:	90                   	nop
  402387:	90                   	nop
  402388:	90                   	nop
  402389:	90                   	nop
  40238a:	90                   	nop
  40238b:	90                   	nop
  40238c:	90                   	nop
  40238d:	90                   	nop
  40238e:	90                   	nop
  40238f:	90                   	nop

0000000000402390 <__mingw_raise_matherr>:
  402390:	48 83 ec 58          	sub    $0x58,%rsp
  402394:	48 8b 05 05 63 00 00 	mov    0x6305(%rip),%rax        # 4086a0 <stUserMathErr>
  40239b:	48 85 c0             	test   %rax,%rax
  40239e:	74 2c                	je     4023cc <__mingw_raise_matherr+0x3c>
  4023a0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  4023a7:	00 00 
  4023a9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  4023ad:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4023b2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4023b7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  4023bd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  4023c3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  4023c9:	ff d0                	callq  *%rax
  4023cb:	90                   	nop
  4023cc:	48 83 c4 58          	add    $0x58,%rsp
  4023d0:	c3                   	retq   
  4023d1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4023d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4023dd:	00 00 00 

00000000004023e0 <__mingw_setusermatherr>:
  4023e0:	48 89 0d b9 62 00 00 	mov    %rcx,0x62b9(%rip)        # 4086a0 <stUserMathErr>
  4023e7:	e9 5c 11 00 00       	jmpq   403548 <__setusermatherr>
  4023ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023f0 <_matherr>:
  4023f0:	56                   	push   %rsi
  4023f1:	53                   	push   %rbx
  4023f2:	48 83 ec 78          	sub    $0x78,%rsp
  4023f6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  4023fb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  402400:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  402406:	83 39 06             	cmpl   $0x6,(%rcx)
  402409:	0f 87 d1 00 00 00    	ja     4024e0 <_matherr+0xf0>
  40240f:	8b 01                	mov    (%rcx),%eax
  402411:	48 8d 15 cc 2d 00 00 	lea    0x2dcc(%rip),%rdx        # 4051e4 <.rdata+0x124>
  402418:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40241c:	48 01 d0             	add    %rdx,%rax
  40241f:	ff e0                	jmpq   *%rax
  402421:	48 8d 1d 98 2c 00 00 	lea    0x2c98(%rip),%rbx        # 4050c0 <.rdata>
  402428:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  40242c:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  402432:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  402437:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40243c:	b9 02 00 00 00       	mov    $0x2,%ecx
  402441:	e8 2a 11 00 00       	callq  403570 <__acrt_iob_func>
  402446:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  40244d:	49 89 f1             	mov    %rsi,%r9
  402450:	49 89 d8             	mov    %rbx,%r8
  402453:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  402459:	48 8d 15 58 2d 00 00 	lea    0x2d58(%rip),%rdx        # 4051b8 <.rdata+0xf8>
  402460:	48 89 c1             	mov    %rax,%rcx
  402463:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  402469:	e8 9a 10 00 00       	callq  403508 <fprintf>
  40246e:	90                   	nop
  40246f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  402474:	31 c0                	xor    %eax,%eax
  402476:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  40247b:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  402481:	48 83 c4 78          	add    $0x78,%rsp
  402485:	5b                   	pop    %rbx
  402486:	5e                   	pop    %rsi
  402487:	c3                   	retq   
  402488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40248f:	00 
  402490:	48 8d 1d 48 2c 00 00 	lea    0x2c48(%rip),%rbx        # 4050df <.rdata+0x1f>
  402497:	eb 8f                	jmp    402428 <_matherr+0x38>
  402499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024a0:	48 8d 1d 59 2c 00 00 	lea    0x2c59(%rip),%rbx        # 405100 <.rdata+0x40>
  4024a7:	e9 7c ff ff ff       	jmpq   402428 <_matherr+0x38>
  4024ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4024b0:	48 8d 1d b9 2c 00 00 	lea    0x2cb9(%rip),%rbx        # 405170 <.rdata+0xb0>
  4024b7:	e9 6c ff ff ff       	jmpq   402428 <_matherr+0x38>
  4024bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4024c0:	48 8d 1d 81 2c 00 00 	lea    0x2c81(%rip),%rbx        # 405148 <.rdata+0x88>
  4024c7:	e9 5c ff ff ff       	jmpq   402428 <_matherr+0x38>
  4024cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4024d0:	48 8d 1d 49 2c 00 00 	lea    0x2c49(%rip),%rbx        # 405120 <.rdata+0x60>
  4024d7:	e9 4c ff ff ff       	jmpq   402428 <_matherr+0x38>
  4024dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4024e0:	48 8d 1d bf 2c 00 00 	lea    0x2cbf(%rip),%rbx        # 4051a6 <.rdata+0xe6>
  4024e7:	e9 3c ff ff ff       	jmpq   402428 <_matherr+0x38>
  4024ec:	90                   	nop
  4024ed:	90                   	nop
  4024ee:	90                   	nop
  4024ef:	90                   	nop

00000000004024f0 <_fpreset>:
  4024f0:	db e3                	fninit 
  4024f2:	c3                   	retq   
  4024f3:	90                   	nop
  4024f4:	90                   	nop
  4024f5:	90                   	nop
  4024f6:	90                   	nop
  4024f7:	90                   	nop
  4024f8:	90                   	nop
  4024f9:	90                   	nop
  4024fa:	90                   	nop
  4024fb:	90                   	nop
  4024fc:	90                   	nop
  4024fd:	90                   	nop
  4024fe:	90                   	nop
  4024ff:	90                   	nop

0000000000402500 <_decode_pointer>:
  402500:	48 89 c8             	mov    %rcx,%rax
  402503:	c3                   	retq   
  402504:	66 90                	xchg   %ax,%ax
  402506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40250d:	00 00 00 

0000000000402510 <_encode_pointer>:
  402510:	48 89 c8             	mov    %rcx,%rax
  402513:	c3                   	retq   
  402514:	90                   	nop
  402515:	90                   	nop
  402516:	90                   	nop
  402517:	90                   	nop
  402518:	90                   	nop
  402519:	90                   	nop
  40251a:	90                   	nop
  40251b:	90                   	nop
  40251c:	90                   	nop
  40251d:	90                   	nop
  40251e:	90                   	nop
  40251f:	90                   	nop

0000000000402520 <__write_memory.part.0>:
  402520:	41 54                	push   %r12
  402522:	55                   	push   %rbp
  402523:	57                   	push   %rdi
  402524:	56                   	push   %rsi
  402525:	53                   	push   %rbx
  402526:	48 83 ec 50          	sub    $0x50,%rsp
  40252a:	48 63 35 93 61 00 00 	movslq 0x6193(%rip),%rsi        # 4086c4 <maxSections>
  402531:	85 f6                	test   %esi,%esi
  402533:	48 89 cb             	mov    %rcx,%rbx
  402536:	48 89 d5             	mov    %rdx,%rbp
  402539:	4c 89 c7             	mov    %r8,%rdi
  40253c:	0f 8e 66 01 00 00    	jle    4026a8 <__write_memory.part.0+0x188>
  402542:	48 8b 05 7f 61 00 00 	mov    0x617f(%rip),%rax        # 4086c8 <the_secs>
  402549:	31 c9                	xor    %ecx,%ecx
  40254b:	48 83 c0 18          	add    $0x18,%rax
  40254f:	90                   	nop
  402550:	48 8b 10             	mov    (%rax),%rdx
  402553:	48 39 d3             	cmp    %rdx,%rbx
  402556:	72 14                	jb     40256c <__write_memory.part.0+0x4c>
  402558:	4c 8b 40 08          	mov    0x8(%rax),%r8
  40255c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  402560:	4c 01 c2             	add    %r8,%rdx
  402563:	48 39 d3             	cmp    %rdx,%rbx
  402566:	0f 82 89 00 00 00    	jb     4025f5 <__write_memory.part.0+0xd5>
  40256c:	83 c1 01             	add    $0x1,%ecx
  40256f:	48 83 c0 28          	add    $0x28,%rax
  402573:	39 f1                	cmp    %esi,%ecx
  402575:	75 d9                	jne    402550 <__write_memory.part.0+0x30>
  402577:	48 89 d9             	mov    %rbx,%rcx
  40257a:	e8 41 0c 00 00       	callq  4031c0 <__mingw_GetSectionForAddress>
  40257f:	48 85 c0             	test   %rax,%rax
  402582:	49 89 c4             	mov    %rax,%r12
  402585:	0f 84 52 01 00 00    	je     4026dd <__write_memory.part.0+0x1bd>
  40258b:	48 8b 05 36 61 00 00 	mov    0x6136(%rip),%rax        # 4086c8 <the_secs>
  402592:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  402596:	48 c1 e6 03          	shl    $0x3,%rsi
  40259a:	48 01 f0             	add    %rsi,%rax
  40259d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  4025a1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4025a7:	e8 44 0d 00 00       	callq  4032f0 <_GetPEImageBase>
  4025ac:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  4025b1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4025b6:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  4025bc:	48 01 c1             	add    %rax,%rcx
  4025bf:	48 8b 05 02 61 00 00 	mov    0x6102(%rip),%rax        # 4086c8 <the_secs>
  4025c6:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  4025cb:	ff 15 0f 6d 00 00    	callq  *0x6d0f(%rip)        # 4092e0 <__imp_VirtualQuery>
  4025d1:	48 85 c0             	test   %rax,%rax
  4025d4:	0f 84 e6 00 00 00    	je     4026c0 <__write_memory.part.0+0x1a0>
  4025da:	8b 44 24 44          	mov    0x44(%rsp),%eax
  4025de:	8d 50 fc             	lea    -0x4(%rax),%edx
  4025e1:	83 e2 fb             	and    $0xfffffffb,%edx
  4025e4:	74 08                	je     4025ee <__write_memory.part.0+0xce>
  4025e6:	83 e8 40             	sub    $0x40,%eax
  4025e9:	83 e0 bf             	and    $0xffffffbf,%eax
  4025ec:	75 62                	jne    402650 <__write_memory.part.0+0x130>
  4025ee:	83 05 cf 60 00 00 01 	addl   $0x1,0x60cf(%rip)        # 4086c4 <maxSections>
  4025f5:	83 ff 08             	cmp    $0x8,%edi
  4025f8:	73 29                	jae    402623 <__write_memory.part.0+0x103>
  4025fa:	40 f6 c7 04          	test   $0x4,%dil
  4025fe:	0f 85 90 00 00 00    	jne    402694 <__write_memory.part.0+0x174>
  402604:	85 ff                	test   %edi,%edi
  402606:	74 10                	je     402618 <__write_memory.part.0+0xf8>
  402608:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40260c:	40 f6 c7 02          	test   $0x2,%dil
  402610:	88 03                	mov    %al,(%rbx)
  402612:	0f 85 97 00 00 00    	jne    4026af <__write_memory.part.0+0x18f>
  402618:	48 83 c4 50          	add    $0x50,%rsp
  40261c:	5b                   	pop    %rbx
  40261d:	5e                   	pop    %rsi
  40261e:	5f                   	pop    %rdi
  40261f:	5d                   	pop    %rbp
  402620:	41 5c                	pop    %r12
  402622:	c3                   	retq   
  402623:	89 f8                	mov    %edi,%eax
  402625:	83 ef 01             	sub    $0x1,%edi
  402628:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  40262d:	83 ff 08             	cmp    $0x8,%edi
  402630:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  402635:	72 e1                	jb     402618 <__write_memory.part.0+0xf8>
  402637:	83 e7 f8             	and    $0xfffffff8,%edi
  40263a:	31 c0                	xor    %eax,%eax
  40263c:	89 c2                	mov    %eax,%edx
  40263e:	83 c0 08             	add    $0x8,%eax
  402641:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  402646:	39 f8                	cmp    %edi,%eax
  402648:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  40264c:	72 ee                	jb     40263c <__write_memory.part.0+0x11c>
  40264e:	eb c8                	jmp    402618 <__write_memory.part.0+0xf8>
  402650:	48 03 35 71 60 00 00 	add    0x6071(%rip),%rsi        # 4086c8 <the_secs>
  402657:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  40265d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402662:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402667:	49 89 f1             	mov    %rsi,%r9
  40266a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  40266e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  402672:	ff 15 60 6c 00 00    	callq  *0x6c60(%rip)        # 4092d8 <__imp_VirtualProtect>
  402678:	85 c0                	test   %eax,%eax
  40267a:	0f 85 6e ff ff ff    	jne    4025ee <__write_memory.part.0+0xce>
  402680:	ff 15 d2 6b 00 00    	callq  *0x6bd2(%rip)        # 409258 <__imp_GetLastError>
  402686:	48 8d 0d eb 2b 00 00 	lea    0x2beb(%rip),%rcx        # 405278 <.rdata+0x78>
  40268d:	89 c2                	mov    %eax,%edx
  40268f:	e8 ec 11 00 00       	callq  403880 <__report_error>
  402694:	8b 45 00             	mov    0x0(%rbp),%eax
  402697:	89 ff                	mov    %edi,%edi
  402699:	89 03                	mov    %eax,(%rbx)
  40269b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  40269f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  4026a3:	e9 70 ff ff ff       	jmpq   402618 <__write_memory.part.0+0xf8>
  4026a8:	31 f6                	xor    %esi,%esi
  4026aa:	e9 c8 fe ff ff       	jmpq   402577 <__write_memory.part.0+0x57>
  4026af:	89 ff                	mov    %edi,%edi
  4026b1:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  4026b6:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  4026bb:	e9 58 ff ff ff       	jmpq   402618 <__write_memory.part.0+0xf8>
  4026c0:	48 8b 05 01 60 00 00 	mov    0x6001(%rip),%rax        # 4086c8 <the_secs>
  4026c7:	48 8d 0d 72 2b 00 00 	lea    0x2b72(%rip),%rcx        # 405240 <.rdata+0x40>
  4026ce:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  4026d3:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  4026d8:	e8 a3 11 00 00       	callq  403880 <__report_error>
  4026dd:	48 8d 0d 3c 2b 00 00 	lea    0x2b3c(%rip),%rcx        # 405220 <.rdata+0x20>
  4026e4:	48 89 da             	mov    %rbx,%rdx
  4026e7:	e8 94 11 00 00       	callq  403880 <__report_error>
  4026ec:	90                   	nop
  4026ed:	0f 1f 00             	nopl   (%rax)

00000000004026f0 <_pei386_runtime_relocator>:
  4026f0:	55                   	push   %rbp
  4026f1:	41 57                	push   %r15
  4026f3:	41 56                	push   %r14
  4026f5:	41 55                	push   %r13
  4026f7:	41 54                	push   %r12
  4026f9:	57                   	push   %rdi
  4026fa:	56                   	push   %rsi
  4026fb:	53                   	push   %rbx
  4026fc:	48 83 ec 38          	sub    $0x38,%rsp
  402700:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  402707:	00 
  402708:	8b 1d b2 5f 00 00    	mov    0x5fb2(%rip),%ebx        # 4086c0 <was_init.95174>
  40270e:	85 db                	test   %ebx,%ebx
  402710:	74 11                	je     402723 <_pei386_runtime_relocator+0x33>
  402712:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  402716:	5b                   	pop    %rbx
  402717:	5e                   	pop    %rsi
  402718:	5f                   	pop    %rdi
  402719:	41 5c                	pop    %r12
  40271b:	41 5d                	pop    %r13
  40271d:	41 5e                	pop    %r14
  40271f:	41 5f                	pop    %r15
  402721:	5d                   	pop    %rbp
  402722:	c3                   	retq   
  402723:	c7 05 93 5f 00 00 01 	movl   $0x1,0x5f93(%rip)        # 4086c0 <was_init.95174>
  40272a:	00 00 00 
  40272d:	e8 0e 0b 00 00       	callq  403240 <__mingw_GetSectionCount>
  402732:	48 98                	cltq   
  402734:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402738:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40273f:	00 
  402740:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402744:	e8 37 0d 00 00       	callq  403480 <___chkstk_ms>
  402749:	4c 8b 25 40 2c 00 00 	mov    0x2c40(%rip),%r12        # 405390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  402750:	c7 05 6a 5f 00 00 00 	movl   $0x0,0x5f6a(%rip)        # 4086c4 <maxSections>
  402757:	00 00 00 
  40275a:	48 8b 35 3f 2c 00 00 	mov    0x2c3f(%rip),%rsi        # 4053a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  402761:	48 29 c4             	sub    %rax,%rsp
  402764:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402769:	48 89 05 58 5f 00 00 	mov    %rax,0x5f58(%rip)        # 4086c8 <the_secs>
  402770:	4c 89 e0             	mov    %r12,%rax
  402773:	48 29 f0             	sub    %rsi,%rax
  402776:	48 83 f8 07          	cmp    $0x7,%rax
  40277a:	7e 96                	jle    402712 <_pei386_runtime_relocator+0x22>
  40277c:	48 83 f8 0b          	cmp    $0xb,%rax
  402780:	8b 16                	mov    (%rsi),%edx
  402782:	0f 8e c8 00 00 00    	jle    402850 <_pei386_runtime_relocator+0x160>
  402788:	85 d2                	test   %edx,%edx
  40278a:	0f 84 a4 00 00 00    	je     402834 <_pei386_runtime_relocator+0x144>
  402790:	4c 39 e6             	cmp    %r12,%rsi
  402793:	0f 83 79 ff ff ff    	jae    402712 <_pei386_runtime_relocator+0x22>
  402799:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  40279d:	49 83 c4 07          	add    $0x7,%r12
  4027a1:	4c 8b 2d 18 2c 00 00 	mov    0x2c18(%rip),%r13        # 4053c0 <.refptr.__image_base__>
  4027a8:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4027ac:	4d 29 f4             	sub    %r14,%r12
  4027af:	49 c1 ec 03          	shr    $0x3,%r12
  4027b3:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  4027b8:	eb 0a                	jmp    4027c4 <_pei386_runtime_relocator+0xd4>
  4027ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4027c0:	49 83 c6 08          	add    $0x8,%r14
  4027c4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4027c7:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4027cd:	48 89 fa             	mov    %rdi,%rdx
  4027d0:	8b 06                	mov    (%rsi),%eax
  4027d2:	4c 89 f6             	mov    %r14,%rsi
  4027d5:	4c 01 e9             	add    %r13,%rcx
  4027d8:	03 01                	add    (%rcx),%eax
  4027da:	89 45 a8             	mov    %eax,-0x58(%rbp)
  4027dd:	e8 3e fd ff ff       	callq  402520 <__write_memory.part.0>
  4027e2:	4d 39 e6             	cmp    %r12,%r14
  4027e5:	75 d9                	jne    4027c0 <_pei386_runtime_relocator+0xd0>
  4027e7:	8b 05 d7 5e 00 00    	mov    0x5ed7(%rip),%eax        # 4086c4 <maxSections>
  4027ed:	31 f6                	xor    %esi,%esi
  4027ef:	4c 8b 25 e2 6a 00 00 	mov    0x6ae2(%rip),%r12        # 4092d8 <__imp_VirtualProtect>
  4027f6:	85 c0                	test   %eax,%eax
  4027f8:	0f 8e 14 ff ff ff    	jle    402712 <_pei386_runtime_relocator+0x22>
  4027fe:	66 90                	xchg   %ax,%ax
  402800:	48 8b 05 c1 5e 00 00 	mov    0x5ec1(%rip),%rax        # 4086c8 <the_secs>
  402807:	48 01 f0             	add    %rsi,%rax
  40280a:	44 8b 00             	mov    (%rax),%r8d
  40280d:	45 85 c0             	test   %r8d,%r8d
  402810:	74 0e                	je     402820 <_pei386_runtime_relocator+0x130>
  402812:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402816:	49 89 f9             	mov    %rdi,%r9
  402819:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40281d:	41 ff d4             	callq  *%r12
  402820:	83 c3 01             	add    $0x1,%ebx
  402823:	48 83 c6 28          	add    $0x28,%rsi
  402827:	3b 1d 97 5e 00 00    	cmp    0x5e97(%rip),%ebx        # 4086c4 <maxSections>
  40282d:	7c d1                	jl     402800 <_pei386_runtime_relocator+0x110>
  40282f:	e9 de fe ff ff       	jmpq   402712 <_pei386_runtime_relocator+0x22>
  402834:	8b 4e 04             	mov    0x4(%rsi),%ecx
  402837:	85 c9                	test   %ecx,%ecx
  402839:	0f 85 51 ff ff ff    	jne    402790 <_pei386_runtime_relocator+0xa0>
  40283f:	8b 56 08             	mov    0x8(%rsi),%edx
  402842:	85 d2                	test   %edx,%edx
  402844:	75 1d                	jne    402863 <_pei386_runtime_relocator+0x173>
  402846:	8b 56 0c             	mov    0xc(%rsi),%edx
  402849:	48 83 c6 0c          	add    $0xc,%rsi
  40284d:	0f 1f 00             	nopl   (%rax)
  402850:	85 d2                	test   %edx,%edx
  402852:	0f 85 38 ff ff ff    	jne    402790 <_pei386_runtime_relocator+0xa0>
  402858:	8b 46 04             	mov    0x4(%rsi),%eax
  40285b:	85 c0                	test   %eax,%eax
  40285d:	0f 85 2d ff ff ff    	jne    402790 <_pei386_runtime_relocator+0xa0>
  402863:	8b 56 08             	mov    0x8(%rsi),%edx
  402866:	83 fa 01             	cmp    $0x1,%edx
  402869:	0f 85 2f 01 00 00    	jne    40299e <_pei386_runtime_relocator+0x2ae>
  40286f:	4c 8b 2d 4a 2b 00 00 	mov    0x2b4a(%rip),%r13        # 4053c0 <.refptr.__image_base__>
  402876:	48 83 c6 0c          	add    $0xc,%rsi
  40287a:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  402881:	ff ff ff 
  402884:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  402888:	4c 39 e6             	cmp    %r12,%rsi
  40288b:	72 48                	jb     4028d5 <_pei386_runtime_relocator+0x1e5>
  40288d:	e9 80 fe ff ff       	jmpq   402712 <_pei386_runtime_relocator+0x22>
  402892:	0f 86 b8 00 00 00    	jbe    402950 <_pei386_runtime_relocator+0x260>
  402898:	83 fa 20             	cmp    $0x20,%edx
  40289b:	0f 84 7f 00 00 00    	je     402920 <_pei386_runtime_relocator+0x230>
  4028a1:	83 fa 40             	cmp    $0x40,%edx
  4028a4:	0f 85 e0 00 00 00    	jne    40298a <_pei386_runtime_relocator+0x29a>
  4028aa:	48 8b 11             	mov    (%rcx),%rdx
  4028ad:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4028b3:	4c 89 f7             	mov    %r14,%rdi
  4028b6:	48 29 c2             	sub    %rax,%rdx
  4028b9:	4c 01 ca             	add    %r9,%rdx
  4028bc:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4028c0:	4c 89 f2             	mov    %r14,%rdx
  4028c3:	e8 58 fc ff ff       	callq  402520 <__write_memory.part.0>
  4028c8:	48 83 c6 0c          	add    $0xc,%rsi
  4028cc:	4c 39 e6             	cmp    %r12,%rsi
  4028cf:	0f 83 12 ff ff ff    	jae    4027e7 <_pei386_runtime_relocator+0xf7>
  4028d5:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4028d8:	8b 06                	mov    (%rsi),%eax
  4028da:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  4028de:	4c 01 e9             	add    %r13,%rcx
  4028e1:	4c 01 e8             	add    %r13,%rax
  4028e4:	83 fa 10             	cmp    $0x10,%edx
  4028e7:	4c 8b 08             	mov    (%rax),%r9
  4028ea:	75 a6                	jne    402892 <_pei386_runtime_relocator+0x1a2>
  4028ec:	44 0f b7 01          	movzwl (%rcx),%r8d
  4028f0:	4c 89 f2             	mov    %r14,%rdx
  4028f3:	4c 89 f7             	mov    %r14,%rdi
  4028f6:	4d 89 c2             	mov    %r8,%r10
  4028f9:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  402900:	66 45 85 c0          	test   %r8w,%r8w
  402904:	4d 0f 48 c2          	cmovs  %r10,%r8
  402908:	49 29 c0             	sub    %rax,%r8
  40290b:	4d 01 c8             	add    %r9,%r8
  40290e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  402912:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402918:	e8 03 fc ff ff       	callq  402520 <__write_memory.part.0>
  40291d:	eb a9                	jmp    4028c8 <_pei386_runtime_relocator+0x1d8>
  40291f:	90                   	nop
  402920:	8b 11                	mov    (%rcx),%edx
  402922:	4c 89 f7             	mov    %r14,%rdi
  402925:	49 89 d0             	mov    %rdx,%r8
  402928:	4c 09 fa             	or     %r15,%rdx
  40292b:	45 85 c0             	test   %r8d,%r8d
  40292e:	49 0f 49 d0          	cmovns %r8,%rdx
  402932:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402938:	48 29 c2             	sub    %rax,%rdx
  40293b:	4c 01 ca             	add    %r9,%rdx
  40293e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  402942:	4c 89 f2             	mov    %r14,%rdx
  402945:	e8 d6 fb ff ff       	callq  402520 <__write_memory.part.0>
  40294a:	e9 79 ff ff ff       	jmpq   4028c8 <_pei386_runtime_relocator+0x1d8>
  40294f:	90                   	nop
  402950:	83 fa 08             	cmp    $0x8,%edx
  402953:	75 35                	jne    40298a <_pei386_runtime_relocator+0x29a>
  402955:	44 0f b6 01          	movzbl (%rcx),%r8d
  402959:	4c 89 f2             	mov    %r14,%rdx
  40295c:	4c 89 f7             	mov    %r14,%rdi
  40295f:	4d 89 c2             	mov    %r8,%r10
  402962:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  402969:	45 84 c0             	test   %r8b,%r8b
  40296c:	4d 0f 48 c2          	cmovs  %r10,%r8
  402970:	49 29 c0             	sub    %rax,%r8
  402973:	4d 01 c8             	add    %r9,%r8
  402976:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  40297a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402980:	e8 9b fb ff ff       	callq  402520 <__write_memory.part.0>
  402985:	e9 3e ff ff ff       	jmpq   4028c8 <_pei386_runtime_relocator+0x1d8>
  40298a:	48 8d 0d 47 29 00 00 	lea    0x2947(%rip),%rcx        # 4052d8 <.rdata+0xd8>
  402991:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  402998:	00 
  402999:	e8 e2 0e 00 00       	callq  403880 <__report_error>
  40299e:	48 8d 0d fb 28 00 00 	lea    0x28fb(%rip),%rcx        # 4052a0 <.rdata+0xa0>
  4029a5:	e8 d6 0e 00 00       	callq  403880 <__report_error>
  4029aa:	90                   	nop
  4029ab:	90                   	nop
  4029ac:	90                   	nop
  4029ad:	90                   	nop
  4029ae:	90                   	nop
  4029af:	90                   	nop

00000000004029b0 <__mingw_SEH_error_handler>:
  4029b0:	48 83 ec 28          	sub    $0x28,%rsp
  4029b4:	8b 01                	mov    (%rcx),%eax
  4029b6:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4029bb:	77 63                	ja     402a20 <__mingw_SEH_error_handler+0x70>
  4029bd:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4029c2:	73 7b                	jae    402a3f <__mingw_SEH_error_handler+0x8f>
  4029c4:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4029c9:	0f 84 05 01 00 00    	je     402ad4 <__mingw_SEH_error_handler+0x124>
  4029cf:	0f 87 cb 00 00 00    	ja     402aa0 <__mingw_SEH_error_handler+0xf0>
  4029d5:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4029da:	0f 84 f4 00 00 00    	je     402ad4 <__mingw_SEH_error_handler+0x124>
  4029e0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4029e5:	0f 85 c3 00 00 00    	jne    402aae <__mingw_SEH_error_handler+0xfe>
  4029eb:	31 d2                	xor    %edx,%edx
  4029ed:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4029f2:	e8 e1 0a 00 00       	callq  4034d8 <signal>
  4029f7:	48 83 f8 01          	cmp    $0x1,%rax
  4029fb:	0f 84 2f 01 00 00    	je     402b30 <__mingw_SEH_error_handler+0x180>
  402a01:	48 85 c0             	test   %rax,%rax
  402a04:	0f 84 3c 01 00 00    	je     402b46 <__mingw_SEH_error_handler+0x196>
  402a0a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402a0f:	ff d0                	callq  *%rax
  402a11:	31 c0                	xor    %eax,%eax
  402a13:	48 83 c4 28          	add    $0x28,%rsp
  402a17:	c3                   	retq   
  402a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a1f:	00 
  402a20:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402a25:	0f 84 b5 00 00 00    	je     402ae0 <__mingw_SEH_error_handler+0x130>
  402a2b:	77 37                	ja     402a64 <__mingw_SEH_error_handler+0xb4>
  402a2d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402a32:	0f 84 9c 00 00 00    	je     402ad4 <__mingw_SEH_error_handler+0x124>
  402a38:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402a3d:	75 6f                	jne    402aae <__mingw_SEH_error_handler+0xfe>
  402a3f:	31 d2                	xor    %edx,%edx
  402a41:	b9 08 00 00 00       	mov    $0x8,%ecx
  402a46:	e8 8d 0a 00 00       	callq  4034d8 <signal>
  402a4b:	48 83 f8 01          	cmp    $0x1,%rax
  402a4f:	74 6f                	je     402ac0 <__mingw_SEH_error_handler+0x110>
  402a51:	48 85 c0             	test   %rax,%rax
  402a54:	74 58                	je     402aae <__mingw_SEH_error_handler+0xfe>
  402a56:	b9 08 00 00 00       	mov    $0x8,%ecx
  402a5b:	ff d0                	callq  *%rax
  402a5d:	31 c0                	xor    %eax,%eax
  402a5f:	48 83 c4 28          	add    $0x28,%rsp
  402a63:	c3                   	retq   
  402a64:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402a69:	74 69                	je     402ad4 <__mingw_SEH_error_handler+0x124>
  402a6b:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402a70:	75 3c                	jne    402aae <__mingw_SEH_error_handler+0xfe>
  402a72:	31 d2                	xor    %edx,%edx
  402a74:	b9 04 00 00 00       	mov    $0x4,%ecx
  402a79:	e8 5a 0a 00 00       	callq  4034d8 <signal>
  402a7e:	48 83 f8 01          	cmp    $0x1,%rax
  402a82:	0f 84 88 00 00 00    	je     402b10 <__mingw_SEH_error_handler+0x160>
  402a88:	48 85 c0             	test   %rax,%rax
  402a8b:	0f 84 b5 00 00 00    	je     402b46 <__mingw_SEH_error_handler+0x196>
  402a91:	b9 04 00 00 00       	mov    $0x4,%ecx
  402a96:	ff d0                	callq  *%rax
  402a98:	31 c0                	xor    %eax,%eax
  402a9a:	48 83 c4 28          	add    $0x28,%rsp
  402a9e:	c3                   	retq   
  402a9f:	90                   	nop
  402aa0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402aa5:	74 cb                	je     402a72 <__mingw_SEH_error_handler+0xc2>
  402aa7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402aac:	74 26                	je     402ad4 <__mingw_SEH_error_handler+0x124>
  402aae:	b8 01 00 00 00       	mov    $0x1,%eax
  402ab3:	48 83 c4 28          	add    $0x28,%rsp
  402ab7:	c3                   	retq   
  402ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402abf:	00 
  402ac0:	ba 01 00 00 00       	mov    $0x1,%edx
  402ac5:	b9 08 00 00 00       	mov    $0x8,%ecx
  402aca:	e8 09 0a 00 00       	callq  4034d8 <signal>
  402acf:	e8 1c fa ff ff       	callq  4024f0 <_fpreset>
  402ad4:	31 c0                	xor    %eax,%eax
  402ad6:	48 83 c4 28          	add    $0x28,%rsp
  402ada:	c3                   	retq   
  402adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ae0:	31 d2                	xor    %edx,%edx
  402ae2:	b9 08 00 00 00       	mov    $0x8,%ecx
  402ae7:	e8 ec 09 00 00       	callq  4034d8 <signal>
  402aec:	48 83 f8 01          	cmp    $0x1,%rax
  402af0:	0f 85 5b ff ff ff    	jne    402a51 <__mingw_SEH_error_handler+0xa1>
  402af6:	ba 01 00 00 00       	mov    $0x1,%edx
  402afb:	b9 08 00 00 00       	mov    $0x8,%ecx
  402b00:	e8 d3 09 00 00       	callq  4034d8 <signal>
  402b05:	31 c0                	xor    %eax,%eax
  402b07:	e9 07 ff ff ff       	jmpq   402a13 <__mingw_SEH_error_handler+0x63>
  402b0c:	0f 1f 40 00          	nopl   0x0(%rax)
  402b10:	ba 01 00 00 00       	mov    $0x1,%edx
  402b15:	b9 04 00 00 00       	mov    $0x4,%ecx
  402b1a:	e8 b9 09 00 00       	callq  4034d8 <signal>
  402b1f:	31 c0                	xor    %eax,%eax
  402b21:	e9 ed fe ff ff       	jmpq   402a13 <__mingw_SEH_error_handler+0x63>
  402b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b2d:	00 00 00 
  402b30:	ba 01 00 00 00       	mov    $0x1,%edx
  402b35:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402b3a:	e8 99 09 00 00       	callq  4034d8 <signal>
  402b3f:	31 c0                	xor    %eax,%eax
  402b41:	e9 cd fe ff ff       	jmpq   402a13 <__mingw_SEH_error_handler+0x63>
  402b46:	b8 04 00 00 00       	mov    $0x4,%eax
  402b4b:	e9 c3 fe ff ff       	jmpq   402a13 <__mingw_SEH_error_handler+0x63>

0000000000402b50 <__mingw_init_ehandler>:
  402b50:	41 54                	push   %r12
  402b52:	55                   	push   %rbp
  402b53:	57                   	push   %rdi
  402b54:	56                   	push   %rsi
  402b55:	53                   	push   %rbx
  402b56:	48 83 ec 20          	sub    $0x20,%rsp
  402b5a:	e8 91 07 00 00       	callq  4032f0 <_GetPEImageBase>
  402b5f:	48 89 c5             	mov    %rax,%rbp
  402b62:	8b 05 80 5b 00 00    	mov    0x5b80(%rip),%eax        # 4086e8 <was_here.95013>
  402b68:	85 c0                	test   %eax,%eax
  402b6a:	75 25                	jne    402b91 <__mingw_init_ehandler+0x41>
  402b6c:	48 85 ed             	test   %rbp,%rbp
  402b6f:	74 20                	je     402b91 <__mingw_init_ehandler+0x41>
  402b71:	48 8d 0d 98 27 00 00 	lea    0x2798(%rip),%rcx        # 405310 <.rdata>
  402b78:	c7 05 66 5b 00 00 01 	movl   $0x1,0x5b66(%rip)        # 4086e8 <was_here.95013>
  402b7f:	00 00 00 
  402b82:	e8 a9 05 00 00       	callq  403130 <_FindPESectionByName>
  402b87:	48 85 c0             	test   %rax,%rax
  402b8a:	74 14                	je     402ba0 <__mingw_init_ehandler+0x50>
  402b8c:	b8 01 00 00 00       	mov    $0x1,%eax
  402b91:	48 83 c4 20          	add    $0x20,%rsp
  402b95:	5b                   	pop    %rbx
  402b96:	5e                   	pop    %rsi
  402b97:	5f                   	pop    %rdi
  402b98:	5d                   	pop    %rbp
  402b99:	41 5c                	pop    %r12
  402b9b:	c3                   	retq   
  402b9c:	0f 1f 40 00          	nopl   0x0(%rax)
  402ba0:	48 8d 1d 59 5c 00 00 	lea    0x5c59(%rip),%rbx        # 408800 <emu_pdata>
  402ba7:	b9 30 00 00 00       	mov    $0x30,%ecx
  402bac:	31 f6                	xor    %esi,%esi
  402bae:	48 8d 15 4b 5b 00 00 	lea    0x5b4b(%rip),%rdx        # 408700 <emu_xdata>
  402bb5:	48 89 df             	mov    %rbx,%rdi
  402bb8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402bbb:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 4029b0 <__mingw_SEH_error_handler>
  402bc2:	b9 20 00 00 00       	mov    $0x20,%ecx
  402bc7:	48 89 d7             	mov    %rdx,%rdi
  402bca:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402bcd:	49 29 ec             	sub    %rbp,%r12
  402bd0:	48 89 d7             	mov    %rdx,%rdi
  402bd3:	eb 2e                	jmp    402c03 <__mingw_init_ehandler+0xb3>
  402bd5:	c6 07 09             	movb   $0x9,(%rdi)
  402bd8:	48 83 c6 01          	add    $0x1,%rsi
  402bdc:	48 83 c3 0c          	add    $0xc,%rbx
  402be0:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402be4:	8b 48 0c             	mov    0xc(%rax),%ecx
  402be7:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  402bea:	03 48 08             	add    0x8(%rax),%ecx
  402bed:	48 89 f8             	mov    %rdi,%rax
  402bf0:	48 83 c7 08          	add    $0x8,%rdi
  402bf4:	48 29 e8             	sub    %rbp,%rax
  402bf7:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402bfa:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  402bfd:	48 83 fe 20          	cmp    $0x20,%rsi
  402c01:	74 32                	je     402c35 <__mingw_init_ehandler+0xe5>
  402c03:	48 89 f1             	mov    %rsi,%rcx
  402c06:	e8 75 06 00 00       	callq  403280 <_FindPESectionExec>
  402c0b:	48 85 c0             	test   %rax,%rax
  402c0e:	75 c5                	jne    402bd5 <__mingw_init_ehandler+0x85>
  402c10:	48 85 f6             	test   %rsi,%rsi
  402c13:	89 f2                	mov    %esi,%edx
  402c15:	0f 84 71 ff ff ff    	je     402b8c <__mingw_init_ehandler+0x3c>
  402c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402c20:	48 8d 0d d9 5b 00 00 	lea    0x5bd9(%rip),%rcx        # 408800 <emu_pdata>
  402c27:	49 89 e8             	mov    %rbp,%r8
  402c2a:	ff 15 60 66 00 00    	callq  *0x6660(%rip)        # 409290 <__imp_RtlAddFunctionTable>
  402c30:	e9 57 ff ff ff       	jmpq   402b8c <__mingw_init_ehandler+0x3c>
  402c35:	ba 20 00 00 00       	mov    $0x20,%edx
  402c3a:	eb e4                	jmp    402c20 <__mingw_init_ehandler+0xd0>
  402c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402c40 <_gnu_exception_handler>:
  402c40:	53                   	push   %rbx
  402c41:	48 83 ec 20          	sub    $0x20,%rsp
  402c45:	48 8b 11             	mov    (%rcx),%rdx
  402c48:	8b 02                	mov    (%rdx),%eax
  402c4a:	48 89 cb             	mov    %rcx,%rbx
  402c4d:	89 c1                	mov    %eax,%ecx
  402c4f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402c55:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  402c5b:	0f 84 bf 00 00 00    	je     402d20 <_gnu_exception_handler+0xe0>
  402c61:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402c66:	77 68                	ja     402cd0 <_gnu_exception_handler+0x90>
  402c68:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  402c6d:	73 7c                	jae    402ceb <_gnu_exception_handler+0xab>
  402c6f:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402c74:	0f 84 b0 00 00 00    	je     402d2a <_gnu_exception_handler+0xea>
  402c7a:	0f 87 f4 00 00 00    	ja     402d74 <_gnu_exception_handler+0x134>
  402c80:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402c85:	0f 84 9f 00 00 00    	je     402d2a <_gnu_exception_handler+0xea>
  402c8b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402c90:	75 1f                	jne    402cb1 <_gnu_exception_handler+0x71>
  402c92:	31 d2                	xor    %edx,%edx
  402c94:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402c99:	e8 3a 08 00 00       	callq  4034d8 <signal>
  402c9e:	48 83 f8 01          	cmp    $0x1,%rax
  402ca2:	0f 84 51 01 00 00    	je     402df9 <_gnu_exception_handler+0x1b9>
  402ca8:	48 85 c0             	test   %rax,%rax
  402cab:	0f 85 0f 01 00 00    	jne    402dc0 <_gnu_exception_handler+0x180>
  402cb1:	48 8b 05 28 5a 00 00 	mov    0x5a28(%rip),%rax        # 4086e0 <__mingw_oldexcpt_handler>
  402cb8:	48 85 c0             	test   %rax,%rax
  402cbb:	0f 84 10 01 00 00    	je     402dd1 <_gnu_exception_handler+0x191>
  402cc1:	48 89 d9             	mov    %rbx,%rcx
  402cc4:	48 83 c4 20          	add    $0x20,%rsp
  402cc8:	5b                   	pop    %rbx
  402cc9:	48 ff e0             	rex.W jmpq *%rax
  402ccc:	0f 1f 40 00          	nopl   0x0(%rax)
  402cd0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402cd5:	0f 84 b5 00 00 00    	je     402d90 <_gnu_exception_handler+0x150>
  402cdb:	77 58                	ja     402d35 <_gnu_exception_handler+0xf5>
  402cdd:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402ce2:	74 46                	je     402d2a <_gnu_exception_handler+0xea>
  402ce4:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402ce9:	75 c6                	jne    402cb1 <_gnu_exception_handler+0x71>
  402ceb:	31 d2                	xor    %edx,%edx
  402ced:	b9 08 00 00 00       	mov    $0x8,%ecx
  402cf2:	e8 e1 07 00 00       	callq  4034d8 <signal>
  402cf7:	48 83 f8 01          	cmp    $0x1,%rax
  402cfb:	0f 84 df 00 00 00    	je     402de0 <_gnu_exception_handler+0x1a0>
  402d01:	48 85 c0             	test   %rax,%rax
  402d04:	74 ab                	je     402cb1 <_gnu_exception_handler+0x71>
  402d06:	b9 08 00 00 00       	mov    $0x8,%ecx
  402d0b:	ff d0                	callq  *%rax
  402d0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d12:	48 83 c4 20          	add    $0x20,%rsp
  402d16:	5b                   	pop    %rbx
  402d17:	c3                   	retq   
  402d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d1f:	00 
  402d20:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402d24:	0f 85 37 ff ff ff    	jne    402c61 <_gnu_exception_handler+0x21>
  402d2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d2f:	48 83 c4 20          	add    $0x20,%rsp
  402d33:	5b                   	pop    %rbx
  402d34:	c3                   	retq   
  402d35:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402d3a:	74 ee                	je     402d2a <_gnu_exception_handler+0xea>
  402d3c:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402d41:	0f 85 6a ff ff ff    	jne    402cb1 <_gnu_exception_handler+0x71>
  402d47:	31 d2                	xor    %edx,%edx
  402d49:	b9 04 00 00 00       	mov    $0x4,%ecx
  402d4e:	e8 85 07 00 00       	callq  4034d8 <signal>
  402d53:	48 83 f8 01          	cmp    $0x1,%rax
  402d57:	0f 84 b3 00 00 00    	je     402e10 <_gnu_exception_handler+0x1d0>
  402d5d:	48 85 c0             	test   %rax,%rax
  402d60:	0f 84 4b ff ff ff    	je     402cb1 <_gnu_exception_handler+0x71>
  402d66:	b9 04 00 00 00       	mov    $0x4,%ecx
  402d6b:	ff d0                	callq  *%rax
  402d6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d72:	eb 9e                	jmp    402d12 <_gnu_exception_handler+0xd2>
  402d74:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402d79:	74 cc                	je     402d47 <_gnu_exception_handler+0x107>
  402d7b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402d80:	0f 85 2b ff ff ff    	jne    402cb1 <_gnu_exception_handler+0x71>
  402d86:	eb a2                	jmp    402d2a <_gnu_exception_handler+0xea>
  402d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d8f:	00 
  402d90:	31 d2                	xor    %edx,%edx
  402d92:	b9 08 00 00 00       	mov    $0x8,%ecx
  402d97:	e8 3c 07 00 00       	callq  4034d8 <signal>
  402d9c:	48 83 f8 01          	cmp    $0x1,%rax
  402da0:	0f 85 5b ff ff ff    	jne    402d01 <_gnu_exception_handler+0xc1>
  402da6:	ba 01 00 00 00       	mov    $0x1,%edx
  402dab:	b9 08 00 00 00       	mov    $0x8,%ecx
  402db0:	e8 23 07 00 00       	callq  4034d8 <signal>
  402db5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dba:	e9 53 ff ff ff       	jmpq   402d12 <_gnu_exception_handler+0xd2>
  402dbf:	90                   	nop
  402dc0:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402dc5:	ff d0                	callq  *%rax
  402dc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dcc:	e9 41 ff ff ff       	jmpq   402d12 <_gnu_exception_handler+0xd2>
  402dd1:	31 c0                	xor    %eax,%eax
  402dd3:	e9 3a ff ff ff       	jmpq   402d12 <_gnu_exception_handler+0xd2>
  402dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402ddf:	00 
  402de0:	ba 01 00 00 00       	mov    $0x1,%edx
  402de5:	b9 08 00 00 00       	mov    $0x8,%ecx
  402dea:	e8 e9 06 00 00       	callq  4034d8 <signal>
  402def:	e8 fc f6 ff ff       	callq  4024f0 <_fpreset>
  402df4:	e9 31 ff ff ff       	jmpq   402d2a <_gnu_exception_handler+0xea>
  402df9:	ba 01 00 00 00       	mov    $0x1,%edx
  402dfe:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402e03:	e8 d0 06 00 00       	callq  4034d8 <signal>
  402e08:	83 c8 ff             	or     $0xffffffff,%eax
  402e0b:	e9 02 ff ff ff       	jmpq   402d12 <_gnu_exception_handler+0xd2>
  402e10:	ba 01 00 00 00       	mov    $0x1,%edx
  402e15:	b9 04 00 00 00       	mov    $0x4,%ecx
  402e1a:	e8 b9 06 00 00       	callq  4034d8 <signal>
  402e1f:	83 c8 ff             	or     $0xffffffff,%eax
  402e22:	e9 eb fe ff ff       	jmpq   402d12 <_gnu_exception_handler+0xd2>
  402e27:	90                   	nop
  402e28:	90                   	nop
  402e29:	90                   	nop
  402e2a:	90                   	nop
  402e2b:	90                   	nop
  402e2c:	90                   	nop
  402e2d:	90                   	nop
  402e2e:	90                   	nop
  402e2f:	90                   	nop

0000000000402e30 <__mingwthr_run_key_dtors.part.0>:
  402e30:	55                   	push   %rbp
  402e31:	57                   	push   %rdi
  402e32:	56                   	push   %rsi
  402e33:	53                   	push   %rbx
  402e34:	48 83 ec 28          	sub    $0x28,%rsp
  402e38:	48 8d 0d 61 5b 00 00 	lea    0x5b61(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402e3f:	ff 15 f3 63 00 00    	callq  *0x63f3(%rip)        # 409238 <__imp_EnterCriticalSection>
  402e45:	48 8b 1d 34 5b 00 00 	mov    0x5b34(%rip),%rbx        # 408980 <key_dtor_list>
  402e4c:	48 85 db             	test   %rbx,%rbx
  402e4f:	74 33                	je     402e84 <__mingwthr_run_key_dtors.part.0+0x54>
  402e51:	48 8b 2d 70 64 00 00 	mov    0x6470(%rip),%rbp        # 4092c8 <__imp_TlsGetValue>
  402e58:	48 8b 3d f9 63 00 00 	mov    0x63f9(%rip),%rdi        # 409258 <__imp_GetLastError>
  402e5f:	90                   	nop
  402e60:	8b 0b                	mov    (%rbx),%ecx
  402e62:	ff d5                	callq  *%rbp
  402e64:	48 89 c6             	mov    %rax,%rsi
  402e67:	ff d7                	callq  *%rdi
  402e69:	85 c0                	test   %eax,%eax
  402e6b:	75 0e                	jne    402e7b <__mingwthr_run_key_dtors.part.0+0x4b>
  402e6d:	48 85 f6             	test   %rsi,%rsi
  402e70:	74 09                	je     402e7b <__mingwthr_run_key_dtors.part.0+0x4b>
  402e72:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402e76:	48 89 f1             	mov    %rsi,%rcx
  402e79:	ff d0                	callq  *%rax
  402e7b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402e7f:	48 85 db             	test   %rbx,%rbx
  402e82:	75 dc                	jne    402e60 <__mingwthr_run_key_dtors.part.0+0x30>
  402e84:	48 8d 0d 15 5b 00 00 	lea    0x5b15(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402e8b:	48 83 c4 28          	add    $0x28,%rsp
  402e8f:	5b                   	pop    %rbx
  402e90:	5e                   	pop    %rsi
  402e91:	5f                   	pop    %rdi
  402e92:	5d                   	pop    %rbp
  402e93:	48 ff 25 e6 63 00 00 	rex.W jmpq *0x63e6(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402e9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402ea0 <___w64_mingwthr_add_key_dtor>:
  402ea0:	55                   	push   %rbp
  402ea1:	57                   	push   %rdi
  402ea2:	56                   	push   %rsi
  402ea3:	53                   	push   %rbx
  402ea4:	48 83 ec 28          	sub    $0x28,%rsp
  402ea8:	8b 05 da 5a 00 00    	mov    0x5ada(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402eae:	31 f6                	xor    %esi,%esi
  402eb0:	85 c0                	test   %eax,%eax
  402eb2:	89 cd                	mov    %ecx,%ebp
  402eb4:	48 89 d7             	mov    %rdx,%rdi
  402eb7:	75 0b                	jne    402ec4 <___w64_mingwthr_add_key_dtor+0x24>
  402eb9:	89 f0                	mov    %esi,%eax
  402ebb:	48 83 c4 28          	add    $0x28,%rsp
  402ebf:	5b                   	pop    %rbx
  402ec0:	5e                   	pop    %rsi
  402ec1:	5f                   	pop    %rdi
  402ec2:	5d                   	pop    %rbp
  402ec3:	c3                   	retq   
  402ec4:	ba 18 00 00 00       	mov    $0x18,%edx
  402ec9:	b9 01 00 00 00       	mov    $0x1,%ecx
  402ece:	e8 45 06 00 00       	callq  403518 <calloc>
  402ed3:	48 85 c0             	test   %rax,%rax
  402ed6:	48 89 c3             	mov    %rax,%rbx
  402ed9:	74 3d                	je     402f18 <___w64_mingwthr_add_key_dtor+0x78>
  402edb:	89 28                	mov    %ebp,(%rax)
  402edd:	48 8d 0d bc 5a 00 00 	lea    0x5abc(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402ee4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402ee8:	ff 15 4a 63 00 00    	callq  *0x634a(%rip)        # 409238 <__imp_EnterCriticalSection>
  402eee:	48 8b 05 8b 5a 00 00 	mov    0x5a8b(%rip),%rax        # 408980 <key_dtor_list>
  402ef5:	48 8d 0d a4 5a 00 00 	lea    0x5aa4(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402efc:	48 89 1d 7d 5a 00 00 	mov    %rbx,0x5a7d(%rip)        # 408980 <key_dtor_list>
  402f03:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f07:	ff 15 73 63 00 00    	callq  *0x6373(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402f0d:	89 f0                	mov    %esi,%eax
  402f0f:	48 83 c4 28          	add    $0x28,%rsp
  402f13:	5b                   	pop    %rbx
  402f14:	5e                   	pop    %rsi
  402f15:	5f                   	pop    %rdi
  402f16:	5d                   	pop    %rbp
  402f17:	c3                   	retq   
  402f18:	be ff ff ff ff       	mov    $0xffffffff,%esi
  402f1d:	eb 9a                	jmp    402eb9 <___w64_mingwthr_add_key_dtor+0x19>
  402f1f:	90                   	nop

0000000000402f20 <___w64_mingwthr_remove_key_dtor>:
  402f20:	53                   	push   %rbx
  402f21:	48 83 ec 20          	sub    $0x20,%rsp
  402f25:	8b 05 5d 5a 00 00    	mov    0x5a5d(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402f2b:	85 c0                	test   %eax,%eax
  402f2d:	89 cb                	mov    %ecx,%ebx
  402f2f:	75 0f                	jne    402f40 <___w64_mingwthr_remove_key_dtor+0x20>
  402f31:	31 c0                	xor    %eax,%eax
  402f33:	48 83 c4 20          	add    $0x20,%rsp
  402f37:	5b                   	pop    %rbx
  402f38:	c3                   	retq   
  402f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402f40:	48 8d 0d 59 5a 00 00 	lea    0x5a59(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402f47:	ff 15 eb 62 00 00    	callq  *0x62eb(%rip)        # 409238 <__imp_EnterCriticalSection>
  402f4d:	48 8b 05 2c 5a 00 00 	mov    0x5a2c(%rip),%rax        # 408980 <key_dtor_list>
  402f54:	48 85 c0             	test   %rax,%rax
  402f57:	74 1a                	je     402f73 <___w64_mingwthr_remove_key_dtor+0x53>
  402f59:	8b 10                	mov    (%rax),%edx
  402f5b:	39 d3                	cmp    %edx,%ebx
  402f5d:	75 0b                	jne    402f6a <___w64_mingwthr_remove_key_dtor+0x4a>
  402f5f:	eb 4f                	jmp    402fb0 <___w64_mingwthr_remove_key_dtor+0x90>
  402f61:	8b 11                	mov    (%rcx),%edx
  402f63:	39 da                	cmp    %ebx,%edx
  402f65:	74 29                	je     402f90 <___w64_mingwthr_remove_key_dtor+0x70>
  402f67:	48 89 c8             	mov    %rcx,%rax
  402f6a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402f6e:	48 85 c9             	test   %rcx,%rcx
  402f71:	75 ee                	jne    402f61 <___w64_mingwthr_remove_key_dtor+0x41>
  402f73:	48 8d 0d 26 5a 00 00 	lea    0x5a26(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402f7a:	ff 15 00 63 00 00    	callq  *0x6300(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402f80:	31 c0                	xor    %eax,%eax
  402f82:	48 83 c4 20          	add    $0x20,%rsp
  402f86:	5b                   	pop    %rbx
  402f87:	c3                   	retq   
  402f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f8f:	00 
  402f90:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402f94:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402f98:	e8 63 05 00 00       	callq  403500 <free>
  402f9d:	48 8d 0d fc 59 00 00 	lea    0x59fc(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402fa4:	ff 15 d6 62 00 00    	callq  *0x62d6(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402faa:	eb d4                	jmp    402f80 <___w64_mingwthr_remove_key_dtor+0x60>
  402fac:	0f 1f 40 00          	nopl   0x0(%rax)
  402fb0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402fb4:	48 89 c1             	mov    %rax,%rcx
  402fb7:	48 89 15 c2 59 00 00 	mov    %rdx,0x59c2(%rip)        # 408980 <key_dtor_list>
  402fbe:	eb d8                	jmp    402f98 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402fc0 <__mingw_TLScallback>:
  402fc0:	53                   	push   %rbx
  402fc1:	48 83 ec 20          	sub    $0x20,%rsp
  402fc5:	83 fa 01             	cmp    $0x1,%edx
  402fc8:	0f 84 92 00 00 00    	je     403060 <__mingw_TLScallback+0xa0>
  402fce:	72 30                	jb     403000 <__mingw_TLScallback+0x40>
  402fd0:	83 fa 02             	cmp    $0x2,%edx
  402fd3:	74 1b                	je     402ff0 <__mingw_TLScallback+0x30>
  402fd5:	83 fa 03             	cmp    $0x3,%edx
  402fd8:	75 1b                	jne    402ff5 <__mingw_TLScallback+0x35>
  402fda:	8b 05 a8 59 00 00    	mov    0x59a8(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402fe0:	85 c0                	test   %eax,%eax
  402fe2:	74 11                	je     402ff5 <__mingw_TLScallback+0x35>
  402fe4:	e8 47 fe ff ff       	callq  402e30 <__mingwthr_run_key_dtors.part.0>
  402fe9:	eb 0a                	jmp    402ff5 <__mingw_TLScallback+0x35>
  402feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ff0:	e8 fb f4 ff ff       	callq  4024f0 <_fpreset>
  402ff5:	b8 01 00 00 00       	mov    $0x1,%eax
  402ffa:	48 83 c4 20          	add    $0x20,%rsp
  402ffe:	5b                   	pop    %rbx
  402fff:	c3                   	retq   
  403000:	8b 05 82 59 00 00    	mov    0x5982(%rip),%eax        # 408988 <__mingwthr_cs_init>
  403006:	85 c0                	test   %eax,%eax
  403008:	0f 85 82 00 00 00    	jne    403090 <__mingw_TLScallback+0xd0>
  40300e:	8b 05 74 59 00 00    	mov    0x5974(%rip),%eax        # 408988 <__mingwthr_cs_init>
  403014:	83 f8 01             	cmp    $0x1,%eax
  403017:	75 dc                	jne    402ff5 <__mingw_TLScallback+0x35>
  403019:	48 8b 0d 60 59 00 00 	mov    0x5960(%rip),%rcx        # 408980 <key_dtor_list>
  403020:	48 85 c9             	test   %rcx,%rcx
  403023:	74 11                	je     403036 <__mingw_TLScallback+0x76>
  403025:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  403029:	e8 d2 04 00 00       	callq  403500 <free>
  40302e:	48 85 db             	test   %rbx,%rbx
  403031:	48 89 d9             	mov    %rbx,%rcx
  403034:	75 ef                	jne    403025 <__mingw_TLScallback+0x65>
  403036:	48 8d 0d 63 59 00 00 	lea    0x5963(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  40303d:	48 c7 05 38 59 00 00 	movq   $0x0,0x5938(%rip)        # 408980 <key_dtor_list>
  403044:	00 00 00 00 
  403048:	c7 05 36 59 00 00 00 	movl   $0x0,0x5936(%rip)        # 408988 <__mingwthr_cs_init>
  40304f:	00 00 00 
  403052:	ff 15 d8 61 00 00    	callq  *0x61d8(%rip)        # 409230 <__IAT_start__>
  403058:	eb 9b                	jmp    402ff5 <__mingw_TLScallback+0x35>
  40305a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403060:	8b 05 22 59 00 00    	mov    0x5922(%rip),%eax        # 408988 <__mingwthr_cs_init>
  403066:	85 c0                	test   %eax,%eax
  403068:	74 16                	je     403080 <__mingw_TLScallback+0xc0>
  40306a:	c7 05 14 59 00 00 01 	movl   $0x1,0x5914(%rip)        # 408988 <__mingwthr_cs_init>
  403071:	00 00 00 
  403074:	b8 01 00 00 00       	mov    $0x1,%eax
  403079:	48 83 c4 20          	add    $0x20,%rsp
  40307d:	5b                   	pop    %rbx
  40307e:	c3                   	retq   
  40307f:	90                   	nop
  403080:	48 8d 0d 19 59 00 00 	lea    0x5919(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  403087:	ff 15 eb 61 00 00    	callq  *0x61eb(%rip)        # 409278 <__imp_InitializeCriticalSection>
  40308d:	eb db                	jmp    40306a <__mingw_TLScallback+0xaa>
  40308f:	90                   	nop
  403090:	e8 9b fd ff ff       	callq  402e30 <__mingwthr_run_key_dtors.part.0>
  403095:	e9 74 ff ff ff       	jmpq   40300e <__mingw_TLScallback+0x4e>
  40309a:	90                   	nop
  40309b:	90                   	nop
  40309c:	90                   	nop
  40309d:	90                   	nop
  40309e:	90                   	nop
  40309f:	90                   	nop

00000000004030a0 <_ValidateImageBase.part.0>:
  4030a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4030a4:	48 01 c1             	add    %rax,%rcx
  4030a7:	31 c0                	xor    %eax,%eax
  4030a9:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  4030af:	74 01                	je     4030b2 <_ValidateImageBase.part.0+0x12>
  4030b1:	c3                   	retq   
  4030b2:	31 c0                	xor    %eax,%eax
  4030b4:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  4030ba:	0f 94 c0             	sete   %al
  4030bd:	c3                   	retq   
  4030be:	66 90                	xchg   %ax,%ax

00000000004030c0 <_ValidateImageBase>:
  4030c0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4030c5:	74 09                	je     4030d0 <_ValidateImageBase+0x10>
  4030c7:	31 c0                	xor    %eax,%eax
  4030c9:	c3                   	retq   
  4030ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4030d0:	eb ce                	jmp    4030a0 <_ValidateImageBase.part.0>
  4030d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4030d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4030dd:	00 00 00 

00000000004030e0 <_FindPESection>:
  4030e0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4030e4:	48 01 c1             	add    %rax,%rcx
  4030e7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4030eb:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  4030f0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4030f4:	85 c9                	test   %ecx,%ecx
  4030f6:	74 29                	je     403121 <_FindPESection+0x41>
  4030f8:	83 e9 01             	sub    $0x1,%ecx
  4030fb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4030ff:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  403104:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  403108:	49 39 d0             	cmp    %rdx,%r8
  40310b:	4c 89 c1             	mov    %r8,%rcx
  40310e:	77 08                	ja     403118 <_FindPESection+0x38>
  403110:	03 48 08             	add    0x8(%rax),%ecx
  403113:	48 39 d1             	cmp    %rdx,%rcx
  403116:	77 0b                	ja     403123 <_FindPESection+0x43>
  403118:	48 83 c0 28          	add    $0x28,%rax
  40311c:	4c 39 c8             	cmp    %r9,%rax
  40311f:	75 e3                	jne    403104 <_FindPESection+0x24>
  403121:	31 c0                	xor    %eax,%eax
  403123:	c3                   	retq   
  403124:	66 90                	xchg   %ax,%ax
  403126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40312d:	00 00 00 

0000000000403130 <_FindPESectionByName>:
  403130:	57                   	push   %rdi
  403131:	56                   	push   %rsi
  403132:	53                   	push   %rbx
  403133:	48 83 ec 20          	sub    $0x20,%rsp
  403137:	48 89 ce             	mov    %rcx,%rsi
  40313a:	e8 91 03 00 00       	callq  4034d0 <strlen>
  40313f:	48 83 f8 08          	cmp    $0x8,%rax
  403143:	77 6b                	ja     4031b0 <_FindPESectionByName+0x80>
  403145:	48 8b 15 74 22 00 00 	mov    0x2274(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  40314c:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  403151:	75 5d                	jne    4031b0 <_FindPESectionByName+0x80>
  403153:	48 89 d1             	mov    %rdx,%rcx
  403156:	e8 45 ff ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  40315b:	85 c0                	test   %eax,%eax
  40315d:	74 51                	je     4031b0 <_FindPESectionByName+0x80>
  40315f:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  403163:	48 01 d1             	add    %rdx,%rcx
  403166:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40316a:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  40316f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  403173:	85 c0                	test   %eax,%eax
  403175:	74 39                	je     4031b0 <_FindPESectionByName+0x80>
  403177:	83 e8 01             	sub    $0x1,%eax
  40317a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40317e:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  403183:	eb 09                	jmp    40318e <_FindPESectionByName+0x5e>
  403185:	48 83 c3 28          	add    $0x28,%rbx
  403189:	48 39 fb             	cmp    %rdi,%rbx
  40318c:	74 22                	je     4031b0 <_FindPESectionByName+0x80>
  40318e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  403194:	48 89 f2             	mov    %rsi,%rdx
  403197:	48 89 d9             	mov    %rbx,%rcx
  40319a:	e8 29 03 00 00       	callq  4034c8 <strncmp>
  40319f:	85 c0                	test   %eax,%eax
  4031a1:	75 e2                	jne    403185 <_FindPESectionByName+0x55>
  4031a3:	48 89 d8             	mov    %rbx,%rax
  4031a6:	48 83 c4 20          	add    $0x20,%rsp
  4031aa:	5b                   	pop    %rbx
  4031ab:	5e                   	pop    %rsi
  4031ac:	5f                   	pop    %rdi
  4031ad:	c3                   	retq   
  4031ae:	66 90                	xchg   %ax,%ax
  4031b0:	31 db                	xor    %ebx,%ebx
  4031b2:	48 89 d8             	mov    %rbx,%rax
  4031b5:	48 83 c4 20          	add    $0x20,%rsp
  4031b9:	5b                   	pop    %rbx
  4031ba:	5e                   	pop    %rsi
  4031bb:	5f                   	pop    %rdi
  4031bc:	c3                   	retq   
  4031bd:	0f 1f 00             	nopl   (%rax)

00000000004031c0 <__mingw_GetSectionForAddress>:
  4031c0:	48 83 ec 28          	sub    $0x28,%rsp
  4031c4:	4c 8b 05 f5 21 00 00 	mov    0x21f5(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  4031cb:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4031d1:	48 89 ca             	mov    %rcx,%rdx
  4031d4:	75 57                	jne    40322d <__mingw_GetSectionForAddress+0x6d>
  4031d6:	4c 89 c1             	mov    %r8,%rcx
  4031d9:	e8 c2 fe ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  4031de:	85 c0                	test   %eax,%eax
  4031e0:	74 4b                	je     40322d <__mingw_GetSectionForAddress+0x6d>
  4031e2:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4031e6:	48 89 d1             	mov    %rdx,%rcx
  4031e9:	4c 29 c1             	sub    %r8,%rcx
  4031ec:	49 01 c0             	add    %rax,%r8
  4031ef:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4031f4:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4031f9:	85 d2                	test   %edx,%edx
  4031fb:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  403200:	74 2b                	je     40322d <__mingw_GetSectionForAddress+0x6d>
  403202:	83 ea 01             	sub    $0x1,%edx
  403205:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  403209:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40320e:	66 90                	xchg   %ax,%ax
  403210:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  403214:	4c 39 c1             	cmp    %r8,%rcx
  403217:	4c 89 c2             	mov    %r8,%rdx
  40321a:	72 08                	jb     403224 <__mingw_GetSectionForAddress+0x64>
  40321c:	03 50 08             	add    0x8(%rax),%edx
  40321f:	48 39 d1             	cmp    %rdx,%rcx
  403222:	72 0b                	jb     40322f <__mingw_GetSectionForAddress+0x6f>
  403224:	48 83 c0 28          	add    $0x28,%rax
  403228:	4c 39 c8             	cmp    %r9,%rax
  40322b:	75 e3                	jne    403210 <__mingw_GetSectionForAddress+0x50>
  40322d:	31 c0                	xor    %eax,%eax
  40322f:	48 83 c4 28          	add    $0x28,%rsp
  403233:	c3                   	retq   
  403234:	66 90                	xchg   %ax,%ax
  403236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40323d:	00 00 00 

0000000000403240 <__mingw_GetSectionCount>:
  403240:	48 83 ec 28          	sub    $0x28,%rsp
  403244:	48 8b 15 75 21 00 00 	mov    0x2175(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  40324b:	45 31 c0             	xor    %r8d,%r8d
  40324e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  403253:	74 0b                	je     403260 <__mingw_GetSectionCount+0x20>
  403255:	44 89 c0             	mov    %r8d,%eax
  403258:	48 83 c4 28          	add    $0x28,%rsp
  40325c:	c3                   	retq   
  40325d:	0f 1f 00             	nopl   (%rax)
  403260:	48 89 d1             	mov    %rdx,%rcx
  403263:	e8 38 fe ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  403268:	85 c0                	test   %eax,%eax
  40326a:	74 e9                	je     403255 <__mingw_GetSectionCount+0x15>
  40326c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  403270:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  403276:	44 89 c0             	mov    %r8d,%eax
  403279:	48 83 c4 28          	add    $0x28,%rsp
  40327d:	c3                   	retq   
  40327e:	66 90                	xchg   %ax,%ax

0000000000403280 <_FindPESectionExec>:
  403280:	48 83 ec 28          	sub    $0x28,%rsp
  403284:	4c 8b 05 35 21 00 00 	mov    0x2135(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  40328b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  403291:	48 89 ca             	mov    %rcx,%rdx
  403294:	75 52                	jne    4032e8 <_FindPESectionExec+0x68>
  403296:	4c 89 c1             	mov    %r8,%rcx
  403299:	e8 02 fe ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  40329e:	85 c0                	test   %eax,%eax
  4032a0:	74 46                	je     4032e8 <_FindPESectionExec+0x68>
  4032a2:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  4032a6:	4c 01 c1             	add    %r8,%rcx
  4032a9:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4032ad:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  4032b2:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4032b6:	85 c9                	test   %ecx,%ecx
  4032b8:	74 2e                	je     4032e8 <_FindPESectionExec+0x68>
  4032ba:	83 e9 01             	sub    $0x1,%ecx
  4032bd:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4032c1:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  4032c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4032cd:	00 00 00 
  4032d0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  4032d4:	74 09                	je     4032df <_FindPESectionExec+0x5f>
  4032d6:	48 85 d2             	test   %rdx,%rdx
  4032d9:	74 0f                	je     4032ea <_FindPESectionExec+0x6a>
  4032db:	48 83 ea 01          	sub    $0x1,%rdx
  4032df:	48 83 c0 28          	add    $0x28,%rax
  4032e3:	48 39 c8             	cmp    %rcx,%rax
  4032e6:	75 e8                	jne    4032d0 <_FindPESectionExec+0x50>
  4032e8:	31 c0                	xor    %eax,%eax
  4032ea:	48 83 c4 28          	add    $0x28,%rsp
  4032ee:	c3                   	retq   
  4032ef:	90                   	nop

00000000004032f0 <_GetPEImageBase>:
  4032f0:	48 83 ec 28          	sub    $0x28,%rsp
  4032f4:	48 8b 15 c5 20 00 00 	mov    0x20c5(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  4032fb:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  403300:	75 1e                	jne    403320 <_GetPEImageBase+0x30>
  403302:	48 89 d1             	mov    %rdx,%rcx
  403305:	e8 96 fd ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  40330a:	85 c0                	test   %eax,%eax
  40330c:	b8 00 00 00 00       	mov    $0x0,%eax
  403311:	48 0f 45 c2          	cmovne %rdx,%rax
  403315:	48 83 c4 28          	add    $0x28,%rsp
  403319:	c3                   	retq   
  40331a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403320:	31 c0                	xor    %eax,%eax
  403322:	48 83 c4 28          	add    $0x28,%rsp
  403326:	c3                   	retq   
  403327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40332e:	00 00 

0000000000403330 <_IsNonwritableInCurrentImage>:
  403330:	48 83 ec 28          	sub    $0x28,%rsp
  403334:	4c 8b 05 85 20 00 00 	mov    0x2085(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  40333b:	31 c0                	xor    %eax,%eax
  40333d:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  403343:	48 89 ca             	mov    %rcx,%rdx
  403346:	74 08                	je     403350 <_IsNonwritableInCurrentImage+0x20>
  403348:	48 83 c4 28          	add    $0x28,%rsp
  40334c:	c3                   	retq   
  40334d:	0f 1f 00             	nopl   (%rax)
  403350:	4c 89 c1             	mov    %r8,%rcx
  403353:	e8 48 fd ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  403358:	85 c0                	test   %eax,%eax
  40335a:	74 ec                	je     403348 <_IsNonwritableInCurrentImage+0x18>
  40335c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  403360:	48 89 d1             	mov    %rdx,%rcx
  403363:	4c 29 c1             	sub    %r8,%rcx
  403366:	49 01 c0             	add    %rax,%r8
  403369:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  40336e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  403373:	85 d2                	test   %edx,%edx
  403375:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  40337a:	74 31                	je     4033ad <_IsNonwritableInCurrentImage+0x7d>
  40337c:	83 ea 01             	sub    $0x1,%edx
  40337f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  403383:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  403388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40338f:	00 
  403390:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  403394:	4c 39 c1             	cmp    %r8,%rcx
  403397:	4c 89 c2             	mov    %r8,%rdx
  40339a:	72 08                	jb     4033a4 <_IsNonwritableInCurrentImage+0x74>
  40339c:	03 50 08             	add    0x8(%rax),%edx
  40339f:	48 39 d1             	cmp    %rdx,%rcx
  4033a2:	72 10                	jb     4033b4 <_IsNonwritableInCurrentImage+0x84>
  4033a4:	48 83 c0 28          	add    $0x28,%rax
  4033a8:	4c 39 c8             	cmp    %r9,%rax
  4033ab:	75 e3                	jne    403390 <_IsNonwritableInCurrentImage+0x60>
  4033ad:	31 c0                	xor    %eax,%eax
  4033af:	48 83 c4 28          	add    $0x28,%rsp
  4033b3:	c3                   	retq   
  4033b4:	8b 40 24             	mov    0x24(%rax),%eax
  4033b7:	f7 d0                	not    %eax
  4033b9:	c1 e8 1f             	shr    $0x1f,%eax
  4033bc:	48 83 c4 28          	add    $0x28,%rsp
  4033c0:	c3                   	retq   
  4033c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4033c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4033cd:	00 00 00 

00000000004033d0 <__mingw_enum_import_library_names>:
  4033d0:	48 83 ec 28          	sub    $0x28,%rsp
  4033d4:	4c 8b 1d e5 1f 00 00 	mov    0x1fe5(%rip),%r11        # 4053c0 <.refptr.__image_base__>
  4033db:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4033e1:	41 89 c9             	mov    %ecx,%r9d
  4033e4:	75 58                	jne    40343e <__mingw_enum_import_library_names+0x6e>
  4033e6:	4c 89 d9             	mov    %r11,%rcx
  4033e9:	e8 b2 fc ff ff       	callq  4030a0 <_ValidateImageBase.part.0>
  4033ee:	85 c0                	test   %eax,%eax
  4033f0:	74 4c                	je     40343e <__mingw_enum_import_library_names+0x6e>
  4033f2:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  4033f6:	4c 01 d8             	add    %r11,%rax
  4033f9:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  4033ff:	85 d2                	test   %edx,%edx
  403401:	74 3b                	je     40343e <__mingw_enum_import_library_names+0x6e>
  403403:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  403407:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40340c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  403410:	85 c0                	test   %eax,%eax
  403412:	74 2a                	je     40343e <__mingw_enum_import_library_names+0x6e>
  403414:	83 e8 01             	sub    $0x1,%eax
  403417:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40341b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  403420:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  403424:	4c 39 d2             	cmp    %r10,%rdx
  403427:	4d 89 d0             	mov    %r10,%r8
  40342a:	72 09                	jb     403435 <__mingw_enum_import_library_names+0x65>
  40342c:	44 03 41 08          	add    0x8(%rcx),%r8d
  403430:	4c 39 c2             	cmp    %r8,%rdx
  403433:	72 10                	jb     403445 <__mingw_enum_import_library_names+0x75>
  403435:	48 83 c1 28          	add    $0x28,%rcx
  403439:	48 39 c1             	cmp    %rax,%rcx
  40343c:	75 e2                	jne    403420 <__mingw_enum_import_library_names+0x50>
  40343e:	31 c0                	xor    %eax,%eax
  403440:	48 83 c4 28          	add    $0x28,%rsp
  403444:	c3                   	retq   
  403445:	4c 01 da             	add    %r11,%rdx
  403448:	75 0e                	jne    403458 <__mingw_enum_import_library_names+0x88>
  40344a:	eb f2                	jmp    40343e <__mingw_enum_import_library_names+0x6e>
  40344c:	0f 1f 40 00          	nopl   0x0(%rax)
  403450:	41 83 e9 01          	sub    $0x1,%r9d
  403454:	48 83 c2 14          	add    $0x14,%rdx
  403458:	8b 4a 04             	mov    0x4(%rdx),%ecx
  40345b:	85 c9                	test   %ecx,%ecx
  40345d:	75 07                	jne    403466 <__mingw_enum_import_library_names+0x96>
  40345f:	8b 42 0c             	mov    0xc(%rdx),%eax
  403462:	85 c0                	test   %eax,%eax
  403464:	74 d8                	je     40343e <__mingw_enum_import_library_names+0x6e>
  403466:	45 85 c9             	test   %r9d,%r9d
  403469:	7f e5                	jg     403450 <__mingw_enum_import_library_names+0x80>
  40346b:	8b 42 0c             	mov    0xc(%rdx),%eax
  40346e:	4c 01 d8             	add    %r11,%rax
  403471:	48 83 c4 28          	add    $0x28,%rsp
  403475:	c3                   	retq   
  403476:	90                   	nop
  403477:	90                   	nop
  403478:	90                   	nop
  403479:	90                   	nop
  40347a:	90                   	nop
  40347b:	90                   	nop
  40347c:	90                   	nop
  40347d:	90                   	nop
  40347e:	90                   	nop
  40347f:	90                   	nop

0000000000403480 <___chkstk_ms>:
  403480:	51                   	push   %rcx
  403481:	50                   	push   %rax
  403482:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  403488:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40348d:	72 19                	jb     4034a8 <___chkstk_ms+0x28>
  40348f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  403496:	48 83 09 00          	orq    $0x0,(%rcx)
  40349a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  4034a0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4034a6:	77 e7                	ja     40348f <___chkstk_ms+0xf>
  4034a8:	48 29 c1             	sub    %rax,%rcx
  4034ab:	48 83 09 00          	orq    $0x0,(%rcx)
  4034af:	58                   	pop    %rax
  4034b0:	59                   	pop    %rcx
  4034b1:	c3                   	retq   
  4034b2:	90                   	nop
  4034b3:	90                   	nop
  4034b4:	90                   	nop
  4034b5:	90                   	nop
  4034b6:	90                   	nop
  4034b7:	90                   	nop
  4034b8:	90                   	nop
  4034b9:	90                   	nop
  4034ba:	90                   	nop
  4034bb:	90                   	nop
  4034bc:	90                   	nop
  4034bd:	90                   	nop
  4034be:	90                   	nop
  4034bf:	90                   	nop

00000000004034c0 <vfprintf>:
  4034c0:	ff 25 f2 5e 00 00    	jmpq   *0x5ef2(%rip)        # 4093b8 <__imp_vfprintf>
  4034c6:	90                   	nop
  4034c7:	90                   	nop

00000000004034c8 <strncmp>:
  4034c8:	ff 25 e2 5e 00 00    	jmpq   *0x5ee2(%rip)        # 4093b0 <__imp_strncmp>
  4034ce:	90                   	nop
  4034cf:	90                   	nop

00000000004034d0 <strlen>:
  4034d0:	ff 25 d2 5e 00 00    	jmpq   *0x5ed2(%rip)        # 4093a8 <__imp_strlen>
  4034d6:	90                   	nop
  4034d7:	90                   	nop

00000000004034d8 <signal>:
  4034d8:	ff 25 c2 5e 00 00    	jmpq   *0x5ec2(%rip)        # 4093a0 <__imp_signal>
  4034de:	90                   	nop
  4034df:	90                   	nop

00000000004034e0 <rand>:
  4034e0:	ff 25 b2 5e 00 00    	jmpq   *0x5eb2(%rip)        # 409398 <__imp_rand>
  4034e6:	90                   	nop
  4034e7:	90                   	nop

00000000004034e8 <memcpy>:
  4034e8:	ff 25 a2 5e 00 00    	jmpq   *0x5ea2(%rip)        # 409390 <__imp_memcpy>
  4034ee:	90                   	nop
  4034ef:	90                   	nop

00000000004034f0 <malloc>:
  4034f0:	ff 25 92 5e 00 00    	jmpq   *0x5e92(%rip)        # 409388 <__imp_malloc>
  4034f6:	90                   	nop
  4034f7:	90                   	nop

00000000004034f8 <fwrite>:
  4034f8:	ff 25 82 5e 00 00    	jmpq   *0x5e82(%rip)        # 409380 <__imp_fwrite>
  4034fe:	90                   	nop
  4034ff:	90                   	nop

0000000000403500 <free>:
  403500:	ff 25 72 5e 00 00    	jmpq   *0x5e72(%rip)        # 409378 <__imp_free>
  403506:	90                   	nop
  403507:	90                   	nop

0000000000403508 <fprintf>:
  403508:	ff 25 62 5e 00 00    	jmpq   *0x5e62(%rip)        # 409370 <__imp_fprintf>
  40350e:	90                   	nop
  40350f:	90                   	nop

0000000000403510 <exit>:
  403510:	ff 25 52 5e 00 00    	jmpq   *0x5e52(%rip)        # 409368 <__imp_exit>
  403516:	90                   	nop
  403517:	90                   	nop

0000000000403518 <calloc>:
  403518:	ff 25 42 5e 00 00    	jmpq   *0x5e42(%rip)        # 409360 <__imp_calloc>
  40351e:	90                   	nop
  40351f:	90                   	nop

0000000000403520 <abort>:
  403520:	ff 25 32 5e 00 00    	jmpq   *0x5e32(%rip)        # 409358 <__imp_abort>
  403526:	90                   	nop
  403527:	90                   	nop

0000000000403528 <_onexit>:
  403528:	ff 25 22 5e 00 00    	jmpq   *0x5e22(%rip)        # 409350 <__imp__onexit>
  40352e:	90                   	nop
  40352f:	90                   	nop

0000000000403530 <_initterm>:
  403530:	ff 25 12 5e 00 00    	jmpq   *0x5e12(%rip)        # 409348 <__imp__initterm>
  403536:	90                   	nop
  403537:	90                   	nop

0000000000403538 <_cexit>:
  403538:	ff 25 fa 5d 00 00    	jmpq   *0x5dfa(%rip)        # 409338 <__imp__cexit>
  40353e:	90                   	nop
  40353f:	90                   	nop

0000000000403540 <_amsg_exit>:
  403540:	ff 25 ea 5d 00 00    	jmpq   *0x5dea(%rip)        # 409330 <__imp__amsg_exit>
  403546:	90                   	nop
  403547:	90                   	nop

0000000000403548 <__setusermatherr>:
  403548:	ff 25 d2 5d 00 00    	jmpq   *0x5dd2(%rip)        # 409320 <__imp___setusermatherr>
  40354e:	90                   	nop
  40354f:	90                   	nop

0000000000403550 <__set_app_type>:
  403550:	ff 25 c2 5d 00 00    	jmpq   *0x5dc2(%rip)        # 409318 <__imp___set_app_type>
  403556:	90                   	nop
  403557:	90                   	nop

0000000000403558 <__lconv_init>:
  403558:	ff 25 b2 5d 00 00    	jmpq   *0x5db2(%rip)        # 409310 <__imp___lconv_init>
  40355e:	90                   	nop
  40355f:	90                   	nop

0000000000403560 <__getmainargs>:
  403560:	ff 25 92 5d 00 00    	jmpq   *0x5d92(%rip)        # 4092f8 <__imp___getmainargs>
  403566:	90                   	nop
  403567:	90                   	nop

0000000000403568 <__C_specific_handler>:
  403568:	ff 25 82 5d 00 00    	jmpq   *0x5d82(%rip)        # 4092f0 <__imp___C_specific_handler>
  40356e:	90                   	nop
  40356f:	90                   	nop

0000000000403570 <__acrt_iob_func>:
  403570:	53                   	push   %rbx
  403571:	48 83 ec 20          	sub    $0x20,%rsp
  403575:	89 cb                	mov    %ecx,%ebx
  403577:	e8 54 00 00 00       	callq  4035d0 <__iob_func>
  40357c:	89 d9                	mov    %ebx,%ecx
  40357e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  403582:	48 c1 e2 04          	shl    $0x4,%rdx
  403586:	48 01 d0             	add    %rdx,%rax
  403589:	48 83 c4 20          	add    $0x20,%rsp
  40358d:	5b                   	pop    %rbx
  40358e:	c3                   	retq   
  40358f:	90                   	nop

0000000000403590 <_get_invalid_parameter_handler>:
  403590:	48 8b 05 59 54 00 00 	mov    0x5459(%rip),%rax        # 4089f0 <handler>
  403597:	c3                   	retq   
  403598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40359f:	00 

00000000004035a0 <_set_invalid_parameter_handler>:
  4035a0:	48 89 c8             	mov    %rcx,%rax
  4035a3:	48 87 05 46 54 00 00 	xchg   %rax,0x5446(%rip)        # 4089f0 <handler>
  4035aa:	c3                   	retq   
  4035ab:	90                   	nop
  4035ac:	90                   	nop
  4035ad:	90                   	nop
  4035ae:	90                   	nop
  4035af:	90                   	nop

00000000004035b0 <__p__acmdln>:
  4035b0:	48 8b 05 29 1e 00 00 	mov    0x1e29(%rip),%rax        # 4053e0 <.refptr.__imp__acmdln>
  4035b7:	48 8b 00             	mov    (%rax),%rax
  4035ba:	c3                   	retq   
  4035bb:	90                   	nop
  4035bc:	90                   	nop
  4035bd:	90                   	nop
  4035be:	90                   	nop
  4035bf:	90                   	nop

00000000004035c0 <__p__fmode>:
  4035c0:	48 8b 05 29 1e 00 00 	mov    0x1e29(%rip),%rax        # 4053f0 <.refptr.__imp__fmode>
  4035c7:	48 8b 00             	mov    (%rax),%rax
  4035ca:	c3                   	retq   
  4035cb:	90                   	nop
  4035cc:	90                   	nop
  4035cd:	90                   	nop
  4035ce:	90                   	nop
  4035cf:	90                   	nop

00000000004035d0 <__iob_func>:
  4035d0:	ff 25 32 5d 00 00    	jmpq   *0x5d32(%rip)        # 409308 <__imp___iob_func>
  4035d6:	90                   	nop
  4035d7:	90                   	nop
  4035d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4035df:	00 

00000000004035e0 <VirtualQuery>:
  4035e0:	ff 25 fa 5c 00 00    	jmpq   *0x5cfa(%rip)        # 4092e0 <__imp_VirtualQuery>
  4035e6:	90                   	nop
  4035e7:	90                   	nop

00000000004035e8 <VirtualProtect>:
  4035e8:	ff 25 ea 5c 00 00    	jmpq   *0x5cea(%rip)        # 4092d8 <__imp_VirtualProtect>
  4035ee:	90                   	nop
  4035ef:	90                   	nop

00000000004035f0 <UnhandledExceptionFilter>:
  4035f0:	ff 25 da 5c 00 00    	jmpq   *0x5cda(%rip)        # 4092d0 <__imp_UnhandledExceptionFilter>
  4035f6:	90                   	nop
  4035f7:	90                   	nop

00000000004035f8 <TlsGetValue>:
  4035f8:	ff 25 ca 5c 00 00    	jmpq   *0x5cca(%rip)        # 4092c8 <__imp_TlsGetValue>
  4035fe:	90                   	nop
  4035ff:	90                   	nop

0000000000403600 <TerminateProcess>:
  403600:	ff 25 ba 5c 00 00    	jmpq   *0x5cba(%rip)        # 4092c0 <__imp_TerminateProcess>
  403606:	90                   	nop
  403607:	90                   	nop

0000000000403608 <Sleep>:
  403608:	ff 25 aa 5c 00 00    	jmpq   *0x5caa(%rip)        # 4092b8 <__imp_Sleep>
  40360e:	90                   	nop
  40360f:	90                   	nop

0000000000403610 <SetUnhandledExceptionFilter>:
  403610:	ff 25 9a 5c 00 00    	jmpq   *0x5c9a(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  403616:	90                   	nop
  403617:	90                   	nop

0000000000403618 <RtlVirtualUnwind>:
  403618:	ff 25 8a 5c 00 00    	jmpq   *0x5c8a(%rip)        # 4092a8 <__imp_RtlVirtualUnwind>
  40361e:	90                   	nop
  40361f:	90                   	nop

0000000000403620 <RtlLookupFunctionEntry>:
  403620:	ff 25 7a 5c 00 00    	jmpq   *0x5c7a(%rip)        # 4092a0 <__imp_RtlLookupFunctionEntry>
  403626:	90                   	nop
  403627:	90                   	nop

0000000000403628 <RtlCaptureContext>:
  403628:	ff 25 6a 5c 00 00    	jmpq   *0x5c6a(%rip)        # 409298 <__imp_RtlCaptureContext>
  40362e:	90                   	nop
  40362f:	90                   	nop

0000000000403630 <RtlAddFunctionTable>:
  403630:	ff 25 5a 5c 00 00    	jmpq   *0x5c5a(%rip)        # 409290 <__imp_RtlAddFunctionTable>
  403636:	90                   	nop
  403637:	90                   	nop

0000000000403638 <QueryPerformanceCounter>:
  403638:	ff 25 4a 5c 00 00    	jmpq   *0x5c4a(%rip)        # 409288 <__imp_QueryPerformanceCounter>
  40363e:	90                   	nop
  40363f:	90                   	nop

0000000000403640 <LeaveCriticalSection>:
  403640:	ff 25 3a 5c 00 00    	jmpq   *0x5c3a(%rip)        # 409280 <__imp_LeaveCriticalSection>
  403646:	90                   	nop
  403647:	90                   	nop

0000000000403648 <InitializeCriticalSection>:
  403648:	ff 25 2a 5c 00 00    	jmpq   *0x5c2a(%rip)        # 409278 <__imp_InitializeCriticalSection>
  40364e:	90                   	nop
  40364f:	90                   	nop

0000000000403650 <GetTickCount>:
  403650:	ff 25 1a 5c 00 00    	jmpq   *0x5c1a(%rip)        # 409270 <__imp_GetTickCount>
  403656:	90                   	nop
  403657:	90                   	nop

0000000000403658 <GetSystemTimeAsFileTime>:
  403658:	ff 25 0a 5c 00 00    	jmpq   *0x5c0a(%rip)        # 409268 <__imp_GetSystemTimeAsFileTime>
  40365e:	90                   	nop
  40365f:	90                   	nop

0000000000403660 <GetStartupInfoA>:
  403660:	ff 25 fa 5b 00 00    	jmpq   *0x5bfa(%rip)        # 409260 <__imp_GetStartupInfoA>
  403666:	90                   	nop
  403667:	90                   	nop

0000000000403668 <GetLastError>:
  403668:	ff 25 ea 5b 00 00    	jmpq   *0x5bea(%rip)        # 409258 <__imp_GetLastError>
  40366e:	90                   	nop
  40366f:	90                   	nop

0000000000403670 <GetCurrentThreadId>:
  403670:	ff 25 da 5b 00 00    	jmpq   *0x5bda(%rip)        # 409250 <__imp_GetCurrentThreadId>
  403676:	90                   	nop
  403677:	90                   	nop

0000000000403678 <GetCurrentProcessId>:
  403678:	ff 25 ca 5b 00 00    	jmpq   *0x5bca(%rip)        # 409248 <__imp_GetCurrentProcessId>
  40367e:	90                   	nop
  40367f:	90                   	nop

0000000000403680 <GetCurrentProcess>:
  403680:	ff 25 ba 5b 00 00    	jmpq   *0x5bba(%rip)        # 409240 <__imp_GetCurrentProcess>
  403686:	90                   	nop
  403687:	90                   	nop

0000000000403688 <EnterCriticalSection>:
  403688:	ff 25 aa 5b 00 00    	jmpq   *0x5baa(%rip)        # 409238 <__imp_EnterCriticalSection>
  40368e:	90                   	nop
  40368f:	90                   	nop

0000000000403690 <DeleteCriticalSection>:
  403690:	ff 25 9a 5b 00 00    	jmpq   *0x5b9a(%rip)        # 409230 <__IAT_start__>
  403696:	90                   	nop
  403697:	90                   	nop
  403698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40369f:	00 

00000000004036a0 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>:
  4036a0:	55                   	push   %rbp
  4036a1:	48 89 e5             	mov    %rsp,%rbp
  4036a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4036a8:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4036ac:	48 8b 00             	mov    (%rax),%rax
  4036af:	5d                   	pop    %rbp
  4036b0:	c3                   	retq   
  4036b1:	90                   	nop
  4036b2:	90                   	nop
  4036b3:	90                   	nop
  4036b4:	90                   	nop
  4036b5:	90                   	nop
  4036b6:	90                   	nop
  4036b7:	90                   	nop
  4036b8:	90                   	nop
  4036b9:	90                   	nop
  4036ba:	90                   	nop
  4036bb:	90                   	nop
  4036bc:	90                   	nop
  4036bd:	90                   	nop
  4036be:	90                   	nop
  4036bf:	90                   	nop

00000000004036c0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>:
  4036c0:	55                   	push   %rbp
  4036c1:	48 89 e5             	mov    %rsp,%rbp
  4036c4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4036c8:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4036cc:	48 8b 00             	mov    (%rax),%rax
  4036cf:	5d                   	pop    %rbp
  4036d0:	c3                   	retq   
  4036d1:	90                   	nop
  4036d2:	90                   	nop
  4036d3:	90                   	nop
  4036d4:	90                   	nop
  4036d5:	90                   	nop
  4036d6:	90                   	nop
  4036d7:	90                   	nop
  4036d8:	90                   	nop
  4036d9:	90                   	nop
  4036da:	90                   	nop
  4036db:	90                   	nop
  4036dc:	90                   	nop
  4036dd:	90                   	nop
  4036de:	90                   	nop
  4036df:	90                   	nop

00000000004036e0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>:
  4036e0:	55                   	push   %rbp
  4036e1:	48 89 e5             	mov    %rsp,%rbp
  4036e4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4036e8:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4036ec:	48 8b 00             	mov    (%rax),%rax
  4036ef:	5d                   	pop    %rbp
  4036f0:	c3                   	retq   
  4036f1:	90                   	nop
  4036f2:	90                   	nop
  4036f3:	90                   	nop
  4036f4:	90                   	nop
  4036f5:	90                   	nop
  4036f6:	90                   	nop
  4036f7:	90                   	nop
  4036f8:	90                   	nop
  4036f9:	90                   	nop
  4036fa:	90                   	nop
  4036fb:	90                   	nop
  4036fc:	90                   	nop
  4036fd:	90                   	nop
  4036fe:	90                   	nop
  4036ff:	90                   	nop

0000000000403700 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>:
  403700:	55                   	push   %rbp
  403701:	48 89 e5             	mov    %rsp,%rbp
  403704:	48 83 ec 20          	sub    $0x20,%rsp
  403708:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40370c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  403710:	e8 0b 00 00 00       	callq  403720 <_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE>
  403715:	48 83 c4 20          	add    $0x20,%rsp
  403719:	5d                   	pop    %rbp
  40371a:	c3                   	retq   
  40371b:	90                   	nop
  40371c:	90                   	nop
  40371d:	90                   	nop
  40371e:	90                   	nop
  40371f:	90                   	nop

0000000000403720 <_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE>:
  403720:	55                   	push   %rbp
  403721:	48 89 e5             	mov    %rsp,%rbp
  403724:	48 83 ec 30          	sub    $0x30,%rsp
  403728:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40372c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  403730:	e8 8b ff ff ff       	callq  4036c0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  403735:	48 89 c1             	mov    %rax,%rcx
  403738:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
  40373f:	9b c4 20 
  403742:	48 89 c8             	mov    %rcx,%rax
  403745:	48 f7 ea             	imul   %rdx
  403748:	48 c1 fa 07          	sar    $0x7,%rdx
  40374c:	48 89 c8             	mov    %rcx,%rax
  40374f:	48 c1 f8 3f          	sar    $0x3f,%rax
  403753:	48 29 c2             	sub    %rax,%rdx
  403756:	48 89 d0             	mov    %rdx,%rax
  403759:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40375d:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
  403761:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  403765:	48 89 c1             	mov    %rax,%rcx
  403768:	e8 33 00 00 00       	callq  4037a0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_>
  40376d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  403771:	48 83 c4 30          	add    $0x30,%rsp
  403775:	5d                   	pop    %rbp
  403776:	c3                   	retq   
  403777:	90                   	nop
  403778:	90                   	nop
  403779:	90                   	nop
  40377a:	90                   	nop
  40377b:	90                   	nop
  40377c:	90                   	nop
  40377d:	90                   	nop
  40377e:	90                   	nop
  40377f:	90                   	nop

0000000000403780 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>:
  403780:	55                   	push   %rbp
  403781:	48 89 e5             	mov    %rsp,%rbp
  403784:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  403788:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40378c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  403790:	48 8b 10             	mov    (%rax),%rdx
  403793:	48 8b 45 10          	mov    0x10(%rbp),%rax
  403797:	48 89 10             	mov    %rdx,(%rax)
  40379a:	90                   	nop
  40379b:	5d                   	pop    %rbp
  40379c:	c3                   	retq   
  40379d:	90                   	nop
  40379e:	90                   	nop
  40379f:	90                   	nop

00000000004037a0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_>:
  4037a0:	55                   	push   %rbp
  4037a1:	48 89 e5             	mov    %rsp,%rbp
  4037a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4037a8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037ac:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4037b0:	48 8b 10             	mov    (%rax),%rdx
  4037b3:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4037b7:	48 89 10             	mov    %rdx,(%rax)
  4037ba:	90                   	nop
  4037bb:	5d                   	pop    %rbp
  4037bc:	c3                   	retq   
  4037bd:	90                   	nop
  4037be:	90                   	nop
  4037bf:	90                   	nop

00000000004037c0 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
  4037c0:	55                   	push   %rbp
  4037c1:	48 89 e5             	mov    %rsp,%rbp
  4037c4:	48 83 ec 30          	sub    $0x30,%rsp
  4037c8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4037cc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037d0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4037d4:	48 89 c1             	mov    %rax,%rcx
  4037d7:	e8 c4 fe ff ff       	callq  4036a0 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
  4037dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4037e0:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4037e4:	e8 b7 fe ff ff       	callq  4036a0 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
  4037e9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4037ed:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4037f1:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4037f5:	48 89 c1             	mov    %rax,%rcx
  4037f8:	e8 13 00 00 00       	callq  403810 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
  4037fd:	90                   	nop
  4037fe:	48 83 c4 30          	add    $0x30,%rsp
  403802:	5d                   	pop    %rbp
  403803:	c3                   	retq   
  403804:	90                   	nop
  403805:	90                   	nop
  403806:	90                   	nop
  403807:	90                   	nop
  403808:	90                   	nop
  403809:	90                   	nop
  40380a:	90                   	nop
  40380b:	90                   	nop
  40380c:	90                   	nop
  40380d:	90                   	nop
  40380e:	90                   	nop
  40380f:	90                   	nop

0000000000403810 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
  403810:	55                   	push   %rbp
  403811:	53                   	push   %rbx
  403812:	48 83 ec 48          	sub    $0x48,%rsp
  403816:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40381d:	00 
  40381e:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  403822:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  403826:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40382a:	48 8b 00             	mov    (%rax),%rax
  40382d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  403831:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  403835:	48 89 c1             	mov    %rax,%rcx
  403838:	e8 83 fe ff ff       	callq  4036c0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  40383d:	48 89 c3             	mov    %rax,%rbx
  403840:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  403844:	48 8b 00             	mov    (%rax),%rax
  403847:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40384b:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  40384f:	48 89 c1             	mov    %rax,%rcx
  403852:	e8 69 fe ff ff       	callq  4036c0 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  403857:	48 29 c3             	sub    %rax,%rbx
  40385a:	48 89 d8             	mov    %rbx,%rax
  40385d:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  403861:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
  403865:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  403869:	48 89 c1             	mov    %rax,%rcx
  40386c:	e8 0f ff ff ff       	callq  403780 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>
  403871:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  403875:	48 83 c4 48          	add    $0x48,%rsp
  403879:	5b                   	pop    %rbx
  40387a:	5d                   	pop    %rbp
  40387b:	c3                   	retq   
  40387c:	90                   	nop
  40387d:	90                   	nop
  40387e:	90                   	nop
  40387f:	90                   	nop

0000000000403880 <__report_error>:
  403880:	56                   	push   %rsi
  403881:	53                   	push   %rbx
  403882:	48 83 ec 38          	sub    $0x38,%rsp
  403886:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  40388b:	48 89 cb             	mov    %rcx,%rbx
  40388e:	b9 02 00 00 00       	mov    $0x2,%ecx
  403893:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  403898:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  40389d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4038a2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4038a7:	e8 c4 fc ff ff       	callq  403570 <__acrt_iob_func>
  4038ac:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  4038b2:	ba 01 00 00 00       	mov    $0x1,%edx
  4038b7:	48 8d 0d 42 19 00 00 	lea    0x1942(%rip),%rcx        # 405200 <.rdata>
  4038be:	49 89 c1             	mov    %rax,%r9
  4038c1:	e8 32 fc ff ff       	callq  4034f8 <fwrite>
  4038c6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4038cb:	b9 02 00 00 00       	mov    $0x2,%ecx
  4038d0:	e8 9b fc ff ff       	callq  403570 <__acrt_iob_func>
  4038d5:	48 89 da             	mov    %rbx,%rdx
  4038d8:	48 89 c1             	mov    %rax,%rcx
  4038db:	49 89 f0             	mov    %rsi,%r8
  4038de:	e8 dd fb ff ff       	callq  4034c0 <vfprintf>
  4038e3:	e8 38 fc ff ff       	callq  403520 <abort>
  4038e8:	90                   	nop
  4038e9:	90                   	nop
  4038ea:	90                   	nop
  4038eb:	90                   	nop
  4038ec:	90                   	nop
  4038ed:	90                   	nop
  4038ee:	90                   	nop
  4038ef:	90                   	nop

00000000004038f0 <register_frame_ctor>:
  4038f0:	e9 3b dc ff ff       	jmpq   401530 <__gcc_register_frame>
  4038f5:	90                   	nop
  4038f6:	90                   	nop
  4038f7:	90                   	nop
  4038f8:	90                   	nop
  4038f9:	90                   	nop
  4038fa:	90                   	nop
  4038fb:	90                   	nop
  4038fc:	90                   	nop
  4038fd:	90                   	nop
  4038fe:	90                   	nop
  4038ff:	90                   	nop

0000000000403900 <__CTOR_LIST__>:
  403900:	ff                   	(bad)  
  403901:	ff                   	(bad)  
  403902:	ff                   	(bad)  
  403903:	ff                   	(bad)  
  403904:	ff                   	(bad)  
  403905:	ff                   	(bad)  
  403906:	ff                   	(bad)  
  403907:	ff                   	.byte 0xff

0000000000403908 <.ctors>:
  403908:	72 1b                	jb     403925 <.ctors.65535+0xd>
  40390a:	40 00 00             	add    %al,(%rax)
  40390d:	00 00                	add    %al,(%rax)
	...

0000000000403910 <.ctors>:
  403910:	96                   	xchg   %eax,%esi
  403911:	1f                   	(bad)  
  403912:	40 00 00             	add    %al,(%rax)
  403915:	00 00                	add    %al,(%rax)
	...

0000000000403918 <.ctors.65535>:
  403918:	f0 38 40 00          	lock cmp %al,0x0(%rax)
	...

0000000000403928 <__DTOR_LIST__>:
  403928:	ff                   	(bad)  
  403929:	ff                   	(bad)  
  40392a:	ff                   	(bad)  
  40392b:	ff                   	(bad)  
  40392c:	ff                   	(bad)  
  40392d:	ff                   	(bad)  
  40392e:	ff                   	(bad)  
  40392f:	ff 00                	incl   (%rax)
  403931:	00 00                	add    %al,(%rax)
  403933:	00 00                	add    %al,(%rax)
  403935:	00 00                	add    %al,(%rax)
	...
