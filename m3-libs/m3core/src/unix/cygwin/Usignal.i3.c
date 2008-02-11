/* $Id$ */

#include <signal.h>
#include <stdio.h>

static void AssertTypes()
{
    sigset_t * a = 0;
    unsigned long * b = 0;

    b = a;
    a = b;
}

int main()
{
    unsigned i;
    const static struct
    {
        const char* Format;
        unsigned Value;
    } Data[] =
{
"(* Copyright (C) 1990, Digital Equipment Corporation.                 *)", 0,
"(* All rights reserved.                                               *)", 0,
"(* See the file COPYRIGHT for a full description.                     *)", 0,
"(*                                                                    *)", 0,
"(* Last modified on Mon Jan  5 11:11:07 GMT 1998 by rrw               *)", 0,
"(*      modified on Fri Feb 24 15:18:21 PST 1995 by kalsow            *)", 0,
"(*      modified on Tue Feb 14 20:58:12 GMT 1995 by rrw1000@cam.ac.uk *)", 0,
"(*      modified on Tue Mar  2 17:18:02 PST 1993 by muller            *)", 0,
"", 0,
"(* $Id" "$ *)", 0,
"", 0,
"(* This file was generated from " __FILE__ ". Do not edit it. *)", 0,
"", 0,
"INTERFACE Usignal;", 0,
"", 0,
"FROM Ctypes IMPORT int, unsigned_int, unsigned_short, unsigned_long;", 0,
"IMPORT Uucontext;", 0,
"", 0,
"(*** <signal.h> ***)", 0,
"", 0,
"CONST", 0,
"  (* SIGHUP = 16_%08x; *) (* hangup *)", SIGHUP,
"  SIGINT = 16_%08x; (* interrupt *)", SIGINT,
"  SIGQUIT = 16_%08x; (* quit *)", SIGQUIT,
"  (* SIGILL = 16_%08x; *) (* illegal instruction (not reset when caught) *)", SIGILL,
"  (* SIGTRAP = 16_%08x; *) (* trace trap (not reset when caught) *)", SIGTRAP,
#ifdef SIGIOT
"  SIGIOT = 16_%08x; (* IOT instruction *)", SIGIOT,
#endif
"  (* SIGEMT = 16_%08x; *) (* EMT instruction *)", SIGEMT,
"  (* SIGBUS = 16_%08x; *) (* bus error *)", SIGBUS,
"  (* BUS_HWERR	 = 16_%08x; *) (* misc hardware error (e.g. timeout) *)", 1,
"  (* BUS_ALIGN	 = 16_%08x; *) (* hardware alignment error *)", 2,
"  (* SIGFPE = 16_%08x; *) (* floating point exception *)", SIGFPE,
"  (* FPE_INTDIV_TRAP = 16_%08x; *) (* integer divide by zero *)", 20,
"  (* FPE_INTOVF_TRAP = 16_%08x; *) (* integer overflow *)", 21,
"  (* FPE_FLTOPERR_TRAP = 16_%08x; *) (* [floating operand error] *)", 1,
"  (* FPE_FLTDEN_TRAP = 16_%08x; *) (* [floating denormalized operand] *)", 2,
"  (* FPE_FLTDIV_TRAP = 16_%08x; *) (* [floating divide by zero] *)", 3,
"  (* FPE_FLTOVF_TRAP = 16_%08x; *) (* [floating overflow] *)", 4,
"  (* FPE_FLTUND_TRAP = 16_%08x; *) (* [floating underflow] *)", 5,
"  (* FPE_FLTINEX_TRAP = 16_%08x; *) (* [floating inexact result] *)", 6,
"  (* FPE_UUOP_TRAP = 16_%08x; *) (* [floating undefined opcode] *)", 7,
"  (* FPE_DATACH_TRAP = 16_%08x; *) (* [floating data chain exception] *)", 8,
"  (* FPE_FLTSTK_TRAP = 16_%08x; *) (* [floating stack fault] *)", 16,
"  (* FPE_FPA_ENABLE = 16_%08x; *) (* [FPA not enabled] *)", 17,
"  (* FPE_FPA_ERROR = 16_%08x; *) (* [FPA arithmetic exception] *)", 18,
"  SIGKILL = 16_%08x; (* kill (cannot be caught or ignored) *)", SIGKILL,
"  (* SIGUSR1 = 16_%08x; *) (* User signal 1 (from SysV) *)", 10,
"  (* SIGSEGV = 16_%08x; *) (* segmentation violation *)", SIGSEGV,
"  (* SEGV_NOMAP = 16_%08x; *) (* no mapping at the fault address *)", 3,
"  (* SEGV_PROT = 16_%08x; *) (* access exceeded protections *)", 4,
"  (* SEGV_OBJERR = 16_%08x; *) (* object returned errno value *)", 5,
"  (* SIGSYS = 16_%08x; *) (* bad argument to system call *)", SIGSYS,
"  SIGUSR2 = 16_%08x; (* User signal 2 (from SysV) *)", SIGUSR2,
"  (* SIGPIPE = 16_%08x; *) (* write on a pipe with no one to read it *)", SIGPIPE,
"  (* SIGALRM = 16_%08x; *) (* alarm clock *)", SIGALRM,
"  SIGTERM = 16_%08x; (* software termination signal from kill *)", SIGTERM,
"  (* SIGSTKFLT = 16_%08x; *) ", 16,
"  (* SIGCHLD = 16_%08x; *) (* to parent on child stop or exit *)", SIGCHLD,
"  (* SIGCONT = 16_%08x; *) (* continue a stopped process *)", SIGCONT,
"  (* SIGSTOP = 16_%08x; *) (* sendable stop signal not from tty *)", SIGSTOP,
"  (* SIGTSTP = 16_%08x; *) (* stop signal from tty *)", SIGTSTP,
"  (* SIGTTIN = 16_%08x; *) (* to readers pgrp upon background tty read *)", SIGTTIN,
"  (* SIGTTOU = 16_%08x; *) (* like TTIN for output if (tp->t_local&LTOSTOP) *)", SIGTTOU,
"  (* SIGIO = 16_%08x; *) (* input/output possible signal *)", SIGIO,
"  (* SIGURG = SIGIO; *) (* urgent condition on IO channel *)", 0,
"  (* SIGPOLL = SIGIO; *) ", 0,
"  (* SIGXCPU = 16_%08x; *) (* exceeded CPU time limit *)", SIGXCPU,
"  (* SIGXFSZ = 16_%08x; *) (* exceeded file size limit *)", SIGXFSZ,
"  SIGVTALRM = 16_%08x; (* virtual time alarm *)", SIGVTALRM,
"  (* SIGPROF = 16_%08x; *) (* profiling time alarm *)", SIGPROF,
"  (* SIGWINCH = 16_%08x; *) (* window size changes *)", SIGWINCH,
"  (* SIGLOST = 16_%08x; *) (* Sys-V rec lock: notify user upon server crash *)", SIGLOST,
"", 0,
"  (* System V definitions *)", 0,
"  (* SIGCLD = SIGCHLD; *)", 0,
"  SIGABRT = 16_%08x;", SIGABRT,
"", 0,
"(* Signal vector \"template\" used in sigaction call. *)", 0,
"TYPE", 0,
"  SignalHandler = PROCEDURE (sig: int;", 0,
"                             scp: struct_sigcontext;", 0,
"                             code: int);", 0,
"", 0,
"  sigset_t = unsigned_long;", 0,
"  sigset_t_star = UNTRACED REF sigset_t;", 0,
"", 0,
"  siginfo_t = RECORD", 0,
"    opaque:  ARRAY [0..16_%08x] OF int;", sizeof(siginfo_t) / sizeof(int),
"  END;", 0,
"", 0,
"  siginfo_t_star = UNTRACED REF siginfo_t;", 0,
"", 0,
"CONST", 0,
"  empty_sigset_t : sigset_t = 0;", 0,
"  empty_sv_mask : sigset_t = 0;", 0,
"", 0,
"(* CONST *)", 0,
"  (* SV_ONSTACK = 16_%08x ;*)  (* take signal on signal stack *)", 1,
"  (* SV_INTERRUPT = 16_%08x ;*)  (* do not restart system on signal return *)", 2,
"  (* SV_OLDSIG is not provided (explicitly, anyway) by glibc2 *)", 0,
"  (* SV_OLDSIG = 16_%08x ;*)  (* Emulate old signal() for POSIX *)", 0x1000,
"  (* SV_RESETHAND = 16_%08x ;*)  (* Reset handler to SIG_DFL on receipt *)", 4,
"", 0,
"  (* Defines for sigprocmask() call. POSIX. *)", 0,
"  (* SIG_BLOCK = 16_%08x ;*) (* Add these signals to block mask *)", SIG_BLOCK,
"  (* SIG_UNBLOCK = 16_%08x ;*) (* Remove these signals from block mask *)", SIG_UNBLOCK,
"  (* SIG_SETMASK = 16_%08x ;*) (* Set block mask to this mask *)", SIG_SETMASK,
"", 0,
"TYPE", 0,
"  SignalActionHandler = PROCEDURE (sig: int;", 0,
"                                   sip: siginfo_t_star;", 0,
"                                   uap: Uucontext.ucontext_t_star);", 0,
"", 0,
"  struct_sigaction = RECORD", 0,
"    sa_sigaction: SignalActionHandler;  (* signal handler *)", 0,
"    sa_mask     : sigset_t;             (* signals to block while in handler *)", 0,
"    sa_flags    : int;                  (* signal action flags *)", 0,
"  END;", 0,
"", 0,
"  struct_sigaction_star = UNTRACED REF struct_sigaction;", 0,
"", 0,
" (* valid flags define for sa_flag field of sigaction structure  *)", 0,
"CONST", 0,
"  SA_NOCLDSTOP = 16_%08x; (* Don't generate SIGCLD when children stop *)", SA_NOCLDSTOP,
#ifdef SA_STACK
"  SA_STACK = 16_%08x;", SA_STACK,
#endif
"  SA_RESTART = 16_%08x;", SA_RESTART,
#ifdef SA_INTERRUPT
"  SA_INTERRUPT = 16_%08x;", SA_INTERRUPT,
#endif
"  SA_NOMASK = 16_%08x;", SA_NOMASK,
"  SA_ONESHOT = 16_%08x;", SA_ONESHOT,
"", 0,
#ifdef SA_ONSTACK
"  SA_ONSTACK = 16_%08x; (* run on special signal stack *)", SA_ONSTACK,
#endif
#ifdef SA_OLDSTYLE
"  SA_OLDSTYLE = 16_%08x; (* old \"unreliable\" UNIX semantics *)", SA_OLDSTYLE,
#endif
#ifdef SA_NODUMP
"  SA_NODUMP = 16_%08x; (* termination by this sig does not use a ", SA_NODUMP,
"                               core file *)", 0,
#endif
#ifdef SA_PARTDUMP
"  SA_PARTDUMP = 16_%08x; (* create a partial dump for this signal *)", SA_PARTDUMP,
#endif
#ifdef SA_FULLDUMP
"  SA_FULLDUMP = 16_%08x; (* create a full dump (with data areas) *)", SA_FULLDUMP,
#endif
#ifdef SA_SIGSETSTYLE
"  SA_SIGSETSTYLE = 16_%08x; (* new system V sigset type semantics *)", SA_SIGSETSTYLE,
#endif
"", 0,
"TYPE", 0,
"  struct_sigstack = RECORD ", 0,
"    ss_sp:      ADDRESS; (* signal stack pointer *)", 0,
"    ss_onstack: int;     (* current status *)", 0,
"  END;", 0,
"", 0,
"(*", 0,
" * Information pushed on stack when a signal is delivered.", 0,
" * This is used by the kernel to restore state following", 0,
" * execution of the signal handler.  It is also made available", 0,
" * to the handler to allow it to properly restore state if", 0,
" * a non-standard exit is performed.", 0,
" *", 0,
" * WARNING: THE sigcontext MUST BE KEPT CONSISTENT WITH /usr/include/setjmp.h", 0,
" * AND THE LIBC ROUTINES setjmp() AND longjmp()", 0,
" *", 0,
" *)", 0,
"", 0,
"TYPE", 0,
"  (* There seems to be no simple corresponding structure under Linux - ", 0,
"      use the structure in Csetjmp.i3 instead *)", 0,
"  struct_sigcontext = RECORD", 0,
"      gs, gsh: unsigned_short;", 0,
"      fs, fsh: unsigned_short;", 0,
"      es, esh: unsigned_short;", 0,
"      ds, dsh: unsigned_short;", 0,
"      edi: unsigned_long;", 0,
"      esi: unsigned_long;", 0,
"      ebp: unsigned_long;", 0,
"      esp: unsigned_long;", 0,
"      ebx: unsigned_long;", 0,
"      edx: unsigned_long;", 0,
"      ecx: unsigned_long;", 0,
"      eax: unsigned_long;", 0,
"      trapno: unsigned_long;", 0,
"      err: unsigned_long;", 0,
"      eip: unsigned_long;", 0,
"      cs, csh: unsigned_short;", 0,
"      eflags: unsigned_long;", 0,
"      esp_at_signal: unsigned_long;", 0,
"      ss, ssh: unsigned_short;", 0,
"      i387: unsigned_long; (* Actually a struct _fpstate * *)", 0,
"      oldmask: unsigned_long;", 0,
"      cr2: unsigned_long;", 0,
"    END;", 0,
"  ", 0,
" struct_fpreg = RECORD", 0,
"   significand : ARRAY [0..3] OF unsigned_short;", 0,
"   exponent : unsigned_short;", 0,
" END;", 0,
"", 0,
" struct_fpstate = RECORD", 0,
"   cw : unsigned_long;", 0,
"   sw : unsigned_long;", 0,
"   tag : unsigned_long;", 0,
"   ipoff : unsigned_long;", 0,
"   cssel : unsigned_long;", 0,
"   dataoff: unsigned_long;", 0,
"   datasel : unsigned_long;", 0,
"   st : ARRAY [0..7] OF struct_fpreg;", 0,
"   status : unsigned_long;", 0,
" END;  ", 0,
"", 0,
"", 0,
"(* Do not modifiy these variables *)", 0,
"VAR (*CONST*)", 0,
"  BADSIG, SIG_ERR, SIG_DFL, SIG_IGN, SIG_HOLD: SignalActionHandler;", 0,
"", 0,
"", 0,
"(* Convert a signal number to a mask suitable for sigblock(). *)", 0,
"<*INLINE*> PROCEDURE sigmask (n: int): int;", 0,
"", 0,
"", 0,
"(*** kill(2) - send signal to a process ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE kill (pid, sig: int): int;", 0,
"", 0,
"", 0,
"(*** killpg(2) - send signal to a process or process group ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE killpg (pgrp, sig: int): int;", 0,
"", 0,
"", 0,
"(*** sigblock(2) - block signals ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE sigblock (mask: int): int;", 0,
"", 0,
"", 0,
"(*** sigpause(2) - atomically release blocked signals and wait for", 0,
"                   interrupt ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE sigpause (sigmask: int): int;", 0,
"", 0,
"", 0,
"(*** sigpending(2) - examine pending signals ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE sigpending (VAR set: sigset_t): int;", 0,
"", 0,
"", 0,
"(*** sigsetmask(2) - set current signal mask ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE sigsetmask (mask: int): unsigned_int;", 0,
"", 0,
"", 0,
"(*** sigstack(2) - set and/or get signal stack context ***)", 0,
"", 0,
"<*EXTERNAL*> PROCEDURE sigstack (VAR ss, oss: struct_sigstack): int;", 0,
"", 0,
"", 0,
"(*** sigaction(2) - software signal facilities ***)", 0,
"", 0,
"<*EXTERNAL*>", 0,
"PROCEDURE sigaction (sig: int;", 0,
"                     READONLY act: struct_sigaction;", 0,
"                     VAR oact: struct_sigaction): int;", 0,
"", 0,
"(*** sigprocmask(2) - set the blocked signals ***)", 0,
"", 0,
"<*EXTERNAL*>", 0,
"PROCEDURE sigprocmask(how: int; set, oldset: sigset_t_star): int;", 0,
"", 0,
"(*", 0,
"PROCEDURE SigWord(sig : INTEGER) : INTEGER;", 0,
"PROCEDURE SigMask(sig : INTEGER) : Word.T;", 0,
"PROCEDURE SigIsMember(set : sigset_t; sig : INTEGER) : BOOLEAN;", 0,
"PROCEDURE SigAddSet(set : sigset_t; sig : INTEGER) : sigset_t;", 0,
"PROCEDURE SigDelSet(set : sigset_t; sig : INTEGER) : sigset_t;", 0,
"*)", 0,
"", 0,
"(* Change the set of blocked signals to SET,", 0,
"   wait until a signal arrives, and restore the set of blocked signals. *)", 0,
"<*EXTERNAL*> PROCEDURE sigsuspend (READONLY set: sigset_t): int;", 0,
"", 0,
"(* Select any of pending signals from SET or wait for any to arrive.  *)", 0,
"<*EXTERNAL*> PROCEDURE sigwait (READONLY set: sigset_t; VAR sig: int): int;", 0,
"", 0,
"(* Remove SIGNO from SET.  *)", 0,
"<*EXTERNAL*> PROCEDURE sigdelset (VAR set: sigset_t; signo: int): int;", 0,
"", 0,
"(* Set all signals in SET.  *)", 0,
"<*EXTERNAL*> PROCEDURE sigfillset (VAR set: sigset_t): int;", 0,
"", 0,
"(* Bits in `sa_flags'.  *)", 0,
"CONST", 0,
"  SA_SIGINFO = 16_%08x; (* Invoke signal-catching function with", SA_SIGINFO,
"                               three arguments instead of one. *)", 0,
"", 0,
"END Usignal.", 0,
};
    for (i = 0 ; i != sizeof(Data)/sizeof(Data[0]) ; ++i)
    {
        printf(Data[i].Format, Data[i].Value);
        printf("\n");
    }
    return 0;
}
