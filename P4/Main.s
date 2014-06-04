! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
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
	.align
	.align
! String constants
_StringConst_38:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_37:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_36:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_35:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_34:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_33:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_32:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_31:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_30:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_29:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_28:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_27:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_26:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_25:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_24:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_23:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_22:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_21:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_20:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_19:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_18:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_17:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
_StringConst_16:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_15:
	.word	2			! length
	.ascii	"\n\n"
	.align
_StringConst_14:
	.word	56			! length
	.ascii	"\n====================  NEW STATE  ====================\n\n"
	.align
_StringConst_13:
	.word	36			! length
	.ascii	"*****  Returning one thread  *****\n\n"
	.align
_StringConst_12:
	.word	52			! length
	.ascii	"*****  Returning one process and its frames  *****\n\n"
	.align
_StringConst_11:
	.word	38			! length
	.ascii	"*****  Allocating some frames  *****\n\n"
	.align
_StringConst_10:
	.word	41			! length
	.ascii	"*****  Allocating some processes  *****\n\n"
	.align
_StringConst_9:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_8:
	.word	2			! length
	.ascii	"\n\n"
	.align
_StringConst_7:
	.word	60			! length
	.ascii	"\n====================  INITIAL STATE  ====================\n\n"
	.align
_StringConst_6:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_5:
	.word	56			! length
	.ascii	"\n====================  NEW STATE  ====================\n\n"
	.align
_StringConst_4:
	.word	36			! length
	.ascii	"*****  Returning one thread  *****\n\n"
	.align
_StringConst_3:
	.word	40			! length
	.ascii	"\n*****  Allocating some threads  *****\n\n"
	.align
_StringConst_2:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_1:
	.word	60			! length
	.ascii	"\n====================  INITIAL STATE  ====================\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_48		! .
	ret				! .
_Label_48:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_49
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_49:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_50
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_50
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_50
! Make sure _P_Kernel_ has hash value 0xc17a5546 (decimal -1048947386)
	set	_packageName,r2
	set	0xc17a5546,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_50
_Label_50:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	78,r1
_Label_625:
	push	r0
	sub	r1,1,r1
	bne	_Label_625
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_51 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-280]
!   Send message Init
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_626:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_626
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_53 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-272]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41660)
	set	_P_Kernel_threadManager,r4
	mov	10415,r3
_Label_627:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_627
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_55 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-264]
!   Send message Init
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_628:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_628
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_57 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-256]
!   Send message Init
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_58 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_58  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	41,r13		! source line 41
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   _temp_59 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-248]
!   Send message Print
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_60 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_60  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_61 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_61  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_62 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-236]
!   Send message GetANewThread
	load	[r14+-236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th0  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_63 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-232]
!   Send message GetANewThread
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0AS",r10
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   _temp_64 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-228]
!   Send message GetANewThread
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-292]
! CALL STATEMENT...
!   _temp_65 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_65  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_66 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=th1  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_67 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_67  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_68 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-212]
!   Send message Print
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_69 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_69  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_70 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=th0  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_71 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=12  value=th2  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_72 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_72  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_73 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message Print
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_74 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_74  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_75 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-184]
!   Send message Print
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_76 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_76  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_77 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_77  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   _temp_78 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   Send message GetANewProcess
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc0  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   Send message GetANewProcess
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
	mov	75,r13		! source line 75
	mov	"\0\0SE",r10
!   _temp_80 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   Send message GetANewProcess
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-304]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_81 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   Send message GetANewProcess
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc3  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   _temp_82 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   if intIsZero (proc2) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_84 = proc2 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   _temp_83 = _temp_84		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-152]
!   _temp_85 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   if intIsZero (proc1) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_87 = proc1 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_86 = _temp_87		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-140]
!   _temp_88 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_86  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   if intIsZero (proc0) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_90 = proc0 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_89 = _temp_90		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   _temp_91 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_89  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   if intIsZero (proc3) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_93 = proc3 + 32
	load	[r14+-308],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_92 = _temp_93		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-116]
!   _temp_94 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_92  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_95 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_95  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   if intIsZero (proc1) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_97 = proc1 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_96 = _temp_97		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-100]
!   _temp_98 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_99 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=proc1  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_100 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_100  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_101 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=th1  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_102 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_102  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_103 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message Print
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_104 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_104  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0SE",r10
!   _temp_105 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Send message Print
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_106 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_106  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   if intIsZero (proc0) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_108 = proc0 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_107 = _temp_108		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   _temp_109 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_107  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_110 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=proc0  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   if intIsZero (proc2) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_112 = proc2 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_111 = _temp_112		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_113 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_111  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_114 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=proc2  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   if intIsZero (proc3) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_116 = proc3 + 32
	load	[r14+-308],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_115 = _temp_116		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_117 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_115  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_118 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=proc3  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_46_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_44_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_42_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_119
	.word	0		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_120
	.word	-12
	.word	4
	.word	_Label_121
	.word	-16
	.word	4
	.word	_Label_122
	.word	-20
	.word	4
	.word	_Label_123
	.word	-24
	.word	4
	.word	_Label_124
	.word	-28
	.word	4
	.word	_Label_125
	.word	-32
	.word	4
	.word	_Label_126
	.word	-36
	.word	4
	.word	_Label_127
	.word	-40
	.word	4
	.word	_Label_128
	.word	-44
	.word	4
	.word	_Label_129
	.word	-48
	.word	4
	.word	_Label_130
	.word	-52
	.word	4
	.word	_Label_131
	.word	-56
	.word	4
	.word	_Label_132
	.word	-60
	.word	4
	.word	_Label_133
	.word	-64
	.word	4
	.word	_Label_134
	.word	-68
	.word	4
	.word	_Label_135
	.word	-72
	.word	4
	.word	_Label_136
	.word	-76
	.word	4
	.word	_Label_137
	.word	-80
	.word	4
	.word	_Label_138
	.word	-84
	.word	4
	.word	_Label_139
	.word	-88
	.word	4
	.word	_Label_140
	.word	-92
	.word	4
	.word	_Label_141
	.word	-96
	.word	4
	.word	_Label_142
	.word	-100
	.word	4
	.word	_Label_143
	.word	-104
	.word	4
	.word	_Label_144
	.word	-108
	.word	4
	.word	_Label_145
	.word	-112
	.word	4
	.word	_Label_146
	.word	-116
	.word	4
	.word	_Label_147
	.word	-120
	.word	4
	.word	_Label_148
	.word	-124
	.word	4
	.word	_Label_149
	.word	-128
	.word	4
	.word	_Label_150
	.word	-132
	.word	4
	.word	_Label_151
	.word	-136
	.word	4
	.word	_Label_152
	.word	-140
	.word	4
	.word	_Label_153
	.word	-144
	.word	4
	.word	_Label_154
	.word	-148
	.word	4
	.word	_Label_155
	.word	-152
	.word	4
	.word	_Label_156
	.word	-156
	.word	4
	.word	_Label_157
	.word	-160
	.word	4
	.word	_Label_158
	.word	-164
	.word	4
	.word	_Label_159
	.word	-168
	.word	4
	.word	_Label_160
	.word	-172
	.word	4
	.word	_Label_161
	.word	-176
	.word	4
	.word	_Label_162
	.word	-180
	.word	4
	.word	_Label_163
	.word	-184
	.word	4
	.word	_Label_164
	.word	-188
	.word	4
	.word	_Label_165
	.word	-192
	.word	4
	.word	_Label_166
	.word	-196
	.word	4
	.word	_Label_167
	.word	-200
	.word	4
	.word	_Label_168
	.word	-204
	.word	4
	.word	_Label_169
	.word	-208
	.word	4
	.word	_Label_170
	.word	-212
	.word	4
	.word	_Label_171
	.word	-216
	.word	4
	.word	_Label_172
	.word	-220
	.word	4
	.word	_Label_173
	.word	-224
	.word	4
	.word	_Label_174
	.word	-228
	.word	4
	.word	_Label_175
	.word	-232
	.word	4
	.word	_Label_176
	.word	-236
	.word	4
	.word	_Label_177
	.word	-240
	.word	4
	.word	_Label_178
	.word	-244
	.word	4
	.word	_Label_179
	.word	-248
	.word	4
	.word	_Label_180
	.word	-252
	.word	4
	.word	_Label_181
	.word	-256
	.word	4
	.word	_Label_182
	.word	-260
	.word	4
	.word	_Label_183
	.word	-264
	.word	4
	.word	_Label_184
	.word	-268
	.word	4
	.word	_Label_185
	.word	-272
	.word	4
	.word	_Label_186
	.word	-276
	.word	4
	.word	_Label_187
	.word	-280
	.word	4
	.word	_Label_188
	.word	-284
	.word	4
	.word	_Label_189
	.word	-288
	.word	4
	.word	_Label_190
	.word	-292
	.word	4
	.word	_Label_191
	.word	-296
	.word	4
	.word	_Label_192
	.word	-300
	.word	4
	.word	_Label_193
	.word	-304
	.word	4
	.word	_Label_194
	.word	-308
	.word	4
	.word	0
_Label_119:
	.ascii	"main\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_188:
	.byte	'P'
	.ascii	"th0\0"
	.align
_Label_189:
	.byte	'P'
	.ascii	"th1\0"
	.align
_Label_190:
	.byte	'P'
	.ascii	"th2\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"proc0\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"proc1\0"
	.align
_Label_193:
	.byte	'P'
	.ascii	"proc2\0"
	.align
_Label_194:
	.byte	'P'
	.ascii	"proc3\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_47_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_47_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_629:
	push	r0
	sub	r1,1,r1
	bne	_Label_629
	mov	132,r13		! source line 132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_195 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   _temp_196 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_47_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_197
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_198
	.word	8
	.word	4
	.word	_Label_199
	.word	-12
	.word	4
	.word	_Label_200
	.word	-16
	.word	4
	.word	_Label_201
	.word	-20
	.word	4
	.word	0
_Label_197:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_198:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_201:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_46_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_46_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_630:
	push	r0
	sub	r1,1,r1
	bne	_Label_630
	mov	169,r13		! source line 169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_202 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_203 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_204 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_205 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_210 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_211 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_210  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_206:
!   Perform the FOR-LOOP termination test
!   if i > _temp_211 then goto _Label_209		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_209
_Label_207:
	mov	180,r13		! source line 180
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_212)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_631:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_631
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_215 = _function_45_TestThreadManager
	set	_function_45_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_208:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_206
! END FOR
_Label_209:
! FOR STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_220 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_221 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_220  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_216:
!   Perform the FOR-LOOP termination test
!   if i > _temp_221 then goto _Label_219		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_219
_Label_217:
	mov	188,r13		! source line 188
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_222 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_218:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_216
! END FOR
_Label_219:
! IF STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_function_47_GetUniqueNumber
!   Retrieve Result: targetName=_temp_225  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_225 == 401 then goto _Label_224		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_224
!	jmp	_Label_223
_Label_223:
! THEN...
	mov	193,r13		! source line 193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_226 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_226  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_224:
! CALL STATEMENT...
!   _temp_227 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_227  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_46_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_228
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_229
	.word	-12
	.word	4
	.word	_Label_230
	.word	-16
	.word	4
	.word	_Label_231
	.word	-20
	.word	4
	.word	_Label_232
	.word	-24
	.word	4
	.word	_Label_233
	.word	-28
	.word	4
	.word	_Label_234
	.word	-32
	.word	4
	.word	_Label_235
	.word	-36
	.word	4
	.word	_Label_236
	.word	-40
	.word	4
	.word	_Label_237
	.word	-44
	.word	4
	.word	_Label_238
	.word	-48
	.word	4
	.word	_Label_239
	.word	-52
	.word	4
	.word	_Label_240
	.word	-56
	.word	4
	.word	_Label_241
	.word	-60
	.word	4
	.word	_Label_242
	.word	-64
	.word	4
	.word	_Label_243
	.word	-68
	.word	4
	.word	_Label_244
	.word	-72
	.word	4
	.word	_Label_245
	.word	-76
	.word	4
	.word	_Label_246
	.word	-80
	.word	4
	.word	0
_Label_228:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_45_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_45_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_632:
	push	r0
	sub	r1,1,r1
	bne	_Label_632
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_251 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_252 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_251  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_247:
!   Perform the FOR-LOOP termination test
!   if i > _temp_252 then goto _Label_250		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_250
_Label_248:
	mov	211,r13		! source line 211
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_function_47_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
	mov	214,r13		! source line 214
	mov	"\0\0SE",r10
!   _temp_253 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_254 [0 ] into _temp_255
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_255 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_260 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_261 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_260  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_256:
!   Perform the FOR-LOOP termination test
!   if j > _temp_261 then goto _Label_259		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_259
_Label_257:
	mov	216,r13		! source line 216
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_258:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_256
! END FOR
_Label_259:
! IF STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_265 [0 ] into _temp_266
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_264 = *_temp_266  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_264 then goto _Label_263		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_263
!	jmp	_Label_262
_Label_262:
! THEN...
	mov	220,r13		! source line 220
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_267 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	220,r13		! source line 220
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_263:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_273 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_274 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_273  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_269:
!   Perform the FOR-LOOP termination test
!   if j > _temp_274 then goto _Label_272		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_272
_Label_270:
	mov	224,r13		! source line 224
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_271:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_269
! END FOR
_Label_272:
!   Increment the FOR-LOOP index variable and jump back
_Label_249:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_247
! END FOR
_Label_250:
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_275 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_276 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_45_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_277
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_278
	.word	8
	.word	4
	.word	_Label_279
	.word	-12
	.word	4
	.word	_Label_280
	.word	-16
	.word	4
	.word	_Label_281
	.word	-20
	.word	4
	.word	_Label_282
	.word	-24
	.word	4
	.word	_Label_283
	.word	-28
	.word	4
	.word	_Label_284
	.word	-32
	.word	4
	.word	_Label_285
	.word	-36
	.word	4
	.word	_Label_286
	.word	-40
	.word	4
	.word	_Label_287
	.word	-44
	.word	4
	.word	_Label_288
	.word	-48
	.word	4
	.word	_Label_289
	.word	-52
	.word	4
	.word	_Label_290
	.word	-56
	.word	4
	.word	_Label_291
	.word	-60
	.word	4
	.word	_Label_292
	.word	-64
	.word	4
	.word	_Label_293
	.word	-68
	.word	4
	.word	_Label_294
	.word	-72
	.word	4
	.word	_Label_295
	.word	-76
	.word	4
	.word	_Label_296
	.word	-80
	.word	4
	.word	_Label_297
	.word	-84
	.word	4
	.word	_Label_298
	.word	-88
	.word	4
	.word	0
_Label_277:
	.ascii	"TestThreadManager\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_296:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_297:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_44_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_44_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_633:
	push	r0
	sub	r1,1,r1
	bne	_Label_633
	mov	249,r13		! source line 249
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_299 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_300 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_301 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_302 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_307 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_308 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_307  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_303:
!   Perform the FOR-LOOP termination test
!   if i > _temp_308 then goto _Label_306		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_306
_Label_304:
	mov	260,r13		! source line 260
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_309)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_634:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_634
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_311 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_311  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_312 = _function_43_TestProcessManager
	set	_function_43_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_312  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_305:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_303
! END FOR
_Label_306:
! FOR STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_317 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_318 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_317  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_313:
!   Perform the FOR-LOOP termination test
!   if i > _temp_318 then goto _Label_316		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_316
_Label_314:
	mov	268,r13		! source line 268
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_319 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_315:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_313
! END FOR
_Label_316:
! IF STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_function_47_GetUniqueNumber
!   Retrieve Result: targetName=_temp_322  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_322 == 401 then goto _Label_321		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_321
!	jmp	_Label_320
_Label_320:
! THEN...
	mov	273,r13		! source line 273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	273,r13		! source line 273
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_321:
! CALL STATEMENT...
!   _temp_324 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_44_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_325
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	_Label_330
	.word	-28
	.word	4
	.word	_Label_331
	.word	-32
	.word	4
	.word	_Label_332
	.word	-36
	.word	4
	.word	_Label_333
	.word	-40
	.word	4
	.word	_Label_334
	.word	-44
	.word	4
	.word	_Label_335
	.word	-48
	.word	4
	.word	_Label_336
	.word	-52
	.word	4
	.word	_Label_337
	.word	-56
	.word	4
	.word	_Label_338
	.word	-60
	.word	4
	.word	_Label_339
	.word	-64
	.word	4
	.word	_Label_340
	.word	-68
	.word	4
	.word	_Label_341
	.word	-72
	.word	4
	.word	_Label_342
	.word	-76
	.word	4
	.word	_Label_343
	.word	-80
	.word	4
	.word	0
_Label_325:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_343:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_43_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_43_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_635:
	push	r0
	sub	r1,1,r1
	bne	_Label_635
	mov	288,r13		! source line 288
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_348 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_349 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_348  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_344:
!   Perform the FOR-LOOP termination test
!   if i > _temp_349 then goto _Label_347		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_347
_Label_345:
	mov	292,r13		! source line 292
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_function_47_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   _temp_350 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_351 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_356 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_357 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_356  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_352:
!   Perform the FOR-LOOP termination test
!   if j > _temp_357 then goto _Label_355		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_355
_Label_353:
	mov	297,r13		! source line 297
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_354:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_352
! END FOR
_Label_355:
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_360 then goto _Label_359		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_359
!	jmp	_Label_358
_Label_358:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_362 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	301,r13		! source line 301
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_359:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0SE",r10
!   _temp_363 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_368 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_369 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_368  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_364:
!   Perform the FOR-LOOP termination test
!   if j > _temp_369 then goto _Label_367		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_367
_Label_365:
	mov	305,r13		! source line 305
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_366:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_364
! END FOR
_Label_367:
!   Increment the FOR-LOOP index variable and jump back
_Label_346:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_344
! END FOR
_Label_347:
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_370 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_371 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_43_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_372
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_373
	.word	8
	.word	4
	.word	_Label_374
	.word	-12
	.word	4
	.word	_Label_375
	.word	-16
	.word	4
	.word	_Label_376
	.word	-20
	.word	4
	.word	_Label_377
	.word	-24
	.word	4
	.word	_Label_378
	.word	-28
	.word	4
	.word	_Label_379
	.word	-32
	.word	4
	.word	_Label_380
	.word	-36
	.word	4
	.word	_Label_381
	.word	-40
	.word	4
	.word	_Label_382
	.word	-44
	.word	4
	.word	_Label_383
	.word	-48
	.word	4
	.word	_Label_384
	.word	-52
	.word	4
	.word	_Label_385
	.word	-56
	.word	4
	.word	_Label_386
	.word	-60
	.word	4
	.word	_Label_387
	.word	-64
	.word	4
	.word	_Label_388
	.word	-68
	.word	4
	.word	_Label_389
	.word	-72
	.word	4
	.word	_Label_390
	.word	-76
	.word	4
	.word	_Label_391
	.word	-80
	.word	4
	.word	0
_Label_372:
	.ascii	"TestProcessManager\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_42_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_42_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_636:
	push	r0
	sub	r1,1,r1
	bne	_Label_636
	mov	331,r13		! source line 331
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0SE",r10
!   _temp_392 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   _temp_393 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_394 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_399 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_400 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_399  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_395:
!   Perform the FOR-LOOP termination test
!   if i > _temp_400 then goto _Label_398		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_398
_Label_396:
	mov	340,r13		! source line 340
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_401)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_637:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_637
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_403 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_404 = _function_41_TestFrameManager
	set	_function_41_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_404  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_397:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_395
! END FOR
_Label_398:
! FOR STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_409 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_410 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_409  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_405:
!   Perform the FOR-LOOP termination test
!   if i > _temp_410 then goto _Label_408		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_408
_Label_406:
	mov	348,r13		! source line 348
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_411 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_407:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_405
! END FOR
_Label_408:
! CALL STATEMENT...
!   _temp_412 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_417 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_418 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_417  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_413:
!   Perform the FOR-LOOP termination test
!   if i > _temp_418 then goto _Label_416		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_416
_Label_414:
	mov	353,r13		! source line 353
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_419 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_420 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_425 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_427 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_427 [i ] into _temp_428
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_425  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_421:
!   Perform the FOR-LOOP termination test
!   if j > _temp_426 then goto _Label_424		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_424
_Label_422:
	mov	357,r13		! source line 357
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_423:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_421
! END FOR
_Label_424:
! CALL STATEMENT...
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_415:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_413
! END FOR
_Label_416:
! CALL STATEMENT...
!   _temp_429 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_42_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_430
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_431
	.word	-12
	.word	4
	.word	_Label_432
	.word	-16
	.word	4
	.word	_Label_433
	.word	-20
	.word	4
	.word	_Label_434
	.word	-24
	.word	4
	.word	_Label_435
	.word	-28
	.word	4
	.word	_Label_436
	.word	-32
	.word	4
	.word	_Label_437
	.word	-36
	.word	4
	.word	_Label_438
	.word	-40
	.word	4
	.word	_Label_439
	.word	-44
	.word	4
	.word	_Label_440
	.word	-48
	.word	4
	.word	_Label_441
	.word	-52
	.word	4
	.word	_Label_442
	.word	-56
	.word	4
	.word	_Label_443
	.word	-60
	.word	4
	.word	_Label_444
	.word	-64
	.word	4
	.word	_Label_445
	.word	-68
	.word	4
	.word	_Label_446
	.word	-72
	.word	4
	.word	_Label_447
	.word	-76
	.word	4
	.word	_Label_448
	.word	-80
	.word	4
	.word	_Label_449
	.word	-84
	.word	4
	.word	_Label_450
	.word	-88
	.word	4
	.word	_Label_451
	.word	-92
	.word	4
	.word	_Label_452
	.word	-96
	.word	4
	.word	_Label_453
	.word	-100
	.word	4
	.word	_Label_454
	.word	-104
	.word	4
	.word	_Label_455
	.word	-108
	.word	4
	.word	0
_Label_430:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_41_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_41_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_638:
	push	r0
	sub	r1,1,r1
	bne	_Label_638
	mov	387,r13		! source line 387
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_456 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_461 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_462 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_461  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_457:
!   Perform the FOR-LOOP termination test
!   if i > _temp_462 then goto _Label_460		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_460
_Label_458:
	mov	392,r13		! source line 392
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_467 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_468 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_467  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_463:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_468 then goto _Label_466		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_466
_Label_464:
	mov	393,r13		! source line 393
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_function_47_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_470 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_469 = _temp_470		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_471 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_469  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_473 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_472 = _temp_473		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_function_40_CheckAddrSpace
! FOR STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_478 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_479 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_478  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_474:
!   Perform the FOR-LOOP termination test
!   if j > _temp_479 then goto _Label_477		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_477
_Label_475:
	mov	398,r13		! source line 398
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_476:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_474
! END FOR
_Label_477:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_481 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_480 = _temp_481		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_function_39_CheckAddrSpace2
! SEND STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_483 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_482 = _temp_483		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_484 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_482  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_489 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_490 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_489  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_485:
!   Perform the FOR-LOOP termination test
!   if j > _temp_490 then goto _Label_488		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_488
_Label_486:
	mov	404,r13		! source line 404
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_487:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_485
! END FOR
_Label_488:
!   Increment the FOR-LOOP index variable and jump back
_Label_465:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_463
! END FOR
_Label_466:
!   Increment the FOR-LOOP index variable and jump back
_Label_459:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_457
! END FOR
_Label_460:
! SEND STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0SE",r10
!   _temp_491 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_492 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_493 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_41_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_494
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_495
	.word	8
	.word	4
	.word	_Label_496
	.word	-12
	.word	4
	.word	_Label_497
	.word	-16
	.word	4
	.word	_Label_498
	.word	-20
	.word	4
	.word	_Label_499
	.word	-24
	.word	4
	.word	_Label_500
	.word	-28
	.word	4
	.word	_Label_501
	.word	-32
	.word	4
	.word	_Label_502
	.word	-36
	.word	4
	.word	_Label_503
	.word	-40
	.word	4
	.word	_Label_504
	.word	-44
	.word	4
	.word	_Label_505
	.word	-48
	.word	4
	.word	_Label_506
	.word	-52
	.word	4
	.word	_Label_507
	.word	-56
	.word	4
	.word	_Label_508
	.word	-60
	.word	4
	.word	_Label_509
	.word	-64
	.word	4
	.word	_Label_510
	.word	-68
	.word	4
	.word	_Label_511
	.word	-72
	.word	4
	.word	_Label_512
	.word	-76
	.word	4
	.word	_Label_513
	.word	-80
	.word	4
	.word	_Label_514
	.word	-84
	.word	4
	.word	_Label_515
	.word	-88
	.word	4
	.word	_Label_516
	.word	-92
	.word	4
	.word	_Label_517
	.word	-96
	.word	4
	.word	_Label_518
	.word	-100
	.word	4
	.word	_Label_519
	.word	-104
	.word	4
	.word	_Label_520
	.word	-108
	.word	4
	.word	_Label_521
	.word	-112
	.word	4
	.word	_Label_522
	.word	-116
	.word	4
	.word	0
_Label_494:
	.ascii	"TestFrameManager\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_518:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_519:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_520:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_521:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_522:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_40_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_40_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_639:
	push	r0
	sub	r1,1,r1
	bne	_Label_639
	mov	419,r13		! source line 419
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_526 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_525 = *_temp_526  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_525 == n then goto _Label_524		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_524
!	jmp	_Label_523
_Label_523:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_527 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	422,r13		! source line 422
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_524:
! FOR STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_532 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_533 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_532  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_528:
!   Perform the FOR-LOOP termination test
!   if i > _temp_533 then goto _Label_531		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_531
_Label_529:
	mov	424,r13		! source line 424
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
!   _temp_534 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_534 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_538		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_538
	jmp	_Label_535
_Label_538:
!   if frameNumber < 27 then goto _Label_537		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_537
	jmp	_Label_535
_Label_537:
!   _temp_539 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_539) then goto _Label_536
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_536
!	jmp	_Label_535
_Label_535:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_540 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	431,r13		! source line 431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_536:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   _temp_541 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_541 [frameNumber ] into _temp_542
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_545 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_545 [frameNumber ] into _temp_546
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_544 = *_temp_546  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_543 = _temp_544 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_542 = _temp_543  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_553) then goto _Label_552
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_552
	jmp	_Label_547
_Label_552:
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_547 else goto _Label_551
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_551
	jmp	_Label_547
_Label_551:
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_547 else goto _Label_550
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_550
	jmp	_Label_547
_Label_550:
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_554  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_554 then goto _Label_549 else goto _Label_547
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_547
	jmp	_Label_549
_Label_549:
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_555  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_555 then goto _Label_548 else goto _Label_547
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_547
	jmp	_Label_548
_Label_547:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_556 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	439,r13		! source line 439
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_548:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_557 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_557  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_530:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_528
! END FOR
_Label_531:
! RETURN STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_40_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_558
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_559
	.word	8
	.word	4
	.word	_Label_560
	.word	12
	.word	4
	.word	_Label_561
	.word	16
	.word	4
	.word	_Label_562
	.word	-16
	.word	4
	.word	_Label_563
	.word	-20
	.word	4
	.word	_Label_564
	.word	-9
	.word	1
	.word	_Label_565
	.word	-10
	.word	1
	.word	_Label_566
	.word	-24
	.word	4
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-32
	.word	4
	.word	_Label_569
	.word	-36
	.word	4
	.word	_Label_570
	.word	-40
	.word	4
	.word	_Label_571
	.word	-44
	.word	4
	.word	_Label_572
	.word	-48
	.word	4
	.word	_Label_573
	.word	-52
	.word	4
	.word	_Label_574
	.word	-56
	.word	4
	.word	_Label_575
	.word	-60
	.word	4
	.word	_Label_576
	.word	-64
	.word	4
	.word	_Label_577
	.word	-68
	.word	4
	.word	_Label_578
	.word	-72
	.word	4
	.word	_Label_579
	.word	-76
	.word	4
	.word	_Label_580
	.word	-80
	.word	4
	.word	_Label_581
	.word	-84
	.word	4
	.word	_Label_582
	.word	-88
	.word	4
	.word	_Label_583
	.word	-92
	.word	4
	.word	0
_Label_558:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_559:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_564:
	.byte	'C'
	.ascii	"_temp_555\0"
	.align
_Label_565:
	.byte	'C'
	.ascii	"_temp_554\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_582:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_39_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_39_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_640:
	push	r0
	sub	r1,1,r1
	bne	_Label_640
	mov	452,r13		! source line 452
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_586 == n then goto _Label_585		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_585
!	jmp	_Label_584
_Label_584:
! THEN...
	mov	455,r13		! source line 455
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_588 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	455,r13		! source line 455
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_585:
! FOR STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_593 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_594 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_593  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_589:
!   Perform the FOR-LOOP termination test
!   if i > _temp_594 then goto _Label_592		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_592
_Label_590:
	mov	457,r13		! source line 457
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_595 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_595 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_599		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_599
	jmp	_Label_596
_Label_599:
!   if frameNumber < 27 then goto _Label_598		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_598
	jmp	_Label_596
_Label_598:
!   _temp_600 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_600) then goto _Label_597
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_597
!	jmp	_Label_596
_Label_596:
! THEN...
	mov	464,r13		! source line 464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_601 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	464,r13		! source line 464
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_597:
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_604 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_605 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_604 == _temp_605 then goto _Label_603		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_603
!	jmp	_Label_602
_Label_602:
! THEN...
	mov	467,r13		! source line 467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_606 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_606  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	467,r13		! source line 467
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_603:
!   Increment the FOR-LOOP index variable and jump back
_Label_591:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_589
! END FOR
_Label_592:
! RETURN STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_39_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_607
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_608
	.word	8
	.word	4
	.word	_Label_609
	.word	12
	.word	4
	.word	_Label_610
	.word	16
	.word	4
	.word	_Label_611
	.word	-12
	.word	4
	.word	_Label_612
	.word	-16
	.word	4
	.word	_Label_613
	.word	-20
	.word	4
	.word	_Label_614
	.word	-24
	.word	4
	.word	_Label_615
	.word	-28
	.word	4
	.word	_Label_616
	.word	-32
	.word	4
	.word	_Label_617
	.word	-36
	.word	4
	.word	_Label_618
	.word	-40
	.word	4
	.word	_Label_619
	.word	-44
	.word	4
	.word	_Label_620
	.word	-48
	.word	4
	.word	_Label_621
	.word	-52
	.word	4
	.word	_Label_622
	.word	-56
	.word	4
	.word	_Label_623
	.word	-60
	.word	4
	.word	_Label_624
	.word	-64
	.word	4
	.word	0
_Label_607:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_608:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_609:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_610:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_623:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_624:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
