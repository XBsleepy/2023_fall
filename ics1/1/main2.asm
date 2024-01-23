
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
  401070:	e8 4b 22 00 00       	callq  4032c0 <__set_app_type>
  401075:	e8 b6 22 00 00       	callq  403330 <__p__fmode>
  40107a:	48 8b 15 ff 43 00 00 	mov    0x43ff(%rip),%rdx        # 405480 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 c6 0d 00 00       	callq  401e50 <_setargv>
  40108a:	48 8b 05 bf 42 00 00 	mov    0x42bf(%rip),%rax        # 405350 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 16 22 00 00       	callq  4032c0 <__set_app_type>
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
  4010f0:	48 8d 0d 69 10 00 00 	lea    0x1069(%rip),%rcx        # 402160 <_matherr>
  4010f7:	e8 54 10 00 00       	callq  402150 <__mingw_setusermatherr>
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
  40116e:	e8 5d 21 00 00       	callq  4032d0 <__getmainargs>
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
  401247:	e8 14 12 00 00       	callq  402460 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 5d 17 00 00 	lea    0x175d(%rip),%rcx        # 4029b0 <_gnu_exception_handler>
  401253:	ff 15 57 80 00 00    	callq  *0x8057(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 a0 41 00 00 	mov    0x41a0(%rip),%rdx        # 405400 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 58 16 00 00       	callq  4028c0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 9c 20 00 00       	callq  403310 <_set_invalid_parameter_handler>
  401274:	e8 e7 0f 00 00       	callq  402260 <_fpreset>
  401279:	48 8b 05 40 41 00 00 	mov    0x4140(%rip),%rax        # 4053c0 <.refptr.__image_base__>
  401280:	48 89 05 81 77 00 00 	mov    %rax,0x7781(%rip)        # 408a08 <__mingw_winmain_hInstance>
  401287:	e8 94 20 00 00       	callq  403320 <__p__acmdln>
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
  401329:	e8 32 1f 00 00       	callq  403260 <malloc>
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
  401354:	e8 e7 1e 00 00       	callq  403240 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 fb 1e 00 00       	callq  403260 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 db 1e 00 00       	callq  403258 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 6c 00 00 	mov    %rbp,0x6c83(%rip)        # 408018 <argv>
  401395:	e8 86 0a 00 00       	callq  401e20 <__main>
  40139a:	48 8b 05 2f 40 00 00 	mov    0x402f(%rip),%rax        # 4053d0 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 6c 00 00 	mov    0x6c68(%rip),%rdx        # 408010 <envp>
  4013a8:	8b 0d 72 6c 00 00    	mov    0x6c72(%rip),%ecx        # 408020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 6c 00 00 	mov    0x6c55(%rip),%r8        # 408010 <envp>
  4013bb:	48 8b 15 56 6c 00 00 	mov    0x6c56(%rip),%rdx        # 408018 <argv>
  4013c2:	e8 8a 07 00 00       	callq  401b51 <main>
  4013c7:	8b 0d 3b 6c 00 00    	mov    0x6c3b(%rip),%ecx        # 408008 <managedapp>
  4013cd:	89 05 39 6c 00 00    	mov    %eax,0x6c39(%rip)        # 40800c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 6c 00 00    	mov    0x6c23(%rip),%edx        # 408004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 be 1e 00 00       	callq  4032a8 <_cexit>
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
  40142c:	e8 7f 1e 00 00       	callq  4032b0 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 fd 3f 00 00 	mov    0x3ffd(%rip),%rdx        # 405440 <.refptr.__xc_z>
  401443:	48 8b 0d e6 3f 00 00 	mov    0x3fe6(%rip),%rcx        # 405430 <.refptr.__xc_a>
  40144a:	e8 51 1e 00 00       	callq  4032a0 <_initterm>
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
  401494:	e8 07 1e 00 00       	callq  4032a0 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 db 1d 00 00       	callq  403280 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 05 40 00 00 	mov    0x4005(%rip),%rax        # 4054c0 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 9a 09 00 00       	callq  401e60 <__security_init_cookie>
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
  4014f1:	e8 6a 09 00 00       	callq  401e60 <__security_init_cookie>
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
  401514:	e8 7f 1d 00 00       	callq  403298 <_onexit>
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
  4015bd:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4015c1:	eb 18                	jmp    4015db <_Z7getdataP5tablePdi+0x45>
  4015c3:	8b 45 20             	mov    0x20(%rbp),%eax
  4015c6:	48 98                	cltq   
  4015c8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4015cf:	00 
  4015d0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4015d4:	48 01 d0             	add    %rdx,%rax
  4015d7:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  4015db:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4015e0:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4015e5:	5d                   	pop    %rbp
  4015e6:	c3                   	retq   

00000000004015e7 <_Z10calculate1i>:
  4015e7:	55                   	push   %rbp
  4015e8:	48 89 e5             	mov    %rsp,%rbp
  4015eb:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  4015f2:	89 4d 10             	mov    %ecx,0x10(%rbp)
  4015f5:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4015fc:	00 
  4015fd:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  401604:	00 
  401605:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  401609:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
  40160e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  401612:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
  401617:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40161b:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
  401620:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  401624:	c5 fb 11 45 c0       	vmovsd %xmm0,-0x40(%rbp)
  401629:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40162d:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
  401632:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  401636:	c5 fb 11 45 b0       	vmovsd %xmm0,-0x50(%rbp)
  40163b:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  401642:	00 
  401643:	48 8b 05 f6 69 00 00 	mov    0x69f6(%rip),%rax        # 408040 <Table>
  40164a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40164e:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
  401655:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401658:	48 98                	cltq   
  40165a:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
  40165e:	0f 86 26 01 00 00    	jbe    40178a <_Z10calculate1i+0x1a3>
  401664:	48 8b 05 ed 69 00 00 	mov    0x69ed(%rip),%rax        # 408058 <Table+0x18>
  40166b:	8b 55 cc             	mov    -0x34(%rbp),%edx
  40166e:	41 89 d0             	mov    %edx,%r8d
  401671:	48 89 c2             	mov    %rax,%rdx
  401674:	48 8d 0d c5 69 00 00 	lea    0x69c5(%rip),%rcx        # 408040 <Table>
  40167b:	e8 d0 fe ff ff       	callq  401550 <_Z7getdataP5tablePii>
  401680:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  401683:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  401686:	3b 45 10             	cmp    0x10(%rbp),%eax
  401689:	0f 8f f2 00 00 00    	jg     401781 <_Z10calculate1i+0x19a>
  40168f:	48 8b 05 b2 69 00 00 	mov    0x69b2(%rip),%rax        # 408048 <Table+0x8>
  401696:	8b 55 cc             	mov    -0x34(%rbp),%edx
  401699:	41 89 d0             	mov    %edx,%r8d
  40169c:	48 89 c2             	mov    %rax,%rdx
  40169f:	48 8d 0d 9a 69 00 00 	lea    0x699a(%rip),%rcx        # 408040 <Table>
  4016a6:	e8 a5 fe ff ff       	callq  401550 <_Z7getdataP5tablePii>
  4016ab:	89 45 a0             	mov    %eax,-0x60(%rbp)
  4016ae:	48 8b 05 9b 69 00 00 	mov    0x699b(%rip),%rax        # 408050 <Table+0x10>
  4016b5:	8b 55 cc             	mov    -0x34(%rbp),%edx
  4016b8:	41 89 d0             	mov    %edx,%r8d
  4016bb:	48 89 c2             	mov    %rax,%rdx
  4016be:	48 8d 0d 7b 69 00 00 	lea    0x697b(%rip),%rcx        # 408040 <Table>
  4016c5:	e8 86 fe ff ff       	callq  401550 <_Z7getdataP5tablePii>
  4016ca:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4016cd:	48 8b 05 8c 69 00 00 	mov    0x698c(%rip),%rax        # 408060 <Table+0x20>
  4016d4:	8b 55 cc             	mov    -0x34(%rbp),%edx
  4016d7:	41 89 d0             	mov    %edx,%r8d
  4016da:	48 89 c2             	mov    %rax,%rdx
  4016dd:	48 8d 0d 5c 69 00 00 	lea    0x695c(%rip),%rcx        # 408040 <Table>
  4016e4:	e8 ad fe ff ff       	callq  401596 <_Z7getdataP5tablePdi>
  4016e9:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4016ee:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4016f2:	c5 f3 2a 4d 9c       	vcvtsi2sdl -0x64(%rbp),%xmm1,%xmm1
  4016f7:	c5 fb 10 05 09 39 00 	vmovsd 0x3909(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  4016fe:	00 
  4016ff:	c5 fb 5c 45 90       	vsubsd -0x70(%rbp),%xmm0,%xmm0
  401704:	c5 f3 59 c0          	vmulsd %xmm0,%xmm1,%xmm0
  401708:	c5 fb 11 45 88       	vmovsd %xmm0,-0x78(%rbp)
  40170d:	8b 45 a0             	mov    -0x60(%rbp),%eax
  401710:	48 98                	cltq   
  401712:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  401716:	8b 45 9c             	mov    -0x64(%rbp),%eax
  401719:	48 98                	cltq   
  40171b:	48 01 45 f0          	add    %rax,-0x10(%rbp)
  40171f:	c5 fb 10 45 d8       	vmovsd -0x28(%rbp),%xmm0
  401724:	c5 fb 58 45 90       	vaddsd -0x70(%rbp),%xmm0,%xmm0
  401729:	c5 fb 11 45 d8       	vmovsd %xmm0,-0x28(%rbp)
  40172e:	c5 fb 10 45 e8       	vmovsd -0x18(%rbp),%xmm0
  401733:	c5 fb 58 45 88       	vaddsd -0x78(%rbp),%xmm0,%xmm0
  401738:	c5 fb 11 45 e8       	vmovsd %xmm0,-0x18(%rbp)
  40173d:	48 8b 05 24 69 00 00 	mov    0x6924(%rip),%rax        # 408068 <Table+0x28>
  401744:	8b 55 cc             	mov    -0x34(%rbp),%edx
  401747:	41 89 d0             	mov    %edx,%r8d
  40174a:	48 89 c2             	mov    %rax,%rdx
  40174d:	48 8d 0d ec 68 00 00 	lea    0x68ec(%rip),%rcx        # 408040 <Table>
  401754:	e8 3d fe ff ff       	callq  401596 <_Z7getdataP5tablePdi>
  401759:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  40175d:	c5 fb 10 05 a3 38 00 	vmovsd 0x38a3(%rip),%xmm0        # 405008 <_ZStL19piecewise_construct+0x8>
  401764:	00 
  401765:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  401769:	c5 fb 59 45 88       	vmulsd -0x78(%rbp),%xmm0,%xmm0
  40176e:	c5 fb 10 4d e0       	vmovsd -0x20(%rbp),%xmm1
  401773:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  401777:	c5 fb 11 45 e0       	vmovsd %xmm0,-0x20(%rbp)
  40177c:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  401781:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
  401785:	e9 cb fe ff ff       	jmpq   401655 <_Z10calculate1i+0x6e>
  40178a:	c4 e1 fb 2a 45 f8    	vcvtsi2sdq -0x8(%rbp),%xmm0,%xmm0
  401790:	c5 fb 11 05 d8 68 00 	vmovsd %xmm0,0x68d8(%rip)        # 408070 <SumQuantity>
  401797:	00 
  401798:	c4 e1 fb 2a 45 f0    	vcvtsi2sdq -0x10(%rbp),%xmm0,%xmm0
  40179e:	c5 fb 11 05 d2 68 00 	vmovsd %xmm0,0x68d2(%rip)        # 408078 <SumBasePrice>
  4017a5:	00 
  4017a6:	c5 fb 10 45 e8       	vmovsd -0x18(%rbp),%xmm0
  4017ab:	c5 fb 11 05 cd 68 00 	vmovsd %xmm0,0x68cd(%rip)        # 408080 <SumDiscPrice>
  4017b2:	00 
  4017b3:	c5 fb 10 45 e0       	vmovsd -0x20(%rbp),%xmm0
  4017b8:	c5 fb 11 05 c8 68 00 	vmovsd %xmm0,0x68c8(%rip)        # 408088 <SumCharge>
  4017bf:	00 
  4017c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4017c9:	48 f7 75 a8          	divq   -0x58(%rbp)
  4017cd:	48 89 c2             	mov    %rax,%rdx
  4017d0:	48 85 d2             	test   %rdx,%rdx
  4017d3:	78 07                	js     4017dc <_Z10calculate1i+0x1f5>
  4017d5:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  4017da:	eb 15                	jmp    4017f1 <_Z10calculate1i+0x20a>
  4017dc:	48 89 d0             	mov    %rdx,%rax
  4017df:	48 d1 e8             	shr    %rax
  4017e2:	83 e2 01             	and    $0x1,%edx
  4017e5:	48 09 d0             	or     %rdx,%rax
  4017e8:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  4017ed:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  4017f1:	c5 fb 11 05 97 68 00 	vmovsd %xmm0,0x6897(%rip)        # 408090 <AvgQuantity>
  4017f8:	00 
  4017f9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4017fd:	ba 00 00 00 00       	mov    $0x0,%edx
  401802:	48 f7 75 a8          	divq   -0x58(%rbp)
  401806:	48 89 c2             	mov    %rax,%rdx
  401809:	48 85 d2             	test   %rdx,%rdx
  40180c:	78 07                	js     401815 <_Z10calculate1i+0x22e>
  40180e:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  401813:	eb 15                	jmp    40182a <_Z10calculate1i+0x243>
  401815:	48 89 d0             	mov    %rdx,%rax
  401818:	48 d1 e8             	shr    %rax
  40181b:	83 e2 01             	and    $0x1,%edx
  40181e:	48 09 d0             	or     %rdx,%rax
  401821:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401826:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  40182a:	c5 fb 11 05 66 68 00 	vmovsd %xmm0,0x6866(%rip)        # 408098 <AvgPrice>
  401831:	00 
  401832:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401836:	48 85 c0             	test   %rax,%rax
  401839:	78 07                	js     401842 <_Z10calculate1i+0x25b>
  40183b:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401840:	eb 15                	jmp    401857 <_Z10calculate1i+0x270>
  401842:	48 89 c2             	mov    %rax,%rdx
  401845:	48 d1 ea             	shr    %rdx
  401848:	83 e0 01             	and    $0x1,%eax
  40184b:	48 09 c2             	or     %rax,%rdx
  40184e:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  401853:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  401857:	c5 fb 10 4d d8       	vmovsd -0x28(%rbp),%xmm1
  40185c:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
  401860:	c5 fb 11 05 38 68 00 	vmovsd %xmm0,0x6838(%rip)        # 4080a0 <AvgDiscount>
  401867:	00 
  401868:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40186c:	48 89 05 35 68 00 00 	mov    %rax,0x6835(%rip)        # 4080a8 <total>
  401873:	90                   	nop
  401874:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  40187b:	5d                   	pop    %rbp
  40187c:	c3                   	retq   

000000000040187d <_Z10calculate2i>:
  40187d:	55                   	push   %rbp
  40187e:	48 89 e5             	mov    %rsp,%rbp
  401881:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401884:	90                   	nop
  401885:	5d                   	pop    %rbp
  401886:	c3                   	retq   

0000000000401887 <__tcf_0>:
  401887:	55                   	push   %rbp
  401888:	48 89 e5             	mov    %rsp,%rbp
  40188b:	48 83 ec 20          	sub    $0x20,%rsp
  40188f:	48 8d 0d 1a 68 00 00 	lea    0x681a(%rip),%rcx        # 4080b0 <_ZStL8__ioinit>
  401896:	e8 a5 04 00 00       	callq  401d40 <_ZNSt8ios_base4InitD1Ev>
  40189b:	90                   	nop
  40189c:	48 83 c4 20          	add    $0x20,%rsp
  4018a0:	5d                   	pop    %rbp
  4018a1:	c3                   	retq   

00000000004018a2 <_Z41__static_initialization_and_destruction_0ii>:
  4018a2:	55                   	push   %rbp
  4018a3:	48 89 e5             	mov    %rsp,%rbp
  4018a6:	48 83 ec 20          	sub    $0x20,%rsp
  4018aa:	89 4d 10             	mov    %ecx,0x10(%rbp)
  4018ad:	89 55 18             	mov    %edx,0x18(%rbp)
  4018b0:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  4018b4:	75 21                	jne    4018d7 <_Z41__static_initialization_and_destruction_0ii+0x35>
  4018b6:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  4018bd:	75 18                	jne    4018d7 <_Z41__static_initialization_and_destruction_0ii+0x35>
  4018bf:	48 8d 0d ea 67 00 00 	lea    0x67ea(%rip),%rcx        # 4080b0 <_ZStL8__ioinit>
  4018c6:	e8 7d 04 00 00       	callq  401d48 <_ZNSt8ios_base4InitC1Ev>
  4018cb:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 401887 <__tcf_0>
  4018d2:	e8 39 fc ff ff       	callq  401510 <atexit>
  4018d7:	90                   	nop
  4018d8:	48 83 c4 20          	add    $0x20,%rsp
  4018dc:	5d                   	pop    %rbp
  4018dd:	c3                   	retq   

00000000004018de <_GLOBAL__sub_I_Table>:
  4018de:	55                   	push   %rbp
  4018df:	48 89 e5             	mov    %rsp,%rbp
  4018e2:	48 83 ec 20          	sub    $0x20,%rsp
  4018e6:	ba ff ff 00 00       	mov    $0xffff,%edx
  4018eb:	b9 01 00 00 00       	mov    $0x1,%ecx
  4018f0:	e8 ad ff ff ff       	callq  4018a2 <_Z41__static_initialization_and_destruction_0ii>
  4018f5:	90                   	nop
  4018f6:	48 83 c4 20          	add    $0x20,%rsp
  4018fa:	5d                   	pop    %rbp
  4018fb:	c3                   	retq   
  4018fc:	90                   	nop
  4018fd:	90                   	nop
  4018fe:	90                   	nop
  4018ff:	90                   	nop

0000000000401900 <_Z4makev>:
  401900:	55                   	push   %rbp
  401901:	48 89 e5             	mov    %rsp,%rbp
  401904:	48 83 ec 30          	sub    $0x30,%rsp
  401908:	48 c7 45 f0 80 96 98 	movq   $0x989680,-0x10(%rbp)
  40190f:	00 
  401910:	48 8b 05 19 3a 00 00 	mov    0x3a19(%rip),%rax        # 405330 <.refptr.Table>
  401917:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40191b:	48 89 10             	mov    %rdx,(%rax)
  40191e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401922:	ba 04 00 00 00       	mov    $0x4,%edx
  401927:	48 89 c1             	mov    %rax,%rcx
  40192a:	e8 59 19 00 00       	callq  403288 <calloc>
  40192f:	48 89 c2             	mov    %rax,%rdx
  401932:	48 8b 05 f7 39 00 00 	mov    0x39f7(%rip),%rax        # 405330 <.refptr.Table>
  401939:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40193d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401941:	ba 04 00 00 00       	mov    $0x4,%edx
  401946:	48 89 c1             	mov    %rax,%rcx
  401949:	e8 3a 19 00 00       	callq  403288 <calloc>
  40194e:	48 89 c2             	mov    %rax,%rdx
  401951:	48 8b 05 d8 39 00 00 	mov    0x39d8(%rip),%rax        # 405330 <.refptr.Table>
  401958:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40195c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401960:	ba 08 00 00 00       	mov    $0x8,%edx
  401965:	48 89 c1             	mov    %rax,%rcx
  401968:	e8 1b 19 00 00       	callq  403288 <calloc>
  40196d:	48 89 c2             	mov    %rax,%rdx
  401970:	48 8b 05 b9 39 00 00 	mov    0x39b9(%rip),%rax        # 405330 <.refptr.Table>
  401977:	48 89 50 20          	mov    %rdx,0x20(%rax)
  40197b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40197f:	ba 08 00 00 00       	mov    $0x8,%edx
  401984:	48 89 c1             	mov    %rax,%rcx
  401987:	e8 fc 18 00 00       	callq  403288 <calloc>
  40198c:	48 89 c2             	mov    %rax,%rdx
  40198f:	48 8b 05 9a 39 00 00 	mov    0x399a(%rip),%rax        # 405330 <.refptr.Table>
  401996:	48 89 50 28          	mov    %rdx,0x28(%rax)
  40199a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40199e:	ba 04 00 00 00       	mov    $0x4,%edx
  4019a3:	48 89 c1             	mov    %rax,%rcx
  4019a6:	e8 dd 18 00 00       	callq  403288 <calloc>
  4019ab:	48 89 c2             	mov    %rax,%rdx
  4019ae:	48 8b 05 7b 39 00 00 	mov    0x397b(%rip),%rax        # 405330 <.refptr.Table>
  4019b5:	48 89 50 18          	mov    %rdx,0x18(%rax)
  4019b9:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4019c0:	00 
  4019c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019c5:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  4019c9:	0f 83 7b 01 00 00    	jae    401b4a <_Z4makev+0x24a>
  4019cf:	e8 7c 18 00 00       	callq  403250 <rand>
  4019d4:	89 c1                	mov    %eax,%ecx
  4019d6:	ba 67 66 66 66       	mov    $0x66666667,%edx
  4019db:	89 c8                	mov    %ecx,%eax
  4019dd:	f7 ea                	imul   %edx
  4019df:	c1 fa 02             	sar    $0x2,%edx
  4019e2:	89 c8                	mov    %ecx,%eax
  4019e4:	c1 f8 1f             	sar    $0x1f,%eax
  4019e7:	29 c2                	sub    %eax,%edx
  4019e9:	89 d0                	mov    %edx,%eax
  4019eb:	c1 e0 02             	shl    $0x2,%eax
  4019ee:	01 d0                	add    %edx,%eax
  4019f0:	01 c0                	add    %eax,%eax
  4019f2:	29 c1                	sub    %eax,%ecx
  4019f4:	89 ca                	mov    %ecx,%edx
  4019f6:	48 8b 05 33 39 00 00 	mov    0x3933(%rip),%rax        # 405330 <.refptr.Table>
  4019fd:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401a01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a05:	48 c1 e0 02          	shl    $0x2,%rax
  401a09:	48 01 c8             	add    %rcx,%rax
  401a0c:	83 c2 0a             	add    $0xa,%edx
  401a0f:	89 10                	mov    %edx,(%rax)
  401a11:	e8 3a 18 00 00       	callq  403250 <rand>
  401a16:	89 c1                	mov    %eax,%ecx
  401a18:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401a1d:	89 c8                	mov    %ecx,%eax
  401a1f:	f7 ea                	imul   %edx
  401a21:	c1 fa 02             	sar    $0x2,%edx
  401a24:	89 c8                	mov    %ecx,%eax
  401a26:	c1 f8 1f             	sar    $0x1f,%eax
  401a29:	29 c2                	sub    %eax,%edx
  401a2b:	89 d0                	mov    %edx,%eax
  401a2d:	c1 e0 02             	shl    $0x2,%eax
  401a30:	01 d0                	add    %edx,%eax
  401a32:	01 c0                	add    %eax,%eax
  401a34:	29 c1                	sub    %eax,%ecx
  401a36:	89 ca                	mov    %ecx,%edx
  401a38:	48 8b 05 f1 38 00 00 	mov    0x38f1(%rip),%rax        # 405330 <.refptr.Table>
  401a3f:	48 8b 48 10          	mov    0x10(%rax),%rcx
  401a43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a47:	48 c1 e0 02          	shl    $0x2,%rax
  401a4b:	48 01 c8             	add    %rcx,%rax
  401a4e:	83 c2 14             	add    $0x14,%edx
  401a51:	89 10                	mov    %edx,(%rax)
  401a53:	e8 f8 17 00 00       	callq  403250 <rand>
  401a58:	89 c1                	mov    %eax,%ecx
  401a5a:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401a5f:	89 c8                	mov    %ecx,%eax
  401a61:	f7 ea                	imul   %edx
  401a63:	c1 fa 04             	sar    $0x4,%edx
  401a66:	89 c8                	mov    %ecx,%eax
  401a68:	c1 f8 1f             	sar    $0x1f,%eax
  401a6b:	29 c2                	sub    %eax,%edx
  401a6d:	89 d0                	mov    %edx,%eax
  401a6f:	c1 e0 02             	shl    $0x2,%eax
  401a72:	01 d0                	add    %edx,%eax
  401a74:	c1 e0 03             	shl    $0x3,%eax
  401a77:	29 c1                	sub    %eax,%ecx
  401a79:	89 ca                	mov    %ecx,%edx
  401a7b:	8d 42 0a             	lea    0xa(%rdx),%eax
  401a7e:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  401a82:	48 8b 05 a7 38 00 00 	mov    0x38a7(%rip),%rax        # 405330 <.refptr.Table>
  401a89:	48 8b 50 20          	mov    0x20(%rax),%rdx
  401a8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a91:	48 c1 e0 03          	shl    $0x3,%rax
  401a95:	48 01 d0             	add    %rdx,%rax
  401a98:	c5 fb 10 0d 98 35 00 	vmovsd 0x3598(%rip),%xmm1        # 405038 <_ZStL19piecewise_construct+0x28>
  401a9f:	00 
  401aa0:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401aa4:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  401aa8:	e8 a3 17 00 00       	callq  403250 <rand>
  401aad:	89 c1                	mov    %eax,%ecx
  401aaf:	ba 67 66 66 66       	mov    $0x66666667,%edx
  401ab4:	89 c8                	mov    %ecx,%eax
  401ab6:	f7 ea                	imul   %edx
  401ab8:	c1 fa 02             	sar    $0x2,%edx
  401abb:	89 c8                	mov    %ecx,%eax
  401abd:	c1 f8 1f             	sar    $0x1f,%eax
  401ac0:	29 c2                	sub    %eax,%edx
  401ac2:	89 d0                	mov    %edx,%eax
  401ac4:	c1 e0 02             	shl    $0x2,%eax
  401ac7:	01 d0                	add    %edx,%eax
  401ac9:	01 c0                	add    %eax,%eax
  401acb:	29 c1                	sub    %eax,%ecx
  401acd:	89 ca                	mov    %ecx,%edx
  401acf:	8d 42 01             	lea    0x1(%rdx),%eax
  401ad2:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  401ad6:	48 8b 05 53 38 00 00 	mov    0x3853(%rip),%rax        # 405330 <.refptr.Table>
  401add:	48 8b 50 28          	mov    0x28(%rax),%rdx
  401ae1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ae5:	48 c1 e0 03          	shl    $0x3,%rax
  401ae9:	48 01 d0             	add    %rdx,%rax
  401aec:	c5 fb 10 0d 44 35 00 	vmovsd 0x3544(%rip),%xmm1        # 405038 <_ZStL19piecewise_construct+0x28>
  401af3:	00 
  401af4:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401af8:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  401afc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401b00:	48 89 c8             	mov    %rcx,%rax
  401b03:	48 c1 e8 02          	shr    $0x2,%rax
  401b07:	48 ba c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rdx
  401b0e:	c2 f5 28 
  401b11:	48 f7 e2             	mul    %rdx
  401b14:	48 89 d0             	mov    %rdx,%rax
  401b17:	48 c1 e8 02          	shr    $0x2,%rax
  401b1b:	48 6b c0 64          	imul   $0x64,%rax,%rax
  401b1f:	48 29 c1             	sub    %rax,%rcx
  401b22:	48 89 c8             	mov    %rcx,%rax
  401b25:	8d 50 01             	lea    0x1(%rax),%edx
  401b28:	48 8b 05 01 38 00 00 	mov    0x3801(%rip),%rax        # 405330 <.refptr.Table>
  401b2f:	48 8b 48 18          	mov    0x18(%rax),%rcx
  401b33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b37:	48 c1 e0 02          	shl    $0x2,%rax
  401b3b:	48 01 c8             	add    %rcx,%rax
  401b3e:	89 10                	mov    %edx,(%rax)
  401b40:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  401b45:	e9 77 fe ff ff       	jmpq   4019c1 <_Z4makev+0xc1>
  401b4a:	90                   	nop
  401b4b:	48 83 c4 30          	add    $0x30,%rsp
  401b4f:	5d                   	pop    %rbp
  401b50:	c3                   	retq   

0000000000401b51 <main>:
  401b51:	55                   	push   %rbp
  401b52:	53                   	push   %rbx
  401b53:	48 83 ec 58          	sub    $0x58,%rsp
  401b57:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401b5e:	00 
  401b5f:	e8 bc 02 00 00       	callq  401e20 <__main>
  401b64:	e8 97 fd ff ff       	callq  401900 <_Z4makev>
  401b69:	e8 e2 01 00 00       	callq  401d50 <_ZNSt6chrono3_V212system_clock3nowEv>
  401b6e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401b72:	b9 32 00 00 00       	mov    $0x32,%ecx
  401b77:	e8 6b fa ff ff       	callq  4015e7 <_Z10calculate1i>
  401b7c:	e8 cf 01 00 00       	callq  401d50 <_ZNSt6chrono3_V212system_clock3nowEv>
  401b81:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401b85:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
  401b89:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401b8d:	48 89 c1             	mov    %rax,%rcx
  401b90:	e8 9b 19 00 00       	callq  403530 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
  401b95:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401b99:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401b9d:	48 89 c1             	mov    %rax,%rcx
  401ba0:	e8 cb 18 00 00       	callq  403470 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
  401ba5:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ba9:	48 8d 15 61 34 00 00 	lea    0x3461(%rip),%rdx        # 405011 <_ZStL19piecewise_construct+0x1>
  401bb0:	48 8b 0d a9 37 00 00 	mov    0x37a9(%rip),%rcx        # 405360 <__fu0__ZSt4cout>
  401bb7:	e8 74 01 00 00       	callq  401d30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401bbc:	48 89 c3             	mov    %rax,%rbx
  401bbf:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  401bc3:	48 89 c1             	mov    %rax,%rcx
  401bc6:	e8 85 18 00 00       	callq  403450 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>
  401bcb:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401bd0:	c5 fb 10 0d 68 34 00 	vmovsd 0x3468(%rip),%xmm1        # 405040 <_ZStL19piecewise_construct+0x30>
  401bd7:	00 
  401bd8:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401bdc:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  401be0:	48 89 d9             	mov    %rbx,%rcx
  401be3:	e8 70 01 00 00       	callq  401d58 <_ZNSolsEd>
  401be8:	48 8d 15 30 34 00 00 	lea    0x3430(%rip),%rdx        # 40501f <_ZStL19piecewise_construct+0xf>
  401bef:	48 89 c1             	mov    %rax,%rcx
  401bf2:	e8 39 01 00 00       	callq  401d30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401bf7:	48 8b 15 72 37 00 00 	mov    0x3772(%rip),%rdx        # 405370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401bfe:	48 89 c1             	mov    %rax,%rcx
  401c01:	e8 5a 01 00 00       	callq  401d60 <_ZNSolsEPFRSoS_E>
  401c06:	e8 45 01 00 00       	callq  401d50 <_ZNSt6chrono3_V212system_clock3nowEv>
  401c0b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401c0f:	b9 32 00 00 00       	mov    $0x32,%ecx
  401c14:	e8 64 fc ff ff       	callq  40187d <_Z10calculate2i>
  401c19:	e8 32 01 00 00       	callq  401d50 <_ZNSt6chrono3_V212system_clock3nowEv>
  401c1e:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401c22:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
  401c26:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401c2a:	48 89 c1             	mov    %rax,%rcx
  401c2d:	e8 fe 18 00 00       	callq  403530 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
  401c32:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401c36:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  401c3a:	48 89 c1             	mov    %rax,%rcx
  401c3d:	e8 2e 18 00 00       	callq  403470 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>
  401c42:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401c46:	48 8d 15 db 33 00 00 	lea    0x33db(%rip),%rdx        # 405028 <_ZStL19piecewise_construct+0x18>
  401c4d:	48 8b 0d 0c 37 00 00 	mov    0x370c(%rip),%rcx        # 405360 <__fu0__ZSt4cout>
  401c54:	e8 d7 00 00 00       	callq  401d30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401c59:	48 89 c3             	mov    %rax,%rbx
  401c5c:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  401c60:	48 89 c1             	mov    %rax,%rcx
  401c63:	e8 e8 17 00 00       	callq  403450 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>
  401c68:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  401c6d:	c5 fb 10 0d cb 33 00 	vmovsd 0x33cb(%rip),%xmm1        # 405040 <_ZStL19piecewise_construct+0x30>
  401c74:	00 
  401c75:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  401c79:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  401c7d:	48 89 d9             	mov    %rbx,%rcx
  401c80:	e8 d3 00 00 00       	callq  401d58 <_ZNSolsEd>
  401c85:	48 8d 15 93 33 00 00 	lea    0x3393(%rip),%rdx        # 40501f <_ZStL19piecewise_construct+0xf>
  401c8c:	48 89 c1             	mov    %rax,%rcx
  401c8f:	e8 9c 00 00 00       	callq  401d30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401c94:	48 8b 15 d5 36 00 00 	mov    0x36d5(%rip),%rdx        # 405370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401c9b:	48 89 c1             	mov    %rax,%rcx
  401c9e:	e8 bd 00 00 00       	callq  401d60 <_ZNSolsEPFRSoS_E>
  401ca3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca8:	48 83 c4 58          	add    $0x58,%rsp
  401cac:	5b                   	pop    %rbx
  401cad:	5d                   	pop    %rbp
  401cae:	c3                   	retq   

0000000000401caf <__tcf_0>:
  401caf:	55                   	push   %rbp
  401cb0:	48 89 e5             	mov    %rsp,%rbp
  401cb3:	48 83 ec 20          	sub    $0x20,%rsp
  401cb7:	48 8d 0d 02 64 00 00 	lea    0x6402(%rip),%rcx        # 4080c0 <_ZStL8__ioinit>
  401cbe:	e8 7d 00 00 00       	callq  401d40 <_ZNSt8ios_base4InitD1Ev>
  401cc3:	90                   	nop
  401cc4:	48 83 c4 20          	add    $0x20,%rsp
  401cc8:	5d                   	pop    %rbp
  401cc9:	c3                   	retq   

0000000000401cca <_Z41__static_initialization_and_destruction_0ii>:
  401cca:	55                   	push   %rbp
  401ccb:	48 89 e5             	mov    %rsp,%rbp
  401cce:	48 83 ec 20          	sub    $0x20,%rsp
  401cd2:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401cd5:	89 55 18             	mov    %edx,0x18(%rbp)
  401cd8:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401cdc:	75 21                	jne    401cff <_Z41__static_initialization_and_destruction_0ii+0x35>
  401cde:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  401ce5:	75 18                	jne    401cff <_Z41__static_initialization_and_destruction_0ii+0x35>
  401ce7:	48 8d 0d d2 63 00 00 	lea    0x63d2(%rip),%rcx        # 4080c0 <_ZStL8__ioinit>
  401cee:	e8 55 00 00 00       	callq  401d48 <_ZNSt8ios_base4InitC1Ev>
  401cf3:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 401caf <__tcf_0>
  401cfa:	e8 11 f8 ff ff       	callq  401510 <atexit>
  401cff:	90                   	nop
  401d00:	48 83 c4 20          	add    $0x20,%rsp
  401d04:	5d                   	pop    %rbp
  401d05:	c3                   	retq   

0000000000401d06 <_GLOBAL__sub_I__Z4makev>:
  401d06:	55                   	push   %rbp
  401d07:	48 89 e5             	mov    %rsp,%rbp
  401d0a:	48 83 ec 20          	sub    $0x20,%rsp
  401d0e:	ba ff ff 00 00       	mov    $0xffff,%edx
  401d13:	b9 01 00 00 00       	mov    $0x1,%ecx
  401d18:	e8 ad ff ff ff       	callq  401cca <_Z41__static_initialization_and_destruction_0ii>
  401d1d:	90                   	nop
  401d1e:	48 83 c4 20          	add    $0x20,%rsp
  401d22:	5d                   	pop    %rbp
  401d23:	c3                   	retq   
  401d24:	90                   	nop
  401d25:	90                   	nop
  401d26:	90                   	nop
  401d27:	90                   	nop
  401d28:	90                   	nop
  401d29:	90                   	nop
  401d2a:	90                   	nop
  401d2b:	90                   	nop
  401d2c:	90                   	nop
  401d2d:	90                   	nop
  401d2e:	90                   	nop
  401d2f:	90                   	nop

0000000000401d30 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401d30:	ff 25 ca 76 00 00    	jmpq   *0x76ca(%rip)        # 409400 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401d36:	90                   	nop
  401d37:	90                   	nop

0000000000401d38 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401d38:	ff 25 ba 76 00 00    	jmpq   *0x76ba(%rip)        # 4093f8 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401d3e:	90                   	nop
  401d3f:	90                   	nop

0000000000401d40 <_ZNSt8ios_base4InitD1Ev>:
  401d40:	ff 25 a2 76 00 00    	jmpq   *0x76a2(%rip)        # 4093e8 <__imp__ZNSt8ios_base4InitD1Ev>
  401d46:	90                   	nop
  401d47:	90                   	nop

0000000000401d48 <_ZNSt8ios_base4InitC1Ev>:
  401d48:	ff 25 92 76 00 00    	jmpq   *0x7692(%rip)        # 4093e0 <__imp__ZNSt8ios_base4InitC1Ev>
  401d4e:	90                   	nop
  401d4f:	90                   	nop

0000000000401d50 <_ZNSt6chrono3_V212system_clock3nowEv>:
  401d50:	ff 25 82 76 00 00    	jmpq   *0x7682(%rip)        # 4093d8 <__imp__ZNSt6chrono3_V212system_clock3nowEv>
  401d56:	90                   	nop
  401d57:	90                   	nop

0000000000401d58 <_ZNSolsEd>:
  401d58:	ff 25 72 76 00 00    	jmpq   *0x7672(%rip)        # 4093d0 <__imp__ZNSolsEd>
  401d5e:	90                   	nop
  401d5f:	90                   	nop

0000000000401d60 <_ZNSolsEPFRSoS_E>:
  401d60:	ff 25 62 76 00 00    	jmpq   *0x7662(%rip)        # 4093c8 <__imp__ZNSolsEPFRSoS_E>
  401d66:	90                   	nop
  401d67:	90                   	nop
  401d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401d6f:	00 

0000000000401d70 <__do_global_dtors>:
  401d70:	48 83 ec 28          	sub    $0x28,%rsp
  401d74:	48 8b 05 95 22 00 00 	mov    0x2295(%rip),%rax        # 404010 <p.93846>
  401d7b:	48 8b 00             	mov    (%rax),%rax
  401d7e:	48 85 c0             	test   %rax,%rax
  401d81:	74 1d                	je     401da0 <__do_global_dtors+0x30>
  401d83:	ff d0                	callq  *%rax
  401d85:	48 8b 05 84 22 00 00 	mov    0x2284(%rip),%rax        # 404010 <p.93846>
  401d8c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401d90:	48 8b 40 08          	mov    0x8(%rax),%rax
  401d94:	48 89 15 75 22 00 00 	mov    %rdx,0x2275(%rip)        # 404010 <p.93846>
  401d9b:	48 85 c0             	test   %rax,%rax
  401d9e:	75 e3                	jne    401d83 <__do_global_dtors+0x13>
  401da0:	48 83 c4 28          	add    $0x28,%rsp
  401da4:	c3                   	retq   
  401da5:	90                   	nop
  401da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401dad:	00 00 00 

0000000000401db0 <__do_global_ctors>:
  401db0:	56                   	push   %rsi
  401db1:	53                   	push   %rbx
  401db2:	48 83 ec 28          	sub    $0x28,%rsp
  401db6:	48 8b 0d c3 35 00 00 	mov    0x35c3(%rip),%rcx        # 405380 <.refptr.__CTOR_LIST__>
  401dbd:	48 8b 11             	mov    (%rcx),%rdx
  401dc0:	83 fa ff             	cmp    $0xffffffff,%edx
  401dc3:	89 d0                	mov    %edx,%eax
  401dc5:	74 39                	je     401e00 <__do_global_ctors+0x50>
  401dc7:	85 c0                	test   %eax,%eax
  401dc9:	74 20                	je     401deb <__do_global_ctors+0x3b>
  401dcb:	89 c2                	mov    %eax,%edx
  401dcd:	83 e8 01             	sub    $0x1,%eax
  401dd0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  401dd4:	48 29 c2             	sub    %rax,%rdx
  401dd7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  401ddc:	0f 1f 40 00          	nopl   0x0(%rax)
  401de0:	ff 13                	callq  *(%rbx)
  401de2:	48 83 eb 08          	sub    $0x8,%rbx
  401de6:	48 39 f3             	cmp    %rsi,%rbx
  401de9:	75 f5                	jne    401de0 <__do_global_ctors+0x30>
  401deb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401d70 <__do_global_dtors>
  401df2:	48 83 c4 28          	add    $0x28,%rsp
  401df6:	5b                   	pop    %rbx
  401df7:	5e                   	pop    %rsi
  401df8:	e9 13 f7 ff ff       	jmpq   401510 <atexit>
  401dfd:	0f 1f 00             	nopl   (%rax)
  401e00:	31 c0                	xor    %eax,%eax
  401e02:	eb 02                	jmp    401e06 <__do_global_ctors+0x56>
  401e04:	89 d0                	mov    %edx,%eax
  401e06:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401e0a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  401e0f:	4c 89 c2             	mov    %r8,%rdx
  401e12:	75 f0                	jne    401e04 <__do_global_ctors+0x54>
  401e14:	eb b1                	jmp    401dc7 <__do_global_ctors+0x17>
  401e16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e1d:	00 00 00 

0000000000401e20 <__main>:
  401e20:	8b 05 aa 62 00 00    	mov    0x62aa(%rip),%eax        # 4080d0 <initialized>
  401e26:	85 c0                	test   %eax,%eax
  401e28:	74 06                	je     401e30 <__main+0x10>
  401e2a:	c3                   	retq   
  401e2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401e30:	c7 05 96 62 00 00 01 	movl   $0x1,0x6296(%rip)        # 4080d0 <initialized>
  401e37:	00 00 00 
  401e3a:	e9 71 ff ff ff       	jmpq   401db0 <__do_global_ctors>
  401e3f:	90                   	nop

0000000000401e40 <my_lconv_init>:
  401e40:	48 ff 25 c9 74 00 00 	rex.W jmpq *0x74c9(%rip)        # 409310 <__imp___lconv_init>
  401e47:	90                   	nop
  401e48:	90                   	nop
  401e49:	90                   	nop
  401e4a:	90                   	nop
  401e4b:	90                   	nop
  401e4c:	90                   	nop
  401e4d:	90                   	nop
  401e4e:	90                   	nop
  401e4f:	90                   	nop

0000000000401e50 <_setargv>:
  401e50:	31 c0                	xor    %eax,%eax
  401e52:	c3                   	retq   
  401e53:	90                   	nop
  401e54:	90                   	nop
  401e55:	90                   	nop
  401e56:	90                   	nop
  401e57:	90                   	nop
  401e58:	90                   	nop
  401e59:	90                   	nop
  401e5a:	90                   	nop
  401e5b:	90                   	nop
  401e5c:	90                   	nop
  401e5d:	90                   	nop
  401e5e:	90                   	nop
  401e5f:	90                   	nop

0000000000401e60 <__security_init_cookie>:
  401e60:	41 54                	push   %r12
  401e62:	55                   	push   %rbp
  401e63:	57                   	push   %rdi
  401e64:	56                   	push   %rsi
  401e65:	53                   	push   %rbx
  401e66:	48 83 ec 30          	sub    $0x30,%rsp
  401e6a:	48 8b 1d 3f 22 00 00 	mov    0x223f(%rip),%rbx        # 4040b0 <__security_cookie>
  401e71:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401e78:	2b 00 00 
  401e7b:	48 39 c3             	cmp    %rax,%rbx
  401e7e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401e85:	00 00 
  401e87:	74 17                	je     401ea0 <__security_init_cookie+0x40>
  401e89:	48 f7 d3             	not    %rbx
  401e8c:	48 89 1d 2d 22 00 00 	mov    %rbx,0x222d(%rip)        # 4040c0 <__security_cookie_complement>
  401e93:	48 83 c4 30          	add    $0x30,%rsp
  401e97:	5b                   	pop    %rbx
  401e98:	5e                   	pop    %rsi
  401e99:	5f                   	pop    %rdi
  401e9a:	5d                   	pop    %rbp
  401e9b:	41 5c                	pop    %r12
  401e9d:	c3                   	retq   
  401e9e:	66 90                	xchg   %ax,%ax
  401ea0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401ea5:	ff 15 bd 73 00 00    	callq  *0x73bd(%rip)        # 409268 <__imp_GetSystemTimeAsFileTime>
  401eab:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401eb0:	ff 15 92 73 00 00    	callq  *0x7392(%rip)        # 409248 <__imp_GetCurrentProcessId>
  401eb6:	41 89 c4             	mov    %eax,%r12d
  401eb9:	ff 15 91 73 00 00    	callq  *0x7391(%rip)        # 409250 <__imp_GetCurrentThreadId>
  401ebf:	89 c5                	mov    %eax,%ebp
  401ec1:	ff 15 a9 73 00 00    	callq  *0x73a9(%rip)        # 409270 <__imp_GetTickCount>
  401ec7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  401ecc:	89 c7                	mov    %eax,%edi
  401ece:	ff 15 b4 73 00 00    	callq  *0x73b4(%rip)        # 409288 <__imp_QueryPerformanceCounter>
  401ed4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401ed9:	44 89 e0             	mov    %r12d,%eax
  401edc:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401ee3:	ff 00 00 
  401ee6:	48 31 f0             	xor    %rsi,%rax
  401ee9:	89 ee                	mov    %ebp,%esi
  401eeb:	48 31 c6             	xor    %rax,%rsi
  401eee:	89 f8                	mov    %edi,%eax
  401ef0:	48 31 f0             	xor    %rsi,%rax
  401ef3:	48 21 d0             	and    %rdx,%rax
  401ef6:	48 39 d8             	cmp    %rbx,%rax
  401ef9:	74 25                	je     401f20 <__security_init_cookie+0xc0>
  401efb:	48 89 c2             	mov    %rax,%rdx
  401efe:	48 f7 d2             	not    %rdx
  401f01:	48 89 05 a8 21 00 00 	mov    %rax,0x21a8(%rip)        # 4040b0 <__security_cookie>
  401f08:	48 89 15 b1 21 00 00 	mov    %rdx,0x21b1(%rip)        # 4040c0 <__security_cookie_complement>
  401f0f:	48 83 c4 30          	add    $0x30,%rsp
  401f13:	5b                   	pop    %rbx
  401f14:	5e                   	pop    %rsi
  401f15:	5f                   	pop    %rdi
  401f16:	5d                   	pop    %rbp
  401f17:	41 5c                	pop    %r12
  401f19:	c3                   	retq   
  401f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401f20:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401f27:	d4 ff ff 
  401f2a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401f31:	2b 00 00 
  401f34:	eb cb                	jmp    401f01 <__security_init_cookie+0xa1>
  401f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401f3d:	00 00 00 

0000000000401f40 <__report_gsfailure>:
  401f40:	55                   	push   %rbp
  401f41:	56                   	push   %rsi
  401f42:	53                   	push   %rbx
  401f43:	48 89 e5             	mov    %rsp,%rbp
  401f46:	48 83 ec 70          	sub    $0x70,%rsp
  401f4a:	48 89 ce             	mov    %rcx,%rsi
  401f4d:	48 8d 0d ac 61 00 00 	lea    0x61ac(%rip),%rcx        # 408100 <GS_ContextRecord>
  401f54:	ff 15 3e 73 00 00    	callq  *0x733e(%rip)        # 409298 <__imp_RtlCaptureContext>
  401f5a:	48 8b 1d 97 62 00 00 	mov    0x6297(%rip),%rbx        # 4081f8 <GS_ContextRecord+0xf8>
  401f61:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401f65:	45 31 c0             	xor    %r8d,%r8d
  401f68:	48 89 d9             	mov    %rbx,%rcx
  401f6b:	ff 15 2f 73 00 00    	callq  *0x732f(%rip)        # 4092a0 <__imp_RtlLookupFunctionEntry>
  401f71:	48 85 c0             	test   %rax,%rax
  401f74:	0f 84 a3 00 00 00    	je     40201d <__report_gsfailure+0xdd>
  401f7a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  401f7e:	49 89 c1             	mov    %rax,%r9
  401f81:	49 89 d8             	mov    %rbx,%r8
  401f84:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401f8b:	00 00 
  401f8d:	48 8d 0d 6c 61 00 00 	lea    0x616c(%rip),%rcx        # 408100 <GS_ContextRecord>
  401f94:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  401f99:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  401f9d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  401fa2:	31 c9                	xor    %ecx,%ecx
  401fa4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401fa9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401fad:	ff 15 f5 72 00 00    	callq  *0x72f5(%rip)        # 4092a8 <__imp_RtlVirtualUnwind>
  401fb3:	48 8b 05 3e 62 00 00 	mov    0x623e(%rip),%rax        # 4081f8 <GS_ContextRecord+0xf8>
  401fba:	31 c9                	xor    %ecx,%ecx
  401fbc:	48 89 35 bd 61 00 00 	mov    %rsi,0x61bd(%rip)        # 408180 <GS_ContextRecord+0x80>
  401fc3:	48 89 05 26 66 00 00 	mov    %rax,0x6626(%rip)        # 4085f0 <GS_ExceptionRecord+0x10>
  401fca:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401fd1:	00 00 00 
  401fd4:	48 89 05 05 66 00 00 	mov    %rax,0x6605(%rip)        # 4085e0 <GS_ExceptionRecord>
  401fdb:	48 8b 05 ce 20 00 00 	mov    0x20ce(%rip),%rax        # 4040b0 <__security_cookie>
  401fe2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401fe6:	48 8b 05 d3 20 00 00 	mov    0x20d3(%rip),%rax        # 4040c0 <__security_cookie_complement>
  401fed:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ff1:	ff 15 b9 72 00 00    	callq  *0x72b9(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  401ff7:	48 8d 0d 52 30 00 00 	lea    0x3052(%rip),%rcx        # 405050 <GS_ExceptionPointers>
  401ffe:	ff 15 cc 72 00 00    	callq  *0x72cc(%rip)        # 4092d0 <__imp_UnhandledExceptionFilter>
  402004:	ff 15 36 72 00 00    	callq  *0x7236(%rip)        # 409240 <__imp_GetCurrentProcess>
  40200a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40200f:	48 89 c1             	mov    %rax,%rcx
  402012:	ff 15 a8 72 00 00    	callq  *0x72a8(%rip)        # 4092c0 <__imp_TerminateProcess>
  402018:	e8 73 12 00 00       	callq  403290 <abort>
  40201d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  402021:	48 89 05 d0 61 00 00 	mov    %rax,0x61d0(%rip)        # 4081f8 <GS_ContextRecord+0xf8>
  402028:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40202c:	48 89 05 65 61 00 00 	mov    %rax,0x6165(%rip)        # 408198 <GS_ContextRecord+0x98>
  402033:	e9 7b ff ff ff       	jmpq   401fb3 <__report_gsfailure+0x73>
  402038:	90                   	nop
  402039:	90                   	nop
  40203a:	90                   	nop
  40203b:	90                   	nop
  40203c:	90                   	nop
  40203d:	90                   	nop
  40203e:	90                   	nop
  40203f:	90                   	nop

0000000000402040 <__dyn_tls_dtor>:
  402040:	48 83 ec 28          	sub    $0x28,%rsp
  402044:	83 fa 03             	cmp    $0x3,%edx
  402047:	74 17                	je     402060 <__dyn_tls_dtor+0x20>
  402049:	85 d2                	test   %edx,%edx
  40204b:	74 13                	je     402060 <__dyn_tls_dtor+0x20>
  40204d:	b8 01 00 00 00       	mov    $0x1,%eax
  402052:	48 83 c4 28          	add    $0x28,%rsp
  402056:	c3                   	retq   
  402057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40205e:	00 00 
  402060:	e8 cb 0c 00 00       	callq  402d30 <__mingw_TLScallback>
  402065:	b8 01 00 00 00       	mov    $0x1,%eax
  40206a:	48 83 c4 28          	add    $0x28,%rsp
  40206e:	c3                   	retq   
  40206f:	90                   	nop

0000000000402070 <__dyn_tls_init>:
  402070:	56                   	push   %rsi
  402071:	53                   	push   %rbx
  402072:	48 83 ec 28          	sub    $0x28,%rsp
  402076:	48 8b 05 c3 32 00 00 	mov    0x32c3(%rip),%rax        # 405340 <.refptr._CRT_MT>
  40207d:	83 38 02             	cmpl   $0x2,(%rax)
  402080:	74 06                	je     402088 <__dyn_tls_init+0x18>
  402082:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  402088:	83 fa 02             	cmp    $0x2,%edx
  40208b:	74 13                	je     4020a0 <__dyn_tls_init+0x30>
  40208d:	83 fa 01             	cmp    $0x1,%edx
  402090:	74 40                	je     4020d2 <__dyn_tls_init+0x62>
  402092:	b8 01 00 00 00       	mov    $0x1,%eax
  402097:	48 83 c4 28          	add    $0x28,%rsp
  40209b:	5b                   	pop    %rbx
  40209c:	5e                   	pop    %rsi
  40209d:	c3                   	retq   
  40209e:	66 90                	xchg   %ax,%ax
  4020a0:	48 8d 1d b9 7f 00 00 	lea    0x7fb9(%rip),%rbx        # 40a060 <__xd_z>
  4020a7:	48 8d 35 b2 7f 00 00 	lea    0x7fb2(%rip),%rsi        # 40a060 <__xd_z>
  4020ae:	48 39 de             	cmp    %rbx,%rsi
  4020b1:	74 df                	je     402092 <__dyn_tls_init+0x22>
  4020b3:	48 8b 03             	mov    (%rbx),%rax
  4020b6:	48 85 c0             	test   %rax,%rax
  4020b9:	74 02                	je     4020bd <__dyn_tls_init+0x4d>
  4020bb:	ff d0                	callq  *%rax
  4020bd:	48 83 c3 08          	add    $0x8,%rbx
  4020c1:	48 39 de             	cmp    %rbx,%rsi
  4020c4:	75 ed                	jne    4020b3 <__dyn_tls_init+0x43>
  4020c6:	b8 01 00 00 00       	mov    $0x1,%eax
  4020cb:	48 83 c4 28          	add    $0x28,%rsp
  4020cf:	5b                   	pop    %rbx
  4020d0:	5e                   	pop    %rsi
  4020d1:	c3                   	retq   
  4020d2:	e8 59 0c 00 00       	callq  402d30 <__mingw_TLScallback>
  4020d7:	b8 01 00 00 00       	mov    $0x1,%eax
  4020dc:	48 83 c4 28          	add    $0x28,%rsp
  4020e0:	5b                   	pop    %rbx
  4020e1:	5e                   	pop    %rsi
  4020e2:	c3                   	retq   
  4020e3:	0f 1f 00             	nopl   (%rax)
  4020e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ed:	00 00 00 

00000000004020f0 <__tlregdtor>:
  4020f0:	31 c0                	xor    %eax,%eax
  4020f2:	c3                   	retq   
  4020f3:	90                   	nop
  4020f4:	90                   	nop
  4020f5:	90                   	nop
  4020f6:	90                   	nop
  4020f7:	90                   	nop
  4020f8:	90                   	nop
  4020f9:	90                   	nop
  4020fa:	90                   	nop
  4020fb:	90                   	nop
  4020fc:	90                   	nop
  4020fd:	90                   	nop
  4020fe:	90                   	nop
  4020ff:	90                   	nop

0000000000402100 <__mingw_raise_matherr>:
  402100:	48 83 ec 58          	sub    $0x58,%rsp
  402104:	48 8b 05 95 65 00 00 	mov    0x6595(%rip),%rax        # 4086a0 <stUserMathErr>
  40210b:	48 85 c0             	test   %rax,%rax
  40210e:	74 2c                	je     40213c <__mingw_raise_matherr+0x3c>
  402110:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  402117:	00 00 
  402119:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40211d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402122:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402127:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40212d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  402133:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  402139:	ff d0                	callq  *%rax
  40213b:	90                   	nop
  40213c:	48 83 c4 58          	add    $0x58,%rsp
  402140:	c3                   	retq   
  402141:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40214d:	00 00 00 

0000000000402150 <__mingw_setusermatherr>:
  402150:	48 89 0d 49 65 00 00 	mov    %rcx,0x6549(%rip)        # 4086a0 <stUserMathErr>
  402157:	e9 5c 11 00 00       	jmpq   4032b8 <__setusermatherr>
  40215c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402160 <_matherr>:
  402160:	56                   	push   %rsi
  402161:	53                   	push   %rbx
  402162:	48 83 ec 78          	sub    $0x78,%rsp
  402166:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40216b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  402170:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  402176:	83 39 06             	cmpl   $0x6,(%rcx)
  402179:	0f 87 d1 00 00 00    	ja     402250 <_matherr+0xf0>
  40217f:	8b 01                	mov    (%rcx),%eax
  402181:	48 8d 15 5c 30 00 00 	lea    0x305c(%rip),%rdx        # 4051e4 <.rdata+0x124>
  402188:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40218c:	48 01 d0             	add    %rdx,%rax
  40218f:	ff e0                	jmpq   *%rax
  402191:	48 8d 1d 28 2f 00 00 	lea    0x2f28(%rip),%rbx        # 4050c0 <.rdata>
  402198:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  40219c:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4021a2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4021a7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4021ac:	b9 02 00 00 00       	mov    $0x2,%ecx
  4021b1:	e8 2a 11 00 00       	callq  4032e0 <__acrt_iob_func>
  4021b6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4021bd:	49 89 f1             	mov    %rsi,%r9
  4021c0:	49 89 d8             	mov    %rbx,%r8
  4021c3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4021c9:	48 8d 15 e8 2f 00 00 	lea    0x2fe8(%rip),%rdx        # 4051b8 <.rdata+0xf8>
  4021d0:	48 89 c1             	mov    %rax,%rcx
  4021d3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4021d9:	e8 9a 10 00 00       	callq  403278 <fprintf>
  4021de:	90                   	nop
  4021df:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4021e4:	31 c0                	xor    %eax,%eax
  4021e6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4021eb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  4021f1:	48 83 c4 78          	add    $0x78,%rsp
  4021f5:	5b                   	pop    %rbx
  4021f6:	5e                   	pop    %rsi
  4021f7:	c3                   	retq   
  4021f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4021ff:	00 
  402200:	48 8d 1d d8 2e 00 00 	lea    0x2ed8(%rip),%rbx        # 4050df <.rdata+0x1f>
  402207:	eb 8f                	jmp    402198 <_matherr+0x38>
  402209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402210:	48 8d 1d e9 2e 00 00 	lea    0x2ee9(%rip),%rbx        # 405100 <.rdata+0x40>
  402217:	e9 7c ff ff ff       	jmpq   402198 <_matherr+0x38>
  40221c:	0f 1f 40 00          	nopl   0x0(%rax)
  402220:	48 8d 1d 49 2f 00 00 	lea    0x2f49(%rip),%rbx        # 405170 <.rdata+0xb0>
  402227:	e9 6c ff ff ff       	jmpq   402198 <_matherr+0x38>
  40222c:	0f 1f 40 00          	nopl   0x0(%rax)
  402230:	48 8d 1d 11 2f 00 00 	lea    0x2f11(%rip),%rbx        # 405148 <.rdata+0x88>
  402237:	e9 5c ff ff ff       	jmpq   402198 <_matherr+0x38>
  40223c:	0f 1f 40 00          	nopl   0x0(%rax)
  402240:	48 8d 1d d9 2e 00 00 	lea    0x2ed9(%rip),%rbx        # 405120 <.rdata+0x60>
  402247:	e9 4c ff ff ff       	jmpq   402198 <_matherr+0x38>
  40224c:	0f 1f 40 00          	nopl   0x0(%rax)
  402250:	48 8d 1d 4f 2f 00 00 	lea    0x2f4f(%rip),%rbx        # 4051a6 <.rdata+0xe6>
  402257:	e9 3c ff ff ff       	jmpq   402198 <_matherr+0x38>
  40225c:	90                   	nop
  40225d:	90                   	nop
  40225e:	90                   	nop
  40225f:	90                   	nop

0000000000402260 <_fpreset>:
  402260:	db e3                	fninit 
  402262:	c3                   	retq   
  402263:	90                   	nop
  402264:	90                   	nop
  402265:	90                   	nop
  402266:	90                   	nop
  402267:	90                   	nop
  402268:	90                   	nop
  402269:	90                   	nop
  40226a:	90                   	nop
  40226b:	90                   	nop
  40226c:	90                   	nop
  40226d:	90                   	nop
  40226e:	90                   	nop
  40226f:	90                   	nop

0000000000402270 <_decode_pointer>:
  402270:	48 89 c8             	mov    %rcx,%rax
  402273:	c3                   	retq   
  402274:	66 90                	xchg   %ax,%ax
  402276:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40227d:	00 00 00 

0000000000402280 <_encode_pointer>:
  402280:	48 89 c8             	mov    %rcx,%rax
  402283:	c3                   	retq   
  402284:	90                   	nop
  402285:	90                   	nop
  402286:	90                   	nop
  402287:	90                   	nop
  402288:	90                   	nop
  402289:	90                   	nop
  40228a:	90                   	nop
  40228b:	90                   	nop
  40228c:	90                   	nop
  40228d:	90                   	nop
  40228e:	90                   	nop
  40228f:	90                   	nop

0000000000402290 <__write_memory.part.0>:
  402290:	41 54                	push   %r12
  402292:	55                   	push   %rbp
  402293:	57                   	push   %rdi
  402294:	56                   	push   %rsi
  402295:	53                   	push   %rbx
  402296:	48 83 ec 50          	sub    $0x50,%rsp
  40229a:	48 63 35 23 64 00 00 	movslq 0x6423(%rip),%rsi        # 4086c4 <maxSections>
  4022a1:	85 f6                	test   %esi,%esi
  4022a3:	48 89 cb             	mov    %rcx,%rbx
  4022a6:	48 89 d5             	mov    %rdx,%rbp
  4022a9:	4c 89 c7             	mov    %r8,%rdi
  4022ac:	0f 8e 66 01 00 00    	jle    402418 <__write_memory.part.0+0x188>
  4022b2:	48 8b 05 0f 64 00 00 	mov    0x640f(%rip),%rax        # 4086c8 <the_secs>
  4022b9:	31 c9                	xor    %ecx,%ecx
  4022bb:	48 83 c0 18          	add    $0x18,%rax
  4022bf:	90                   	nop
  4022c0:	48 8b 10             	mov    (%rax),%rdx
  4022c3:	48 39 d3             	cmp    %rdx,%rbx
  4022c6:	72 14                	jb     4022dc <__write_memory.part.0+0x4c>
  4022c8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  4022cc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  4022d0:	4c 01 c2             	add    %r8,%rdx
  4022d3:	48 39 d3             	cmp    %rdx,%rbx
  4022d6:	0f 82 89 00 00 00    	jb     402365 <__write_memory.part.0+0xd5>
  4022dc:	83 c1 01             	add    $0x1,%ecx
  4022df:	48 83 c0 28          	add    $0x28,%rax
  4022e3:	39 f1                	cmp    %esi,%ecx
  4022e5:	75 d9                	jne    4022c0 <__write_memory.part.0+0x30>
  4022e7:	48 89 d9             	mov    %rbx,%rcx
  4022ea:	e8 41 0c 00 00       	callq  402f30 <__mingw_GetSectionForAddress>
  4022ef:	48 85 c0             	test   %rax,%rax
  4022f2:	49 89 c4             	mov    %rax,%r12
  4022f5:	0f 84 52 01 00 00    	je     40244d <__write_memory.part.0+0x1bd>
  4022fb:	48 8b 05 c6 63 00 00 	mov    0x63c6(%rip),%rax        # 4086c8 <the_secs>
  402302:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  402306:	48 c1 e6 03          	shl    $0x3,%rsi
  40230a:	48 01 f0             	add    %rsi,%rax
  40230d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  402311:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402317:	e8 44 0d 00 00       	callq  403060 <_GetPEImageBase>
  40231c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  402321:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  402326:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  40232c:	48 01 c1             	add    %rax,%rcx
  40232f:	48 8b 05 92 63 00 00 	mov    0x6392(%rip),%rax        # 4086c8 <the_secs>
  402336:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  40233b:	ff 15 9f 6f 00 00    	callq  *0x6f9f(%rip)        # 4092e0 <__imp_VirtualQuery>
  402341:	48 85 c0             	test   %rax,%rax
  402344:	0f 84 e6 00 00 00    	je     402430 <__write_memory.part.0+0x1a0>
  40234a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  40234e:	8d 50 fc             	lea    -0x4(%rax),%edx
  402351:	83 e2 fb             	and    $0xfffffffb,%edx
  402354:	74 08                	je     40235e <__write_memory.part.0+0xce>
  402356:	83 e8 40             	sub    $0x40,%eax
  402359:	83 e0 bf             	and    $0xffffffbf,%eax
  40235c:	75 62                	jne    4023c0 <__write_memory.part.0+0x130>
  40235e:	83 05 5f 63 00 00 01 	addl   $0x1,0x635f(%rip)        # 4086c4 <maxSections>
  402365:	83 ff 08             	cmp    $0x8,%edi
  402368:	73 29                	jae    402393 <__write_memory.part.0+0x103>
  40236a:	40 f6 c7 04          	test   $0x4,%dil
  40236e:	0f 85 90 00 00 00    	jne    402404 <__write_memory.part.0+0x174>
  402374:	85 ff                	test   %edi,%edi
  402376:	74 10                	je     402388 <__write_memory.part.0+0xf8>
  402378:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40237c:	40 f6 c7 02          	test   $0x2,%dil
  402380:	88 03                	mov    %al,(%rbx)
  402382:	0f 85 97 00 00 00    	jne    40241f <__write_memory.part.0+0x18f>
  402388:	48 83 c4 50          	add    $0x50,%rsp
  40238c:	5b                   	pop    %rbx
  40238d:	5e                   	pop    %rsi
  40238e:	5f                   	pop    %rdi
  40238f:	5d                   	pop    %rbp
  402390:	41 5c                	pop    %r12
  402392:	c3                   	retq   
  402393:	89 f8                	mov    %edi,%eax
  402395:	83 ef 01             	sub    $0x1,%edi
  402398:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  40239d:	83 ff 08             	cmp    $0x8,%edi
  4023a0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  4023a5:	72 e1                	jb     402388 <__write_memory.part.0+0xf8>
  4023a7:	83 e7 f8             	and    $0xfffffff8,%edi
  4023aa:	31 c0                	xor    %eax,%eax
  4023ac:	89 c2                	mov    %eax,%edx
  4023ae:	83 c0 08             	add    $0x8,%eax
  4023b1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  4023b6:	39 f8                	cmp    %edi,%eax
  4023b8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  4023bc:	72 ee                	jb     4023ac <__write_memory.part.0+0x11c>
  4023be:	eb c8                	jmp    402388 <__write_memory.part.0+0xf8>
  4023c0:	48 03 35 01 63 00 00 	add    0x6301(%rip),%rsi        # 4086c8 <the_secs>
  4023c7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  4023cd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4023d2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4023d7:	49 89 f1             	mov    %rsi,%r9
  4023da:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  4023de:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  4023e2:	ff 15 f0 6e 00 00    	callq  *0x6ef0(%rip)        # 4092d8 <__imp_VirtualProtect>
  4023e8:	85 c0                	test   %eax,%eax
  4023ea:	0f 85 6e ff ff ff    	jne    40235e <__write_memory.part.0+0xce>
  4023f0:	ff 15 62 6e 00 00    	callq  *0x6e62(%rip)        # 409258 <__imp_GetLastError>
  4023f6:	48 8d 0d 7b 2e 00 00 	lea    0x2e7b(%rip),%rcx        # 405278 <.rdata+0x78>
  4023fd:	89 c2                	mov    %eax,%edx
  4023ff:	e8 ec 11 00 00       	callq  4035f0 <__report_error>
  402404:	8b 45 00             	mov    0x0(%rbp),%eax
  402407:	89 ff                	mov    %edi,%edi
  402409:	89 03                	mov    %eax,(%rbx)
  40240b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  40240f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  402413:	e9 70 ff ff ff       	jmpq   402388 <__write_memory.part.0+0xf8>
  402418:	31 f6                	xor    %esi,%esi
  40241a:	e9 c8 fe ff ff       	jmpq   4022e7 <__write_memory.part.0+0x57>
  40241f:	89 ff                	mov    %edi,%edi
  402421:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  402426:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  40242b:	e9 58 ff ff ff       	jmpq   402388 <__write_memory.part.0+0xf8>
  402430:	48 8b 05 91 62 00 00 	mov    0x6291(%rip),%rax        # 4086c8 <the_secs>
  402437:	48 8d 0d 02 2e 00 00 	lea    0x2e02(%rip),%rcx        # 405240 <.rdata+0x40>
  40243e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  402443:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  402448:	e8 a3 11 00 00       	callq  4035f0 <__report_error>
  40244d:	48 8d 0d cc 2d 00 00 	lea    0x2dcc(%rip),%rcx        # 405220 <.rdata+0x20>
  402454:	48 89 da             	mov    %rbx,%rdx
  402457:	e8 94 11 00 00       	callq  4035f0 <__report_error>
  40245c:	90                   	nop
  40245d:	0f 1f 00             	nopl   (%rax)

0000000000402460 <_pei386_runtime_relocator>:
  402460:	55                   	push   %rbp
  402461:	41 57                	push   %r15
  402463:	41 56                	push   %r14
  402465:	41 55                	push   %r13
  402467:	41 54                	push   %r12
  402469:	57                   	push   %rdi
  40246a:	56                   	push   %rsi
  40246b:	53                   	push   %rbx
  40246c:	48 83 ec 38          	sub    $0x38,%rsp
  402470:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  402477:	00 
  402478:	8b 1d 42 62 00 00    	mov    0x6242(%rip),%ebx        # 4086c0 <was_init.95174>
  40247e:	85 db                	test   %ebx,%ebx
  402480:	74 11                	je     402493 <_pei386_runtime_relocator+0x33>
  402482:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  402486:	5b                   	pop    %rbx
  402487:	5e                   	pop    %rsi
  402488:	5f                   	pop    %rdi
  402489:	41 5c                	pop    %r12
  40248b:	41 5d                	pop    %r13
  40248d:	41 5e                	pop    %r14
  40248f:	41 5f                	pop    %r15
  402491:	5d                   	pop    %rbp
  402492:	c3                   	retq   
  402493:	c7 05 23 62 00 00 01 	movl   $0x1,0x6223(%rip)        # 4086c0 <was_init.95174>
  40249a:	00 00 00 
  40249d:	e8 0e 0b 00 00       	callq  402fb0 <__mingw_GetSectionCount>
  4024a2:	48 98                	cltq   
  4024a4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4024a8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  4024af:	00 
  4024b0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4024b4:	e8 37 0d 00 00       	callq  4031f0 <___chkstk_ms>
  4024b9:	4c 8b 25 d0 2e 00 00 	mov    0x2ed0(%rip),%r12        # 405390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  4024c0:	c7 05 fa 61 00 00 00 	movl   $0x0,0x61fa(%rip)        # 4086c4 <maxSections>
  4024c7:	00 00 00 
  4024ca:	48 8b 35 cf 2e 00 00 	mov    0x2ecf(%rip),%rsi        # 4053a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  4024d1:	48 29 c4             	sub    %rax,%rsp
  4024d4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4024d9:	48 89 05 e8 61 00 00 	mov    %rax,0x61e8(%rip)        # 4086c8 <the_secs>
  4024e0:	4c 89 e0             	mov    %r12,%rax
  4024e3:	48 29 f0             	sub    %rsi,%rax
  4024e6:	48 83 f8 07          	cmp    $0x7,%rax
  4024ea:	7e 96                	jle    402482 <_pei386_runtime_relocator+0x22>
  4024ec:	48 83 f8 0b          	cmp    $0xb,%rax
  4024f0:	8b 16                	mov    (%rsi),%edx
  4024f2:	0f 8e c8 00 00 00    	jle    4025c0 <_pei386_runtime_relocator+0x160>
  4024f8:	85 d2                	test   %edx,%edx
  4024fa:	0f 84 a4 00 00 00    	je     4025a4 <_pei386_runtime_relocator+0x144>
  402500:	4c 39 e6             	cmp    %r12,%rsi
  402503:	0f 83 79 ff ff ff    	jae    402482 <_pei386_runtime_relocator+0x22>
  402509:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  40250d:	49 83 c4 07          	add    $0x7,%r12
  402511:	4c 8b 2d a8 2e 00 00 	mov    0x2ea8(%rip),%r13        # 4053c0 <.refptr.__image_base__>
  402518:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40251c:	4d 29 f4             	sub    %r14,%r12
  40251f:	49 c1 ec 03          	shr    $0x3,%r12
  402523:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  402528:	eb 0a                	jmp    402534 <_pei386_runtime_relocator+0xd4>
  40252a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402530:	49 83 c6 08          	add    $0x8,%r14
  402534:	8b 4e 04             	mov    0x4(%rsi),%ecx
  402537:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40253d:	48 89 fa             	mov    %rdi,%rdx
  402540:	8b 06                	mov    (%rsi),%eax
  402542:	4c 89 f6             	mov    %r14,%rsi
  402545:	4c 01 e9             	add    %r13,%rcx
  402548:	03 01                	add    (%rcx),%eax
  40254a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  40254d:	e8 3e fd ff ff       	callq  402290 <__write_memory.part.0>
  402552:	4d 39 e6             	cmp    %r12,%r14
  402555:	75 d9                	jne    402530 <_pei386_runtime_relocator+0xd0>
  402557:	8b 05 67 61 00 00    	mov    0x6167(%rip),%eax        # 4086c4 <maxSections>
  40255d:	31 f6                	xor    %esi,%esi
  40255f:	4c 8b 25 72 6d 00 00 	mov    0x6d72(%rip),%r12        # 4092d8 <__imp_VirtualProtect>
  402566:	85 c0                	test   %eax,%eax
  402568:	0f 8e 14 ff ff ff    	jle    402482 <_pei386_runtime_relocator+0x22>
  40256e:	66 90                	xchg   %ax,%ax
  402570:	48 8b 05 51 61 00 00 	mov    0x6151(%rip),%rax        # 4086c8 <the_secs>
  402577:	48 01 f0             	add    %rsi,%rax
  40257a:	44 8b 00             	mov    (%rax),%r8d
  40257d:	45 85 c0             	test   %r8d,%r8d
  402580:	74 0e                	je     402590 <_pei386_runtime_relocator+0x130>
  402582:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402586:	49 89 f9             	mov    %rdi,%r9
  402589:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40258d:	41 ff d4             	callq  *%r12
  402590:	83 c3 01             	add    $0x1,%ebx
  402593:	48 83 c6 28          	add    $0x28,%rsi
  402597:	3b 1d 27 61 00 00    	cmp    0x6127(%rip),%ebx        # 4086c4 <maxSections>
  40259d:	7c d1                	jl     402570 <_pei386_runtime_relocator+0x110>
  40259f:	e9 de fe ff ff       	jmpq   402482 <_pei386_runtime_relocator+0x22>
  4025a4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4025a7:	85 c9                	test   %ecx,%ecx
  4025a9:	0f 85 51 ff ff ff    	jne    402500 <_pei386_runtime_relocator+0xa0>
  4025af:	8b 56 08             	mov    0x8(%rsi),%edx
  4025b2:	85 d2                	test   %edx,%edx
  4025b4:	75 1d                	jne    4025d3 <_pei386_runtime_relocator+0x173>
  4025b6:	8b 56 0c             	mov    0xc(%rsi),%edx
  4025b9:	48 83 c6 0c          	add    $0xc,%rsi
  4025bd:	0f 1f 00             	nopl   (%rax)
  4025c0:	85 d2                	test   %edx,%edx
  4025c2:	0f 85 38 ff ff ff    	jne    402500 <_pei386_runtime_relocator+0xa0>
  4025c8:	8b 46 04             	mov    0x4(%rsi),%eax
  4025cb:	85 c0                	test   %eax,%eax
  4025cd:	0f 85 2d ff ff ff    	jne    402500 <_pei386_runtime_relocator+0xa0>
  4025d3:	8b 56 08             	mov    0x8(%rsi),%edx
  4025d6:	83 fa 01             	cmp    $0x1,%edx
  4025d9:	0f 85 2f 01 00 00    	jne    40270e <_pei386_runtime_relocator+0x2ae>
  4025df:	4c 8b 2d da 2d 00 00 	mov    0x2dda(%rip),%r13        # 4053c0 <.refptr.__image_base__>
  4025e6:	48 83 c6 0c          	add    $0xc,%rsi
  4025ea:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  4025f1:	ff ff ff 
  4025f4:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  4025f8:	4c 39 e6             	cmp    %r12,%rsi
  4025fb:	72 48                	jb     402645 <_pei386_runtime_relocator+0x1e5>
  4025fd:	e9 80 fe ff ff       	jmpq   402482 <_pei386_runtime_relocator+0x22>
  402602:	0f 86 b8 00 00 00    	jbe    4026c0 <_pei386_runtime_relocator+0x260>
  402608:	83 fa 20             	cmp    $0x20,%edx
  40260b:	0f 84 7f 00 00 00    	je     402690 <_pei386_runtime_relocator+0x230>
  402611:	83 fa 40             	cmp    $0x40,%edx
  402614:	0f 85 e0 00 00 00    	jne    4026fa <_pei386_runtime_relocator+0x29a>
  40261a:	48 8b 11             	mov    (%rcx),%rdx
  40261d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402623:	4c 89 f7             	mov    %r14,%rdi
  402626:	48 29 c2             	sub    %rax,%rdx
  402629:	4c 01 ca             	add    %r9,%rdx
  40262c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  402630:	4c 89 f2             	mov    %r14,%rdx
  402633:	e8 58 fc ff ff       	callq  402290 <__write_memory.part.0>
  402638:	48 83 c6 0c          	add    $0xc,%rsi
  40263c:	4c 39 e6             	cmp    %r12,%rsi
  40263f:	0f 83 12 ff ff ff    	jae    402557 <_pei386_runtime_relocator+0xf7>
  402645:	8b 4e 04             	mov    0x4(%rsi),%ecx
  402648:	8b 06                	mov    (%rsi),%eax
  40264a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  40264e:	4c 01 e9             	add    %r13,%rcx
  402651:	4c 01 e8             	add    %r13,%rax
  402654:	83 fa 10             	cmp    $0x10,%edx
  402657:	4c 8b 08             	mov    (%rax),%r9
  40265a:	75 a6                	jne    402602 <_pei386_runtime_relocator+0x1a2>
  40265c:	44 0f b7 01          	movzwl (%rcx),%r8d
  402660:	4c 89 f2             	mov    %r14,%rdx
  402663:	4c 89 f7             	mov    %r14,%rdi
  402666:	4d 89 c2             	mov    %r8,%r10
  402669:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  402670:	66 45 85 c0          	test   %r8w,%r8w
  402674:	4d 0f 48 c2          	cmovs  %r10,%r8
  402678:	49 29 c0             	sub    %rax,%r8
  40267b:	4d 01 c8             	add    %r9,%r8
  40267e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  402682:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402688:	e8 03 fc ff ff       	callq  402290 <__write_memory.part.0>
  40268d:	eb a9                	jmp    402638 <_pei386_runtime_relocator+0x1d8>
  40268f:	90                   	nop
  402690:	8b 11                	mov    (%rcx),%edx
  402692:	4c 89 f7             	mov    %r14,%rdi
  402695:	49 89 d0             	mov    %rdx,%r8
  402698:	4c 09 fa             	or     %r15,%rdx
  40269b:	45 85 c0             	test   %r8d,%r8d
  40269e:	49 0f 49 d0          	cmovns %r8,%rdx
  4026a2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4026a8:	48 29 c2             	sub    %rax,%rdx
  4026ab:	4c 01 ca             	add    %r9,%rdx
  4026ae:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4026b2:	4c 89 f2             	mov    %r14,%rdx
  4026b5:	e8 d6 fb ff ff       	callq  402290 <__write_memory.part.0>
  4026ba:	e9 79 ff ff ff       	jmpq   402638 <_pei386_runtime_relocator+0x1d8>
  4026bf:	90                   	nop
  4026c0:	83 fa 08             	cmp    $0x8,%edx
  4026c3:	75 35                	jne    4026fa <_pei386_runtime_relocator+0x29a>
  4026c5:	44 0f b6 01          	movzbl (%rcx),%r8d
  4026c9:	4c 89 f2             	mov    %r14,%rdx
  4026cc:	4c 89 f7             	mov    %r14,%rdi
  4026cf:	4d 89 c2             	mov    %r8,%r10
  4026d2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  4026d9:	45 84 c0             	test   %r8b,%r8b
  4026dc:	4d 0f 48 c2          	cmovs  %r10,%r8
  4026e0:	49 29 c0             	sub    %rax,%r8
  4026e3:	4d 01 c8             	add    %r9,%r8
  4026e6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  4026ea:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4026f0:	e8 9b fb ff ff       	callq  402290 <__write_memory.part.0>
  4026f5:	e9 3e ff ff ff       	jmpq   402638 <_pei386_runtime_relocator+0x1d8>
  4026fa:	48 8d 0d d7 2b 00 00 	lea    0x2bd7(%rip),%rcx        # 4052d8 <.rdata+0xd8>
  402701:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  402708:	00 
  402709:	e8 e2 0e 00 00       	callq  4035f0 <__report_error>
  40270e:	48 8d 0d 8b 2b 00 00 	lea    0x2b8b(%rip),%rcx        # 4052a0 <.rdata+0xa0>
  402715:	e8 d6 0e 00 00       	callq  4035f0 <__report_error>
  40271a:	90                   	nop
  40271b:	90                   	nop
  40271c:	90                   	nop
  40271d:	90                   	nop
  40271e:	90                   	nop
  40271f:	90                   	nop

0000000000402720 <__mingw_SEH_error_handler>:
  402720:	48 83 ec 28          	sub    $0x28,%rsp
  402724:	8b 01                	mov    (%rcx),%eax
  402726:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  40272b:	77 63                	ja     402790 <__mingw_SEH_error_handler+0x70>
  40272d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  402732:	73 7b                	jae    4027af <__mingw_SEH_error_handler+0x8f>
  402734:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402739:	0f 84 05 01 00 00    	je     402844 <__mingw_SEH_error_handler+0x124>
  40273f:	0f 87 cb 00 00 00    	ja     402810 <__mingw_SEH_error_handler+0xf0>
  402745:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40274a:	0f 84 f4 00 00 00    	je     402844 <__mingw_SEH_error_handler+0x124>
  402750:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402755:	0f 85 c3 00 00 00    	jne    40281e <__mingw_SEH_error_handler+0xfe>
  40275b:	31 d2                	xor    %edx,%edx
  40275d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402762:	e8 e1 0a 00 00       	callq  403248 <signal>
  402767:	48 83 f8 01          	cmp    $0x1,%rax
  40276b:	0f 84 2f 01 00 00    	je     4028a0 <__mingw_SEH_error_handler+0x180>
  402771:	48 85 c0             	test   %rax,%rax
  402774:	0f 84 3c 01 00 00    	je     4028b6 <__mingw_SEH_error_handler+0x196>
  40277a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40277f:	ff d0                	callq  *%rax
  402781:	31 c0                	xor    %eax,%eax
  402783:	48 83 c4 28          	add    $0x28,%rsp
  402787:	c3                   	retq   
  402788:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40278f:	00 
  402790:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402795:	0f 84 b5 00 00 00    	je     402850 <__mingw_SEH_error_handler+0x130>
  40279b:	77 37                	ja     4027d4 <__mingw_SEH_error_handler+0xb4>
  40279d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4027a2:	0f 84 9c 00 00 00    	je     402844 <__mingw_SEH_error_handler+0x124>
  4027a8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4027ad:	75 6f                	jne    40281e <__mingw_SEH_error_handler+0xfe>
  4027af:	31 d2                	xor    %edx,%edx
  4027b1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4027b6:	e8 8d 0a 00 00       	callq  403248 <signal>
  4027bb:	48 83 f8 01          	cmp    $0x1,%rax
  4027bf:	74 6f                	je     402830 <__mingw_SEH_error_handler+0x110>
  4027c1:	48 85 c0             	test   %rax,%rax
  4027c4:	74 58                	je     40281e <__mingw_SEH_error_handler+0xfe>
  4027c6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4027cb:	ff d0                	callq  *%rax
  4027cd:	31 c0                	xor    %eax,%eax
  4027cf:	48 83 c4 28          	add    $0x28,%rsp
  4027d3:	c3                   	retq   
  4027d4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4027d9:	74 69                	je     402844 <__mingw_SEH_error_handler+0x124>
  4027db:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4027e0:	75 3c                	jne    40281e <__mingw_SEH_error_handler+0xfe>
  4027e2:	31 d2                	xor    %edx,%edx
  4027e4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4027e9:	e8 5a 0a 00 00       	callq  403248 <signal>
  4027ee:	48 83 f8 01          	cmp    $0x1,%rax
  4027f2:	0f 84 88 00 00 00    	je     402880 <__mingw_SEH_error_handler+0x160>
  4027f8:	48 85 c0             	test   %rax,%rax
  4027fb:	0f 84 b5 00 00 00    	je     4028b6 <__mingw_SEH_error_handler+0x196>
  402801:	b9 04 00 00 00       	mov    $0x4,%ecx
  402806:	ff d0                	callq  *%rax
  402808:	31 c0                	xor    %eax,%eax
  40280a:	48 83 c4 28          	add    $0x28,%rsp
  40280e:	c3                   	retq   
  40280f:	90                   	nop
  402810:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402815:	74 cb                	je     4027e2 <__mingw_SEH_error_handler+0xc2>
  402817:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40281c:	74 26                	je     402844 <__mingw_SEH_error_handler+0x124>
  40281e:	b8 01 00 00 00       	mov    $0x1,%eax
  402823:	48 83 c4 28          	add    $0x28,%rsp
  402827:	c3                   	retq   
  402828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40282f:	00 
  402830:	ba 01 00 00 00       	mov    $0x1,%edx
  402835:	b9 08 00 00 00       	mov    $0x8,%ecx
  40283a:	e8 09 0a 00 00       	callq  403248 <signal>
  40283f:	e8 1c fa ff ff       	callq  402260 <_fpreset>
  402844:	31 c0                	xor    %eax,%eax
  402846:	48 83 c4 28          	add    $0x28,%rsp
  40284a:	c3                   	retq   
  40284b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402850:	31 d2                	xor    %edx,%edx
  402852:	b9 08 00 00 00       	mov    $0x8,%ecx
  402857:	e8 ec 09 00 00       	callq  403248 <signal>
  40285c:	48 83 f8 01          	cmp    $0x1,%rax
  402860:	0f 85 5b ff ff ff    	jne    4027c1 <__mingw_SEH_error_handler+0xa1>
  402866:	ba 01 00 00 00       	mov    $0x1,%edx
  40286b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402870:	e8 d3 09 00 00       	callq  403248 <signal>
  402875:	31 c0                	xor    %eax,%eax
  402877:	e9 07 ff ff ff       	jmpq   402783 <__mingw_SEH_error_handler+0x63>
  40287c:	0f 1f 40 00          	nopl   0x0(%rax)
  402880:	ba 01 00 00 00       	mov    $0x1,%edx
  402885:	b9 04 00 00 00       	mov    $0x4,%ecx
  40288a:	e8 b9 09 00 00       	callq  403248 <signal>
  40288f:	31 c0                	xor    %eax,%eax
  402891:	e9 ed fe ff ff       	jmpq   402783 <__mingw_SEH_error_handler+0x63>
  402896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40289d:	00 00 00 
  4028a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4028a5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4028aa:	e8 99 09 00 00       	callq  403248 <signal>
  4028af:	31 c0                	xor    %eax,%eax
  4028b1:	e9 cd fe ff ff       	jmpq   402783 <__mingw_SEH_error_handler+0x63>
  4028b6:	b8 04 00 00 00       	mov    $0x4,%eax
  4028bb:	e9 c3 fe ff ff       	jmpq   402783 <__mingw_SEH_error_handler+0x63>

00000000004028c0 <__mingw_init_ehandler>:
  4028c0:	41 54                	push   %r12
  4028c2:	55                   	push   %rbp
  4028c3:	57                   	push   %rdi
  4028c4:	56                   	push   %rsi
  4028c5:	53                   	push   %rbx
  4028c6:	48 83 ec 20          	sub    $0x20,%rsp
  4028ca:	e8 91 07 00 00       	callq  403060 <_GetPEImageBase>
  4028cf:	48 89 c5             	mov    %rax,%rbp
  4028d2:	8b 05 10 5e 00 00    	mov    0x5e10(%rip),%eax        # 4086e8 <was_here.95013>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	75 25                	jne    402901 <__mingw_init_ehandler+0x41>
  4028dc:	48 85 ed             	test   %rbp,%rbp
  4028df:	74 20                	je     402901 <__mingw_init_ehandler+0x41>
  4028e1:	48 8d 0d 28 2a 00 00 	lea    0x2a28(%rip),%rcx        # 405310 <.rdata>
  4028e8:	c7 05 f6 5d 00 00 01 	movl   $0x1,0x5df6(%rip)        # 4086e8 <was_here.95013>
  4028ef:	00 00 00 
  4028f2:	e8 a9 05 00 00       	callq  402ea0 <_FindPESectionByName>
  4028f7:	48 85 c0             	test   %rax,%rax
  4028fa:	74 14                	je     402910 <__mingw_init_ehandler+0x50>
  4028fc:	b8 01 00 00 00       	mov    $0x1,%eax
  402901:	48 83 c4 20          	add    $0x20,%rsp
  402905:	5b                   	pop    %rbx
  402906:	5e                   	pop    %rsi
  402907:	5f                   	pop    %rdi
  402908:	5d                   	pop    %rbp
  402909:	41 5c                	pop    %r12
  40290b:	c3                   	retq   
  40290c:	0f 1f 40 00          	nopl   0x0(%rax)
  402910:	48 8d 1d e9 5e 00 00 	lea    0x5ee9(%rip),%rbx        # 408800 <emu_pdata>
  402917:	b9 30 00 00 00       	mov    $0x30,%ecx
  40291c:	31 f6                	xor    %esi,%esi
  40291e:	48 8d 15 db 5d 00 00 	lea    0x5ddb(%rip),%rdx        # 408700 <emu_xdata>
  402925:	48 89 df             	mov    %rbx,%rdi
  402928:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40292b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 402720 <__mingw_SEH_error_handler>
  402932:	b9 20 00 00 00       	mov    $0x20,%ecx
  402937:	48 89 d7             	mov    %rdx,%rdi
  40293a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40293d:	49 29 ec             	sub    %rbp,%r12
  402940:	48 89 d7             	mov    %rdx,%rdi
  402943:	eb 2e                	jmp    402973 <__mingw_init_ehandler+0xb3>
  402945:	c6 07 09             	movb   $0x9,(%rdi)
  402948:	48 83 c6 01          	add    $0x1,%rsi
  40294c:	48 83 c3 0c          	add    $0xc,%rbx
  402950:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402954:	8b 48 0c             	mov    0xc(%rax),%ecx
  402957:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40295a:	03 48 08             	add    0x8(%rax),%ecx
  40295d:	48 89 f8             	mov    %rdi,%rax
  402960:	48 83 c7 08          	add    $0x8,%rdi
  402964:	48 29 e8             	sub    %rbp,%rax
  402967:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40296a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40296d:	48 83 fe 20          	cmp    $0x20,%rsi
  402971:	74 32                	je     4029a5 <__mingw_init_ehandler+0xe5>
  402973:	48 89 f1             	mov    %rsi,%rcx
  402976:	e8 75 06 00 00       	callq  402ff0 <_FindPESectionExec>
  40297b:	48 85 c0             	test   %rax,%rax
  40297e:	75 c5                	jne    402945 <__mingw_init_ehandler+0x85>
  402980:	48 85 f6             	test   %rsi,%rsi
  402983:	89 f2                	mov    %esi,%edx
  402985:	0f 84 71 ff ff ff    	je     4028fc <__mingw_init_ehandler+0x3c>
  40298b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402990:	48 8d 0d 69 5e 00 00 	lea    0x5e69(%rip),%rcx        # 408800 <emu_pdata>
  402997:	49 89 e8             	mov    %rbp,%r8
  40299a:	ff 15 f0 68 00 00    	callq  *0x68f0(%rip)        # 409290 <__imp_RtlAddFunctionTable>
  4029a0:	e9 57 ff ff ff       	jmpq   4028fc <__mingw_init_ehandler+0x3c>
  4029a5:	ba 20 00 00 00       	mov    $0x20,%edx
  4029aa:	eb e4                	jmp    402990 <__mingw_init_ehandler+0xd0>
  4029ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004029b0 <_gnu_exception_handler>:
  4029b0:	53                   	push   %rbx
  4029b1:	48 83 ec 20          	sub    $0x20,%rsp
  4029b5:	48 8b 11             	mov    (%rcx),%rdx
  4029b8:	8b 02                	mov    (%rdx),%eax
  4029ba:	48 89 cb             	mov    %rcx,%rbx
  4029bd:	89 c1                	mov    %eax,%ecx
  4029bf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4029c5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4029cb:	0f 84 bf 00 00 00    	je     402a90 <_gnu_exception_handler+0xe0>
  4029d1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4029d6:	77 68                	ja     402a40 <_gnu_exception_handler+0x90>
  4029d8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4029dd:	73 7c                	jae    402a5b <_gnu_exception_handler+0xab>
  4029df:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4029e4:	0f 84 b0 00 00 00    	je     402a9a <_gnu_exception_handler+0xea>
  4029ea:	0f 87 f4 00 00 00    	ja     402ae4 <_gnu_exception_handler+0x134>
  4029f0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4029f5:	0f 84 9f 00 00 00    	je     402a9a <_gnu_exception_handler+0xea>
  4029fb:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402a00:	75 1f                	jne    402a21 <_gnu_exception_handler+0x71>
  402a02:	31 d2                	xor    %edx,%edx
  402a04:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402a09:	e8 3a 08 00 00       	callq  403248 <signal>
  402a0e:	48 83 f8 01          	cmp    $0x1,%rax
  402a12:	0f 84 51 01 00 00    	je     402b69 <_gnu_exception_handler+0x1b9>
  402a18:	48 85 c0             	test   %rax,%rax
  402a1b:	0f 85 0f 01 00 00    	jne    402b30 <_gnu_exception_handler+0x180>
  402a21:	48 8b 05 b8 5c 00 00 	mov    0x5cb8(%rip),%rax        # 4086e0 <__mingw_oldexcpt_handler>
  402a28:	48 85 c0             	test   %rax,%rax
  402a2b:	0f 84 10 01 00 00    	je     402b41 <_gnu_exception_handler+0x191>
  402a31:	48 89 d9             	mov    %rbx,%rcx
  402a34:	48 83 c4 20          	add    $0x20,%rsp
  402a38:	5b                   	pop    %rbx
  402a39:	48 ff e0             	rex.W jmpq *%rax
  402a3c:	0f 1f 40 00          	nopl   0x0(%rax)
  402a40:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402a45:	0f 84 b5 00 00 00    	je     402b00 <_gnu_exception_handler+0x150>
  402a4b:	77 58                	ja     402aa5 <_gnu_exception_handler+0xf5>
  402a4d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402a52:	74 46                	je     402a9a <_gnu_exception_handler+0xea>
  402a54:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402a59:	75 c6                	jne    402a21 <_gnu_exception_handler+0x71>
  402a5b:	31 d2                	xor    %edx,%edx
  402a5d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402a62:	e8 e1 07 00 00       	callq  403248 <signal>
  402a67:	48 83 f8 01          	cmp    $0x1,%rax
  402a6b:	0f 84 df 00 00 00    	je     402b50 <_gnu_exception_handler+0x1a0>
  402a71:	48 85 c0             	test   %rax,%rax
  402a74:	74 ab                	je     402a21 <_gnu_exception_handler+0x71>
  402a76:	b9 08 00 00 00       	mov    $0x8,%ecx
  402a7b:	ff d0                	callq  *%rax
  402a7d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a82:	48 83 c4 20          	add    $0x20,%rsp
  402a86:	5b                   	pop    %rbx
  402a87:	c3                   	retq   
  402a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a8f:	00 
  402a90:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402a94:	0f 85 37 ff ff ff    	jne    4029d1 <_gnu_exception_handler+0x21>
  402a9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a9f:	48 83 c4 20          	add    $0x20,%rsp
  402aa3:	5b                   	pop    %rbx
  402aa4:	c3                   	retq   
  402aa5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402aaa:	74 ee                	je     402a9a <_gnu_exception_handler+0xea>
  402aac:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402ab1:	0f 85 6a ff ff ff    	jne    402a21 <_gnu_exception_handler+0x71>
  402ab7:	31 d2                	xor    %edx,%edx
  402ab9:	b9 04 00 00 00       	mov    $0x4,%ecx
  402abe:	e8 85 07 00 00       	callq  403248 <signal>
  402ac3:	48 83 f8 01          	cmp    $0x1,%rax
  402ac7:	0f 84 b3 00 00 00    	je     402b80 <_gnu_exception_handler+0x1d0>
  402acd:	48 85 c0             	test   %rax,%rax
  402ad0:	0f 84 4b ff ff ff    	je     402a21 <_gnu_exception_handler+0x71>
  402ad6:	b9 04 00 00 00       	mov    $0x4,%ecx
  402adb:	ff d0                	callq  *%rax
  402add:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ae2:	eb 9e                	jmp    402a82 <_gnu_exception_handler+0xd2>
  402ae4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402ae9:	74 cc                	je     402ab7 <_gnu_exception_handler+0x107>
  402aeb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402af0:	0f 85 2b ff ff ff    	jne    402a21 <_gnu_exception_handler+0x71>
  402af6:	eb a2                	jmp    402a9a <_gnu_exception_handler+0xea>
  402af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aff:	00 
  402b00:	31 d2                	xor    %edx,%edx
  402b02:	b9 08 00 00 00       	mov    $0x8,%ecx
  402b07:	e8 3c 07 00 00       	callq  403248 <signal>
  402b0c:	48 83 f8 01          	cmp    $0x1,%rax
  402b10:	0f 85 5b ff ff ff    	jne    402a71 <_gnu_exception_handler+0xc1>
  402b16:	ba 01 00 00 00       	mov    $0x1,%edx
  402b1b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402b20:	e8 23 07 00 00       	callq  403248 <signal>
  402b25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b2a:	e9 53 ff ff ff       	jmpq   402a82 <_gnu_exception_handler+0xd2>
  402b2f:	90                   	nop
  402b30:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402b35:	ff d0                	callq  *%rax
  402b37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b3c:	e9 41 ff ff ff       	jmpq   402a82 <_gnu_exception_handler+0xd2>
  402b41:	31 c0                	xor    %eax,%eax
  402b43:	e9 3a ff ff ff       	jmpq   402a82 <_gnu_exception_handler+0xd2>
  402b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b4f:	00 
  402b50:	ba 01 00 00 00       	mov    $0x1,%edx
  402b55:	b9 08 00 00 00       	mov    $0x8,%ecx
  402b5a:	e8 e9 06 00 00       	callq  403248 <signal>
  402b5f:	e8 fc f6 ff ff       	callq  402260 <_fpreset>
  402b64:	e9 31 ff ff ff       	jmpq   402a9a <_gnu_exception_handler+0xea>
  402b69:	ba 01 00 00 00       	mov    $0x1,%edx
  402b6e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402b73:	e8 d0 06 00 00       	callq  403248 <signal>
  402b78:	83 c8 ff             	or     $0xffffffff,%eax
  402b7b:	e9 02 ff ff ff       	jmpq   402a82 <_gnu_exception_handler+0xd2>
  402b80:	ba 01 00 00 00       	mov    $0x1,%edx
  402b85:	b9 04 00 00 00       	mov    $0x4,%ecx
  402b8a:	e8 b9 06 00 00       	callq  403248 <signal>
  402b8f:	83 c8 ff             	or     $0xffffffff,%eax
  402b92:	e9 eb fe ff ff       	jmpq   402a82 <_gnu_exception_handler+0xd2>
  402b97:	90                   	nop
  402b98:	90                   	nop
  402b99:	90                   	nop
  402b9a:	90                   	nop
  402b9b:	90                   	nop
  402b9c:	90                   	nop
  402b9d:	90                   	nop
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <__mingwthr_run_key_dtors.part.0>:
  402ba0:	55                   	push   %rbp
  402ba1:	57                   	push   %rdi
  402ba2:	56                   	push   %rsi
  402ba3:	53                   	push   %rbx
  402ba4:	48 83 ec 28          	sub    $0x28,%rsp
  402ba8:	48 8d 0d f1 5d 00 00 	lea    0x5df1(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402baf:	ff 15 83 66 00 00    	callq  *0x6683(%rip)        # 409238 <__imp_EnterCriticalSection>
  402bb5:	48 8b 1d c4 5d 00 00 	mov    0x5dc4(%rip),%rbx        # 408980 <key_dtor_list>
  402bbc:	48 85 db             	test   %rbx,%rbx
  402bbf:	74 33                	je     402bf4 <__mingwthr_run_key_dtors.part.0+0x54>
  402bc1:	48 8b 2d 00 67 00 00 	mov    0x6700(%rip),%rbp        # 4092c8 <__imp_TlsGetValue>
  402bc8:	48 8b 3d 89 66 00 00 	mov    0x6689(%rip),%rdi        # 409258 <__imp_GetLastError>
  402bcf:	90                   	nop
  402bd0:	8b 0b                	mov    (%rbx),%ecx
  402bd2:	ff d5                	callq  *%rbp
  402bd4:	48 89 c6             	mov    %rax,%rsi
  402bd7:	ff d7                	callq  *%rdi
  402bd9:	85 c0                	test   %eax,%eax
  402bdb:	75 0e                	jne    402beb <__mingwthr_run_key_dtors.part.0+0x4b>
  402bdd:	48 85 f6             	test   %rsi,%rsi
  402be0:	74 09                	je     402beb <__mingwthr_run_key_dtors.part.0+0x4b>
  402be2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402be6:	48 89 f1             	mov    %rsi,%rcx
  402be9:	ff d0                	callq  *%rax
  402beb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402bef:	48 85 db             	test   %rbx,%rbx
  402bf2:	75 dc                	jne    402bd0 <__mingwthr_run_key_dtors.part.0+0x30>
  402bf4:	48 8d 0d a5 5d 00 00 	lea    0x5da5(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402bfb:	48 83 c4 28          	add    $0x28,%rsp
  402bff:	5b                   	pop    %rbx
  402c00:	5e                   	pop    %rsi
  402c01:	5f                   	pop    %rdi
  402c02:	5d                   	pop    %rbp
  402c03:	48 ff 25 76 66 00 00 	rex.W jmpq *0x6676(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402c10 <___w64_mingwthr_add_key_dtor>:
  402c10:	55                   	push   %rbp
  402c11:	57                   	push   %rdi
  402c12:	56                   	push   %rsi
  402c13:	53                   	push   %rbx
  402c14:	48 83 ec 28          	sub    $0x28,%rsp
  402c18:	8b 05 6a 5d 00 00    	mov    0x5d6a(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402c1e:	31 f6                	xor    %esi,%esi
  402c20:	85 c0                	test   %eax,%eax
  402c22:	89 cd                	mov    %ecx,%ebp
  402c24:	48 89 d7             	mov    %rdx,%rdi
  402c27:	75 0b                	jne    402c34 <___w64_mingwthr_add_key_dtor+0x24>
  402c29:	89 f0                	mov    %esi,%eax
  402c2b:	48 83 c4 28          	add    $0x28,%rsp
  402c2f:	5b                   	pop    %rbx
  402c30:	5e                   	pop    %rsi
  402c31:	5f                   	pop    %rdi
  402c32:	5d                   	pop    %rbp
  402c33:	c3                   	retq   
  402c34:	ba 18 00 00 00       	mov    $0x18,%edx
  402c39:	b9 01 00 00 00       	mov    $0x1,%ecx
  402c3e:	e8 45 06 00 00       	callq  403288 <calloc>
  402c43:	48 85 c0             	test   %rax,%rax
  402c46:	48 89 c3             	mov    %rax,%rbx
  402c49:	74 3d                	je     402c88 <___w64_mingwthr_add_key_dtor+0x78>
  402c4b:	89 28                	mov    %ebp,(%rax)
  402c4d:	48 8d 0d 4c 5d 00 00 	lea    0x5d4c(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402c54:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402c58:	ff 15 da 65 00 00    	callq  *0x65da(%rip)        # 409238 <__imp_EnterCriticalSection>
  402c5e:	48 8b 05 1b 5d 00 00 	mov    0x5d1b(%rip),%rax        # 408980 <key_dtor_list>
  402c65:	48 8d 0d 34 5d 00 00 	lea    0x5d34(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402c6c:	48 89 1d 0d 5d 00 00 	mov    %rbx,0x5d0d(%rip)        # 408980 <key_dtor_list>
  402c73:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402c77:	ff 15 03 66 00 00    	callq  *0x6603(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402c7d:	89 f0                	mov    %esi,%eax
  402c7f:	48 83 c4 28          	add    $0x28,%rsp
  402c83:	5b                   	pop    %rbx
  402c84:	5e                   	pop    %rsi
  402c85:	5f                   	pop    %rdi
  402c86:	5d                   	pop    %rbp
  402c87:	c3                   	retq   
  402c88:	be ff ff ff ff       	mov    $0xffffffff,%esi
  402c8d:	eb 9a                	jmp    402c29 <___w64_mingwthr_add_key_dtor+0x19>
  402c8f:	90                   	nop

0000000000402c90 <___w64_mingwthr_remove_key_dtor>:
  402c90:	53                   	push   %rbx
  402c91:	48 83 ec 20          	sub    $0x20,%rsp
  402c95:	8b 05 ed 5c 00 00    	mov    0x5ced(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402c9b:	85 c0                	test   %eax,%eax
  402c9d:	89 cb                	mov    %ecx,%ebx
  402c9f:	75 0f                	jne    402cb0 <___w64_mingwthr_remove_key_dtor+0x20>
  402ca1:	31 c0                	xor    %eax,%eax
  402ca3:	48 83 c4 20          	add    $0x20,%rsp
  402ca7:	5b                   	pop    %rbx
  402ca8:	c3                   	retq   
  402ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402cb0:	48 8d 0d e9 5c 00 00 	lea    0x5ce9(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402cb7:	ff 15 7b 65 00 00    	callq  *0x657b(%rip)        # 409238 <__imp_EnterCriticalSection>
  402cbd:	48 8b 05 bc 5c 00 00 	mov    0x5cbc(%rip),%rax        # 408980 <key_dtor_list>
  402cc4:	48 85 c0             	test   %rax,%rax
  402cc7:	74 1a                	je     402ce3 <___w64_mingwthr_remove_key_dtor+0x53>
  402cc9:	8b 10                	mov    (%rax),%edx
  402ccb:	39 d3                	cmp    %edx,%ebx
  402ccd:	75 0b                	jne    402cda <___w64_mingwthr_remove_key_dtor+0x4a>
  402ccf:	eb 4f                	jmp    402d20 <___w64_mingwthr_remove_key_dtor+0x90>
  402cd1:	8b 11                	mov    (%rcx),%edx
  402cd3:	39 da                	cmp    %ebx,%edx
  402cd5:	74 29                	je     402d00 <___w64_mingwthr_remove_key_dtor+0x70>
  402cd7:	48 89 c8             	mov    %rcx,%rax
  402cda:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402cde:	48 85 c9             	test   %rcx,%rcx
  402ce1:	75 ee                	jne    402cd1 <___w64_mingwthr_remove_key_dtor+0x41>
  402ce3:	48 8d 0d b6 5c 00 00 	lea    0x5cb6(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402cea:	ff 15 90 65 00 00    	callq  *0x6590(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402cf0:	31 c0                	xor    %eax,%eax
  402cf2:	48 83 c4 20          	add    $0x20,%rsp
  402cf6:	5b                   	pop    %rbx
  402cf7:	c3                   	retq   
  402cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cff:	00 
  402d00:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402d04:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402d08:	e8 63 05 00 00       	callq  403270 <free>
  402d0d:	48 8d 0d 8c 5c 00 00 	lea    0x5c8c(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402d14:	ff 15 66 65 00 00    	callq  *0x6566(%rip)        # 409280 <__imp_LeaveCriticalSection>
  402d1a:	eb d4                	jmp    402cf0 <___w64_mingwthr_remove_key_dtor+0x60>
  402d1c:	0f 1f 40 00          	nopl   0x0(%rax)
  402d20:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402d24:	48 89 c1             	mov    %rax,%rcx
  402d27:	48 89 15 52 5c 00 00 	mov    %rdx,0x5c52(%rip)        # 408980 <key_dtor_list>
  402d2e:	eb d8                	jmp    402d08 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402d30 <__mingw_TLScallback>:
  402d30:	53                   	push   %rbx
  402d31:	48 83 ec 20          	sub    $0x20,%rsp
  402d35:	83 fa 01             	cmp    $0x1,%edx
  402d38:	0f 84 92 00 00 00    	je     402dd0 <__mingw_TLScallback+0xa0>
  402d3e:	72 30                	jb     402d70 <__mingw_TLScallback+0x40>
  402d40:	83 fa 02             	cmp    $0x2,%edx
  402d43:	74 1b                	je     402d60 <__mingw_TLScallback+0x30>
  402d45:	83 fa 03             	cmp    $0x3,%edx
  402d48:	75 1b                	jne    402d65 <__mingw_TLScallback+0x35>
  402d4a:	8b 05 38 5c 00 00    	mov    0x5c38(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402d50:	85 c0                	test   %eax,%eax
  402d52:	74 11                	je     402d65 <__mingw_TLScallback+0x35>
  402d54:	e8 47 fe ff ff       	callq  402ba0 <__mingwthr_run_key_dtors.part.0>
  402d59:	eb 0a                	jmp    402d65 <__mingw_TLScallback+0x35>
  402d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402d60:	e8 fb f4 ff ff       	callq  402260 <_fpreset>
  402d65:	b8 01 00 00 00       	mov    $0x1,%eax
  402d6a:	48 83 c4 20          	add    $0x20,%rsp
  402d6e:	5b                   	pop    %rbx
  402d6f:	c3                   	retq   
  402d70:	8b 05 12 5c 00 00    	mov    0x5c12(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402d76:	85 c0                	test   %eax,%eax
  402d78:	0f 85 82 00 00 00    	jne    402e00 <__mingw_TLScallback+0xd0>
  402d7e:	8b 05 04 5c 00 00    	mov    0x5c04(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402d84:	83 f8 01             	cmp    $0x1,%eax
  402d87:	75 dc                	jne    402d65 <__mingw_TLScallback+0x35>
  402d89:	48 8b 0d f0 5b 00 00 	mov    0x5bf0(%rip),%rcx        # 408980 <key_dtor_list>
  402d90:	48 85 c9             	test   %rcx,%rcx
  402d93:	74 11                	je     402da6 <__mingw_TLScallback+0x76>
  402d95:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  402d99:	e8 d2 04 00 00       	callq  403270 <free>
  402d9e:	48 85 db             	test   %rbx,%rbx
  402da1:	48 89 d9             	mov    %rbx,%rcx
  402da4:	75 ef                	jne    402d95 <__mingw_TLScallback+0x65>
  402da6:	48 8d 0d f3 5b 00 00 	lea    0x5bf3(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402dad:	48 c7 05 c8 5b 00 00 	movq   $0x0,0x5bc8(%rip)        # 408980 <key_dtor_list>
  402db4:	00 00 00 00 
  402db8:	c7 05 c6 5b 00 00 00 	movl   $0x0,0x5bc6(%rip)        # 408988 <__mingwthr_cs_init>
  402dbf:	00 00 00 
  402dc2:	ff 15 68 64 00 00    	callq  *0x6468(%rip)        # 409230 <__IAT_start__>
  402dc8:	eb 9b                	jmp    402d65 <__mingw_TLScallback+0x35>
  402dca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402dd0:	8b 05 b2 5b 00 00    	mov    0x5bb2(%rip),%eax        # 408988 <__mingwthr_cs_init>
  402dd6:	85 c0                	test   %eax,%eax
  402dd8:	74 16                	je     402df0 <__mingw_TLScallback+0xc0>
  402dda:	c7 05 a4 5b 00 00 01 	movl   $0x1,0x5ba4(%rip)        # 408988 <__mingwthr_cs_init>
  402de1:	00 00 00 
  402de4:	b8 01 00 00 00       	mov    $0x1,%eax
  402de9:	48 83 c4 20          	add    $0x20,%rsp
  402ded:	5b                   	pop    %rbx
  402dee:	c3                   	retq   
  402def:	90                   	nop
  402df0:	48 8d 0d a9 5b 00 00 	lea    0x5ba9(%rip),%rcx        # 4089a0 <__mingwthr_cs>
  402df7:	ff 15 7b 64 00 00    	callq  *0x647b(%rip)        # 409278 <__imp_InitializeCriticalSection>
  402dfd:	eb db                	jmp    402dda <__mingw_TLScallback+0xaa>
  402dff:	90                   	nop
  402e00:	e8 9b fd ff ff       	callq  402ba0 <__mingwthr_run_key_dtors.part.0>
  402e05:	e9 74 ff ff ff       	jmpq   402d7e <__mingw_TLScallback+0x4e>
  402e0a:	90                   	nop
  402e0b:	90                   	nop
  402e0c:	90                   	nop
  402e0d:	90                   	nop
  402e0e:	90                   	nop
  402e0f:	90                   	nop

0000000000402e10 <_ValidateImageBase.part.0>:
  402e10:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402e14:	48 01 c1             	add    %rax,%rcx
  402e17:	31 c0                	xor    %eax,%eax
  402e19:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402e1f:	74 01                	je     402e22 <_ValidateImageBase.part.0+0x12>
  402e21:	c3                   	retq   
  402e22:	31 c0                	xor    %eax,%eax
  402e24:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  402e2a:	0f 94 c0             	sete   %al
  402e2d:	c3                   	retq   
  402e2e:	66 90                	xchg   %ax,%ax

0000000000402e30 <_ValidateImageBase>:
  402e30:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402e35:	74 09                	je     402e40 <_ValidateImageBase+0x10>
  402e37:	31 c0                	xor    %eax,%eax
  402e39:	c3                   	retq   
  402e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e40:	eb ce                	jmp    402e10 <_ValidateImageBase.part.0>
  402e42:	0f 1f 40 00          	nopl   0x0(%rax)
  402e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e4d:	00 00 00 

0000000000402e50 <_FindPESection>:
  402e50:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402e54:	48 01 c1             	add    %rax,%rcx
  402e57:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402e5b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402e60:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402e64:	85 c9                	test   %ecx,%ecx
  402e66:	74 29                	je     402e91 <_FindPESection+0x41>
  402e68:	83 e9 01             	sub    $0x1,%ecx
  402e6b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402e6f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402e74:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402e78:	49 39 d0             	cmp    %rdx,%r8
  402e7b:	4c 89 c1             	mov    %r8,%rcx
  402e7e:	77 08                	ja     402e88 <_FindPESection+0x38>
  402e80:	03 48 08             	add    0x8(%rax),%ecx
  402e83:	48 39 d1             	cmp    %rdx,%rcx
  402e86:	77 0b                	ja     402e93 <_FindPESection+0x43>
  402e88:	48 83 c0 28          	add    $0x28,%rax
  402e8c:	4c 39 c8             	cmp    %r9,%rax
  402e8f:	75 e3                	jne    402e74 <_FindPESection+0x24>
  402e91:	31 c0                	xor    %eax,%eax
  402e93:	c3                   	retq   
  402e94:	66 90                	xchg   %ax,%ax
  402e96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e9d:	00 00 00 

0000000000402ea0 <_FindPESectionByName>:
  402ea0:	57                   	push   %rdi
  402ea1:	56                   	push   %rsi
  402ea2:	53                   	push   %rbx
  402ea3:	48 83 ec 20          	sub    $0x20,%rsp
  402ea7:	48 89 ce             	mov    %rcx,%rsi
  402eaa:	e8 91 03 00 00       	callq  403240 <strlen>
  402eaf:	48 83 f8 08          	cmp    $0x8,%rax
  402eb3:	77 6b                	ja     402f20 <_FindPESectionByName+0x80>
  402eb5:	48 8b 15 04 25 00 00 	mov    0x2504(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  402ebc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402ec1:	75 5d                	jne    402f20 <_FindPESectionByName+0x80>
  402ec3:	48 89 d1             	mov    %rdx,%rcx
  402ec6:	e8 45 ff ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  402ecb:	85 c0                	test   %eax,%eax
  402ecd:	74 51                	je     402f20 <_FindPESectionByName+0x80>
  402ecf:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  402ed3:	48 01 d1             	add    %rdx,%rcx
  402ed6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402eda:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  402edf:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402ee3:	85 c0                	test   %eax,%eax
  402ee5:	74 39                	je     402f20 <_FindPESectionByName+0x80>
  402ee7:	83 e8 01             	sub    $0x1,%eax
  402eea:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402eee:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402ef3:	eb 09                	jmp    402efe <_FindPESectionByName+0x5e>
  402ef5:	48 83 c3 28          	add    $0x28,%rbx
  402ef9:	48 39 fb             	cmp    %rdi,%rbx
  402efc:	74 22                	je     402f20 <_FindPESectionByName+0x80>
  402efe:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402f04:	48 89 f2             	mov    %rsi,%rdx
  402f07:	48 89 d9             	mov    %rbx,%rcx
  402f0a:	e8 29 03 00 00       	callq  403238 <strncmp>
  402f0f:	85 c0                	test   %eax,%eax
  402f11:	75 e2                	jne    402ef5 <_FindPESectionByName+0x55>
  402f13:	48 89 d8             	mov    %rbx,%rax
  402f16:	48 83 c4 20          	add    $0x20,%rsp
  402f1a:	5b                   	pop    %rbx
  402f1b:	5e                   	pop    %rsi
  402f1c:	5f                   	pop    %rdi
  402f1d:	c3                   	retq   
  402f1e:	66 90                	xchg   %ax,%ax
  402f20:	31 db                	xor    %ebx,%ebx
  402f22:	48 89 d8             	mov    %rbx,%rax
  402f25:	48 83 c4 20          	add    $0x20,%rsp
  402f29:	5b                   	pop    %rbx
  402f2a:	5e                   	pop    %rsi
  402f2b:	5f                   	pop    %rdi
  402f2c:	c3                   	retq   
  402f2d:	0f 1f 00             	nopl   (%rax)

0000000000402f30 <__mingw_GetSectionForAddress>:
  402f30:	48 83 ec 28          	sub    $0x28,%rsp
  402f34:	4c 8b 05 85 24 00 00 	mov    0x2485(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  402f3b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402f41:	48 89 ca             	mov    %rcx,%rdx
  402f44:	75 57                	jne    402f9d <__mingw_GetSectionForAddress+0x6d>
  402f46:	4c 89 c1             	mov    %r8,%rcx
  402f49:	e8 c2 fe ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  402f4e:	85 c0                	test   %eax,%eax
  402f50:	74 4b                	je     402f9d <__mingw_GetSectionForAddress+0x6d>
  402f52:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402f56:	48 89 d1             	mov    %rdx,%rcx
  402f59:	4c 29 c1             	sub    %r8,%rcx
  402f5c:	49 01 c0             	add    %rax,%r8
  402f5f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402f64:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402f69:	85 d2                	test   %edx,%edx
  402f6b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402f70:	74 2b                	je     402f9d <__mingw_GetSectionForAddress+0x6d>
  402f72:	83 ea 01             	sub    $0x1,%edx
  402f75:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402f79:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402f7e:	66 90                	xchg   %ax,%ax
  402f80:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402f84:	4c 39 c1             	cmp    %r8,%rcx
  402f87:	4c 89 c2             	mov    %r8,%rdx
  402f8a:	72 08                	jb     402f94 <__mingw_GetSectionForAddress+0x64>
  402f8c:	03 50 08             	add    0x8(%rax),%edx
  402f8f:	48 39 d1             	cmp    %rdx,%rcx
  402f92:	72 0b                	jb     402f9f <__mingw_GetSectionForAddress+0x6f>
  402f94:	48 83 c0 28          	add    $0x28,%rax
  402f98:	4c 39 c8             	cmp    %r9,%rax
  402f9b:	75 e3                	jne    402f80 <__mingw_GetSectionForAddress+0x50>
  402f9d:	31 c0                	xor    %eax,%eax
  402f9f:	48 83 c4 28          	add    $0x28,%rsp
  402fa3:	c3                   	retq   
  402fa4:	66 90                	xchg   %ax,%ax
  402fa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fad:	00 00 00 

0000000000402fb0 <__mingw_GetSectionCount>:
  402fb0:	48 83 ec 28          	sub    $0x28,%rsp
  402fb4:	48 8b 15 05 24 00 00 	mov    0x2405(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  402fbb:	45 31 c0             	xor    %r8d,%r8d
  402fbe:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402fc3:	74 0b                	je     402fd0 <__mingw_GetSectionCount+0x20>
  402fc5:	44 89 c0             	mov    %r8d,%eax
  402fc8:	48 83 c4 28          	add    $0x28,%rsp
  402fcc:	c3                   	retq   
  402fcd:	0f 1f 00             	nopl   (%rax)
  402fd0:	48 89 d1             	mov    %rdx,%rcx
  402fd3:	e8 38 fe ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  402fd8:	85 c0                	test   %eax,%eax
  402fda:	74 e9                	je     402fc5 <__mingw_GetSectionCount+0x15>
  402fdc:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402fe0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402fe6:	44 89 c0             	mov    %r8d,%eax
  402fe9:	48 83 c4 28          	add    $0x28,%rsp
  402fed:	c3                   	retq   
  402fee:	66 90                	xchg   %ax,%ax

0000000000402ff0 <_FindPESectionExec>:
  402ff0:	48 83 ec 28          	sub    $0x28,%rsp
  402ff4:	4c 8b 05 c5 23 00 00 	mov    0x23c5(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  402ffb:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  403001:	48 89 ca             	mov    %rcx,%rdx
  403004:	75 52                	jne    403058 <_FindPESectionExec+0x68>
  403006:	4c 89 c1             	mov    %r8,%rcx
  403009:	e8 02 fe ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  40300e:	85 c0                	test   %eax,%eax
  403010:	74 46                	je     403058 <_FindPESectionExec+0x68>
  403012:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  403016:	4c 01 c1             	add    %r8,%rcx
  403019:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40301d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  403022:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  403026:	85 c9                	test   %ecx,%ecx
  403028:	74 2e                	je     403058 <_FindPESectionExec+0x68>
  40302a:	83 e9 01             	sub    $0x1,%ecx
  40302d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  403031:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  403036:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40303d:	00 00 00 
  403040:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  403044:	74 09                	je     40304f <_FindPESectionExec+0x5f>
  403046:	48 85 d2             	test   %rdx,%rdx
  403049:	74 0f                	je     40305a <_FindPESectionExec+0x6a>
  40304b:	48 83 ea 01          	sub    $0x1,%rdx
  40304f:	48 83 c0 28          	add    $0x28,%rax
  403053:	48 39 c8             	cmp    %rcx,%rax
  403056:	75 e8                	jne    403040 <_FindPESectionExec+0x50>
  403058:	31 c0                	xor    %eax,%eax
  40305a:	48 83 c4 28          	add    $0x28,%rsp
  40305e:	c3                   	retq   
  40305f:	90                   	nop

0000000000403060 <_GetPEImageBase>:
  403060:	48 83 ec 28          	sub    $0x28,%rsp
  403064:	48 8b 15 55 23 00 00 	mov    0x2355(%rip),%rdx        # 4053c0 <.refptr.__image_base__>
  40306b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  403070:	75 1e                	jne    403090 <_GetPEImageBase+0x30>
  403072:	48 89 d1             	mov    %rdx,%rcx
  403075:	e8 96 fd ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  40307a:	85 c0                	test   %eax,%eax
  40307c:	b8 00 00 00 00       	mov    $0x0,%eax
  403081:	48 0f 45 c2          	cmovne %rdx,%rax
  403085:	48 83 c4 28          	add    $0x28,%rsp
  403089:	c3                   	retq   
  40308a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403090:	31 c0                	xor    %eax,%eax
  403092:	48 83 c4 28          	add    $0x28,%rsp
  403096:	c3                   	retq   
  403097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40309e:	00 00 

00000000004030a0 <_IsNonwritableInCurrentImage>:
  4030a0:	48 83 ec 28          	sub    $0x28,%rsp
  4030a4:	4c 8b 05 15 23 00 00 	mov    0x2315(%rip),%r8        # 4053c0 <.refptr.__image_base__>
  4030ab:	31 c0                	xor    %eax,%eax
  4030ad:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4030b3:	48 89 ca             	mov    %rcx,%rdx
  4030b6:	74 08                	je     4030c0 <_IsNonwritableInCurrentImage+0x20>
  4030b8:	48 83 c4 28          	add    $0x28,%rsp
  4030bc:	c3                   	retq   
  4030bd:	0f 1f 00             	nopl   (%rax)
  4030c0:	4c 89 c1             	mov    %r8,%rcx
  4030c3:	e8 48 fd ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  4030c8:	85 c0                	test   %eax,%eax
  4030ca:	74 ec                	je     4030b8 <_IsNonwritableInCurrentImage+0x18>
  4030cc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4030d0:	48 89 d1             	mov    %rdx,%rcx
  4030d3:	4c 29 c1             	sub    %r8,%rcx
  4030d6:	49 01 c0             	add    %rax,%r8
  4030d9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4030de:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4030e3:	85 d2                	test   %edx,%edx
  4030e5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4030ea:	74 31                	je     40311d <_IsNonwritableInCurrentImage+0x7d>
  4030ec:	83 ea 01             	sub    $0x1,%edx
  4030ef:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4030f3:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4030f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030ff:	00 
  403100:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  403104:	4c 39 c1             	cmp    %r8,%rcx
  403107:	4c 89 c2             	mov    %r8,%rdx
  40310a:	72 08                	jb     403114 <_IsNonwritableInCurrentImage+0x74>
  40310c:	03 50 08             	add    0x8(%rax),%edx
  40310f:	48 39 d1             	cmp    %rdx,%rcx
  403112:	72 10                	jb     403124 <_IsNonwritableInCurrentImage+0x84>
  403114:	48 83 c0 28          	add    $0x28,%rax
  403118:	4c 39 c8             	cmp    %r9,%rax
  40311b:	75 e3                	jne    403100 <_IsNonwritableInCurrentImage+0x60>
  40311d:	31 c0                	xor    %eax,%eax
  40311f:	48 83 c4 28          	add    $0x28,%rsp
  403123:	c3                   	retq   
  403124:	8b 40 24             	mov    0x24(%rax),%eax
  403127:	f7 d0                	not    %eax
  403129:	c1 e8 1f             	shr    $0x1f,%eax
  40312c:	48 83 c4 28          	add    $0x28,%rsp
  403130:	c3                   	retq   
  403131:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40313d:	00 00 00 

0000000000403140 <__mingw_enum_import_library_names>:
  403140:	48 83 ec 28          	sub    $0x28,%rsp
  403144:	4c 8b 1d 75 22 00 00 	mov    0x2275(%rip),%r11        # 4053c0 <.refptr.__image_base__>
  40314b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  403151:	41 89 c9             	mov    %ecx,%r9d
  403154:	75 58                	jne    4031ae <__mingw_enum_import_library_names+0x6e>
  403156:	4c 89 d9             	mov    %r11,%rcx
  403159:	e8 b2 fc ff ff       	callq  402e10 <_ValidateImageBase.part.0>
  40315e:	85 c0                	test   %eax,%eax
  403160:	74 4c                	je     4031ae <__mingw_enum_import_library_names+0x6e>
  403162:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  403166:	4c 01 d8             	add    %r11,%rax
  403169:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40316f:	85 d2                	test   %edx,%edx
  403171:	74 3b                	je     4031ae <__mingw_enum_import_library_names+0x6e>
  403173:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  403177:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40317c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  403180:	85 c0                	test   %eax,%eax
  403182:	74 2a                	je     4031ae <__mingw_enum_import_library_names+0x6e>
  403184:	83 e8 01             	sub    $0x1,%eax
  403187:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40318b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  403190:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  403194:	4c 39 d2             	cmp    %r10,%rdx
  403197:	4d 89 d0             	mov    %r10,%r8
  40319a:	72 09                	jb     4031a5 <__mingw_enum_import_library_names+0x65>
  40319c:	44 03 41 08          	add    0x8(%rcx),%r8d
  4031a0:	4c 39 c2             	cmp    %r8,%rdx
  4031a3:	72 10                	jb     4031b5 <__mingw_enum_import_library_names+0x75>
  4031a5:	48 83 c1 28          	add    $0x28,%rcx
  4031a9:	48 39 c1             	cmp    %rax,%rcx
  4031ac:	75 e2                	jne    403190 <__mingw_enum_import_library_names+0x50>
  4031ae:	31 c0                	xor    %eax,%eax
  4031b0:	48 83 c4 28          	add    $0x28,%rsp
  4031b4:	c3                   	retq   
  4031b5:	4c 01 da             	add    %r11,%rdx
  4031b8:	75 0e                	jne    4031c8 <__mingw_enum_import_library_names+0x88>
  4031ba:	eb f2                	jmp    4031ae <__mingw_enum_import_library_names+0x6e>
  4031bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4031c0:	41 83 e9 01          	sub    $0x1,%r9d
  4031c4:	48 83 c2 14          	add    $0x14,%rdx
  4031c8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4031cb:	85 c9                	test   %ecx,%ecx
  4031cd:	75 07                	jne    4031d6 <__mingw_enum_import_library_names+0x96>
  4031cf:	8b 42 0c             	mov    0xc(%rdx),%eax
  4031d2:	85 c0                	test   %eax,%eax
  4031d4:	74 d8                	je     4031ae <__mingw_enum_import_library_names+0x6e>
  4031d6:	45 85 c9             	test   %r9d,%r9d
  4031d9:	7f e5                	jg     4031c0 <__mingw_enum_import_library_names+0x80>
  4031db:	8b 42 0c             	mov    0xc(%rdx),%eax
  4031de:	4c 01 d8             	add    %r11,%rax
  4031e1:	48 83 c4 28          	add    $0x28,%rsp
  4031e5:	c3                   	retq   
  4031e6:	90                   	nop
  4031e7:	90                   	nop
  4031e8:	90                   	nop
  4031e9:	90                   	nop
  4031ea:	90                   	nop
  4031eb:	90                   	nop
  4031ec:	90                   	nop
  4031ed:	90                   	nop
  4031ee:	90                   	nop
  4031ef:	90                   	nop

00000000004031f0 <___chkstk_ms>:
  4031f0:	51                   	push   %rcx
  4031f1:	50                   	push   %rax
  4031f2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4031f8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  4031fd:	72 19                	jb     403218 <___chkstk_ms+0x28>
  4031ff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  403206:	48 83 09 00          	orq    $0x0,(%rcx)
  40320a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  403210:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  403216:	77 e7                	ja     4031ff <___chkstk_ms+0xf>
  403218:	48 29 c1             	sub    %rax,%rcx
  40321b:	48 83 09 00          	orq    $0x0,(%rcx)
  40321f:	58                   	pop    %rax
  403220:	59                   	pop    %rcx
  403221:	c3                   	retq   
  403222:	90                   	nop
  403223:	90                   	nop
  403224:	90                   	nop
  403225:	90                   	nop
  403226:	90                   	nop
  403227:	90                   	nop
  403228:	90                   	nop
  403229:	90                   	nop
  40322a:	90                   	nop
  40322b:	90                   	nop
  40322c:	90                   	nop
  40322d:	90                   	nop
  40322e:	90                   	nop
  40322f:	90                   	nop

0000000000403230 <vfprintf>:
  403230:	ff 25 82 61 00 00    	jmpq   *0x6182(%rip)        # 4093b8 <__imp_vfprintf>
  403236:	90                   	nop
  403237:	90                   	nop

0000000000403238 <strncmp>:
  403238:	ff 25 72 61 00 00    	jmpq   *0x6172(%rip)        # 4093b0 <__imp_strncmp>
  40323e:	90                   	nop
  40323f:	90                   	nop

0000000000403240 <strlen>:
  403240:	ff 25 62 61 00 00    	jmpq   *0x6162(%rip)        # 4093a8 <__imp_strlen>
  403246:	90                   	nop
  403247:	90                   	nop

0000000000403248 <signal>:
  403248:	ff 25 52 61 00 00    	jmpq   *0x6152(%rip)        # 4093a0 <__imp_signal>
  40324e:	90                   	nop
  40324f:	90                   	nop

0000000000403250 <rand>:
  403250:	ff 25 42 61 00 00    	jmpq   *0x6142(%rip)        # 409398 <__imp_rand>
  403256:	90                   	nop
  403257:	90                   	nop

0000000000403258 <memcpy>:
  403258:	ff 25 32 61 00 00    	jmpq   *0x6132(%rip)        # 409390 <__imp_memcpy>
  40325e:	90                   	nop
  40325f:	90                   	nop

0000000000403260 <malloc>:
  403260:	ff 25 22 61 00 00    	jmpq   *0x6122(%rip)        # 409388 <__imp_malloc>
  403266:	90                   	nop
  403267:	90                   	nop

0000000000403268 <fwrite>:
  403268:	ff 25 12 61 00 00    	jmpq   *0x6112(%rip)        # 409380 <__imp_fwrite>
  40326e:	90                   	nop
  40326f:	90                   	nop

0000000000403270 <free>:
  403270:	ff 25 02 61 00 00    	jmpq   *0x6102(%rip)        # 409378 <__imp_free>
  403276:	90                   	nop
  403277:	90                   	nop

0000000000403278 <fprintf>:
  403278:	ff 25 f2 60 00 00    	jmpq   *0x60f2(%rip)        # 409370 <__imp_fprintf>
  40327e:	90                   	nop
  40327f:	90                   	nop

0000000000403280 <exit>:
  403280:	ff 25 e2 60 00 00    	jmpq   *0x60e2(%rip)        # 409368 <__imp_exit>
  403286:	90                   	nop
  403287:	90                   	nop

0000000000403288 <calloc>:
  403288:	ff 25 d2 60 00 00    	jmpq   *0x60d2(%rip)        # 409360 <__imp_calloc>
  40328e:	90                   	nop
  40328f:	90                   	nop

0000000000403290 <abort>:
  403290:	ff 25 c2 60 00 00    	jmpq   *0x60c2(%rip)        # 409358 <__imp_abort>
  403296:	90                   	nop
  403297:	90                   	nop

0000000000403298 <_onexit>:
  403298:	ff 25 b2 60 00 00    	jmpq   *0x60b2(%rip)        # 409350 <__imp__onexit>
  40329e:	90                   	nop
  40329f:	90                   	nop

00000000004032a0 <_initterm>:
  4032a0:	ff 25 a2 60 00 00    	jmpq   *0x60a2(%rip)        # 409348 <__imp__initterm>
  4032a6:	90                   	nop
  4032a7:	90                   	nop

00000000004032a8 <_cexit>:
  4032a8:	ff 25 8a 60 00 00    	jmpq   *0x608a(%rip)        # 409338 <__imp__cexit>
  4032ae:	90                   	nop
  4032af:	90                   	nop

00000000004032b0 <_amsg_exit>:
  4032b0:	ff 25 7a 60 00 00    	jmpq   *0x607a(%rip)        # 409330 <__imp__amsg_exit>
  4032b6:	90                   	nop
  4032b7:	90                   	nop

00000000004032b8 <__setusermatherr>:
  4032b8:	ff 25 62 60 00 00    	jmpq   *0x6062(%rip)        # 409320 <__imp___setusermatherr>
  4032be:	90                   	nop
  4032bf:	90                   	nop

00000000004032c0 <__set_app_type>:
  4032c0:	ff 25 52 60 00 00    	jmpq   *0x6052(%rip)        # 409318 <__imp___set_app_type>
  4032c6:	90                   	nop
  4032c7:	90                   	nop

00000000004032c8 <__lconv_init>:
  4032c8:	ff 25 42 60 00 00    	jmpq   *0x6042(%rip)        # 409310 <__imp___lconv_init>
  4032ce:	90                   	nop
  4032cf:	90                   	nop

00000000004032d0 <__getmainargs>:
  4032d0:	ff 25 22 60 00 00    	jmpq   *0x6022(%rip)        # 4092f8 <__imp___getmainargs>
  4032d6:	90                   	nop
  4032d7:	90                   	nop

00000000004032d8 <__C_specific_handler>:
  4032d8:	ff 25 12 60 00 00    	jmpq   *0x6012(%rip)        # 4092f0 <__imp___C_specific_handler>
  4032de:	90                   	nop
  4032df:	90                   	nop

00000000004032e0 <__acrt_iob_func>:
  4032e0:	53                   	push   %rbx
  4032e1:	48 83 ec 20          	sub    $0x20,%rsp
  4032e5:	89 cb                	mov    %ecx,%ebx
  4032e7:	e8 54 00 00 00       	callq  403340 <__iob_func>
  4032ec:	89 d9                	mov    %ebx,%ecx
  4032ee:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  4032f2:	48 c1 e2 04          	shl    $0x4,%rdx
  4032f6:	48 01 d0             	add    %rdx,%rax
  4032f9:	48 83 c4 20          	add    $0x20,%rsp
  4032fd:	5b                   	pop    %rbx
  4032fe:	c3                   	retq   
  4032ff:	90                   	nop

0000000000403300 <_get_invalid_parameter_handler>:
  403300:	48 8b 05 e9 56 00 00 	mov    0x56e9(%rip),%rax        # 4089f0 <handler>
  403307:	c3                   	retq   
  403308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40330f:	00 

0000000000403310 <_set_invalid_parameter_handler>:
  403310:	48 89 c8             	mov    %rcx,%rax
  403313:	48 87 05 d6 56 00 00 	xchg   %rax,0x56d6(%rip)        # 4089f0 <handler>
  40331a:	c3                   	retq   
  40331b:	90                   	nop
  40331c:	90                   	nop
  40331d:	90                   	nop
  40331e:	90                   	nop
  40331f:	90                   	nop

0000000000403320 <__p__acmdln>:
  403320:	48 8b 05 b9 20 00 00 	mov    0x20b9(%rip),%rax        # 4053e0 <.refptr.__imp__acmdln>
  403327:	48 8b 00             	mov    (%rax),%rax
  40332a:	c3                   	retq   
  40332b:	90                   	nop
  40332c:	90                   	nop
  40332d:	90                   	nop
  40332e:	90                   	nop
  40332f:	90                   	nop

0000000000403330 <__p__fmode>:
  403330:	48 8b 05 b9 20 00 00 	mov    0x20b9(%rip),%rax        # 4053f0 <.refptr.__imp__fmode>
  403337:	48 8b 00             	mov    (%rax),%rax
  40333a:	c3                   	retq   
  40333b:	90                   	nop
  40333c:	90                   	nop
  40333d:	90                   	nop
  40333e:	90                   	nop
  40333f:	90                   	nop

0000000000403340 <__iob_func>:
  403340:	ff 25 c2 5f 00 00    	jmpq   *0x5fc2(%rip)        # 409308 <__imp___iob_func>
  403346:	90                   	nop
  403347:	90                   	nop
  403348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40334f:	00 

0000000000403350 <VirtualQuery>:
  403350:	ff 25 8a 5f 00 00    	jmpq   *0x5f8a(%rip)        # 4092e0 <__imp_VirtualQuery>
  403356:	90                   	nop
  403357:	90                   	nop

0000000000403358 <VirtualProtect>:
  403358:	ff 25 7a 5f 00 00    	jmpq   *0x5f7a(%rip)        # 4092d8 <__imp_VirtualProtect>
  40335e:	90                   	nop
  40335f:	90                   	nop

0000000000403360 <UnhandledExceptionFilter>:
  403360:	ff 25 6a 5f 00 00    	jmpq   *0x5f6a(%rip)        # 4092d0 <__imp_UnhandledExceptionFilter>
  403366:	90                   	nop
  403367:	90                   	nop

0000000000403368 <TlsGetValue>:
  403368:	ff 25 5a 5f 00 00    	jmpq   *0x5f5a(%rip)        # 4092c8 <__imp_TlsGetValue>
  40336e:	90                   	nop
  40336f:	90                   	nop

0000000000403370 <TerminateProcess>:
  403370:	ff 25 4a 5f 00 00    	jmpq   *0x5f4a(%rip)        # 4092c0 <__imp_TerminateProcess>
  403376:	90                   	nop
  403377:	90                   	nop

0000000000403378 <Sleep>:
  403378:	ff 25 3a 5f 00 00    	jmpq   *0x5f3a(%rip)        # 4092b8 <__imp_Sleep>
  40337e:	90                   	nop
  40337f:	90                   	nop

0000000000403380 <SetUnhandledExceptionFilter>:
  403380:	ff 25 2a 5f 00 00    	jmpq   *0x5f2a(%rip)        # 4092b0 <__imp_SetUnhandledExceptionFilter>
  403386:	90                   	nop
  403387:	90                   	nop

0000000000403388 <RtlVirtualUnwind>:
  403388:	ff 25 1a 5f 00 00    	jmpq   *0x5f1a(%rip)        # 4092a8 <__imp_RtlVirtualUnwind>
  40338e:	90                   	nop
  40338f:	90                   	nop

0000000000403390 <RtlLookupFunctionEntry>:
  403390:	ff 25 0a 5f 00 00    	jmpq   *0x5f0a(%rip)        # 4092a0 <__imp_RtlLookupFunctionEntry>
  403396:	90                   	nop
  403397:	90                   	nop

0000000000403398 <RtlCaptureContext>:
  403398:	ff 25 fa 5e 00 00    	jmpq   *0x5efa(%rip)        # 409298 <__imp_RtlCaptureContext>
  40339e:	90                   	nop
  40339f:	90                   	nop

00000000004033a0 <RtlAddFunctionTable>:
  4033a0:	ff 25 ea 5e 00 00    	jmpq   *0x5eea(%rip)        # 409290 <__imp_RtlAddFunctionTable>
  4033a6:	90                   	nop
  4033a7:	90                   	nop

00000000004033a8 <QueryPerformanceCounter>:
  4033a8:	ff 25 da 5e 00 00    	jmpq   *0x5eda(%rip)        # 409288 <__imp_QueryPerformanceCounter>
  4033ae:	90                   	nop
  4033af:	90                   	nop

00000000004033b0 <LeaveCriticalSection>:
  4033b0:	ff 25 ca 5e 00 00    	jmpq   *0x5eca(%rip)        # 409280 <__imp_LeaveCriticalSection>
  4033b6:	90                   	nop
  4033b7:	90                   	nop

00000000004033b8 <InitializeCriticalSection>:
  4033b8:	ff 25 ba 5e 00 00    	jmpq   *0x5eba(%rip)        # 409278 <__imp_InitializeCriticalSection>
  4033be:	90                   	nop
  4033bf:	90                   	nop

00000000004033c0 <GetTickCount>:
  4033c0:	ff 25 aa 5e 00 00    	jmpq   *0x5eaa(%rip)        # 409270 <__imp_GetTickCount>
  4033c6:	90                   	nop
  4033c7:	90                   	nop

00000000004033c8 <GetSystemTimeAsFileTime>:
  4033c8:	ff 25 9a 5e 00 00    	jmpq   *0x5e9a(%rip)        # 409268 <__imp_GetSystemTimeAsFileTime>
  4033ce:	90                   	nop
  4033cf:	90                   	nop

00000000004033d0 <GetStartupInfoA>:
  4033d0:	ff 25 8a 5e 00 00    	jmpq   *0x5e8a(%rip)        # 409260 <__imp_GetStartupInfoA>
  4033d6:	90                   	nop
  4033d7:	90                   	nop

00000000004033d8 <GetLastError>:
  4033d8:	ff 25 7a 5e 00 00    	jmpq   *0x5e7a(%rip)        # 409258 <__imp_GetLastError>
  4033de:	90                   	nop
  4033df:	90                   	nop

00000000004033e0 <GetCurrentThreadId>:
  4033e0:	ff 25 6a 5e 00 00    	jmpq   *0x5e6a(%rip)        # 409250 <__imp_GetCurrentThreadId>
  4033e6:	90                   	nop
  4033e7:	90                   	nop

00000000004033e8 <GetCurrentProcessId>:
  4033e8:	ff 25 5a 5e 00 00    	jmpq   *0x5e5a(%rip)        # 409248 <__imp_GetCurrentProcessId>
  4033ee:	90                   	nop
  4033ef:	90                   	nop

00000000004033f0 <GetCurrentProcess>:
  4033f0:	ff 25 4a 5e 00 00    	jmpq   *0x5e4a(%rip)        # 409240 <__imp_GetCurrentProcess>
  4033f6:	90                   	nop
  4033f7:	90                   	nop

00000000004033f8 <EnterCriticalSection>:
  4033f8:	ff 25 3a 5e 00 00    	jmpq   *0x5e3a(%rip)        # 409238 <__imp_EnterCriticalSection>
  4033fe:	90                   	nop
  4033ff:	90                   	nop

0000000000403400 <DeleteCriticalSection>:
  403400:	ff 25 2a 5e 00 00    	jmpq   *0x5e2a(%rip)        # 409230 <__IAT_start__>
  403406:	90                   	nop
  403407:	90                   	nop
  403408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40340f:	00 

0000000000403410 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>:
  403410:	55                   	push   %rbp
  403411:	48 89 e5             	mov    %rsp,%rbp
  403414:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  403418:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40341c:	48 8b 00             	mov    (%rax),%rax
  40341f:	5d                   	pop    %rbp
  403420:	c3                   	retq   
  403421:	90                   	nop
  403422:	90                   	nop
  403423:	90                   	nop
  403424:	90                   	nop
  403425:	90                   	nop
  403426:	90                   	nop
  403427:	90                   	nop
  403428:	90                   	nop
  403429:	90                   	nop
  40342a:	90                   	nop
  40342b:	90                   	nop
  40342c:	90                   	nop
  40342d:	90                   	nop
  40342e:	90                   	nop
  40342f:	90                   	nop

0000000000403430 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>:
  403430:	55                   	push   %rbp
  403431:	48 89 e5             	mov    %rsp,%rbp
  403434:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  403438:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40343c:	48 8b 00             	mov    (%rax),%rax
  40343f:	5d                   	pop    %rbp
  403440:	c3                   	retq   
  403441:	90                   	nop
  403442:	90                   	nop
  403443:	90                   	nop
  403444:	90                   	nop
  403445:	90                   	nop
  403446:	90                   	nop
  403447:	90                   	nop
  403448:	90                   	nop
  403449:	90                   	nop
  40344a:	90                   	nop
  40344b:	90                   	nop
  40344c:	90                   	nop
  40344d:	90                   	nop
  40344e:	90                   	nop
  40344f:	90                   	nop

0000000000403450 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000EEE5countEv>:
  403450:	55                   	push   %rbp
  403451:	48 89 e5             	mov    %rsp,%rbp
  403454:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  403458:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40345c:	48 8b 00             	mov    (%rax),%rax
  40345f:	5d                   	pop    %rbp
  403460:	c3                   	retq   
  403461:	90                   	nop
  403462:	90                   	nop
  403463:	90                   	nop
  403464:	90                   	nop
  403465:	90                   	nop
  403466:	90                   	nop
  403467:	90                   	nop
  403468:	90                   	nop
  403469:	90                   	nop
  40346a:	90                   	nop
  40346b:	90                   	nop
  40346c:	90                   	nop
  40346d:	90                   	nop
  40346e:	90                   	nop
  40346f:	90                   	nop

0000000000403470 <_ZNSt6chrono13duration_castINS_8durationIxSt5ratioILx1ELx1000000EEEExS2_ILx1ELx1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE>:
  403470:	55                   	push   %rbp
  403471:	48 89 e5             	mov    %rsp,%rbp
  403474:	48 83 ec 20          	sub    $0x20,%rsp
  403478:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40347c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  403480:	e8 0b 00 00 00       	callq  403490 <_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE>
  403485:	48 83 c4 20          	add    $0x20,%rsp
  403489:	5d                   	pop    %rbp
  40348a:	c3                   	retq   
  40348b:	90                   	nop
  40348c:	90                   	nop
  40348d:	90                   	nop
  40348e:	90                   	nop
  40348f:	90                   	nop

0000000000403490 <_ZNSt6chrono20__duration_cast_implINS_8durationIxSt5ratioILx1ELx1000000EEEES2_ILx1ELx1000EExLb1ELb0EE6__castIxS2_ILx1ELx1000000000EEEES4_RKNS1_IT_T0_EE>:
  403490:	55                   	push   %rbp
  403491:	48 89 e5             	mov    %rsp,%rbp
  403494:	48 83 ec 30          	sub    $0x30,%rsp
  403498:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40349c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4034a0:	e8 8b ff ff ff       	callq  403430 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  4034a5:	48 89 c1             	mov    %rax,%rcx
  4034a8:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
  4034af:	9b c4 20 
  4034b2:	48 89 c8             	mov    %rcx,%rax
  4034b5:	48 f7 ea             	imul   %rdx
  4034b8:	48 c1 fa 07          	sar    $0x7,%rdx
  4034bc:	48 89 c8             	mov    %rcx,%rax
  4034bf:	48 c1 f8 3f          	sar    $0x3f,%rax
  4034c3:	48 29 c2             	sub    %rax,%rdx
  4034c6:	48 89 d0             	mov    %rdx,%rax
  4034c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4034cd:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
  4034d1:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4034d5:	48 89 c1             	mov    %rax,%rcx
  4034d8:	e8 33 00 00 00       	callq  403510 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_>
  4034dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4034e1:	48 83 c4 30          	add    $0x30,%rsp
  4034e5:	5d                   	pop    %rbp
  4034e6:	c3                   	retq   
  4034e7:	90                   	nop
  4034e8:	90                   	nop
  4034e9:	90                   	nop
  4034ea:	90                   	nop
  4034eb:	90                   	nop
  4034ec:	90                   	nop
  4034ed:	90                   	nop
  4034ee:	90                   	nop
  4034ef:	90                   	nop

00000000004034f0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>:
  4034f0:	55                   	push   %rbp
  4034f1:	48 89 e5             	mov    %rsp,%rbp
  4034f4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4034f8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4034fc:	48 8b 45 18          	mov    0x18(%rbp),%rax
  403500:	48 8b 10             	mov    (%rax),%rdx
  403503:	48 8b 45 10          	mov    0x10(%rbp),%rax
  403507:	48 89 10             	mov    %rdx,(%rax)
  40350a:	90                   	nop
  40350b:	5d                   	pop    %rbp
  40350c:	c3                   	retq   
  40350d:	90                   	nop
  40350e:	90                   	nop
  40350f:	90                   	nop

0000000000403510 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000EEEC1IxvEERKT_>:
  403510:	55                   	push   %rbp
  403511:	48 89 e5             	mov    %rsp,%rbp
  403514:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  403518:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40351c:	48 8b 45 18          	mov    0x18(%rbp),%rax
  403520:	48 8b 10             	mov    (%rax),%rdx
  403523:	48 8b 45 10          	mov    0x10(%rbp),%rax
  403527:	48 89 10             	mov    %rdx,(%rax)
  40352a:	90                   	nop
  40352b:	5d                   	pop    %rbp
  40352c:	c3                   	retq   
  40352d:	90                   	nop
  40352e:	90                   	nop
  40352f:	90                   	nop

0000000000403530 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
  403530:	55                   	push   %rbp
  403531:	48 89 e5             	mov    %rsp,%rbp
  403534:	48 83 ec 30          	sub    $0x30,%rsp
  403538:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40353c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403540:	48 8b 45 18          	mov    0x18(%rbp),%rax
  403544:	48 89 c1             	mov    %rax,%rcx
  403547:	e8 c4 fe ff ff       	callq  403410 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
  40354c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  403550:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  403554:	e8 b7 fe ff ff       	callq  403410 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIxSt5ratioILx1ELx1000000000EEEEE16time_since_epochEv>
  403559:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40355d:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  403561:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  403565:	48 89 c1             	mov    %rax,%rcx
  403568:	e8 13 00 00 00       	callq  403580 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
  40356d:	90                   	nop
  40356e:	48 83 c4 30          	add    $0x30,%rsp
  403572:	5d                   	pop    %rbp
  403573:	c3                   	retq   
  403574:	90                   	nop
  403575:	90                   	nop
  403576:	90                   	nop
  403577:	90                   	nop
  403578:	90                   	nop
  403579:	90                   	nop
  40357a:	90                   	nop
  40357b:	90                   	nop
  40357c:	90                   	nop
  40357d:	90                   	nop
  40357e:	90                   	nop
  40357f:	90                   	nop

0000000000403580 <_ZNSt6chronomiIxSt5ratioILx1ELx1000000000EExS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
  403580:	55                   	push   %rbp
  403581:	53                   	push   %rbx
  403582:	48 83 ec 48          	sub    $0x48,%rsp
  403586:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40358d:	00 
  40358e:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  403592:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  403596:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40359a:	48 8b 00             	mov    (%rax),%rax
  40359d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4035a1:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4035a5:	48 89 c1             	mov    %rax,%rcx
  4035a8:	e8 83 fe ff ff       	callq  403430 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  4035ad:	48 89 c3             	mov    %rax,%rbx
  4035b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4035b4:	48 8b 00             	mov    (%rax),%rax
  4035b7:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4035bb:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  4035bf:	48 89 c1             	mov    %rax,%rcx
  4035c2:	e8 69 fe ff ff       	callq  403430 <_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000000000EEE5countEv>
  4035c7:	48 29 c3             	sub    %rax,%rbx
  4035ca:	48 89 d8             	mov    %rbx,%rax
  4035cd:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  4035d1:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
  4035d5:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4035d9:	48 89 c1             	mov    %rax,%rcx
  4035dc:	e8 0f ff ff ff       	callq  4034f0 <_ZNSt6chrono8durationIxSt5ratioILx1ELx1000000000EEEC1IxvEERKT_>
  4035e1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  4035e5:	48 83 c4 48          	add    $0x48,%rsp
  4035e9:	5b                   	pop    %rbx
  4035ea:	5d                   	pop    %rbp
  4035eb:	c3                   	retq   
  4035ec:	90                   	nop
  4035ed:	90                   	nop
  4035ee:	90                   	nop
  4035ef:	90                   	nop

00000000004035f0 <__report_error>:
  4035f0:	56                   	push   %rsi
  4035f1:	53                   	push   %rbx
  4035f2:	48 83 ec 38          	sub    $0x38,%rsp
  4035f6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4035fb:	48 89 cb             	mov    %rcx,%rbx
  4035fe:	b9 02 00 00 00       	mov    $0x2,%ecx
  403603:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  403608:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  40360d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  403612:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  403617:	e8 c4 fc ff ff       	callq  4032e0 <__acrt_iob_func>
  40361c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  403622:	ba 01 00 00 00       	mov    $0x1,%edx
  403627:	48 8d 0d d2 1b 00 00 	lea    0x1bd2(%rip),%rcx        # 405200 <.rdata>
  40362e:	49 89 c1             	mov    %rax,%r9
  403631:	e8 32 fc ff ff       	callq  403268 <fwrite>
  403636:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40363b:	b9 02 00 00 00       	mov    $0x2,%ecx
  403640:	e8 9b fc ff ff       	callq  4032e0 <__acrt_iob_func>
  403645:	48 89 da             	mov    %rbx,%rdx
  403648:	48 89 c1             	mov    %rax,%rcx
  40364b:	49 89 f0             	mov    %rsi,%r8
  40364e:	e8 dd fb ff ff       	callq  403230 <vfprintf>
  403653:	e8 38 fc ff ff       	callq  403290 <abort>
  403658:	90                   	nop
  403659:	90                   	nop
  40365a:	90                   	nop
  40365b:	90                   	nop
  40365c:	90                   	nop
  40365d:	90                   	nop
  40365e:	90                   	nop
  40365f:	90                   	nop

0000000000403660 <register_frame_ctor>:
  403660:	e9 cb de ff ff       	jmpq   401530 <__gcc_register_frame>
  403665:	90                   	nop
  403666:	90                   	nop
  403667:	90                   	nop
  403668:	90                   	nop
  403669:	90                   	nop
  40366a:	90                   	nop
  40366b:	90                   	nop
  40366c:	90                   	nop
  40366d:	90                   	nop
  40366e:	90                   	nop
  40366f:	90                   	nop

0000000000403670 <__CTOR_LIST__>:
  403670:	ff                   	(bad)  
  403671:	ff                   	(bad)  
  403672:	ff                   	(bad)  
  403673:	ff                   	(bad)  
  403674:	ff                   	(bad)  
  403675:	ff                   	(bad)  
  403676:	ff                   	(bad)  
  403677:	ff                   	.byte 0xff

0000000000403678 <.ctors>:
  403678:	de 18                	ficomps (%rax)
  40367a:	40 00 00             	add    %al,(%rax)
  40367d:	00 00                	add    %al,(%rax)
	...

0000000000403680 <.ctors>:
  403680:	06                   	(bad)  
  403681:	1d 40 00 00 00       	sbb    $0x40,%eax
	...

0000000000403688 <.ctors.65535>:
  403688:	60                   	(bad)  
  403689:	36 40 00 00          	add    %al,%ss:(%rax)
	...

0000000000403698 <__DTOR_LIST__>:
  403698:	ff                   	(bad)  
  403699:	ff                   	(bad)  
  40369a:	ff                   	(bad)  
  40369b:	ff                   	(bad)  
  40369c:	ff                   	(bad)  
  40369d:	ff                   	(bad)  
  40369e:	ff                   	(bad)  
  40369f:	ff 00                	incl   (%rax)
  4036a1:	00 00                	add    %al,(%rax)
  4036a3:	00 00                	add    %al,(%rax)
  4036a5:	00 00                	add    %al,(%rax)
	...
