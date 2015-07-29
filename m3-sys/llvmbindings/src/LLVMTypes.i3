
(* File: LLVMTypes.i3                                                         *) 
(* Types in llvm from various places, along with some minimal support.        *) 
(* Derived from various files of:                                             *| 
|*                                                                            *|
|*                     The LLVM Compiler Infrastructure                       *|
|*                                                                            *|
|* This file is distributed under the University of Illinois Open Source      *|
|* License. See LICENSE.TXT for details.                                      *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*)


INTERFACE LLVMTypes 

; IMPORT Word 

; FROM LLVM IMPORT ValueRef 

(* These could come from almost anywhere. *) 
(* TODO: Figure out where/how to get the right types for these: *) 
; TYPE size_t = INTEGER 
; TYPE int64_t = INTEGER 
; TYPE uint64_t = Word . T  
; TYPE bool = [ 0 .. 1 ] 
; CONST false = 0 
; CONST true = 1 
; TYPE unsigned = [ 0 .. 16_7FFFFFFF ] 
      
; TYPE Opaque = RECORD END (* This duplicates a decl in LLV. *) 

; TYPE MDNodeRef = UNTRACED BRANDED "M3DIBOpaqueMDNode" REF Opaque

(* From llvm/IR/Function.h: *) 

(* class Function* *) 
; TYPE FunctionRef = UNTRACED BRANDED "LLVMTypesOpaqueFunction" REF Opaque

(* From llvm/IR/BasicBlock.h: *) 
(* This is found in LLVM.i3. *) 

(* From llvm/IR/Instruction.h: *) 

(* class Instruction* *) 
; TYPE InstructionRef = UNTRACED BRANDED "LLVMTypesOpaqueInstruction" REF Opaque

(* From llvm/ADT/StringRef.h: *) 

(* class StringRef (NOTE: this is not a pointer). *) 
; TYPE StringRef 
    = RECORD 
        Data : UNTRACED BRANDED "LLVMTypesOpaqueREFCHAR" REF CHAR
      ; Length : size_t
      END 

; CONST StringRefEmpty = StringRef { Data := NIL , Length := 0 }

(* From llvm/ADT/ArrayRef.h: *) 

(* class ArrayRef<Value *> (NOTE: this is not a pointer). *) 
; TYPE ArrayRefOfValueRef 
    = RECORD 
        Data : UNTRACED REF ValueRef (* 0th element, a la C/C++ *) 
      ; Length : size_t
      END 

; CONST ArrayRefOfValueRefEmpty 
    = ArrayRefOfValueRef { Data := NIL , Length := 0 }

; TYPE MetadataRef = UNTRACED BRANDED "LLVMMetadata" REF (* LLVM . *) Opaque

(* class ArrayRef<Metadata *> (NOTE: this is not a pointer). *) 
; TYPE ArrayRefOfMetadataRef 
    = RECORD 
        Data : UNTRACED REF MetadataRef (* 0th element, a la C/C++ *)
      ; Length : size_t
      END 

; CONST ArrayRefOfMetadataRefEmpty 
    = ArrayRefOfMetadataRef { Data := NIL , Length := 0 }

(* class ArrayRef<int64_t> (NOTE: this is not a pointer). *) 
; TYPE ArrayRefOfint64_t 
    = RECORD 
        Data : UNTRACED REF int64_t (* 0th element, a la C/C++ *)
      ; Length : size_t
      END 

; CONST ArrayRefOfint64_tEmpty 
    = ArrayRefOfint64_t { Data := NIL , Length := 0 }

; END LLVMTypes 
. 

