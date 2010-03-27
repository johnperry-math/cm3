(* Copyright 1996-2003 John D. Polstra.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgment:
 *      This product includes software developed by John D. Polstra.
 * 4. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *)

(* This module contains the unsafe portions of the "FSServer"
   implementation. *)

UNSAFE MODULE FSServerU EXPORTS FSServerRep;

IMPORT IP, Process, Uexec, Utypes;

PROCEDURE Reap(self: ChildHandler; <*UNUSED*> sig: INTEGER) =
(* Signal handler for SIGCHLD. *)
  VAR
    pid: Utypes.pid_t;
  BEGIN
    LOOP
      pid := Uexec.waitpid(pid := -1, status := NIL, options := Uexec.WNOHANG);
      IF pid <= 0 THEN EXIT END;
      FOR i := 0 TO self.server.numSlots-1 DO
	IF self.server.childPids[i] = pid THEN
	  self.server.childPids[i] := Process.NullID;
	  self.server.childAddrs[i] := IP.NullAddress;
	  EXIT;
	END;
      END;
      DEC(self.server.numChildren);
    END;
  END Reap;

BEGIN
END FSServerU.
