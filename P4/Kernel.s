! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41660
_P_Kernel_frameManager:
	.skip	56
_Global_threadManagerLock:
	.skip	20
_Global_aThreadBecameFree:
	.skip	48
_Global_nextCount:
	.skip	4
_Global_nextSem:
	.skip	20
	.align
! String constants
_StringConst_123:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_104:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_103:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_101:
	.word	30			! length
	.ascii	"Not enough frames or something"
	.align
_StringConst_100:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_99:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_98:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_97:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_96:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_92:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_87:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_86:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_85:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_82:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_81:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_80:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_79:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_78:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_77:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_75:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_74:
	.word	8			! length
	.ascii	"anThread"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_70:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_69:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_65:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_63:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_61:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_60:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_59:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_56:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_55:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_54:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_53:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_52:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_51:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_50:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_48:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_46:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_44:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_43:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_42:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_41:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_40:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_39:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_38:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_37:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_36:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xc17a5546,r4		! myHashVal = -1048947386
	cmp	r3,r4
	be	_Label_128
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
_Label_128:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_129
_Label_129:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	11,r13		! source line 11
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_130 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	19,r13		! source line 19
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1832:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1832
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _temp_136 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_137 = _temp_136 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_137 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1833:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1833
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_139 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_140 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_141 = _function_127_IdleFunction
	set	_function_127_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_143
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	_Label_150
	.word	-36
	.word	4
	.word	_Label_151
	.word	-40
	.word	4
	.word	_Label_152
	.word	-44
	.word	4
	.word	_Label_153
	.word	-48
	.word	4
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-60
	.word	4
	.word	0
_Label_143:
	.ascii	"InitializeScheduler\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_127_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_157:
!	jmp	_Label_158
_Label_158:
	mov	46,r13		! source line 46
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_160 else goto _Label_161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_160
_Label_160:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_163
_Label_161:
! ELSE...
	mov	51,r13		! source line 51
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	51,r13		! source line 51
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
! END IF...
_Label_163:
! END WHILE...
	jmp	_Label_157
_Label_159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_IdleFunction:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_165
	.word	8
	.word	4
	.word	_Label_166
	.word	-12
	.word	4
	.word	_Label_167
	.word	-16
	.word	4
	.word	0
_Label_164:
	.ascii	"IdleFunction\0"
	.align
_Label_165:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_170 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_170 ) then goto _Label_169		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_169
!	jmp	_Label_168
_Label_168:
! THEN...
	mov	75,r13		! source line 75
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_172 [0 ] into _temp_173
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_171 = _temp_173		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_169:
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_174 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0WH",r10
_Label_175:
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_178  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_178 then goto _Label_177 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_177
_Label_176:
	mov	88,r13		! source line 88
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_175
_Label_177:
! IF STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_188) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_188 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_183:
! RETURN STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_191
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_192
	.word	8
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-9
	.word	1
	.word	_Label_204
	.word	-56
	.word	4
	.word	_Label_205
	.word	-60
	.word	4
	.word	_Label_206
	.word	-64
	.word	4
	.word	_Label_207
	.word	-68
	.word	4
	.word	_Label_208
	.word	-72
	.word	4
	.word	_Label_209
	.word	-76
	.word	4
	.word	_Label_210
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"Run\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_203:
	.byte	'C'
	.ascii	"_temp_178\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	101,r13		! source line 101
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_211 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_212 = _function_126_ThreadPrintShort
	set	_function_126_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"PrintReadyList\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	116,r13		! source line 116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	130,r13		! source line 130
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_222 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	132,r13		! source line 132
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	0
_Label_223:
	.ascii	"ThreadStartMain\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_231 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	155,r13		! source line 155
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadFinish\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1839:
	push	r0
	sub	r1,1,r1
	bne	_Label_1839
	mov	160,r13		! source line 160
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_236 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_238		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	171,r13		! source line 171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_240 = *_temp_241  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_238:
! CALL STATEMENT...
!   _temp_242 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	_Label_250
	.word	-24
	.word	4
	.word	_Label_251
	.word	-28
	.word	4
	.word	_Label_252
	.word	-32
	.word	4
	.word	_Label_253
	.word	-36
	.word	4
	.word	_Label_254
	.word	-40
	.word	4
	.word	0
_Label_245:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
	mov	183,r13		! source line 183
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_256		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_256
!	jmp	_Label_255
_Label_255:
! THEN...
	mov	199,r13		! source line 199
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_257
_Label_256:
! ELSE...
	mov	202,r13		! source line 202
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_257:
! RETURN STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	0
_Label_258:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_126_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	678,r13		! source line 678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_264		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_264
!   _temp_263 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_265
_Label_264:
!   _temp_263 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_265:
!   if _temp_263 then goto _Label_262 else goto _Label_261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	687,r13		! source line 687
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	693,r13		! source line 693
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_273
	cmp	r1,2
	be	_Label_274
	cmp	r1,3
	be	_Label_275
	cmp	r1,4
	be	_Label_276
	cmp	r1,5
	be	_Label_277
	jmp	_Label_271
! CASE 1...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 2...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 3...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 4...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 5...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_272
! DEFAULT CASE...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	710,r13		! source line 710
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_272:
! CALL STATEMENT...
!   _temp_286 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_287 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_288 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_290
	.word	8
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	_Label_296
	.word	-36
	.word	4
	.word	_Label_297
	.word	-40
	.word	4
	.word	_Label_298
	.word	-44
	.word	4
	.word	_Label_299
	.word	-48
	.word	4
	.word	_Label_300
	.word	-52
	.word	4
	.word	_Label_301
	.word	-56
	.word	4
	.word	_Label_302
	.word	-60
	.word	4
	.word	_Label_303
	.word	-64
	.word	4
	.word	_Label_304
	.word	-68
	.word	4
	.word	_Label_305
	.word	-72
	.word	4
	.word	_Label_306
	.word	-76
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-80
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_263\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_125_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1842:
	push	r0
	sub	r1,1,r1
	bne	_Label_1842
	mov	1104,r13		! source line 1104
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_309 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	0
_Label_310:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1843:
	push	r0
	sub	r1,1,r1
	bne	_Label_1843
	mov	1114,r13		! source line 1114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1120,r13		! source line 1120
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_314
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	0
_Label_314:
	.ascii	"ProcessFinish\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1844:
	push	r0
	sub	r1,1,r1
	bne	_Label_1844
	mov	1628,r13		! source line 1628
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1640,r13		! source line 1640
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
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_317:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	1646,r13		! source line 1646
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_318:
	.ascii	"DiskInterruptHandler\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1669,r13		! source line 1669
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_319:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1845:
	push	r0
	sub	r1,1,r1
	bne	_Label_1845
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_320 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_321:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1846:
	push	r0
	sub	r1,1,r1
	bne	_Label_1846
	mov	1695,r13		! source line 1695
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_323 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_324
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_325
	.word	-12
	.word	4
	.word	0
_Label_324:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1847:
	push	r0
	sub	r1,1,r1
	bne	_Label_1847
	mov	1707,r13		! source line 1707
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_326 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_328
	.word	-12
	.word	4
	.word	0
_Label_327:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1848:
	push	r0
	sub	r1,1,r1
	bne	_Label_1848
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_329 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_330
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_331
	.word	-12
	.word	4
	.word	0
_Label_330:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1849:
	push	r0
	sub	r1,1,r1
	bne	_Label_1849
	mov	1731,r13		! source line 1731
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_332 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_333
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_334
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1850:
	push	r0
	sub	r1,1,r1
	bne	_Label_1850
	mov	1743,r13		! source line 1743
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_335 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_336:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1851:
	push	r0
	sub	r1,1,r1
	bne	_Label_1851
	mov	1755,r13		! source line 1755
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_338 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_339
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_124_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1852:
	push	r0
	sub	r1,1,r1
	bne	_Label_1852
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_341 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_342 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_346 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_345 == 0 then goto _Label_344		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_344
!	jmp	_Label_343
_Label_343:
! THEN...
	mov	1778,r13		! source line 1778
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_347) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_349
_Label_344:
! ELSE...
	mov	1780,r13		! source line 1780
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_350 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_349:
! SEND STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_351
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_352
	.word	8
	.word	4
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	_Label_356
	.word	-24
	.word	4
	.word	_Label_357
	.word	-28
	.word	4
	.word	_Label_358
	.word	-32
	.word	4
	.word	_Label_359
	.word	-36
	.word	4
	.word	0
_Label_351:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_352:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1853:
	push	r0
	sub	r1,1,r1
	bne	_Label_1853
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1814,r13		! source line 1814
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1854
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_360
_Label_1854:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_360
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_360
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_374,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_374:
	jmp	_Label_366	! 1:	
	jmp	_Label_373	! 2:	
	jmp	_Label_363	! 3:	
	jmp	_Label_362	! 4:	
	jmp	_Label_365	! 5:	
	jmp	_Label_364	! 6:	
	jmp	_Label_367	! 7:	
	jmp	_Label_368	! 8:	
	jmp	_Label_369	! 9:	
	jmp	_Label_370	! 10:	
	jmp	_Label_371	! 11:	
	jmp	_Label_372	! 12:	
! CASE 4...
_Label_362:
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0RE",r10
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_375  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_375  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_363:
! CALL STATEMENT...
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_364:
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_376  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_365:
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_366:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_367:
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_368:
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_369:
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_370:
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_371:
! RETURN STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_372:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_373:
! CALL STATEMENT...
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_360:
! CALL STATEMENT...
!   _temp_383 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_384 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1847,r13		! source line 1847
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_361:
! RETURN STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_385
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_386
	.word	8
	.word	4
	.word	_Label_387
	.word	12
	.word	4
	.word	_Label_388
	.word	16
	.word	4
	.word	_Label_389
	.word	20
	.word	4
	.word	_Label_390
	.word	24
	.word	4
	.word	_Label_391
	.word	-12
	.word	4
	.word	_Label_392
	.word	-16
	.word	4
	.word	_Label_393
	.word	-20
	.word	4
	.word	_Label_394
	.word	-24
	.word	4
	.word	_Label_395
	.word	-28
	.word	4
	.word	_Label_396
	.word	-32
	.word	4
	.word	_Label_397
	.word	-36
	.word	4
	.word	_Label_398
	.word	-40
	.word	4
	.word	_Label_399
	.word	-44
	.word	4
	.word	_Label_400
	.word	-48
	.word	4
	.word	0
_Label_385:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_401
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_402
	.word	8
	.word	4
	.word	0
_Label_401:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1860,r13		! source line 1860
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_403
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_403:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_404
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_404:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_406
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_407
	.word	8
	.word	4
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_407:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1886,r13		! source line 1886
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_409
	.word	8
	.word	4
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_409:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1893,r13		! source line 1893
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1907,r13		! source line 1907
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_414
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	_Label_416
	.word	12
	.word	4
	.word	_Label_417
	.word	16
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1914,r13		! source line 1914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_418
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	12
	.word	4
	.word	_Label_421
	.word	16
	.word	4
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_422
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	12
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_425
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_426
	.word	8
	.word	4
	.word	0
_Label_425:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_427
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_427:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_428
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_428:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1855:
	push	r0
	sub	r1,1,r1
	bne	_Label_1855
	mov	234,r13		! source line 234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_430		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_430
!	jmp	_Label_429
_Label_429:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_431 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	236,r13		! source line 236
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_430:
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_433
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_435
	.word	12
	.word	4
	.word	_Label_436
	.word	-12
	.word	4
	.word	_Label_437
	.word	-16
	.word	4
	.word	0
_Label_433:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_434:
	.ascii	"Pself\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1856:
	push	r0
	sub	r1,1,r1
	bne	_Label_1856
	mov	244,r13		! source line 244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_439		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_439
!	jmp	_Label_438
_Label_438:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_440 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	250,r13		! source line 250
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_439:
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_442		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_442
!	jmp	_Label_441
_Label_441:
! THEN...
	mov	254,r13		! source line 254
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_443 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_444 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_445 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_446
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	_Label_450
	.word	-20
	.word	4
	.word	_Label_451
	.word	-24
	.word	4
	.word	_Label_452
	.word	-28
	.word	4
	.word	_Label_453
	.word	-32
	.word	4
	.word	0
_Label_446:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_447:
	.ascii	"Pself\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_453:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1857:
	push	r0
	sub	r1,1,r1
	bne	_Label_1857
	mov	263,r13		! source line 263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_455		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_455
!	jmp	_Label_454
_Label_454:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_456 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	268,r13		! source line 268
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_455:
! ASSIGNMENT STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_458		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_458
!	jmp	_Label_457
_Label_457:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_459 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_458:
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	0
_Label_460:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_461:
	.ascii	"Pself\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_465
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_465:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_466
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_466:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1858:
	push	r0
	sub	r1,1,r1
	bne	_Label_1858
	mov	298,r13		! source line 298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_468
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_470
	.word	-12
	.word	4
	.word	0
_Label_468:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_469:
	.ascii	"Pself\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1859:
	push	r0
	sub	r1,1,r1
	bne	_Label_1859
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_472		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_473 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	308,r13		! source line 308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_472:
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_477		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_477
!   _temp_476 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_478
_Label_477:
!   _temp_476 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_478:
!   if _temp_476 then goto _Label_475 else goto _Label_474
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_474
	jmp	_Label_475
_Label_474:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_479
_Label_475:
! ELSE...
	mov	314,r13		! source line 314
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_480 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_479:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_481
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_483
	.word	-16
	.word	4
	.word	_Label_484
	.word	-9
	.word	1
	.word	_Label_485
	.word	-20
	.word	4
	.word	_Label_486
	.word	-24
	.word	4
	.word	0
_Label_481:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_482:
	.ascii	"Pself\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_484:
	.byte	'C'
	.ascii	"_temp_476\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1860:
	push	r0
	sub	r1,1,r1
	bne	_Label_1860
	mov	322,r13		! source line 322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_488		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_488
!	jmp	_Label_487
_Label_487:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_489 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	327,r13		! source line 327
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_488:
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	329,r13		! source line 329
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_490 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_492		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_492
!	jmp	_Label_491
_Label_491:
! THEN...
	mov	332,r13		! source line 332
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_493 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_493 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0SE",r10
!   _temp_494 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_495
_Label_492:
! ELSE...
	mov	336,r13		! source line 336
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_495:
! ASSIGNMENT STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_496
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_498
	.word	-12
	.word	4
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	_Label_502
	.word	-28
	.word	4
	.word	_Label_503
	.word	-32
	.word	4
	.word	0
_Label_496:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_497:
	.ascii	"Pself\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_502:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_503:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1861:
	push	r0
	sub	r1,1,r1
	bne	_Label_1861
	mov	343,r13		! source line 343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_506		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_506
!	jmp	_Label_505
_Label_505:
!   _temp_504 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_507
_Label_506:
!   _temp_504 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_507:
!   ReturnResult: _temp_504  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_508
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_510
	.word	-9
	.word	1
	.word	0
_Label_508:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_509:
	.ascii	"Pself\0"
	.align
_Label_510:
	.byte	'C'
	.ascii	"_temp_504\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_511
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Signal
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Wait
	.word	0
! 
! Class descriptor:
! 
_Label_511:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_512
	.word	_sourceFileName
	.word	150		! line number
	.word	48		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_512:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	4,r1
_Label_1862:
	push	r0
	sub	r1,1,r1
	bne	_Label_1862
	mov	354,r13		! source line 354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: sem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   sem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   _temp_514 = &sem
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   cnt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! RETURN STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_515
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_517
	.word	-12
	.word	4
	.word	_Label_518
	.word	-16
	.word	4
	.word	0
_Label_515:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_516:
	.ascii	"Pself\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_1863:
	push	r0
	sub	r1,1,r1
	bne	_Label_1863
	mov	360,r13		! source line 360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   if cnt <= 0 then goto _Label_520		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_520
!	jmp	_Label_519
_Label_519:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   if intIsZero (inCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (inCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_522 = *inCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_521 = _temp_522 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *inCount = _temp_521  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+12],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0SE",r10
!   _temp_523 = &sem
	load	[r14+8],r1
	add	r1,24,r1
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
	mov	364,r13		! source line 364
	mov	"\0\0SE",r10
!   if intIsZero (inSem) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Down
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   if intIsZero (inCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (inCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_525 = *inCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   _temp_524 = _temp_525 - 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *inCount = _temp_524  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+12],r2
	store	r1,[r2]
! END IF...
_Label_520:
! RETURN STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_526
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	12
	.word	4
	.word	_Label_529
	.word	16
	.word	4
	.word	_Label_530
	.word	20
	.word	4
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	_Label_533
	.word	-20
	.word	4
	.word	_Label_534
	.word	-24
	.word	4
	.word	_Label_535
	.word	-28
	.word	4
	.word	0
_Label_526:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'P'
	.ascii	"inCount\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"inSem\0"
	.align
_Label_530:
	.byte	'P'
	.ascii	"inLock\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	3,r1
_Label_1864:
	push	r0
	sub	r1,1,r1
	bne	_Label_1864
	mov	369,r13		! source line 369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   cnt = cnt + 1		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+44]
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if intIsZero (inCount) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_538 = *inCount  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_538 <= 0 then goto _Label_537		(int)
	load	[r14+-16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_537
!	jmp	_Label_536
_Label_536:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0SE",r10
!   if intIsZero (inSem) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_539
_Label_537:
! ELSE...
	mov	374,r13		! source line 374
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   if intIsZero (inLock) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_539:
! SEND STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_540 = &sem
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   cnt = cnt - 1		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+44]
! RETURN STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_541
	.word	16		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_543
	.word	12
	.word	4
	.word	_Label_544
	.word	16
	.word	4
	.word	_Label_545
	.word	20
	.word	4
	.word	_Label_546
	.word	-12
	.word	4
	.word	_Label_547
	.word	-16
	.word	4
	.word	0
_Label_541:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_542:
	.ascii	"Pself\0"
	.align
_Label_543:
	.byte	'P'
	.ascii	"inCount\0"
	.align
_Label_544:
	.byte	'P'
	.ascii	"inSem\0"
	.align
_Label_545:
	.byte	'P'
	.ascii	"inLock\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_548
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_548:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_549
	.word	_sourceFileName
	.word	165		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_549:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1865:
	push	r0
	sub	r1,1,r1
	bne	_Label_1865
	mov	416,r13		! source line 416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_551
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_552
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_553
	.word	-12
	.word	4
	.word	0
_Label_551:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_552:
	.ascii	"Pself\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1866:
	push	r0
	sub	r1,1,r1
	bne	_Label_1866
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_556  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_556 then goto _Label_555 else goto _Label_554
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_554
	jmp	_Label_555
_Label_554:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_557 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_555:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_558 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_559
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_560
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_561
	.word	12
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
	.word	-24
	.word	4
	.word	0
_Label_559:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_560:
	.ascii	"Pself\0"
	.align
_Label_561:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_564:
	.byte	'C'
	.ascii	"_temp_556\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1867:
	push	r0
	sub	r1,1,r1
	bne	_Label_1867
	mov	438,r13		! source line 438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0IF",r10
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_568  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_568 then goto _Label_567 else goto _Label_566
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_566
	jmp	_Label_567
_Label_566:
! THEN...
	mov	443,r13		! source line 443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	443,r13		! source line 443
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_567:
! ASSIGNMENT STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
!   _temp_570 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_572		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_572
!	jmp	_Label_571
_Label_571:
! THEN...
	mov	448,r13		! source line 448
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_573 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_572:
! SEND STATEMENT...
	mov	451,r13		! source line 451
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
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_575
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_577
	.word	12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-9
	.word	1
	.word	_Label_583
	.word	-32
	.word	4
	.word	_Label_584
	.word	-36
	.word	4
	.word	0
_Label_575:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_576:
	.ascii	"Pself\0"
	.align
_Label_577:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_582:
	.byte	'C'
	.ascii	"_temp_568\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_584:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1868:
	push	r0
	sub	r1,1,r1
	bne	_Label_1868
	mov	458,r13		! source line 458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_587  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_587 then goto _Label_586 else goto _Label_585
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_585
	jmp	_Label_586
_Label_585:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_588 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	463,r13		! source line 463
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_586:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0WH",r10
_Label_589:
!	jmp	_Label_590
_Label_590:
	mov	466,r13		! source line 466
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   _temp_592 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_593
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_593
	jmp	_Label_594
_Label_593:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0BR",r10
	jmp	_Label_591
! END IF...
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_595 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
!   _temp_596 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_589
_Label_591:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_597
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_599
	.word	12
	.word	4
	.word	_Label_600
	.word	-16
	.word	4
	.word	_Label_601
	.word	-20
	.word	4
	.word	_Label_602
	.word	-24
	.word	4
	.word	_Label_603
	.word	-28
	.word	4
	.word	_Label_604
	.word	-9
	.word	1
	.word	_Label_605
	.word	-32
	.word	4
	.word	_Label_606
	.word	-36
	.word	4
	.word	0
_Label_597:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_598:
	.ascii	"Pself\0"
	.align
_Label_599:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_604:
	.byte	'C'
	.ascii	"_temp_587\0"
	.align
_Label_605:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_607
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_607:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_608
	.word	_sourceFileName
	.word	178		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_608:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1869:
	push	r0
	sub	r1,1,r1
	bne	_Label_1869
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   _temp_609 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_609 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   _temp_610 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_610 [0 ] into _temp_611
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_611 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _temp_612 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_612 [999 ] into _temp_613
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_613 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_614 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_614 [999 ] into _temp_615
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_615		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_616 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_618 = &_temp_617
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_618 = _temp_618 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_620:
!   Data Move: *_temp_618 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_618 = _temp_618 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_619 = _temp_619 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_619) then goto _Label_620
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_620
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_621 = &_temp_617
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1870
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1870:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_616 = *_temp_621  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1871:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1871
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_622 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_624 = &_temp_623
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_624 = _temp_624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_626:
!   Data Move: *_temp_624 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_624 = _temp_624 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_625 = _temp_625 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_625) then goto _Label_626
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_626
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_627 = &_temp_623
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1872
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1872:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_622 = *_temp_627  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1873:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1873
! RETURN STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_628
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	12
	.word	4
	.word	_Label_631
	.word	-12
	.word	4
	.word	_Label_632
	.word	-16
	.word	4
	.word	_Label_633
	.word	-20
	.word	4
	.word	_Label_634
	.word	-84
	.word	64
	.word	_Label_635
	.word	-88
	.word	4
	.word	_Label_636
	.word	-92
	.word	4
	.word	_Label_637
	.word	-96
	.word	4
	.word	_Label_638
	.word	-100
	.word	4
	.word	_Label_639
	.word	-156
	.word	56
	.word	_Label_640
	.word	-160
	.word	4
	.word	_Label_641
	.word	-164
	.word	4
	.word	_Label_642
	.word	-168
	.word	4
	.word	_Label_643
	.word	-172
	.word	4
	.word	_Label_644
	.word	-176
	.word	4
	.word	_Label_645
	.word	-180
	.word	4
	.word	_Label_646
	.word	-184
	.word	4
	.word	_Label_647
	.word	-188
	.word	4
	.word	0
_Label_628:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1874:
	push	r0
	sub	r1,1,r1
	bne	_Label_1874
	mov	504,r13		! source line 504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_648  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_650 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_649  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_651
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_653
	.word	12
	.word	4
	.word	_Label_654
	.word	16
	.word	4
	.word	_Label_655
	.word	-12
	.word	4
	.word	_Label_656
	.word	-16
	.word	4
	.word	_Label_657
	.word	-20
	.word	4
	.word	_Label_658
	.word	-24
	.word	4
	.word	_Label_659
	.word	-28
	.word	4
	.word	0
_Label_651:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_652:
	.ascii	"Pself\0"
	.align
_Label_653:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_654:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_659:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1875:
	push	r0
	sub	r1,1,r1
	bne	_Label_1875
	mov	528,r13		! source line 528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_662 == _P_Kernel_currentThread then goto _Label_661		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	545,r13		! source line 545
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	547,r13		! source line 547
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
	mov	551,r13		! source line 551
	mov	"\0\0SE",r10
!   _temp_664 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_666		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_668		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_668
!	jmp	_Label_667
_Label_667:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	557,r13		! source line 557
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_671 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_670  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_672
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_674
	.word	-12
	.word	4
	.word	_Label_675
	.word	-16
	.word	4
	.word	_Label_676
	.word	-20
	.word	4
	.word	_Label_677
	.word	-24
	.word	4
	.word	_Label_678
	.word	-28
	.word	4
	.word	_Label_679
	.word	-32
	.word	4
	.word	_Label_680
	.word	-36
	.word	4
	.word	_Label_681
	.word	-40
	.word	4
	.word	_Label_682
	.word	-44
	.word	4
	.word	0
_Label_672:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_673:
	.ascii	"Pself\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_681:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1876:
	push	r0
	sub	r1,1,r1
	bne	_Label_1876
	mov	568,r13		! source line 568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_684		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_684
!	jmp	_Label_683
_Label_683:
! THEN...
	mov	581,r13		! source line 581
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_685 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	581,r13		! source line 581
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_684:
! IF STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_688 == _P_Kernel_currentThread then goto _Label_687		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_687
!	jmp	_Label_686
_Label_686:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	585,r13		! source line 585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_687:
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
	mov	591,r13		! source line 591
	mov	"\0\0SE",r10
!   _temp_690 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_691
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_691
	jmp	_Label_692
_Label_691:
! THEN...
	mov	593,r13		! source line 593
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_693 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	593,r13		! source line 593
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_692:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_694
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	_Label_698
	.word	-20
	.word	4
	.word	_Label_699
	.word	-24
	.word	4
	.word	_Label_700
	.word	-28
	.word	4
	.word	_Label_701
	.word	-32
	.word	4
	.word	0
_Label_694:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_695:
	.ascii	"Pself\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_701:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	600,r13		! source line 600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0IF",r10
!   _temp_705 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_705 [0 ] into _temp_706
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_704 = *_temp_706  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_704 == 606348324 then goto _Label_703		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_703
!	jmp	_Label_702
_Label_702:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_707 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	607,r13		! source line 607
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_708
_Label_703:
! ELSE...
	mov	608,r13		! source line 608
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_712 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_712 [999 ] into _temp_713
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_711 = *_temp_713  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_711 == 606348324 then goto _Label_710		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_710
!	jmp	_Label_709
_Label_709:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_714 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	609,r13		! source line 609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_710:
! END IF...
_Label_708:
! RETURN STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_715
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_717
	.word	-12
	.word	4
	.word	_Label_718
	.word	-16
	.word	4
	.word	_Label_719
	.word	-20
	.word	4
	.word	_Label_720
	.word	-24
	.word	4
	.word	_Label_721
	.word	-28
	.word	4
	.word	_Label_722
	.word	-32
	.word	4
	.word	_Label_723
	.word	-36
	.word	4
	.word	_Label_724
	.word	-40
	.word	4
	.word	0
_Label_715:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_716:
	.ascii	"Pself\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1878:
	push	r0
	sub	r1,1,r1
	bne	_Label_1878
	mov	615,r13		! source line 615
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_725 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_726 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_728 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_729 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_734 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_735 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_734  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_730:
!   Perform the FOR-LOOP termination test
!   if i > _temp_735 then goto _Label_733		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_733
_Label_731:
	mov	628,r13		! source line 628
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_736 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_737 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_738 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_740 [i ] into _temp_741
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_739 = *_temp_741  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_742 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_744 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_744 [i ] into _temp_745
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_743 = *_temp_745  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_746 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_732:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_730
! END FOR
_Label_733:
! CALL STATEMENT...
!   _temp_747 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-116]
!   _temp_748 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_748  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_749 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-108]
!   _temp_751 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_751 [0 ] into _temp_752
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_750 = _temp_752		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	639,r13		! source line 639
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_755
	cmp	r1,2
	be	_Label_756
	cmp	r1,3
	be	_Label_757
	cmp	r1,4
	be	_Label_758
	cmp	r1,5
	be	_Label_759
	jmp	_Label_753
! CASE 1...
_Label_755:
! CALL STATEMENT...
!   _temp_760 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 2...
_Label_756:
! CALL STATEMENT...
!   _temp_761 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 3...
_Label_757:
! CALL STATEMENT...
!   _temp_762 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 4...
_Label_758:
! CALL STATEMENT...
!   _temp_763 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_754
! CASE 5...
_Label_759:
! CALL STATEMENT...
!   _temp_764 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_754
! DEFAULT CASE...
_Label_753:
! CALL STATEMENT...
!   _temp_765 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	656,r13		! source line 656
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_754:
! CALL STATEMENT...
!   _temp_766 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_767 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_772 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_773 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_772  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_768:
!   Perform the FOR-LOOP termination test
!   if i > _temp_773 then goto _Label_771		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_771
_Label_769:
	mov	662,r13		! source line 662
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_774 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_775 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_776 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_778 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_778 [i ] into _temp_779
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_777 = *_temp_779  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_780 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_782 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_782 [i ] into _temp_783
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_781 = *_temp_783  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_784 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_770:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_768
! END FOR
_Label_771:
! ASSIGNMENT STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_785
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	_Label_790
	.word	-24
	.word	4
	.word	_Label_791
	.word	-28
	.word	4
	.word	_Label_792
	.word	-32
	.word	4
	.word	_Label_793
	.word	-36
	.word	4
	.word	_Label_794
	.word	-40
	.word	4
	.word	_Label_795
	.word	-44
	.word	4
	.word	_Label_796
	.word	-48
	.word	4
	.word	_Label_797
	.word	-52
	.word	4
	.word	_Label_798
	.word	-56
	.word	4
	.word	_Label_799
	.word	-60
	.word	4
	.word	_Label_800
	.word	-64
	.word	4
	.word	_Label_801
	.word	-68
	.word	4
	.word	_Label_802
	.word	-72
	.word	4
	.word	_Label_803
	.word	-76
	.word	4
	.word	_Label_804
	.word	-80
	.word	4
	.word	_Label_805
	.word	-84
	.word	4
	.word	_Label_806
	.word	-88
	.word	4
	.word	_Label_807
	.word	-92
	.word	4
	.word	_Label_808
	.word	-96
	.word	4
	.word	_Label_809
	.word	-100
	.word	4
	.word	_Label_810
	.word	-104
	.word	4
	.word	_Label_811
	.word	-108
	.word	4
	.word	_Label_812
	.word	-112
	.word	4
	.word	_Label_813
	.word	-116
	.word	4
	.word	_Label_814
	.word	-120
	.word	4
	.word	_Label_815
	.word	-124
	.word	4
	.word	_Label_816
	.word	-128
	.word	4
	.word	_Label_817
	.word	-132
	.word	4
	.word	_Label_818
	.word	-136
	.word	4
	.word	_Label_819
	.word	-140
	.word	4
	.word	_Label_820
	.word	-144
	.word	4
	.word	_Label_821
	.word	-148
	.word	4
	.word	_Label_822
	.word	-152
	.word	4
	.word	_Label_823
	.word	-156
	.word	4
	.word	_Label_824
	.word	-160
	.word	4
	.word	_Label_825
	.word	-164
	.word	4
	.word	_Label_826
	.word	-168
	.word	4
	.word	_Label_827
	.word	-172
	.word	4
	.word	_Label_828
	.word	-176
	.word	4
	.word	_Label_829
	.word	-180
	.word	4
	.word	_Label_830
	.word	-184
	.word	4
	.word	_Label_831
	.word	-188
	.word	4
	.word	_Label_832
	.word	-192
	.word	4
	.word	_Label_833
	.word	-196
	.word	4
	.word	0
_Label_785:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_786:
	.ascii	"Pself\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_832:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_833:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_834
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_834:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_835
	.word	_sourceFileName
	.word	205		! line number
	.word	41660		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_835:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11485,r1
_Label_1879:
	push	r0
	sub	r1,1,r1
	bne	_Label_1879
	mov	731,r13		! source line 731
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_836 = _StringConst_73
	set	_StringConst_73,r1
	set	-45932,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	set	-45932,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_aThreadBecameFree = zeros  (sizeInBytes=48)
	set	_Global_aThreadBecameFree,r4
	mov	12,r3
_Label_1880:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1880
!   _Global_aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	set	_Global_aThreadBecameFree,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_838 = &_Global_aThreadBecameFree
	set	_Global_aThreadBecameFree,r1
	set	-45924,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45924,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   _Global_nextCount = 0		(4 bytes)
	mov	0,r1
	set	_Global_nextCount,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_nextSem = zeros  (sizeInBytes=20)
	set	_Global_nextSem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_nextSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	set	_Global_nextSem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_840 = &_Global_nextSem
	set	_Global_nextSem,r1
	set	-45916,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-45916,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_threadManagerLock = zeros  (sizeInBytes=20)
	set	_Global_threadManagerLock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	set	_Global_threadManagerLock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_842 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45908,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0AS",r10
!   _temp_843 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_845 = &_temp_844
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_845 = _temp_845 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_847 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_1881:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1881
!   _temp_847 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_849:
!   Data Move: *_temp_845 = _temp_847  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_1882:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1882
!   _temp_845 = _temp_845 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_846 = _temp_846 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_846) then goto _Label_849
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_849
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_850 = &_temp_844
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1883
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1883:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_843 = *_temp_850  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1884:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1884
! FOR STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_855 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_856 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_855  (sizeInBytes=4)
	load	[r14+-76],r1
	set	-45936,r2
	store	r1,[r14+r2]
_Label_851:
!   Perform the FOR-LOOP termination test
!   if i > _temp_856 then goto _Label_854		
	set	-45936,r1
	load	[r14+r1],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_854
_Label_852:
	mov	758,r13		! source line 758
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_857 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   _temp_858 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_858 [i ] into _temp_859
!     make sure index expr is >= 0
	set	-45936,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_857  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   _temp_860 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_860 [i ] into _temp_861
!     make sure index expr is >= 0
	set	-45936,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_862 = _temp_861 + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_862 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-48],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_853:
!   i = i + 1
	set	-45936,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45936,r2
	store	r1,[r14+r2]
	jmp	_Label_851
! END FOR
_Label_854:
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_864 = *_temp_865  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   j = _temp_864 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-45940,r2
	store	r1,[r14+r2]
! FOR STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_870 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_871 = j		(4 bytes)
	set	-45940,r1
	load	[r14+r1],r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_870  (sizeInBytes=4)
	load	[r14+-32],r1
	set	-45936,r2
	store	r1,[r14+r2]
_Label_866:
!   Perform the FOR-LOOP termination test
!   if i > _temp_871 then goto _Label_869		
	set	-45936,r1
	load	[r14+r1],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_869
_Label_867:
	mov	769,r13		! source line 769
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_873 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_873 [i ] into _temp_874
!     make sure index expr is >= 0
	set	-45936,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_872 = _temp_874		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_875 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_872  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_868:
!   i = i + 1
	set	-45936,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45936,r2
	store	r1,[r14+r2]
	jmp	_Label_866
! END FOR
_Label_869:
! RETURN STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0RE",r10
	set	45944,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_876
	.word	4		! total size of parameters
	.word	45940		! frame size = 45940
	.word	_Label_877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_878
	.word	-12
	.word	4
	.word	_Label_879
	.word	-16
	.word	4
	.word	_Label_880
	.word	-20
	.word	4
	.word	_Label_881
	.word	-24
	.word	4
	.word	_Label_882
	.word	-28
	.word	4
	.word	_Label_883
	.word	-32
	.word	4
	.word	_Label_884
	.word	-36
	.word	4
	.word	_Label_885
	.word	-40
	.word	4
	.word	_Label_886
	.word	-44
	.word	4
	.word	_Label_887
	.word	-48
	.word	4
	.word	_Label_888
	.word	-52
	.word	4
	.word	_Label_889
	.word	-56
	.word	4
	.word	_Label_890
	.word	-60
	.word	4
	.word	_Label_891
	.word	-64
	.word	4
	.word	_Label_892
	.word	-68
	.word	4
	.word	_Label_893
	.word	-72
	.word	4
	.word	_Label_894
	.word	-76
	.word	4
	.word	_Label_895
	.word	-80
	.word	4
	.word	_Label_896
	.word	-84
	.word	4
	.word	_Label_897
	.word	-4248
	.word	4164
	.word	_Label_898
	.word	-4252
	.word	4
	.word	_Label_899
	.word	-4256
	.word	4
	.word	_Label_900
	.word	-45900
	.word	41644
	.word	_Label_901
	.word	-45904
	.word	4
	.word	_Label_902
	.word	-45908
	.word	4
	.word	_Label_903
	.word	-45912
	.word	4
	.word	_Label_904
	.word	-45916
	.word	4
	.word	_Label_905
	.word	-45920
	.word	4
	.word	_Label_906
	.word	-45924
	.word	4
	.word	_Label_907
	.word	-45928
	.word	4
	.word	_Label_908
	.word	-45932
	.word	4
	.word	_Label_909
	.word	-45936
	.word	4
	.word	_Label_910
	.word	-45940
	.word	4
	.word	0
_Label_876:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_877:
	.ascii	"Pself\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_909:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1885:
	push	r0
	sub	r1,1,r1
	bne	_Label_1885
	mov	777,r13		! source line 777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_911 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_916 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_917 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_916  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_912:
!   Perform the FOR-LOOP termination test
!   if i > _temp_917 then goto _Label_915		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_915
_Label_913:
	mov	786,r13		! source line 786
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_918 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_919 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_921 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_921 [i ] into _temp_922
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_920 = _temp_922		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_914:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_912
! END FOR
_Label_915:
! CALL STATEMENT...
!   _temp_923 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_924 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_925 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_924  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_926
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_928
	.word	-12
	.word	4
	.word	_Label_929
	.word	-16
	.word	4
	.word	_Label_930
	.word	-20
	.word	4
	.word	_Label_931
	.word	-24
	.word	4
	.word	_Label_932
	.word	-28
	.word	4
	.word	_Label_933
	.word	-32
	.word	4
	.word	_Label_934
	.word	-36
	.word	4
	.word	_Label_935
	.word	-40
	.word	4
	.word	_Label_936
	.word	-44
	.word	4
	.word	_Label_937
	.word	-48
	.word	4
	.word	_Label_938
	.word	-52
	.word	4
	.word	_Label_939
	.word	-56
	.word	4
	.word	_Label_940
	.word	-60
	.word	4
	.word	0
_Label_926:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_927:
	.ascii	"Pself\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_940:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	17,r1
_Label_1886:
	push	r0
	sub	r1,1,r1
	bne	_Label_1886
	mov	800,r13		! source line 800
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_941 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0IF",r10
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_945 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_944  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_944 then goto _Label_943 else goto _Label_942
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_942
	jmp	_Label_943
_Label_942:
! THEN...
	mov	815,r13		! source line 815
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
	mov	815,r13		! source line 815
	mov	"\0\0SE",r10
!   _temp_946 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thrdPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
	jmp	_Label_947
_Label_943:
! ELSE...
	mov	817,r13		! source line 817
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0IF",r10
!   if thrdPtr == 0 then goto _Label_951		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_951
!   _temp_950 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_952
_Label_951:
!   _temp_950 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_952:
!   if _temp_950 then goto _Label_949 else goto _Label_948
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_948
	jmp	_Label_949
_Label_948:
! THEN...
	mov	818,r13		! source line 818
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_953 = &_Global_nextCount
	set	_Global_nextCount,r1
	store	r1,[r14+-44]
!   _temp_954 = &_Global_nextSem
	set	_Global_nextSem,r1
	store	r1,[r14+-40]
!   _temp_955 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-36]
!   _temp_956 = &_Global_aThreadBecameFree
	set	_Global_aThreadBecameFree,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_953  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_954  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_955  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_957 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thrdPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! END IF...
_Label_949:
! END IF...
_Label_947:
! ASSIGNMENT STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0AS",r10
!   if intIsZero (thrdPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = thrdPtr + 76
	load	[r14+-60],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_958 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0IF",r10
!   if _Global_nextCount <= 0 then goto _Label_960		(int)
	set	_Global_nextCount,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_960
!	jmp	_Label_959
_Label_959:
! THEN...
	mov	839,r13		! source line 839
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
!   _temp_961 = &_Global_nextSem
	set	_Global_nextSem,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_962
_Label_960:
! ELSE...
	mov	841,r13		! source line 841
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0SE",r10
!   _temp_963 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_962:
! RETURN STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0RE",r10
!   ReturnResult: thrdPtr  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_964
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_966
	.word	-16
	.word	4
	.word	_Label_967
	.word	-20
	.word	4
	.word	_Label_968
	.word	-24
	.word	4
	.word	_Label_969
	.word	-28
	.word	4
	.word	_Label_970
	.word	-32
	.word	4
	.word	_Label_971
	.word	-36
	.word	4
	.word	_Label_972
	.word	-40
	.word	4
	.word	_Label_973
	.word	-44
	.word	4
	.word	_Label_974
	.word	-9
	.word	1
	.word	_Label_975
	.word	-48
	.word	4
	.word	_Label_976
	.word	-52
	.word	4
	.word	_Label_977
	.word	-10
	.word	1
	.word	_Label_978
	.word	-56
	.word	4
	.word	_Label_979
	.word	-60
	.word	4
	.word	0
_Label_964:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_965:
	.ascii	"Pself\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_974:
	.byte	'C'
	.ascii	"_temp_950\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_977:
	.byte	'C'
	.ascii	"_temp_944\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"thrdPtr\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	13,r1
_Label_1887:
	push	r0
	sub	r1,1,r1
	bne	_Label_1887
	mov	848,r13		! source line 848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0SE",r10
!   _temp_980 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0SE",r10
!   _temp_981 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_982 = &_Global_nextCount
	set	_Global_nextCount,r1
	store	r1,[r14+-36]
!   _temp_983 = &_Global_nextSem
	set	_Global_nextSem,r1
	store	r1,[r14+-32]
!   _temp_984 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-28]
!   _temp_985 = &_Global_aThreadBecameFree
	set	_Global_aThreadBecameFree,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_982  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_983  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_984  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message Signal
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_986 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if _Global_nextCount <= 0 then goto _Label_988		(int)
	set	_Global_nextCount,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_989 = &_Global_nextSem
	set	_Global_nextSem,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_990
_Label_988:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0SE",r10
!   _temp_991 = &_Global_threadManagerLock
	set	_Global_threadManagerLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_990:
! RETURN STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_992
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_994
	.word	12
	.word	4
	.word	_Label_995
	.word	-12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-32
	.word	4
	.word	_Label_1001
	.word	-36
	.word	4
	.word	_Label_1002
	.word	-40
	.word	4
	.word	_Label_1003
	.word	-44
	.word	4
	.word	0
_Label_992:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_993:
	.ascii	"Pself\0"
	.align
_Label_994:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1004
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1004:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1005
	.word	_sourceFileName
	.word	224		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1005:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1888:
	push	r0
	sub	r1,1,r1
	bne	_Label_1888
	mov	885,r13		! source line 885
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1889:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1889
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1007 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1008
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1010
	.word	-12
	.word	4
	.word	_Label_1011
	.word	-16
	.word	4
	.word	0
_Label_1008:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1009:
	.ascii	"Pself\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1890:
	push	r0
	sub	r1,1,r1
	bne	_Label_1890
	mov	899,r13		! source line 899
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1012) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1013 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1014 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1015
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1017
	.word	-12
	.word	4
	.word	_Label_1018
	.word	-16
	.word	4
	.word	_Label_1019
	.word	-20
	.word	4
	.word	0
_Label_1015:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1016:
	.ascii	"Pself\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1891:
	push	r0
	sub	r1,1,r1
	bne	_Label_1891
	mov	922,r13		! source line 922
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1020 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1022 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1023 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1025		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	932,r13		! source line 932
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1027
_Label_1025:
! ELSE...
	mov	933,r13		! source line 933
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1029		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	934,r13		! source line 934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1030 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1031
_Label_1029:
! ELSE...
	mov	935,r13		! source line 935
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1033		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1033
!	jmp	_Label_1032
_Label_1032:
! THEN...
	mov	936,r13		! source line 936
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1034 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1035
_Label_1033:
! ELSE...
	mov	938,r13		! source line 938
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	938,r13		! source line 938
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1035:
! END IF...
_Label_1031:
! END IF...
_Label_1027:
! CALL STATEMENT...
!   _temp_1037 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1038 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1039
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	-12
	.word	4
	.word	_Label_1042
	.word	-16
	.word	4
	.word	_Label_1043
	.word	-20
	.word	4
	.word	_Label_1044
	.word	-24
	.word	4
	.word	_Label_1045
	.word	-28
	.word	4
	.word	_Label_1046
	.word	-32
	.word	4
	.word	_Label_1047
	.word	-36
	.word	4
	.word	_Label_1048
	.word	-40
	.word	4
	.word	_Label_1049
	.word	-44
	.word	4
	.word	_Label_1050
	.word	-48
	.word	4
	.word	0
_Label_1039:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1051
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1051:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1052
	.word	_sourceFileName
	.word	244		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1052:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	373,r1
_Label_1892:
	push	r0
	sub	r1,1,r1
	bne	_Label_1892
	mov	955,r13		! source line 955
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   _temp_1053 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1484]
!   NEW ARRAY Constructor...
!   _temp_1055 = &_temp_1054
	add	r14,-1480,r1
	store	r1,[r14+-236]
!   _temp_1055 = _temp_1055 + 4
	load	[r14+-236],r1
	add	r1,4,r1
	store	r1,[r14+-236]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1057 = zeros  (sizeInBytes=124)
	add	r14,-228,r4
	mov	31,r3
_Label_1893:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1893
!   _temp_1057 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-228]
	mov	10,r1
	store	r1,[r14+-232]
_Label_1059:
!   Data Move: *_temp_1055 = _temp_1057  (sizeInBytes=124)
	add	r14,-228,r5
	load	[r14+-236],r4
	mov	31,r3
_Label_1894:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1894
!   _temp_1055 = _temp_1055 + 124
	load	[r14+-236],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   _temp_1056 = _temp_1056 + -1
	load	[r14+-232],r1
	add	r1,-1,r1
	store	r1,[r14+-232]
!   if intNotZero (_temp_1056) then goto _Label_1059
	load	[r14+-232],r1
	cmp	r1,r0
	bne	_Label_1059
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1480]
!   _temp_1060 = &_temp_1054
	add	r14,-1480,r1
	store	r1,[r14+-100]
!   make sure array has size 10
	load	[r14+-1484],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1895
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1895:
!   make sure array has size 10
	load	[r14+-100],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1053 = *_temp_1060  (sizeInBytes=1244)
	load	[r14+-100],r5
	load	[r14+-1484],r4
	mov	311,r3
_Label_1896:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1896
! FOR STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1065 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1066 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1065  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-1488]
_Label_1061:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1066 then goto _Label_1064		
	load	[r14+-1488],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1064
_Label_1062:
	mov	966,r13		! source line 966
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1067 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1067 [i ] into _temp_1068
!     make sure index expr is >= 0
	load	[r14+-1488],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   _temp_1069 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_1069 [i ] into _temp_1070
!     make sure index expr is >= 0
	load	[r14+-1488],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_1071 = _temp_1070 + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1071 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-72],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1063:
!   i = i + 1
	load	[r14+-1488],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1488]
	jmp	_Label_1061
! END FOR
_Label_1064:
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   _temp_1074 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1073 = *_temp_1074  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   j = _temp_1073 - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1492]
! FOR STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1079 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1080 = j		(4 bytes)
	load	[r14+-1492],r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1079  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-1488]
_Label_1075:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1080 then goto _Label_1078		
	load	[r14+-1488],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1078
_Label_1076:
	mov	976,r13		! source line 976
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1082 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1082 [i ] into _temp_1083
!     make sure index expr is >= 0
	load	[r14+-1488],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1081 = _temp_1083		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1084 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1081  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1077:
!   i = i + 1
	load	[r14+-1488],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1488]
	jmp	_Label_1075
! END FOR
_Label_1078:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1086 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1089 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_1090 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,1496,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1091
	.word	4		! total size of parameters
	.word	1492		! frame size = 1492
	.word	_Label_1092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1093
	.word	-12
	.word	4
	.word	_Label_1094
	.word	-16
	.word	4
	.word	_Label_1095
	.word	-20
	.word	4
	.word	_Label_1096
	.word	-24
	.word	4
	.word	_Label_1097
	.word	-28
	.word	4
	.word	_Label_1098
	.word	-32
	.word	4
	.word	_Label_1099
	.word	-36
	.word	4
	.word	_Label_1100
	.word	-40
	.word	4
	.word	_Label_1101
	.word	-44
	.word	4
	.word	_Label_1102
	.word	-48
	.word	4
	.word	_Label_1103
	.word	-52
	.word	4
	.word	_Label_1104
	.word	-56
	.word	4
	.word	_Label_1105
	.word	-60
	.word	4
	.word	_Label_1106
	.word	-64
	.word	4
	.word	_Label_1107
	.word	-68
	.word	4
	.word	_Label_1108
	.word	-72
	.word	4
	.word	_Label_1109
	.word	-76
	.word	4
	.word	_Label_1110
	.word	-80
	.word	4
	.word	_Label_1111
	.word	-84
	.word	4
	.word	_Label_1112
	.word	-88
	.word	4
	.word	_Label_1113
	.word	-92
	.word	4
	.word	_Label_1114
	.word	-96
	.word	4
	.word	_Label_1115
	.word	-100
	.word	4
	.word	_Label_1116
	.word	-104
	.word	4
	.word	_Label_1117
	.word	-228
	.word	124
	.word	_Label_1118
	.word	-232
	.word	4
	.word	_Label_1119
	.word	-236
	.word	4
	.word	_Label_1120
	.word	-1480
	.word	1244
	.word	_Label_1121
	.word	-1484
	.word	4
	.word	_Label_1122
	.word	-1488
	.word	4
	.word	_Label_1123
	.word	-1492
	.word	4
	.word	0
_Label_1091:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1092:
	.ascii	"Pself\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1122:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1123:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	1000,r13		! source line 1000
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1124 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1129 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1130 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1129  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1125:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1130 then goto _Label_1128		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1128
_Label_1126:
	mov	1009,r13		! source line 1009
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1131 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1132 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1133 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1133 [i ] into _temp_1134
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1127:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1125
! END FOR
_Label_1128:
! CALL STATEMENT...
!   _temp_1135 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1136 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1137 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1136  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1017,r13		! source line 1017
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1138
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1140
	.word	-12
	.word	4
	.word	_Label_1141
	.word	-16
	.word	4
	.word	_Label_1142
	.word	-20
	.word	4
	.word	_Label_1143
	.word	-24
	.word	4
	.word	_Label_1144
	.word	-28
	.word	4
	.word	_Label_1145
	.word	-32
	.word	4
	.word	_Label_1146
	.word	-36
	.word	4
	.word	_Label_1147
	.word	-40
	.word	4
	.word	_Label_1148
	.word	-44
	.word	4
	.word	_Label_1149
	.word	-48
	.word	4
	.word	_Label_1150
	.word	-52
	.word	4
	.word	_Label_1151
	.word	-56
	.word	4
	.word	0
_Label_1138:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1139:
	.ascii	"Pself\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1150:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1898:
	push	r0
	sub	r1,1,r1
	bne	_Label_1898
	mov	1023,r13		! source line 1023
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1152 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1157 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1158 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1157  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1153:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1158 then goto _Label_1156		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1156
_Label_1154:
	mov	1032,r13		! source line 1032
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1159 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_1160 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1160 [i ] into _temp_1161
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1155:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1153
! END FOR
_Label_1156:
! CALL STATEMENT...
!   _temp_1162 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1163 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1164 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1163  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1040,r13		! source line 1040
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1165
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1167
	.word	-12
	.word	4
	.word	_Label_1168
	.word	-16
	.word	4
	.word	_Label_1169
	.word	-20
	.word	4
	.word	_Label_1170
	.word	-24
	.word	4
	.word	_Label_1171
	.word	-28
	.word	4
	.word	_Label_1172
	.word	-32
	.word	4
	.word	_Label_1173
	.word	-36
	.word	4
	.word	_Label_1174
	.word	-40
	.word	4
	.word	_Label_1175
	.word	-44
	.word	4
	.word	_Label_1176
	.word	-48
	.word	4
	.word	_Label_1177
	.word	-52
	.word	4
	.word	0
_Label_1165:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1166:
	.ascii	"Pself\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1176:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1177:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	13,r1
_Label_1899:
	push	r0
	sub	r1,1,r1
	bne	_Label_1899
	mov	1045,r13		! source line 1045
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1178 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0IF",r10
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1182 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1181 then goto _Label_1180 else goto _Label_1179
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1179
	jmp	_Label_1180
_Label_1179:
! THEN...
	mov	1062,r13		! source line 1062
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1183 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcbPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
	jmp	_Label_1184
_Label_1180:
! ELSE...
	mov	1064,r13		! source line 1064
	mov	"\0\0EL",r10
! WHILE STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0WH",r10
_Label_1185:
!   if pcbPtr == 0 then goto _Label_1189		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1189
!   _temp_1188 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1190
_Label_1189:
!   _temp_1188 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1190:
!   if _temp_1188 then goto _Label_1187 else goto _Label_1186
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1186
	jmp	_Label_1187
_Label_1186:
	mov	1064,r13		! source line 1064
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0IF",r10
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1193 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message IsHeldByCurrentThread
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1191 else goto _Label_1192
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1192
	jmp	_Label_1191
_Label_1191:
! THEN...
	mov	1066,r13		! source line 1066
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_1194 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcbPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1192:
! IF STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0IF",r10
!   if pcbPtr == 0 then goto _Label_1198		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1198
!   _temp_1197 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1199
_Label_1198:
!   _temp_1197 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1199:
!   if _temp_1197 then goto _Label_1196 else goto _Label_1195
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1195
	jmp	_Label_1196
_Label_1195:
! THEN...
	mov	1069,r13		! source line 1069
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1200 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1201 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1200  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1196:
! END WHILE...
	jmp	_Label_1185
_Label_1187:
! END IF...
_Label_1184:
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   if intIsZero (pcbPtr) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = pcbPtr + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1202 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1203 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0RE",r10
!   ReturnResult: pcbPtr  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1204
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1206
	.word	-16
	.word	4
	.word	_Label_1207
	.word	-20
	.word	4
	.word	_Label_1208
	.word	-24
	.word	4
	.word	_Label_1209
	.word	-28
	.word	4
	.word	_Label_1210
	.word	-9
	.word	1
	.word	_Label_1211
	.word	-32
	.word	4
	.word	_Label_1212
	.word	-36
	.word	4
	.word	_Label_1213
	.word	-10
	.word	1
	.word	_Label_1214
	.word	-40
	.word	4
	.word	_Label_1215
	.word	-44
	.word	4
	.word	_Label_1216
	.word	-11
	.word	1
	.word	_Label_1217
	.word	-48
	.word	4
	.word	_Label_1218
	.word	-52
	.word	4
	.word	0
_Label_1204:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1205:
	.ascii	"Pself\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1210:
	.byte	'C'
	.ascii	"_temp_1197\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1213:
	.byte	'C'
	.ascii	"_temp_1188\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1216:
	.byte	'C'
	.ascii	"_temp_1181\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1218:
	.byte	'P'
	.ascii	"pcbPtr\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	1084,r13		! source line 1084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1219 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1220 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1221 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1222 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1223 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1224 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1096,r13		! source line 1096
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1225
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	12
	.word	4
	.word	_Label_1228
	.word	-12
	.word	4
	.word	_Label_1229
	.word	-16
	.word	4
	.word	_Label_1230
	.word	-20
	.word	4
	.word	_Label_1231
	.word	-24
	.word	4
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	0
_Label_1225:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1234
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1234:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1235
	.word	_sourceFileName
	.word	267		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1235:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1901:
	push	r0
	sub	r1,1,r1
	bne	_Label_1901
	mov	1129,r13		! source line 1129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1236 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1238 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1240 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_1242 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1247 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1248 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1247  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1243:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1248 then goto _Label_1246		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1246
_Label_1244:
	mov	1148,r13		! source line 1148
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1251 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1251) then goto _Label_1250
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1250
!	jmp	_Label_1249
_Label_1249:
! THEN...
	mov	1152,r13		! source line 1152
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1252 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1152,r13		! source line 1152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1250:
!   Increment the FOR-LOOP index variable and jump back
_Label_1245:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1243
! END FOR
_Label_1246:
! RETURN STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1253
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1254
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1255
	.word	-12
	.word	4
	.word	_Label_1256
	.word	-16
	.word	4
	.word	_Label_1257
	.word	-20
	.word	4
	.word	_Label_1258
	.word	-24
	.word	4
	.word	_Label_1259
	.word	-28
	.word	4
	.word	_Label_1260
	.word	-32
	.word	4
	.word	_Label_1261
	.word	-36
	.word	4
	.word	_Label_1262
	.word	-40
	.word	4
	.word	_Label_1263
	.word	-44
	.word	4
	.word	_Label_1264
	.word	-48
	.word	4
	.word	_Label_1265
	.word	-52
	.word	4
	.word	_Label_1266
	.word	-56
	.word	4
	.word	0
_Label_1253:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1254:
	.ascii	"Pself\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1266:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1902:
	push	r0
	sub	r1,1,r1
	bne	_Label_1902
	mov	1159,r13		! source line 1159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1267 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1268 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1269 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1270 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1271 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1272 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1168,r13		! source line 1168
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1273
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1274
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1275
	.word	-12
	.word	4
	.word	_Label_1276
	.word	-16
	.word	4
	.word	_Label_1277
	.word	-20
	.word	4
	.word	_Label_1278
	.word	-24
	.word	4
	.word	_Label_1279
	.word	-28
	.word	4
	.word	_Label_1280
	.word	-32
	.word	4
	.word	0
_Label_1273:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1274:
	.ascii	"Pself\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1903:
	push	r0
	sub	r1,1,r1
	bne	_Label_1903
	mov	1173,r13		! source line 1173
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1281 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0WH",r10
_Label_1282:
!   if numberFreeFrames >= 1 then goto _Label_1284		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1284
!	jmp	_Label_1283
_Label_1283:
	mov	1184,r13		! source line 1184
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_1285 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1286 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1282
_Label_1284:
! ASSIGNMENT STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0AS",r10
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_1287 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1288 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   _temp_1289 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1289		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1290
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1291
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1292
	.word	-12
	.word	4
	.word	_Label_1293
	.word	-16
	.word	4
	.word	_Label_1294
	.word	-20
	.word	4
	.word	_Label_1295
	.word	-24
	.word	4
	.word	_Label_1296
	.word	-28
	.word	4
	.word	_Label_1297
	.word	-32
	.word	4
	.word	_Label_1298
	.word	-36
	.word	4
	.word	_Label_1299
	.word	-40
	.word	4
	.word	0
_Label_1290:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1291:
	.ascii	"Pself\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1298:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1299:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	19,r1
_Label_1904:
	push	r0
	sub	r1,1,r1
	bne	_Label_1904
	mov	1203,r13		! source line 1203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
!   _temp_1300 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! WHILE STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0WH",r10
_Label_1301:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1303		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1303
!	jmp	_Label_1302
_Label_1302:
	mov	1212,r13		! source line 1212
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0SE",r10
!   _temp_1304 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1305 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1304  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1301
_Label_1303:
! FOR STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1310 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1311 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1310  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-64]
_Label_1306:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1311 then goto _Label_1309		
	load	[r14+-64],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1309
_Label_1307:
	mov	1217,r13		! source line 1217
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
!   _temp_1312 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message FindZeroAndSet
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=fzs  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0IF",r10
!   if fzs == -1 then goto _Label_1314		(int)
	load	[r14+-68],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1314
!	jmp	_Label_1313
_Label_1313:
! THEN...
	mov	1220,r13		! source line 1220
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   _temp_1315 = fzs * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   frameAddr = 1048576 + _temp_1315		(int)
	set	1048576,r1
	load	[r14+-36],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
	jmp	_Label_1316
_Label_1314:
! ELSE...
	mov	1223,r13		! source line 1223
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1317 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1316:
!   Increment the FOR-LOOP index variable and jump back
_Label_1308:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1306
! END FOR
_Label_1309:
! ASSIGNMENT STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1318 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1321 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1320 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1319 = _temp_1320 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1318 = _temp_1319  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
!   _temp_1322 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1234,r13		! source line 1234
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1323
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1325
	.word	12
	.word	4
	.word	_Label_1326
	.word	16
	.word	4
	.word	_Label_1327
	.word	-12
	.word	4
	.word	_Label_1328
	.word	-16
	.word	4
	.word	_Label_1329
	.word	-20
	.word	4
	.word	_Label_1330
	.word	-24
	.word	4
	.word	_Label_1331
	.word	-28
	.word	4
	.word	_Label_1332
	.word	-32
	.word	4
	.word	_Label_1333
	.word	-36
	.word	4
	.word	_Label_1334
	.word	-40
	.word	4
	.word	_Label_1335
	.word	-44
	.word	4
	.word	_Label_1336
	.word	-48
	.word	4
	.word	_Label_1337
	.word	-52
	.word	4
	.word	_Label_1338
	.word	-56
	.word	4
	.word	_Label_1339
	.word	-60
	.word	4
	.word	_Label_1340
	.word	-64
	.word	4
	.word	_Label_1341
	.word	-68
	.word	4
	.word	_Label_1342
	.word	-72
	.word	4
	.word	0
_Label_1323:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1324:
	.ascii	"Pself\0"
	.align
_Label_1325:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1326:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1340:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1341:
	.byte	'I'
	.ascii	"fzs\0"
	.align
_Label_1342:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_1905:
	push	r0
	sub	r1,1,r1
	bne	_Label_1905
	mov	1239,r13		! source line 1239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   _temp_1343 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: rtn = *_temp_1344  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
! FOR STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1349 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1350 = rtn - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1349  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1345:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1350 then goto _Label_1348		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1348
_Label_1346:
	mov	1251,r13		! source line 1251
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   _temp_1351 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   fnum = _temp_1351 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
!   _temp_1352 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=fnum  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1347:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1345
! END FOR
_Label_1348:
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1353 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1354 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1357 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1356 = _temp_1357 - rtn		(int)
	load	[r14+-20],r1
	load	[r14+-72],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1355 = _temp_1356  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0SE",r10
!   _temp_1359 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1360
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1362
	.word	12
	.word	4
	.word	_Label_1363
	.word	-12
	.word	4
	.word	_Label_1364
	.word	-16
	.word	4
	.word	_Label_1365
	.word	-20
	.word	4
	.word	_Label_1366
	.word	-24
	.word	4
	.word	_Label_1367
	.word	-28
	.word	4
	.word	_Label_1368
	.word	-32
	.word	4
	.word	_Label_1369
	.word	-36
	.word	4
	.word	_Label_1370
	.word	-40
	.word	4
	.word	_Label_1371
	.word	-44
	.word	4
	.word	_Label_1372
	.word	-48
	.word	4
	.word	_Label_1373
	.word	-52
	.word	4
	.word	_Label_1374
	.word	-56
	.word	4
	.word	_Label_1375
	.word	-60
	.word	4
	.word	_Label_1376
	.word	-64
	.word	4
	.word	_Label_1377
	.word	-68
	.word	4
	.word	_Label_1378
	.word	-72
	.word	4
	.word	_Label_1379
	.word	-76
	.word	4
	.word	0
_Label_1360:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1361:
	.ascii	"Pself\0"
	.align
_Label_1362:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1377:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1378:
	.byte	'I'
	.ascii	"rtn\0"
	.align
_Label_1379:
	.byte	'I'
	.ascii	"fnum\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1380
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1380:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1381
	.word	_sourceFileName
	.word	286		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1381:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1906:
	push	r0
	sub	r1,1,r1
	bne	_Label_1906
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0AS",r10
!   _temp_1382 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1384 = &_temp_1383
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1384 = _temp_1384 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1386:
!   Data Move: *_temp_1384 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1384 = _temp_1384 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1385 = _temp_1385 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1385) then goto _Label_1386
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1386
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1387 = &_temp_1383
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1907
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1907:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1382 = *_temp_1387  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1908:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1908
! RETURN STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1388
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	-12
	.word	4
	.word	_Label_1391
	.word	-16
	.word	4
	.word	_Label_1392
	.word	-20
	.word	4
	.word	_Label_1393
	.word	-104
	.word	84
	.word	_Label_1394
	.word	-108
	.word	4
	.word	0
_Label_1388:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1909:
	push	r0
	sub	r1,1,r1
	bne	_Label_1909
	mov	1286,r13		! source line 1286
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1395 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1396 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1401 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1402 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1401  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1397:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1402 then goto _Label_1400		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1400
_Label_1398:
	mov	1293,r13		! source line 1293
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1403 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1405 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1405 [i ] into _temp_1406
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1404 = _temp_1406		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1407 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1409 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1409 [i ] into _temp_1410
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1408 = *_temp_1410  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1411 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1412 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1413 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1415) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1414  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1416 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0IF",r10
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1419  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1419) then goto _Label_1418
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1418
!	jmp	_Label_1417
_Label_1417:
! THEN...
	mov	1304,r13		! source line 1304
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1422) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1421  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1304,r13		! source line 1304
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1423
_Label_1418:
! ELSE...
	mov	1306,r13		! source line 1306
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1424 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1306,r13		! source line 1306
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1423:
! CALL STATEMENT...
!   _temp_1425 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1308,r13		! source line 1308
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0IF",r10
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1428) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1426 else goto _Label_1427
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1427
	jmp	_Label_1426
_Label_1426:
! THEN...
	mov	1310,r13		! source line 1310
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1429 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1310,r13		! source line 1310
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1430
_Label_1427:
! ELSE...
	mov	1312,r13		! source line 1312
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1431 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1431  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1312,r13		! source line 1312
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1430:
! CALL STATEMENT...
!   _temp_1432 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1314,r13		! source line 1314
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0IF",r10
	mov	1315,r13		! source line 1315
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1435) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1433 else goto _Label_1434
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1434
	jmp	_Label_1433
_Label_1433:
! THEN...
	mov	1316,r13		! source line 1316
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1436 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1436  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1316,r13		! source line 1316
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1437
_Label_1434:
! ELSE...
	mov	1318,r13		! source line 1318
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1438 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1438  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1318,r13		! source line 1318
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1437:
! CALL STATEMENT...
!   _temp_1439 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1439  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1320,r13		! source line 1320
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0IF",r10
	mov	1321,r13		! source line 1321
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1442) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1440 else goto _Label_1441
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1441
	jmp	_Label_1440
_Label_1440:
! THEN...
	mov	1322,r13		! source line 1322
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1443 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1322,r13		! source line 1322
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1444
_Label_1441:
! ELSE...
	mov	1324,r13		! source line 1324
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1445 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1445  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1324,r13		! source line 1324
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1444:
! CALL STATEMENT...
!   _temp_1446 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1446  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1326,r13		! source line 1326
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0IF",r10
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1449) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1447 else goto _Label_1448
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1448
	jmp	_Label_1447
_Label_1447:
! THEN...
	mov	1328,r13		! source line 1328
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1450 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1450  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1328,r13		! source line 1328
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1451
_Label_1448:
! ELSE...
	mov	1330,r13		! source line 1330
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1452 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1330,r13		! source line 1330
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1451:
! CALL STATEMENT...
!   Call the function
	mov	1332,r13		! source line 1332
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1399:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1397
! END FOR
_Label_1400:
! RETURN STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1453
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1455
	.word	-12
	.word	4
	.word	_Label_1456
	.word	-16
	.word	4
	.word	_Label_1457
	.word	-20
	.word	4
	.word	_Label_1458
	.word	-24
	.word	4
	.word	_Label_1459
	.word	-28
	.word	4
	.word	_Label_1460
	.word	-32
	.word	4
	.word	_Label_1461
	.word	-36
	.word	4
	.word	_Label_1462
	.word	-40
	.word	4
	.word	_Label_1463
	.word	-44
	.word	4
	.word	_Label_1464
	.word	-48
	.word	4
	.word	_Label_1465
	.word	-52
	.word	4
	.word	_Label_1466
	.word	-56
	.word	4
	.word	_Label_1467
	.word	-60
	.word	4
	.word	_Label_1468
	.word	-64
	.word	4
	.word	_Label_1469
	.word	-68
	.word	4
	.word	_Label_1470
	.word	-72
	.word	4
	.word	_Label_1471
	.word	-76
	.word	4
	.word	_Label_1472
	.word	-80
	.word	4
	.word	_Label_1473
	.word	-84
	.word	4
	.word	_Label_1474
	.word	-88
	.word	4
	.word	_Label_1475
	.word	-92
	.word	4
	.word	_Label_1476
	.word	-96
	.word	4
	.word	_Label_1477
	.word	-100
	.word	4
	.word	_Label_1478
	.word	-104
	.word	4
	.word	_Label_1479
	.word	-108
	.word	4
	.word	_Label_1480
	.word	-112
	.word	4
	.word	_Label_1481
	.word	-116
	.word	4
	.word	_Label_1482
	.word	-120
	.word	4
	.word	_Label_1483
	.word	-124
	.word	4
	.word	_Label_1484
	.word	-128
	.word	4
	.word	_Label_1485
	.word	-132
	.word	4
	.word	_Label_1486
	.word	-136
	.word	4
	.word	_Label_1487
	.word	-140
	.word	4
	.word	_Label_1488
	.word	-144
	.word	4
	.word	_Label_1489
	.word	-148
	.word	4
	.word	_Label_1490
	.word	-152
	.word	4
	.word	_Label_1491
	.word	-156
	.word	4
	.word	_Label_1492
	.word	-160
	.word	4
	.word	_Label_1493
	.word	-164
	.word	4
	.word	_Label_1494
	.word	-168
	.word	4
	.word	0
_Label_1453:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1454:
	.ascii	"Pself\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_1497 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1497 [entry ] into _temp_1498
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1496 = *_temp_1498  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1495 = _temp_1496 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1495  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1499
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1501
	.word	12
	.word	4
	.word	_Label_1502
	.word	-12
	.word	4
	.word	_Label_1503
	.word	-16
	.word	4
	.word	_Label_1504
	.word	-20
	.word	4
	.word	_Label_1505
	.word	-24
	.word	4
	.word	0
_Label_1499:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1500:
	.ascii	"Pself\0"
	.align
_Label_1501:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1911:
	push	r0
	sub	r1,1,r1
	bne	_Label_1911
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
!   _temp_1508 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1508 [entry ] into _temp_1509
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1507 = *_temp_1509  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1506 = _temp_1507 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1506  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1510
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1512
	.word	12
	.word	4
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	0
_Label_1510:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1511:
	.ascii	"Pself\0"
	.align
_Label_1512:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1912:
	push	r0
	sub	r1,1,r1
	bne	_Label_1912
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0AS",r10
!   _temp_1517 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1517 [entry ] into _temp_1518
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1522 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1522 [entry ] into _temp_1523
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1521 = *_temp_1523  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1520 = _temp_1521 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1519 = _temp_1520 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1518 = _temp_1519  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1524
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1526
	.word	12
	.word	4
	.word	_Label_1527
	.word	16
	.word	4
	.word	_Label_1528
	.word	-12
	.word	4
	.word	_Label_1529
	.word	-16
	.word	4
	.word	_Label_1530
	.word	-20
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-28
	.word	4
	.word	_Label_1533
	.word	-32
	.word	4
	.word	_Label_1534
	.word	-36
	.word	4
	.word	0
_Label_1524:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1525:
	.ascii	"Pself\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
	mov	1367,r13		! source line 1367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0RE",r10
!   _temp_1538 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1538 [entry ] into _temp_1539
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1537 = *_temp_1539  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1536 = _temp_1537 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1536) then goto _Label_1540
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1540
!   _temp_1535 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1541
_Label_1540:
!   _temp_1535 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1541:
!   ReturnResult: _temp_1535  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1542
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1544
	.word	12
	.word	4
	.word	_Label_1545
	.word	-16
	.word	4
	.word	_Label_1546
	.word	-20
	.word	4
	.word	_Label_1547
	.word	-24
	.word	4
	.word	_Label_1548
	.word	-28
	.word	4
	.word	_Label_1549
	.word	-9
	.word	1
	.word	0
_Label_1542:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1543:
	.ascii	"Pself\0"
	.align
_Label_1544:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1549:
	.byte	'C'
	.ascii	"_temp_1535\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1914:
	push	r0
	sub	r1,1,r1
	bne	_Label_1914
	mov	1376,r13		! source line 1376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0RE",r10
!   _temp_1553 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1553 [entry ] into _temp_1554
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1552 = *_temp_1554  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1551 = _temp_1552 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1551) then goto _Label_1555
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1555
!   _temp_1550 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1556
_Label_1555:
!   _temp_1550 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1556:
!   ReturnResult: _temp_1550  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1557
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1559
	.word	12
	.word	4
	.word	_Label_1560
	.word	-16
	.word	4
	.word	_Label_1561
	.word	-20
	.word	4
	.word	_Label_1562
	.word	-24
	.word	4
	.word	_Label_1563
	.word	-28
	.word	4
	.word	_Label_1564
	.word	-9
	.word	1
	.word	0
_Label_1557:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1558:
	.ascii	"Pself\0"
	.align
_Label_1559:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1564:
	.byte	'C'
	.ascii	"_temp_1550\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
	mov	1385,r13		! source line 1385
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0RE",r10
!   _temp_1568 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1568 [entry ] into _temp_1569
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1567 = *_temp_1569  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1566 = _temp_1567 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1566) then goto _Label_1570
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1570
!   _temp_1565 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1571
_Label_1570:
!   _temp_1565 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1571:
!   ReturnResult: _temp_1565  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1572
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1574
	.word	12
	.word	4
	.word	_Label_1575
	.word	-16
	.word	4
	.word	_Label_1576
	.word	-20
	.word	4
	.word	_Label_1577
	.word	-24
	.word	4
	.word	_Label_1578
	.word	-28
	.word	4
	.word	_Label_1579
	.word	-9
	.word	1
	.word	0
_Label_1572:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1573:
	.ascii	"Pself\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1579:
	.byte	'C'
	.ascii	"_temp_1565\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
	mov	1394,r13		! source line 1394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0RE",r10
!   _temp_1583 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1583 [entry ] into _temp_1584
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1582 = *_temp_1584  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1581 = _temp_1582 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1581) then goto _Label_1585
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1585
!   _temp_1580 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1586
_Label_1585:
!   _temp_1580 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1586:
!   ReturnResult: _temp_1580  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1587
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	12
	.word	4
	.word	_Label_1590
	.word	-16
	.word	4
	.word	_Label_1591
	.word	-20
	.word	4
	.word	_Label_1592
	.word	-24
	.word	4
	.word	_Label_1593
	.word	-28
	.word	4
	.word	_Label_1594
	.word	-9
	.word	1
	.word	0
_Label_1587:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1594:
	.byte	'C'
	.ascii	"_temp_1580\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
	mov	1403,r13		! source line 1403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0AS",r10
!   _temp_1595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1595 [entry ] into _temp_1596
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1599 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1599 [entry ] into _temp_1600
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1598 = *_temp_1600  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1597 = _temp_1598 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1596 = _temp_1597  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1601
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1603
	.word	12
	.word	4
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	0
_Label_1601:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1602:
	.ascii	"Pself\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
	mov	1412,r13		! source line 1412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0AS",r10
!   _temp_1610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1610 [entry ] into _temp_1611
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1614 [entry ] into _temp_1615
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1613 = *_temp_1615  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1612 = _temp_1613 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1611 = _temp_1612  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1616
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1618
	.word	12
	.word	4
	.word	_Label_1619
	.word	-12
	.word	4
	.word	_Label_1620
	.word	-16
	.word	4
	.word	_Label_1621
	.word	-20
	.word	4
	.word	_Label_1622
	.word	-24
	.word	4
	.word	_Label_1623
	.word	-28
	.word	4
	.word	_Label_1624
	.word	-32
	.word	4
	.word	0
_Label_1616:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1617:
	.ascii	"Pself\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1919:
	push	r0
	sub	r1,1,r1
	bne	_Label_1919
	mov	1421,r13		! source line 1421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0AS",r10
!   _temp_1625 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1625 [entry ] into _temp_1626
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1629 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1629 [entry ] into _temp_1630
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1628 = *_temp_1630  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1627 = _temp_1628 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1626 = _temp_1627  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1631
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1633
	.word	12
	.word	4
	.word	_Label_1634
	.word	-12
	.word	4
	.word	_Label_1635
	.word	-16
	.word	4
	.word	_Label_1636
	.word	-20
	.word	4
	.word	_Label_1637
	.word	-24
	.word	4
	.word	_Label_1638
	.word	-28
	.word	4
	.word	_Label_1639
	.word	-32
	.word	4
	.word	0
_Label_1631:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1632:
	.ascii	"Pself\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1920:
	push	r0
	sub	r1,1,r1
	bne	_Label_1920
	mov	1430,r13		! source line 1430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
!   _temp_1640 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1640 [entry ] into _temp_1641
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1644 [entry ] into _temp_1645
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1643 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1642 = _temp_1643 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1641 = _temp_1642  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1646
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1648
	.word	12
	.word	4
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-24
	.word	4
	.word	_Label_1653
	.word	-28
	.word	4
	.word	_Label_1654
	.word	-32
	.word	4
	.word	0
_Label_1646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1647:
	.ascii	"Pself\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1921:
	push	r0
	sub	r1,1,r1
	bne	_Label_1921
	mov	1439,r13		! source line 1439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
!   _temp_1655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1655 [entry ] into _temp_1656
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1659 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1659 [entry ] into _temp_1660
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1658 = *_temp_1660  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1657 = _temp_1658 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1656 = _temp_1657  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1661
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	12
	.word	4
	.word	_Label_1664
	.word	-12
	.word	4
	.word	_Label_1665
	.word	-16
	.word	4
	.word	_Label_1666
	.word	-20
	.word	4
	.word	_Label_1667
	.word	-24
	.word	4
	.word	_Label_1668
	.word	-28
	.word	4
	.word	_Label_1669
	.word	-32
	.word	4
	.word	0
_Label_1661:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1922:
	push	r0
	sub	r1,1,r1
	bne	_Label_1922
	mov	1448,r13		! source line 1448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   _temp_1670 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1670 [entry ] into _temp_1671
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1674 [entry ] into _temp_1675
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1673 = *_temp_1675  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1672 = _temp_1673 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1671 = _temp_1672  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1676
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1678
	.word	12
	.word	4
	.word	_Label_1679
	.word	-12
	.word	4
	.word	_Label_1680
	.word	-16
	.word	4
	.word	_Label_1681
	.word	-20
	.word	4
	.word	_Label_1682
	.word	-24
	.word	4
	.word	_Label_1683
	.word	-28
	.word	4
	.word	_Label_1684
	.word	-32
	.word	4
	.word	0
_Label_1676:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1677:
	.ascii	"Pself\0"
	.align
_Label_1678:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1923:
	push	r0
	sub	r1,1,r1
	bne	_Label_1923
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   _temp_1685 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1685 [entry ] into _temp_1686
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1689 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1689 [entry ] into _temp_1690
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1688 = *_temp_1690  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1687 = _temp_1688 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1686 = _temp_1687  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1691
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1693
	.word	12
	.word	4
	.word	_Label_1694
	.word	-12
	.word	4
	.word	_Label_1695
	.word	-16
	.word	4
	.word	_Label_1696
	.word	-20
	.word	4
	.word	_Label_1697
	.word	-24
	.word	4
	.word	_Label_1698
	.word	-28
	.word	4
	.word	_Label_1699
	.word	-32
	.word	4
	.word	0
_Label_1691:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1692:
	.ascii	"Pself\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1924:
	push	r0
	sub	r1,1,r1
	bne	_Label_1924
	mov	1466,r13		! source line 1466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   _temp_1700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1700 [entry ] into _temp_1701
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1704 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1704 [entry ] into _temp_1705
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1703 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1702 = _temp_1703 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1701 = _temp_1702  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1706
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	12
	.word	4
	.word	_Label_1709
	.word	-12
	.word	4
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-24
	.word	4
	.word	_Label_1713
	.word	-28
	.word	4
	.word	_Label_1714
	.word	-32
	.word	4
	.word	0
_Label_1706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1925:
	push	r0
	sub	r1,1,r1
	bne	_Label_1925
	mov	1475,r13		! source line 1475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1716 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1716 [0 ] into _temp_1717
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1715 = _temp_1717		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1718 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1718  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1481,r13		! source line 1481
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1719
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1721
	.word	-12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-24
	.word	4
	.word	0
_Label_1719:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1720:
	.ascii	"Pself\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1926:
	push	r0
	sub	r1,1,r1
	bne	_Label_1926
	mov	1486,r13		! source line 1486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1725
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1725
	jmp	_Label_1726
_Label_1725:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1727
_Label_1726:
! ELSE...
	mov	1503,r13		! source line 1503
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1729		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1729
!	jmp	_Label_1728
_Label_1728:
! THEN...
	mov	1504,r13		! source line 1504
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1729:
! END IF...
_Label_1727:
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_1730:
!	jmp	_Label_1731
_Label_1731:
	mov	1510,r13		! source line 1510
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1734		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1734
!	jmp	_Label_1733
_Label_1733:
! THEN...
	mov	1512,r13		! source line 1512
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1735 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1512,r13		! source line 1512
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1734:
! IF STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0IF",r10
	mov	1515,r13		! source line 1515
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1739) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1738  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1738 then goto _Label_1737 else goto _Label_1736
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1736
	jmp	_Label_1737
_Label_1736:
! THEN...
	mov	1516,r13		! source line 1516
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1740 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1516,r13		! source line 1516
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1737:
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
	mov	1519,r13		! source line 1519
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1742) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1741  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1741 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0WH",r10
_Label_1743:
!   if offset >= 8192 then goto _Label_1745		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1745
!	jmp	_Label_1744
_Label_1744:
	mov	1521,r13		! source line 1521
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1746 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1746  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1748		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1748
!	jmp	_Label_1747
_Label_1747:
! THEN...
	mov	1530,r13		! source line 1530
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1748:
! END WHILE...
	jmp	_Label_1743
_Label_1745:
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1730
_Label_1732:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1749
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1751
	.word	12
	.word	4
	.word	_Label_1752
	.word	16
	.word	4
	.word	_Label_1753
	.word	20
	.word	4
	.word	_Label_1754
	.word	-9
	.word	1
	.word	_Label_1755
	.word	-16
	.word	4
	.word	_Label_1756
	.word	-20
	.word	4
	.word	_Label_1757
	.word	-24
	.word	4
	.word	_Label_1758
	.word	-28
	.word	4
	.word	_Label_1759
	.word	-10
	.word	1
	.word	_Label_1760
	.word	-32
	.word	4
	.word	_Label_1761
	.word	-36
	.word	4
	.word	_Label_1762
	.word	-40
	.word	4
	.word	_Label_1763
	.word	-44
	.word	4
	.word	_Label_1764
	.word	-48
	.word	4
	.word	0
_Label_1749:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1750:
	.ascii	"Pself\0"
	.align
_Label_1751:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1754:
	.byte	'C'
	.ascii	"_temp_1746\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1759:
	.byte	'C'
	.ascii	"_temp_1738\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1761:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1762:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1763:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1764:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1927:
	push	r0
	sub	r1,1,r1
	bne	_Label_1927
	mov	1540,r13		! source line 1540
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1765
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1765
	jmp	_Label_1766
_Label_1765:
! THEN...
	mov	1552,r13		! source line 1552
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1767
_Label_1766:
! ELSE...
	mov	1553,r13		! source line 1553
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1769		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1769
!	jmp	_Label_1768
_Label_1768:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1769:
! END IF...
_Label_1767:
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0WH",r10
_Label_1770:
!	jmp	_Label_1771
_Label_1771:
	mov	1558,r13		! source line 1558
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1776		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1776
	jmp	_Label_1773
_Label_1776:
	mov	1560,r13		! source line 1560
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1778) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1777  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1777 then goto _Label_1775 else goto _Label_1773
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1773
	jmp	_Label_1775
_Label_1775:
	mov	1561,r13		! source line 1561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1780) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1779  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1779 then goto _Label_1774 else goto _Label_1773
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1773
	jmp	_Label_1774
_Label_1773:
! THEN...
	mov	1562,r13		! source line 1562
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1774:
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
	mov	1564,r13		! source line 1564
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1782) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1781  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1781 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0WH",r10
_Label_1783:
!   if offset >= 8192 then goto _Label_1785		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1785
!	jmp	_Label_1784
_Label_1784:
	mov	1565,r13		! source line 1565
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1786 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1786  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1788		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1788
!	jmp	_Label_1787
_Label_1787:
! THEN...
	mov	1572,r13		! source line 1572
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1788:
! END WHILE...
	jmp	_Label_1783
_Label_1785:
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1770
_Label_1772:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1789
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	16
	.word	4
	.word	_Label_1793
	.word	20
	.word	4
	.word	_Label_1794
	.word	-9
	.word	1
	.word	_Label_1795
	.word	-16
	.word	4
	.word	_Label_1796
	.word	-20
	.word	4
	.word	_Label_1797
	.word	-24
	.word	4
	.word	_Label_1798
	.word	-10
	.word	1
	.word	_Label_1799
	.word	-28
	.word	4
	.word	_Label_1800
	.word	-11
	.word	1
	.word	_Label_1801
	.word	-32
	.word	4
	.word	_Label_1802
	.word	-36
	.word	4
	.word	_Label_1803
	.word	-40
	.word	4
	.word	_Label_1804
	.word	-44
	.word	4
	.word	0
_Label_1789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1793:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1794:
	.byte	'C'
	.ascii	"_temp_1786\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1798:
	.byte	'C'
	.ascii	"_temp_1779\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1800:
	.byte	'C'
	.ascii	"_temp_1777\0"
	.align
_Label_1801:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1802:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1804:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1928:
	push	r0
	sub	r1,1,r1
	bne	_Label_1928
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0IF",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_1808 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1809) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1808  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1807  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1807 >= 4 then goto _Label_1806		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1806
!	jmp	_Label_1805
_Label_1805:
! THEN...
	mov	1609,r13		! source line 1609
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1806:
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1811		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1811
!	jmp	_Label_1810
_Label_1810:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1811:
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0RE",r10
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
!   _temp_1814 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1813 = _temp_1814 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1815 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1816) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1813  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1815  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1812  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1812  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1817
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	12
	.word	4
	.word	_Label_1820
	.word	16
	.word	4
	.word	_Label_1821
	.word	20
	.word	4
	.word	_Label_1822
	.word	-12
	.word	4
	.word	_Label_1823
	.word	-16
	.word	4
	.word	_Label_1824
	.word	-20
	.word	4
	.word	_Label_1825
	.word	-24
	.word	4
	.word	_Label_1826
	.word	-28
	.word	4
	.word	_Label_1827
	.word	-32
	.word	4
	.word	_Label_1828
	.word	-36
	.word	4
	.word	_Label_1829
	.word	-40
	.word	4
	.word	_Label_1830
	.word	-44
	.word	4
	.word	0
_Label_1817:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1820:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1821:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
